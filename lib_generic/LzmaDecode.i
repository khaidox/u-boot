# 1 "LzmaDecode.c"
# 1 "/workspace/u-boot/lib_generic//"
# 1 "<command-line>"
# 1 "LzmaDecode.c"
# 24 "LzmaDecode.c"
# 1 "LzmaDecode.h" 1
# 25 "LzmaDecode.h"
# 1 "LzmaTypes.h" 1
# 15 "LzmaTypes.h"
typedef unsigned char Byte;




typedef unsigned short UInt16;







typedef unsigned int UInt32;
# 41 "LzmaTypes.h"
typedef UInt32 SizeT;
# 26 "LzmaDecode.h" 2
# 61 "LzmaDecode.h"
typedef struct _CLzmaProperties
{
  int lc;
  int lp;
  int pb;



}CLzmaProperties;

int LzmaDecodeProperties(CLzmaProperties *propsRes, const unsigned char *propsData, int size);





typedef struct _CLzmaDecoderState
{
  CLzmaProperties Properties;
  UInt16 *Probs;
# 99 "LzmaDecode.h"
} CLzmaDecoderState;





int LzmaDecode(CLzmaDecoderState *vs,



    const unsigned char *inStream, SizeT inSize, SizeT *inSizeProcessed,

    unsigned char *outStream, SizeT outSize, SizeT *outSizeProcessed);
# 25 "LzmaDecode.c" 2
# 122 "LzmaDecode.c"
int LzmaDecodeProperties(CLzmaProperties *propsRes, const unsigned char *propsData, int size)
{
  unsigned char prop0;
  if (size < 5)
  {
    printf("ERROR: %s, %d\n", "LzmaDecode.c", 127);
    return 1;
  }
  prop0 = propsData[0];
  if (prop0 >= (9 * 5 * 5))
  {
    printf("ERROR: %s, %d\n", "LzmaDecode.c", 133);
    return 1;
  }
  {
    for (propsRes->pb = 0; prop0 >= (9 * 5); propsRes->pb++, prop0 -= (9 * 5));
    for (propsRes->lp = 0; prop0 >= 9; propsRes->lp++, prop0 -= 9);
    propsRes->lc = prop0;






  }
# 158 "LzmaDecode.c"
  return 0;
}



int LzmaDecode(CLzmaDecoderState *vs,



    const unsigned char *inStream, SizeT inSize, SizeT *inSizeProcessed,

    unsigned char *outStream, SizeT outSize, SizeT *outSizeProcessed)
{
  UInt16 *p = vs->Probs;
  SizeT nowPos = 0;
  Byte previousByte = 0;
  UInt32 posStateMask = (1 << (vs->Properties.pb)) - 1;
  UInt32 literalPosMask = (1 << (vs->Properties.lp)) - 1;
  int lc = vs->Properties.lc;
# 253 "LzmaDecode.c"
  int state = 0;
  UInt32 rep0 = 1, rep1 = 1, rep2 = 1, rep3 = 1;
  int len = 0;
  const Byte *Buffer;
  const Byte *BufferLim;
  UInt32 Range;
  UInt32 Code;


  *inSizeProcessed = 0;

  *outSizeProcessed = 0;

  {
    UInt32 i;
    UInt32 numProbs = (((((((((((0 + (12 << 4)) + 12) + 12) + 12) + 12) + (12 << 4)) + (4 << 6)) + (1 << (14 >> 1)) - 14) + (1 << 4)) + (((((0 + 1) + 1) + ((1 << 4) << 3)) + ((1 << 4) << 3)) + (1 << 8))) + (((((0 + 1) + 1) + ((1 << 4) << 3)) + ((1 << 4) << 3)) + (1 << 8))) + ((UInt32)768 << (lc + vs->Properties.lp));
    for (i = 0; i < numProbs; i++)
      p[i] = (1 << 11) >> 1;
  }




  Buffer = inStream; BufferLim = inStream + inSize; Code = 0; Range = 0xFFFFFFFF; { int i; for(i = 0; i < 5; i++) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 276); return 1; } }; Code = (Code << 8) | (*Buffer++); }};




  while(nowPos < outSize)
  {
    UInt16 *prob;
    UInt32 bound;
    int posState = (int)(
        (nowPos



        )
        & posStateMask);

    prob = p + 0 + (state << 4) + posState;
    if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 294); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(prob); if (Code < bound)
    {
      int symbol = 1;
      Range = bound; *(prob) += ((1 << 11) - *(prob)) >> 5;
      prob = p + (((((((((((0 + (12 << 4)) + 12) + 12) + 12) + 12) + (12 << 4)) + (4 << 6)) + (1 << (14 >> 1)) - 14) + (1 << 4)) + (((((0 + 1) + 1) + ((1 << 4) << 3)) + ((1 << 4) << 3)) + (1 << 8))) + (((((0 + 1) + 1) + ((1 << 4) << 3)) + ((1 << 4) << 3)) + (1 << 8))) + (768 *
        (((
        (nowPos



        )
        & literalPosMask) << lc) + (previousByte >> (8 - lc))));

      if (state >= 7)
      {
        int matchByte;






        matchByte = outStream[nowPos - rep0];

        do
        {
          int bit;
          UInt16 *probLit;
          matchByte <<= 1;
          bit = (matchByte & 0x100);
          probLit = prob + 0x100 + bit + symbol;
          if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 325); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(probLit); if (Code < bound) { Range = bound; *(probLit) += ((1 << 11) - *(probLit)) >> 5;; symbol <<= 1; if (bit != 0) break; } else { Range -= bound; Code -= bound; *(probLit) -= (*(probLit)) >> 5;; symbol = (symbol + symbol) + 1; if (bit == 0) break; }
        }
        while (symbol < 0x100);
      }
      while (symbol < 0x100)
      {
        UInt16 *probLit = prob + symbol;
        if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 332); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(probLit); if (Code < bound) { Range = bound; *(probLit) += ((1 << 11) - *(probLit)) >> 5;; symbol <<= 1; ;; } else { Range -= bound; Code -= bound; *(probLit) -= (*(probLit)) >> 5;; symbol = (symbol + symbol) + 1; ;; }
      }
      previousByte = (Byte)symbol;

      outStream[nowPos++] = previousByte;
# 345 "LzmaDecode.c"
      if (state < 4) state = 0;
      else if (state < 10) state -= 3;
      else state -= 6;
    }
    else
    {
      Range -= bound; Code -= bound; *(prob) -= (*(prob)) >> 5;;
      prob = p + (0 + (12 << 4)) + state;
      if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 353); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(prob); if (Code < bound)
      {
        Range = bound; *(prob) += ((1 << 11) - *(prob)) >> 5;;
        rep3 = rep2;
        rep2 = rep1;
        rep1 = rep0;
        state = state < 7 ? 0 : 3;
        prob = p + (((((((((0 + (12 << 4)) + 12) + 12) + 12) + 12) + (12 << 4)) + (4 << 6)) + (1 << (14 >> 1)) - 14) + (1 << 4));
      }
      else
      {
        Range -= bound; Code -= bound; *(prob) -= (*(prob)) >> 5;;
        prob = p + ((0 + (12 << 4)) + 12) + state;
        if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 366); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(prob); if (Code < bound)
        {
          Range = bound; *(prob) += ((1 << 11) - *(prob)) >> 5;;
          prob = p + (((((0 + (12 << 4)) + 12) + 12) + 12) + 12) + (state << 4) + posState;
          if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 370); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(prob); if (Code < bound)
          {



            Range = bound; *(prob) += ((1 << 11) - *(prob)) >> 5;;




            if (nowPos == 0)

            {
              printf("ERROR: %s, %d\n", "LzmaDecode.c", 383);
              return 1;
            }

            state = state < 7 ? 9 : 11;
# 397 "LzmaDecode.c"
            previousByte = outStream[nowPos - rep0];

            outStream[nowPos++] = previousByte;





            continue;
          }
          else
          {
            Range -= bound; Code -= bound; *(prob) -= (*(prob)) >> 5;;
          }
        }
        else
        {
          UInt32 distance;
          Range -= bound; Code -= bound; *(prob) -= (*(prob)) >> 5;;
          prob = p + (((0 + (12 << 4)) + 12) + 12) + state;
          if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 417); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(prob); if (Code < bound)
          {
            Range = bound; *(prob) += ((1 << 11) - *(prob)) >> 5;;
            distance = rep1;
          }
          else
          {
            Range -= bound; Code -= bound; *(prob) -= (*(prob)) >> 5;;
            prob = p + ((((0 + (12 << 4)) + 12) + 12) + 12) + state;
            if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 426); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(prob); if (Code < bound)
            {
              Range = bound; *(prob) += ((1 << 11) - *(prob)) >> 5;;
              distance = rep2;
            }
            else
            {
              Range -= bound; Code -= bound; *(prob) -= (*(prob)) >> 5;;
              distance = rep3;
              rep3 = rep2;
            }
            rep2 = rep1;
          }
          rep1 = rep0;
          rep0 = distance;
        }
        state = state < 7 ? 8 : 11;
        prob = p + ((((((((((0 + (12 << 4)) + 12) + 12) + 12) + 12) + (12 << 4)) + (4 << 6)) + (1 << (14 >> 1)) - 14) + (1 << 4)) + (((((0 + 1) + 1) + ((1 << 4) << 3)) + ((1 << 4) << 3)) + (1 << 8)));
      }
      {
        int numBits, offset;
        UInt16 *probLen = prob + 0;
        if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 448); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(probLen); if (Code < bound)
        {
          Range = bound; *(probLen) += ((1 << 11) - *(probLen)) >> 5;;
          probLen = prob + ((0 + 1) + 1) + (posState << 3);
          offset = 0;
          numBits = 3;
        }
        else
        {
          Range -= bound; Code -= bound; *(probLen) -= (*(probLen)) >> 5;;
          probLen = prob + (0 + 1);
          if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 459); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(probLen); if (Code < bound)
          {
            Range = bound; *(probLen) += ((1 << 11) - *(probLen)) >> 5;;
            probLen = prob + (((0 + 1) + 1) + ((1 << 4) << 3)) + (posState << 3);
            offset = (1 << 3);
            numBits = 3;
          }
          else
          {
            Range -= bound; Code -= bound; *(probLen) -= (*(probLen)) >> 5;;
            probLen = prob + ((((0 + 1) + 1) + ((1 << 4) << 3)) + ((1 << 4) << 3));
            offset = (1 << 3) + (1 << 3);
            numBits = 8;
          }
        }
        { int i = numBits; len = 1; do { UInt16 *p = probLen + len; if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 474); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(p); if (Code < bound) { Range = bound; *(p) += ((1 << 11) - *(p)) >> 5;; len <<= 1; ;; } else { Range -= bound; Code -= bound; *(p) -= (*(p)) >> 5;; len = (len + len) + 1; ;; } } while(--i != 0); len -= (1 << numBits); };
        len += offset;
      }

      if (state < 4)
      {
        int posSlot;
        state += 7;
        prob = p + ((((((0 + (12 << 4)) + 12) + 12) + 12) + 12) + (12 << 4)) +
            ((len < 4 ? len : 4 - 1) <<
            6);
        { int i = 6; posSlot = 1; do { UInt16 *p = prob + posSlot; if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 485); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(p); if (Code < bound) { Range = bound; *(p) += ((1 << 11) - *(p)) >> 5;; posSlot <<= 1; ;; } else { Range -= bound; Code -= bound; *(p) -= (*(p)) >> 5;; posSlot = (posSlot + posSlot) + 1; ;; } } while(--i != 0); posSlot -= (1 << 6); };
        if (posSlot >= 4)
        {
          int numDirectBits = ((posSlot >> 1) - 1);
          rep0 = (2 | ((UInt32)posSlot & 1));
          if (posSlot < 14)
          {
            rep0 <<= numDirectBits;
            prob = p + (((((((0 + (12 << 4)) + 12) + 12) + 12) + 12) + (12 << 4)) + (4 << 6)) + rep0 - posSlot - 1;
          }
          else
          {
            numDirectBits -= 4;
            do
            {
              if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 500); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }
              Range >>= 1;
              rep0 <<= 1;
              if (Code >= Range)
              {
                Code -= Range;
                rep0 |= 1;
              }
            }
            while (--numDirectBits != 0);
            prob = p + ((((((((0 + (12 << 4)) + 12) + 12) + 12) + 12) + (12 << 4)) + (4 << 6)) + (1 << (14 >> 1)) - 14);
            rep0 <<= 4;
            numDirectBits = 4;
          }
          {
            int i = 1;
            int mi = 1;
            do
            {
              UInt16 *prob3 = prob + mi;
              if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 520); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); }; bound = (Range >> 11) * *(prob3); if (Code < bound) { Range = bound; *(prob3) += ((1 << 11) - *(prob3)) >> 5;; mi <<= 1; ;; } else { Range -= bound; Code -= bound; *(prob3) -= (*(prob3)) >> 5;; mi = (mi + mi) + 1; rep0 |= i; };
              i <<= 1;
            }
            while(--numDirectBits != 0);
          }
        }
        else
          rep0 = posSlot;
        if (++rep0 == (UInt32)(0))
        {

          len = (-1);
          break;
        }
      }

      len += 2;



      if (rep0 > nowPos)

      {
        printf("ERROR: %s, %d\n", "LzmaDecode.c", 543);
        return 1;
      }
# 554 "LzmaDecode.c"
      do
      {
# 565 "LzmaDecode.c"
        previousByte = outStream[nowPos - rep0];

        len--;
        outStream[nowPos++] = previousByte;
      }
      while(len != 0 && nowPos < outSize);
    }
  }
  if (Range < ((UInt32)1 << 24)) { { if (Buffer == BufferLim) { printf("ERROR, %s, %d\n", "LzmaDecode.c", 573); return 1; } }; Range <<= 8; Code = (Code << 8) | (*Buffer++); };
# 594 "LzmaDecode.c"
  *inSizeProcessed = (SizeT)(Buffer - inStream);

  *outSizeProcessed = nowPos;
  return 0;
}

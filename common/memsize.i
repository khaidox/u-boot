# 1 "memsize.c"
# 1 "/workspace/u-boot/common//"
# 1 "<command-line>"
# 1 "memsize.c"
# 30 "memsize.c"
long get_ram_size(volatile long *base, long maxsize)
{
 volatile long *addr;
 long save[32];
 long cnt;
 long val;
 long size;
 int i = 0;

 for (cnt = (maxsize / sizeof (long)) >> 1; cnt > 0; cnt >>= 1) {
  addr = base + cnt;
  save[i++] = *addr;
  *addr = ~cnt;
 }

 addr = base;
 save[i] = *addr;
 *addr = 0;

 if ((val = *addr) != 0) {


  *addr = save[i];
  for (cnt = 1; cnt < maxsize / sizeof(long); cnt <<= 1) {
   addr = base + cnt;
   *addr = save[--i];
  }
  return (0);
 }

 for (cnt = 1; cnt < maxsize / sizeof (long); cnt <<= 1) {
  addr = base + cnt;
  val = *addr;
  *addr = save[--i];
  if (val != ~cnt) {
   size = cnt * sizeof (long);


   for (cnt <<= 1; cnt < maxsize / sizeof (long); cnt <<= 1) {
    addr = base + cnt;
    *addr = save[--i];
   }
   return (size);
  }
 }

 return (maxsize);
}

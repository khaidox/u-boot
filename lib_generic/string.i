# 1 "string.c"
# 1 "/workspace/u-boot/lib_generic//"
# 1 "<command-line>"
# 1 "string.c"
# 18 "string.c"
# 1 "/workspace/u-boot/include/linux/types.h" 1




# 1 "/workspace/u-boot/include/linux/config.h" 1
# 6 "/workspace/u-boot/include/linux/types.h" 2


# 1 "/workspace/u-boot/include/linux/posix_types.h" 1



# 1 "/workspace/u-boot/include/linux/stddef.h" 1
# 12 "/workspace/u-boot/include/linux/stddef.h"
# 1 "/workspace/u-boot/include/linux/types.h" 1
# 13 "/workspace/u-boot/include/linux/stddef.h" 2
# 5 "/workspace/u-boot/include/linux/posix_types.h" 2
# 36 "/workspace/u-boot/include/linux/posix_types.h"
typedef struct {
 unsigned long fds_bits [(1024/(8 * sizeof(unsigned long)))];
} __kernel_fd_set;


typedef void (*__kernel_sighandler_t)(int);


typedef int __kernel_key_t;

# 1 "/workspace/u-boot/include/asm/posix_types.h" 1
# 18 "/workspace/u-boot/include/asm/posix_types.h"
typedef unsigned int __kernel_dev_t;
typedef unsigned long __kernel_ino_t;
typedef unsigned int __kernel_mode_t;
typedef int __kernel_nlink_t;
typedef long __kernel_off_t;
typedef int __kernel_pid_t;
typedef int __kernel_ipc_pid_t;
typedef int __kernel_uid_t;
typedef int __kernel_gid_t;
typedef unsigned int __kernel_size_t;
typedef int __kernel_ssize_t;
typedef int __kernel_ptrdiff_t;
typedef long __kernel_time_t;
typedef long __kernel_suseconds_t;
typedef long __kernel_clock_t;
typedef long __kernel_daddr_t;
typedef char * __kernel_caddr_t;

typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
typedef int __kernel_uid32_t;
typedef int __kernel_gid32_t;
typedef __kernel_uid_t __kernel_old_uid_t;
typedef __kernel_gid_t __kernel_old_gid_t;


typedef long long __kernel_loff_t;


typedef struct {
 long val[2];
} __kernel_fsid_t;




static __inline__ void __FD_SET(unsigned long __fd, __kernel_fd_set *__fdsetp)
{
 unsigned long __tmp = __fd / (8 * sizeof(unsigned long));
 unsigned long __rem = __fd % (8 * sizeof(unsigned long));
 __fdsetp->fds_bits[__tmp] |= (1UL<<__rem);
}


static __inline__ void __FD_CLR(unsigned long __fd, __kernel_fd_set *__fdsetp)
{
 unsigned long __tmp = __fd / (8 * sizeof(unsigned long));
 unsigned long __rem = __fd % (8 * sizeof(unsigned long));
 __fdsetp->fds_bits[__tmp] &= ~(1UL<<__rem);
}


static __inline__ int __FD_ISSET(unsigned long __fd, const __kernel_fd_set *__p)
{
 unsigned long __tmp = __fd / (8 * sizeof(unsigned long));
 unsigned long __rem = __fd % (8 * sizeof(unsigned long));
 return (__p->fds_bits[__tmp] & (1UL<<__rem)) != 0;
}






static __inline__ void __FD_ZERO(__kernel_fd_set *__p)
{
 unsigned long *__tmp = __p->fds_bits;
 int __i;

 if (__builtin_constant_p((1024/(8 * sizeof(unsigned long))))) {
  switch ((1024/(8 * sizeof(unsigned long)))) {
  case 16:
   __tmp[ 0] = 0; __tmp[ 1] = 0;
   __tmp[ 2] = 0; __tmp[ 3] = 0;
   __tmp[ 4] = 0; __tmp[ 5] = 0;
   __tmp[ 6] = 0; __tmp[ 7] = 0;
   __tmp[ 8] = 0; __tmp[ 9] = 0;
   __tmp[10] = 0; __tmp[11] = 0;
   __tmp[12] = 0; __tmp[13] = 0;
   __tmp[14] = 0; __tmp[15] = 0;
   return;

  case 8:
   __tmp[ 0] = 0; __tmp[ 1] = 0;
   __tmp[ 2] = 0; __tmp[ 3] = 0;
   __tmp[ 4] = 0; __tmp[ 5] = 0;
   __tmp[ 6] = 0; __tmp[ 7] = 0;
   return;

  case 4:
   __tmp[ 0] = 0; __tmp[ 1] = 0;
   __tmp[ 2] = 0; __tmp[ 3] = 0;
   return;
  }
 }
 __i = (1024/(8 * sizeof(unsigned long)));
 while (__i) {
  __i--;
  *__tmp = 0;
  __tmp++;
 }
}
# 47 "/workspace/u-boot/include/linux/posix_types.h" 2
# 9 "/workspace/u-boot/include/linux/types.h" 2
# 1 "/workspace/u-boot/include/asm/types.h" 1
# 13 "/workspace/u-boot/include/asm/types.h"
typedef unsigned short umode_t;






typedef __signed__ char __s8;
typedef unsigned char __u8;

typedef __signed__ short __s16;
typedef unsigned short __u16;

typedef __signed__ int __s32;
typedef unsigned int __u32;
# 37 "/workspace/u-boot/include/asm/types.h"
typedef __signed__ long long __s64;
typedef unsigned long long __u64;
# 48 "/workspace/u-boot/include/asm/types.h"
typedef __signed char s8;
typedef unsigned char u8;

typedef __signed short s16;
typedef unsigned short u16;

typedef __signed int s32;
typedef unsigned int u32;
# 65 "/workspace/u-boot/include/asm/types.h"
typedef __signed__ long long s64;
typedef unsigned long long u64;






typedef unsigned long dma_addr_t;
# 10 "/workspace/u-boot/include/linux/types.h" 2



typedef __kernel_fd_set fd_set;
typedef __kernel_dev_t dev_t;
typedef __kernel_ino_t ino_t;
typedef __kernel_mode_t mode_t;
typedef __kernel_nlink_t nlink_t;
typedef __kernel_off_t off_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_daddr_t daddr_t;
typedef __kernel_key_t key_t;
typedef __kernel_suseconds_t suseconds_t;


typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_uid16_t uid16_t;
typedef __kernel_gid16_t gid16_t;
# 45 "/workspace/u-boot/include/linux/types.h"
typedef __kernel_loff_t loff_t;
# 54 "/workspace/u-boot/include/linux/types.h"
typedef __kernel_size_t size_t;




typedef __kernel_ssize_t ssize_t;




typedef __kernel_ptrdiff_t ptrdiff_t;




typedef __kernel_time_t time_t;




typedef __kernel_clock_t clock_t;




typedef __kernel_caddr_t caddr_t;



typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;


typedef unsigned char unchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;




typedef __u8 u_int8_t;
typedef __s8 int8_t;
typedef __u16 u_int16_t;
typedef __s16 int16_t;
typedef __u32 u_int32_t;
typedef __s32 int32_t;



typedef __u8 uint8_t;
typedef __u16 uint16_t;
typedef __u32 uint32_t;


typedef __u64 uint64_t;
typedef __u64 u_int64_t;
typedef __s64 int64_t;
# 123 "/workspace/u-boot/include/linux/types.h"
struct ustat {
 __kernel_daddr_t f_tfree;
 __kernel_ino_t f_tinode;
 char f_fname[6];
 char f_fpack[6];
};
# 19 "string.c" 2
# 1 "/workspace/u-boot/include/linux/string.h" 1
# 11 "/workspace/u-boot/include/linux/string.h"
extern char * ___strtok;
extern char * strpbrk(const char *,const char *);
extern char * strtok(char *,const char *);
extern char * strsep(char **,const char *);
extern __kernel_size_t strspn(const char *,const char *);





# 1 "/workspace/u-boot/include/asm/string.h" 1
# 15 "/workspace/u-boot/include/asm/string.h"
static __inline__ char *strcpy(char *__dest, __const__ char *__src)
{
  char *__xdest = __dest;

  __asm__ __volatile__(
 ".set\tnoreorder\n\t"
 ".set\tnoat\n"
 "1:\tlbu\t$1,(%1)\n\t"
 "addiu\t%1,1\n\t"
 "sb\t$1,(%0)\n\t"
 "bnez\t$1,1b\n\t"
 "addiu\t%0,1\n\t"
 ".set\tat\n\t"
 ".set\treorder"
 : "=r" (__dest), "=r" (__src)
 : "0" (__dest), "1" (__src)
 : "$1","memory");

  return __xdest;
}


static __inline__ char *strncpy(char *__dest, __const__ char *__src, size_t __n)
{
  char *__xdest = __dest;

  if (__n == 0)
    return __xdest;

  __asm__ __volatile__(
 ".set\tnoreorder\n\t"
 ".set\tnoat\n"
 "1:\tlbu\t$1,(%1)\n\t"
 "subu\t%2,1\n\t"
 "sb\t$1,(%0)\n\t"
 "beqz\t$1,2f\n\t"
 "addiu\t%0,1\n\t"
 "bnez\t%2,1b\n\t"
 "addiu\t%1,1\n"
 "2:\n\t"
 ".set\tat\n\t"
 ".set\treorder"
 : "=r" (__dest), "=r" (__src), "=r" (__n)
 : "0" (__dest), "1" (__src), "2" (__n)
 : "$1","memory");

  return __dest;
}


static __inline__ int strcmp(__const__ char *__cs, __const__ char *__ct)
{
  int __res;

  __asm__ __volatile__(
 ".set\tnoreorder\n\t"
 ".set\tnoat\n\t"
 "lbu\t%2,(%0)\n"
 "1:\tlbu\t$1,(%1)\n\t"
 "addiu\t%0,1\n\t"
 "bne\t$1,%2,2f\n\t"
 "addiu\t%1,1\n\t"
 "bnez\t%2,1b\n\t"
 "lbu\t%2,(%0)\n\t"



 "move\t%2,$1\n"
 "2:\tsubu\t%2,$1\n"
 "3:\t.set\tat\n\t"
 ".set\treorder"
 : "=r" (__cs), "=r" (__ct), "=r" (__res)
 : "0" (__cs), "1" (__ct)
 : "$1");

  return __res;
}


static __inline__ int
strncmp(__const__ char *__cs, __const__ char *__ct, size_t __count)
{
 int __res;

 __asm__ __volatile__(
 ".set\tnoreorder\n\t"
 ".set\tnoat\n"
 "1:\tlbu\t%3,(%0)\n\t"
 "beqz\t%2,2f\n\t"
 "lbu\t$1,(%1)\n\t"
 "subu\t%2,1\n\t"
 "bne\t$1,%3,3f\n\t"
 "addiu\t%0,1\n\t"
 "bnez\t%3,1b\n\t"
 "addiu\t%1,1\n"
 "2:\n\t"



 "move\t%3,$1\n"
 "3:\tsubu\t%3,$1\n\t"
 ".set\tat\n\t"
 ".set\treorder"
 : "=r" (__cs), "=r" (__ct), "=r" (__count), "=r" (__res)
 : "0" (__cs), "1" (__ct), "2" (__count)
 : "$1");

 return __res;
}


extern void *memset(void *__s, int __c, size_t __count);


extern void *memcpy(void *__to, __const__ void *__from, size_t __n);


extern void *memmove(void *__dest, __const__ void *__src, size_t __n);





static __inline__ void *memscan(void *__addr, int __c, size_t __size)
{
 char *__end = (char *)__addr + __size;

 __asm__(".set\tpush\n\t"
  ".set\tnoat\n\t"
  ".set\treorder\n\t"
  "1:\tbeq\t%0,%1,2f\n\t"
  "addiu\t%0,1\n\t"
  "lb\t$1,-1(%0)\n\t"
  "bne\t$1,%4,1b\n"
  "2:\t.set\tpop"
  : "=r" (__addr), "=r" (__end)
  : "0" (__addr), "1" (__end), "r" (__c)
  : "$1");

 return __addr;
}
# 22 "/workspace/u-boot/include/linux/string.h" 2
# 30 "/workspace/u-boot/include/linux/string.h"
extern char * strcat(char *, const char *);


extern char * strncat(char *, const char *, __kernel_size_t);
# 42 "/workspace/u-boot/include/linux/string.h"
extern int strnicmp(const char *, const char *, __kernel_size_t);


extern char * strchr(const char *,int);


extern char * strrchr(const char *,int);


extern char * strstr(const char *,const char *);


extern __kernel_size_t strlen(const char *);


extern __kernel_size_t strnlen(const char *,__kernel_size_t);


extern char * strdup(const char *);


extern char * strswab(const char *);



extern void * memset(void *,int,__kernel_size_t);


extern void * memcpy(void *,const void *,__kernel_size_t);


extern void * memmove(void *,const void *,__kernel_size_t);





extern int memcmp(const void *,const void *,__kernel_size_t);


extern void * memchr(const void *,int,__kernel_size_t);
# 20 "string.c" 2
# 1 "/workspace/u-boot/include/linux/ctype.h" 1
# 18 "/workspace/u-boot/include/linux/ctype.h"
extern unsigned char _ctype[];
# 37 "/workspace/u-boot/include/linux/ctype.h"
static inline unsigned char __tolower(unsigned char c)
{
 if ((((_ctype[(int)(unsigned char)(c)])&(0x01)) != 0))
  c -= 'A'-'a';
 return c;
}

static inline unsigned char __toupper(unsigned char c)
{
 if ((((_ctype[(int)(unsigned char)(c)])&(0x02)) != 0))
  c -= 'a'-'A';
 return c;
}
# 21 "string.c" 2
# 1 "/workspace/u-boot/include/malloc.h" 1
# 371 "/workspace/u-boot/include/malloc.h"
void* memset(void*, int, size_t);
void* memcpy(void*, const void*, size_t);
# 603 "/workspace/u-boot/include/malloc.h"
struct mallinfo {
  int arena;
  int ordblks;
  int smblks;
  int hblks;
  int hblkhd;
  int usmblks;
  int fsmblks;
  int uordblks;
  int fordblks;
  int keepcost;
};
# 838 "/workspace/u-boot/include/malloc.h"
extern void* sbrk(ptrdiff_t);
# 910 "/workspace/u-boot/include/malloc.h"
void* malloc(size_t);
void free(void*);
void* realloc(void*, size_t);
void* memalign(size_t, size_t);
void* valloc(size_t);
void* pvalloc(size_t);
void* calloc(size_t, size_t);
void cfree(void*);
int malloc_trim(size_t);
size_t malloc_usable_size(void*);
void malloc_stats(void);
int mallopt(int, int);
struct mallinfo mallinfo(void);
# 22 "string.c" 2
# 31 "string.c"
int strnicmp(const char *s1, const char *s2, size_t len)
{

 unsigned char c1, c2;

 c1 = 0; c2 = 0;
 if (len) {
  do {
   c1 = *s1; c2 = *s2;
   s1++; s2++;
   if (!c1)
    break;
   if (!c2)
    break;
   if (c1 == c2)
    continue;
   c1 = __tolower(c1);
   c2 = __tolower(c2);
   if (c1 != c2)
    break;
  } while (--len);
 }
 return (int)c1 - (int)c2;
}


char * ___strtok;
# 103 "string.c"
char * strcat(char * dest, const char * src)
{
 char *tmp = dest;

 while (*dest)
  dest++;
 while ((*dest++ = *src++) != '\0')
  ;

 return tmp;
}
# 126 "string.c"
char * strncat(char *dest, const char *src, size_t count)
{
 char *tmp = dest;

 if (count) {
  while (*dest)
   dest++;
  while ((*dest++ = *src++)) {
   if (--count == 0) {
    *dest = '\0';
    break;
   }
  }
 }

 return tmp;
}
# 191 "string.c"
char * strchr(const char * s, int c)
{
 for(; *s != (char) c; ++s)
  if (*s == '\0')
   return ((void *)0);
 return (char *) s;
}
# 206 "string.c"
char * strrchr(const char * s, int c)
{
       const char *p = s + strlen(s);
       do {
    if (*p == (char)c)
        return (char *)p;
       } while (--p >= s);
       return ((void *)0);
}







size_t strlen(const char * s)
{
 const char *sc;

 for (sc = s; *sc != '\0'; ++sc)
               ;
 return sc - s;
}
# 238 "string.c"
size_t strnlen(const char * s, size_t count)
{
 const char *sc;

 for (sc = s; count-- && *sc != '\0'; ++sc)
               ;
 return sc - s;
}



char * strdup(const char *s)
{
 char *new;

 if ((s == ((void *)0)) ||
     ((new = malloc (strlen(s) + 1)) == ((void *)0)) ) {
  return ((void *)0);
 }

 strcpy (new, s);
 return new;
}
# 270 "string.c"
size_t strspn(const char *s, const char *accept)
{
 const char *p;
 const char *a;
 size_t count = 0;

 for (p = s; *p != '\0'; ++p) {
  for (a = accept; *a != '\0'; ++a) {
   if (*p == *a)
    break;
  }
  if (*a == '\0')
   return count;
  ++count;
 }

 return count;
}
# 296 "string.c"
char * strpbrk(const char * cs,const char * ct)
{
 const char *sc1,*sc2;

 for( sc1 = cs; *sc1 != '\0'; ++sc1) {
  for( sc2 = ct; *sc2 != '\0'; ++sc2) {
   if (*sc1 == *sc2)
    return (char *) sc1;
  }
 }
 return ((void *)0);
}
# 318 "string.c"
char * strtok(char * s,const char * ct)
{
 char *sbegin, *send;

 sbegin = s ? s : ___strtok;
 if (!sbegin) {
  return ((void *)0);
 }
 sbegin += strspn(sbegin,ct);
 if (*sbegin == '\0') {
  ___strtok = ((void *)0);
  return( ((void *)0) );
 }
 send = strpbrk( sbegin, ct);
 if (send && *send != '\0')
  *send++ = '\0';
 ___strtok = send;
 return (sbegin);
}
# 351 "string.c"
char * strsep(char **s, const char *ct)
{
 char *sbegin = *s, *end;

 if (sbegin == ((void *)0))
  return ((void *)0);

 end = strpbrk(sbegin, ct);
 if (end)
  *end++ = '\0';
 *s = end;

 return sbegin;
}
# 375 "string.c"
char *strswab(const char *s)
{
 char *p, *q;

 if ((((void *)0) == s) || ('\0' == *s)) {
  return (((void *)0));
 }

 for (p=(char *)s, q=p+1; (*p != '\0') && (*q != '\0'); p+=2, q+=2) {
  char tmp;

  tmp = *p;
  *p = *q;
  *q = tmp;
 }

 return (char *) s;
}
# 404 "string.c"
void * memset(void * s,int c,size_t count)
{
 char *xs = (char *) s;

 while (count--)
  *xs++ = c;

 return s;
}
# 449 "string.c"
void * memcpy(void * dest,const void *src,size_t count)
{
 char *tmp = (char *) dest, *s = (char *) src;

 while (count--)
  *tmp++ = *s++;

 return dest;
}
# 469 "string.c"
void * memmove(void * dest,const void *src,size_t count)
{
 char *tmp, *s;

 if (dest <= src) {
  tmp = (char *) dest;
  s = (char *) src;
  while (count--)
   *tmp++ = *s++;
  }
 else {
  tmp = (char *) dest + count;
  s = (char *) src + count;
  while (count--)
   *--tmp = *--s;
  }

 return dest;
}
# 497 "string.c"
int memcmp(const void * cs,const void * ct,size_t count)
{
 const unsigned char *su1, *su2;
 int res = 0;

 for( su1 = cs, su2 = ct; 0 < count; ++su1, ++su2, count--)
  if ((res = *su1 - *su2) != 0)
   break;
 return res;
}
# 539 "string.c"
char * strstr(const char * s1,const char * s2)
{
 int l1, l2;

 l2 = strlen(s2);
 if (!l2)
  return (char *) s1;
 l1 = strlen(s1);
 while (l1 >= l2) {
  l1--;
  if (!memcmp(s1,s2,l2))
   return (char *) s1;
  s1++;
 }
 return ((void *)0);
}
# 567 "string.c"
void *memchr(const void *s, int c, size_t n)
{
 const unsigned char *p = s;
 while (n-- != 0) {
  if ((unsigned char)c == *p++) {
   return (void *)(p-1);
  }
 }
 return ((void *)0);
}

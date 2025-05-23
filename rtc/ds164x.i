# 1 "ds164x.c"
# 1 "/workspace/u-boot/rtc//"
# 1 "<command-line>"
# 1 "ds164x.c"
# 35 "ds164x.c"
# 1 "/workspace/u-boot/include/common.h" 1
# 30 "/workspace/u-boot/include/common.h"
typedef unsigned char uchar;
typedef volatile unsigned long vu_long;
typedef volatile unsigned short vu_short;
typedef volatile unsigned char vu_char;

# 1 "/workspace/u-boot/include/config.h" 1
# 19 "/workspace/u-boot/include/config.h"
# 1 "/workspace/u-boot/include/configs/board953x.h" 1



# 1 "/workspace/u-boot/include/config.h" 1
# 19 "/workspace/u-boot/include/config.h"
# 1 "/workspace/u-boot/include/configs/board953x.h" 1
# 19 "/workspace/u-boot/include/config.h" 2
# 5 "/workspace/u-boot/include/configs/board953x.h" 2





# 1 "/workspace/u-boot/include/atheros.h" 1
# 79 "/workspace/u-boot/include/atheros.h"
int ath_uart_freq(void);

typedef unsigned int ath_reg_t;
# 154 "/workspace/u-boot/include/atheros.h"
# 1 "/workspace/u-boot/include/config.h" 1
# 155 "/workspace/u-boot/include/atheros.h" 2
# 165 "/workspace/u-boot/include/atheros.h"
# 1 "/workspace/u-boot/include/953x.h" 1
# 26 "/workspace/u-boot/include/953x.h"
# 1 "/workspace/u-boot/include/asm/mipsregs.h" 1
# 146 "/workspace/u-boot/include/asm/mipsregs.h"
# 1 "/workspace/u-boot/include/linux/config.h" 1
# 147 "/workspace/u-boot/include/asm/mipsregs.h" 2
# 317 "/workspace/u-boot/include/asm/mipsregs.h"
static __inline__ unsigned int set_cp0_status(unsigned int set) { unsigned int res; res = ({ int __res; __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" "mfc0\t%0,""$12""\n\t" ".set\tpop" : "=r" (__res)); __res;}); res |= set; __asm__ __volatile__( "mtc0\t%0,""$12""\n\t" "nop" : : "r" (res));; return res; } static __inline__ unsigned int clear_cp0_status(unsigned int clear) { unsigned int res; res = ({ int __res; __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" "mfc0\t%0,""$12""\n\t" ".set\tpop" : "=r" (__res)); __res;}); res &= ~clear; __asm__ __volatile__( "mtc0\t%0,""$12""\n\t" "nop" : : "r" (res));; return res; } static __inline__ unsigned int change_cp0_status(unsigned int change, unsigned int new) { unsigned int res; res = ({ int __res; __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" "mfc0\t%0,""$12""\n\t" ".set\tpop" : "=r" (__res)); __res;}); res &= ~change; res |= (new & change); if(change) __asm__ __volatile__( "mtc0\t%0,""$12""\n\t" "nop" : : "r" (res));; return res; }
static __inline__ unsigned int set_cp0_cause(unsigned int set) { unsigned int res; res = ({ int __res; __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" "mfc0\t%0,""$13""\n\t" ".set\tpop" : "=r" (__res)); __res;}); res |= set; __asm__ __volatile__( "mtc0\t%0,""$13""\n\t" "nop" : : "r" (res));; return res; } static __inline__ unsigned int clear_cp0_cause(unsigned int clear) { unsigned int res; res = ({ int __res; __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" "mfc0\t%0,""$13""\n\t" ".set\tpop" : "=r" (__res)); __res;}); res &= ~clear; __asm__ __volatile__( "mtc0\t%0,""$13""\n\t" "nop" : : "r" (res));; return res; } static __inline__ unsigned int change_cp0_cause(unsigned int change, unsigned int new) { unsigned int res; res = ({ int __res; __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" "mfc0\t%0,""$13""\n\t" ".set\tpop" : "=r" (__res)); __res;}); res &= ~change; res |= (new & change); if(change) __asm__ __volatile__( "mtc0\t%0,""$13""\n\t" "nop" : : "r" (res));; return res; }
static __inline__ unsigned int set_cp0_config(unsigned int set) { unsigned int res; res = ({ int __res; __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" "mfc0\t%0,""$16""\n\t" ".set\tpop" : "=r" (__res)); __res;}); res |= set; __asm__ __volatile__( "mtc0\t%0,""$16""\n\t" "nop" : : "r" (res));; return res; } static __inline__ unsigned int clear_cp0_config(unsigned int clear) { unsigned int res; res = ({ int __res; __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" "mfc0\t%0,""$16""\n\t" ".set\tpop" : "=r" (__res)); __res;}); res &= ~clear; __asm__ __volatile__( "mtc0\t%0,""$16""\n\t" "nop" : : "r" (res));; return res; } static __inline__ unsigned int change_cp0_config(unsigned int change, unsigned int new) { unsigned int res; res = ({ int __res; __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" "mfc0\t%0,""$16""\n\t" ".set\tpop" : "=r" (__res)); __res;}); res &= ~change; res |= (new & change); if(change) __asm__ __volatile__( "mtc0\t%0,""$16""\n\t" "nop" : : "r" (res));; return res; }
# 27 "/workspace/u-boot/include/953x.h" 2
# 1 "/workspace/u-boot/include/asm/addrspace.h" 1
# 28 "/workspace/u-boot/include/953x.h" 2
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
# 29 "/workspace/u-boot/include/953x.h" 2
# 1 "/workspace/u-boot/include/linux/types.h" 1







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
# 30 "/workspace/u-boot/include/953x.h" 2
# 166 "/workspace/u-boot/include/atheros.h" 2
# 178 "/workspace/u-boot/include/atheros.h"
void ath_gpio_init(void);
void ath_gpio_down(void);
void ath_gpio_up(void);

void ath_gpio_irq_init(int);



void ath_gpio_enable_slic(void);


void ath_gpio_enable_uart(void);


void ath_gpio_enable_stereo(void);


void ath_gpio_enable_spi_cs1_cs0(void);


void ath_gpio_enable_i2c_on_gpio_0_1(void);




void ath_gpio_drive_low(unsigned int mask);
void ath_gpio_drive_high(unsigned int mask);

unsigned int ath_gpio_float_high_test(unsigned int mask);
# 233 "/workspace/u-boot/include/atheros.h"
void ath_spi_init(void);
void ath_spi_down(void);
void ath_spi_up(void);

static inline void
ath_spi_enable_soft_access(void)
{
 ((*(volatile ath_reg_t *)((__typeof__((0x1f000000 +0x00)))(((unsigned long)((0x1f000000 +0x00)) & 0x1fffffff) | 0xa0000000))) = (1));
}

static inline void
ath_spi_disable_soft_access(void)
{
 ((*(volatile ath_reg_t *)((__typeof__((0x1f000000 +0x08)))(((unsigned long)((0x1f000000 +0x08)) & 0x1fffffff) | 0xa0000000))) = (0x70000));
 ((*(volatile ath_reg_t *)((__typeof__((0x1f000000 +0x00)))(((unsigned long)((0x1f000000 +0x00)) & 0x1fffffff) | 0xa0000000))) = (0));
}

void ath_spi_raw_output_u8(unsigned char val);
void ath_spi_raw_output_u32(unsigned int val);
unsigned int ath_spi_raw_input_u8(void);
unsigned int ath_spi_raw_input_u32(void);

void ath_spi_flash_read_page(unsigned int addr, unsigned char *data, int len);
void ath_spi_flash_write_page(unsigned int addr, unsigned char *data, int len);
void ath_spi_flash_sector_erase(unsigned int addr);




static inline void
ath_spi_enable_cs0(void)
{
 unsigned int cs;
 ath_spi_down();
 ath_spi_enable_soft_access();
 cs = (*(volatile ath_reg_t *)((__typeof__((0x1f000000 +0x08)))(((unsigned long)((0x1f000000 +0x08)) & 0x1fffffff) | 0xa0000000))) & ~0x70000;
 ((*(volatile ath_reg_t *)((__typeof__((0x1f000000 +0x08)))(((unsigned long)((0x1f000000 +0x08)) & 0x1fffffff) | 0xa0000000))) = ((6<<16) | cs));
}

static inline void
ath_spi_enable_cs1(void)
{
 unsigned int cs;
# 287 "/workspace/u-boot/include/atheros.h"
 ath_spi_down();
 ath_spi_enable_soft_access();
 cs = (*(volatile ath_reg_t *)((__typeof__((0x1f000000 +0x08)))(((unsigned long)((0x1f000000 +0x08)) & 0x1fffffff) | 0xa0000000))) & ~0x70000;
 ((*(volatile ath_reg_t *)((__typeof__((0x1f000000 +0x08)))(((unsigned long)((0x1f000000 +0x08)) & 0x1fffffff) | 0xa0000000))) = ((5<<16) | cs));

}

static inline void
ath_spi_disable_cs(void)
{
 unsigned int cs = (*(volatile ath_reg_t *)((__typeof__((0x1f000000 +0x08)))(((unsigned long)((0x1f000000 +0x08)) & 0x1fffffff) | 0xa0000000))) | 0x70000;
 ((*(volatile ath_reg_t *)((__typeof__((0x1f000000 +0x08)))(((unsigned long)((0x1f000000 +0x08)) & 0x1fffffff) | 0xa0000000))) = (cs));
 ath_spi_disable_soft_access();
 ath_spi_up();
}




static inline void
ath_spi_flash_cs0_sector_erase(unsigned int addr)
{
 ath_spi_enable_cs0();
 ath_spi_flash_sector_erase(addr);
 ath_spi_disable_cs();
}

static inline void
ath_spi_flash_cs0_write_page(unsigned int addr, unsigned char *data, int len)
{
 ath_spi_enable_cs0();
 ath_spi_flash_write_page(addr, data, len);
 ath_spi_disable_cs();
}
# 11 "/workspace/u-boot/include/configs/board953x.h" 2
# 357 "/workspace/u-boot/include/configs/board953x.h"
# 1 "/workspace/u-boot/include/cmd_confdefs.h" 1
# 358 "/workspace/u-boot/include/configs/board953x.h" 2
# 19 "/workspace/u-boot/include/config.h" 2
# 36 "/workspace/u-boot/include/common.h" 2
# 1 "/workspace/u-boot/include/linux/bitops.h" 1
# 11 "/workspace/u-boot/include/linux/bitops.h"
static inline int generic_ffs(int x)
{
 int r = 1;

 if (!x)
  return 0;
 if (!(x & 0xffff)) {
  x >>= 16;
  r += 16;
 }
 if (!(x & 0xff)) {
  x >>= 8;
  r += 8;
 }
 if (!(x & 0xf)) {
  x >>= 4;
  r += 4;
 }
 if (!(x & 3)) {
  x >>= 2;
  r += 2;
 }
 if (!(x & 1)) {
  x >>= 1;
  r += 1;
 }
 return r;
}






static inline unsigned int generic_hweight32(unsigned int w)
{
 unsigned int res = (w & 0x55555555) + ((w >> 1) & 0x55555555);
 res = (res & 0x33333333) + ((res >> 2) & 0x33333333);
 res = (res & 0x0F0F0F0F) + ((res >> 4) & 0x0F0F0F0F);
 res = (res & 0x00FF00FF) + ((res >> 8) & 0x00FF00FF);
 return (res & 0x0000FFFF) + ((res >> 16) & 0x0000FFFF);
}

static inline unsigned int generic_hweight16(unsigned int w)
{
 unsigned int res = (w & 0x5555) + ((w >> 1) & 0x5555);
 res = (res & 0x3333) + ((res >> 2) & 0x3333);
 res = (res & 0x0F0F) + ((res >> 4) & 0x0F0F);
 return (res & 0x00FF) + ((res >> 8) & 0x00FF);
}

static inline unsigned int generic_hweight8(unsigned int w)
{
 unsigned int res = (w & 0x55) + ((w >> 1) & 0x55);
 res = (res & 0x33) + ((res >> 2) & 0x33);
 return (res & 0x0F) + ((res >> 4) & 0x0F);
}

# 1 "/workspace/u-boot/include/asm/bitops.h" 1
# 13 "/workspace/u-boot/include/asm/bitops.h"
# 1 "/workspace/u-boot/include/asm/byteorder.h" 1
# 24 "/workspace/u-boot/include/asm/byteorder.h"
# 1 "/workspace/u-boot/include/linux/byteorder/big_endian.h" 1
# 12 "/workspace/u-boot/include/linux/byteorder/big_endian.h"
# 1 "/workspace/u-boot/include/linux/byteorder/swab.h" 1
# 99 "/workspace/u-boot/include/linux/byteorder/swab.h"
static __inline__ __attribute__((const)) __u16 __fswab16(__u16 x)
{
 return ((__u16)( (((__u16)(x) & (__u16)0x00ffU) << 8) | (((__u16)(x) & (__u16)0xff00U) >> 8) ));
}
static __inline__ __u16 __swab16p(__u16 *x)
{
 return (__builtin_constant_p((__u16)(*(x))) ? ((__u16)( (((__u16)((*(x))) & (__u16)0x00ffU) << 8) | (((__u16)((*(x))) & (__u16)0xff00U) >> 8) )) : __fswab16((*(x))));
}
static __inline__ void __swab16s(__u16 *addr)
{
 do { *(addr) = __swab16p((addr)); } while (0);
}

static __inline__ __attribute__((const)) __u32 __fswab32(__u32 x)
{
 return ((__u32)( (((__u32)(x) & (__u32)0x000000ffUL) << 24) | (((__u32)(x) & (__u32)0x0000ff00UL) << 8) | (((__u32)(x) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(x) & (__u32)0xff000000UL) >> 24) ));
}
static __inline__ __u32 __swab32p(__u32 *x)
{
 return (__builtin_constant_p((__u32)(*(x))) ? ((__u32)( (((__u32)((*(x))) & (__u32)0x000000ffUL) << 24) | (((__u32)((*(x))) & (__u32)0x0000ff00UL) << 8) | (((__u32)((*(x))) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((*(x))) & (__u32)0xff000000UL) >> 24) )) : __fswab32((*(x))));
}
static __inline__ void __swab32s(__u32 *addr)
{
 do { *(addr) = __swab32p((addr)); } while (0);
}


static __inline__ __attribute__((const)) __u64 __fswab64(__u64 x)
{

 __u32 h = x >> 32;
 __u32 l = x & ((1ULL<<32)-1);
 return (((__u64)(__builtin_constant_p((__u32)(l)) ? ((__u32)( (((__u32)((l)) & (__u32)0x000000ffUL) << 24) | (((__u32)((l)) & (__u32)0x0000ff00UL) << 8) | (((__u32)((l)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((l)) & (__u32)0xff000000UL) >> 24) )) : __fswab32((l)))) << 32) | ((__u64)((__builtin_constant_p((__u32)(h)) ? ((__u32)( (((__u32)((h)) & (__u32)0x000000ffUL) << 24) | (((__u32)((h)) & (__u32)0x0000ff00UL) << 8) | (((__u32)((h)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((h)) & (__u32)0xff000000UL) >> 24) )) : __fswab32((h)))));



}
static __inline__ __u64 __swab64p(__u64 *x)
{
 return (__builtin_constant_p((__u64)(*(x))) ? ((__u64)( (__u64)(((__u64)((*(x))) & (__u64)0x00000000000000ffULL) << 56) | (__u64)(((__u64)((*(x))) & (__u64)0x000000000000ff00ULL) << 40) | (__u64)(((__u64)((*(x))) & (__u64)0x0000000000ff0000ULL) << 24) | (__u64)(((__u64)((*(x))) & (__u64)0x00000000ff000000ULL) << 8) | (__u64)(((__u64)((*(x))) & (__u64)0x000000ff00000000ULL) >> 8) | (__u64)(((__u64)((*(x))) & (__u64)0x0000ff0000000000ULL) >> 24) | (__u64)(((__u64)((*(x))) & (__u64)0x00ff000000000000ULL) >> 40) | (__u64)(((__u64)((*(x))) & (__u64)0xff00000000000000ULL) >> 56) )) : __fswab64((*(x))));
}
static __inline__ void __swab64s(__u64 *addr)
{
 do { *(addr) = __swab64p((addr)); } while (0);
}
# 13 "/workspace/u-boot/include/linux/byteorder/big_endian.h" 2
# 67 "/workspace/u-boot/include/linux/byteorder/big_endian.h"
# 1 "/workspace/u-boot/include/linux/byteorder/generic.h" 1
# 150 "/workspace/u-boot/include/linux/byteorder/generic.h"
extern __u32 ntohl(__u32);
extern __u32 htonl(__u32);




extern unsigned short int ntohs(unsigned short int);
extern unsigned short int htons(unsigned short int);
# 68 "/workspace/u-boot/include/linux/byteorder/big_endian.h" 2
# 25 "/workspace/u-boot/include/asm/byteorder.h" 2
# 14 "/workspace/u-boot/include/asm/bitops.h" 2



# 1 "/workspace/u-boot/include/asm/sgidefs.h" 1
# 18 "/workspace/u-boot/include/asm/bitops.h" 2
# 1 "/workspace/u-boot/include/asm/system.h" 1
# 21 "/workspace/u-boot/include/asm/system.h"
# 1 "/workspace/u-boot/include/asm/ptrace.h" 1
# 14 "/workspace/u-boot/include/asm/ptrace.h"
# 1 "/workspace/u-boot/include/asm/isadep.h" 1
# 15 "/workspace/u-boot/include/asm/ptrace.h" 2
# 32 "/workspace/u-boot/include/asm/ptrace.h"
struct pt_regs {

 unsigned long pad0[6];


 unsigned long regs[32];


 unsigned long lo;
 unsigned long hi;




 unsigned long cp0_epc;
 unsigned long cp0_badvaddr;
 unsigned long cp0_status;
 unsigned long cp0_cause;
};
# 81 "/workspace/u-boot/include/asm/ptrace.h"
extern void show_regs(struct pt_regs *);
# 22 "/workspace/u-boot/include/asm/system.h" 2




static __inline__ void
__sti(void)
{
 __asm__ __volatile__(
  ".set\tpush\n\t"
  ".set\treorder\n\t"
  ".set\tnoat\n\t"
  "mfc0\t$1,$12\n\t"
  "ori\t$1,0x1f\n\t"
  "xori\t$1,0x1e\n\t"
  "mtc0\t$1,$12\n\t"
  ".set\tpop\n\t"
  :
  :
  : "$1", "memory");
}
# 50 "/workspace/u-boot/include/asm/system.h"
static __inline__ void
__cli(void)
{
 __asm__ __volatile__(
  ".set\tpush\n\t"
  ".set\treorder\n\t"
  ".set\tnoat\n\t"
  "mfc0\t$1,$12\n\t"
  "ori\t$1,1\n\t"
  "xori\t$1,1\n\t"
  ".set\tnoreorder\n\t"
  "mtc0\t$1,$12\n\t"
  "nop\n\t"
  "nop\n\t"
  "nop\n\t"
  ".set\tpop\n\t"
  :
  :
  : "$1", "memory");
}
# 211 "/workspace/u-boot/include/asm/system.h"
static __inline__ unsigned long xchg_u32(volatile int * m, unsigned long val)
{
# 232 "/workspace/u-boot/include/asm/system.h"
 unsigned long flags, retval;

 __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" "mfc0\t%0,$12\n\t" ".set\tpop\n\t" : "=r" (flags));
 __cli();
 retval = *m;
 *m = val;
 do { unsigned long __tmp1; __asm__ __volatile__( ".set\tnoreorder\t\t\t# __restore_flags\n\t" ".set\tnoat\n\t" "mfc0\t$1, $12\n\t" "andi\t%0, 1\n\t" "ori\t$1, 1\n\t" "xori\t$1, 1\n\t" "or\t%0, $1\n\t" "mtc0\t%0, $12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tat\n\t" ".set\treorder" : "=r" (__tmp1) : "0" (flags) : "$1", "memory"); } while(0);
 return retval;

}




static __inline__ unsigned long
__xchg(unsigned long x, volatile void * ptr, int size)
{
 switch (size) {
  case 4:
   return xchg_u32(ptr, x);
 }
 return x;
}

extern void *set_except_vector(int n, void *addr);

extern void __die(const char *, struct pt_regs *, const char *where,
 unsigned long line) __attribute__((noreturn));
extern void __die_if_kernel(const char *, struct pt_regs *, const char *where,
 unsigned long line);
# 19 "/workspace/u-boot/include/asm/bitops.h" 2
# 325 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ void set_bit(int nr, volatile void * addr)
{
 int mask;
 volatile int *a = addr;
 unsigned long flags;

 a += nr >> 5;
 mask = 1 << (nr & 0x1f);
 __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" ".set\tnoat\n\t" "mfc0\t%0,$12\n\t" "ori\t$1,%0,1\n\t" "xori\t$1,1\n\t" ".set\tnoreorder\n\t" "mtc0\t$1,$12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tpop\n\t" : "=r" (flags) : : "$1", "memory");
 *a |= mask;
 do { unsigned long __tmp1; __asm__ __volatile__( ".set\tnoreorder\t\t\t# __restore_flags\n\t" ".set\tnoat\n\t" "mfc0\t$1, $12\n\t" "andi\t%0, 1\n\t" "ori\t$1, 1\n\t" "xori\t$1, 1\n\t" "or\t%0, $1\n\t" "mtc0\t%0, $12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tat\n\t" ".set\treorder" : "=r" (__tmp1) : "0" (flags) : "$1", "memory"); } while(0);
}
# 347 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ void __set_bit(int nr, volatile void * addr)
{
 int mask;
 volatile int *a = addr;

 a += nr >> 5;
 mask = 1 << (nr & 0x1f);
 *a |= mask;
}
# 367 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ void clear_bit(int nr, volatile void * addr)
{
 int mask;
 volatile int *a = addr;
 unsigned long flags;

 a += nr >> 5;
 mask = 1 << (nr & 0x1f);
 __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" ".set\tnoat\n\t" "mfc0\t%0,$12\n\t" "ori\t$1,%0,1\n\t" "xori\t$1,1\n\t" ".set\tnoreorder\n\t" "mtc0\t$1,$12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tpop\n\t" : "=r" (flags) : : "$1", "memory");
 *a &= ~mask;
 do { unsigned long __tmp1; __asm__ __volatile__( ".set\tnoreorder\t\t\t# __restore_flags\n\t" ".set\tnoat\n\t" "mfc0\t$1, $12\n\t" "andi\t%0, 1\n\t" "ori\t$1, 1\n\t" "xori\t$1, 1\n\t" "or\t%0, $1\n\t" "mtc0\t%0, $12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tat\n\t" ".set\treorder" : "=r" (__tmp1) : "0" (flags) : "$1", "memory"); } while(0);
}
# 389 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ void change_bit(int nr, volatile void * addr)
{
 int mask;
 volatile int *a = addr;
 unsigned long flags;

 a += nr >> 5;
 mask = 1 << (nr & 0x1f);
 __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" ".set\tnoat\n\t" "mfc0\t%0,$12\n\t" "ori\t$1,%0,1\n\t" "xori\t$1,1\n\t" ".set\tnoreorder\n\t" "mtc0\t$1,$12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tpop\n\t" : "=r" (flags) : : "$1", "memory");
 *a ^= mask;
 do { unsigned long __tmp1; __asm__ __volatile__( ".set\tnoreorder\t\t\t# __restore_flags\n\t" ".set\tnoat\n\t" "mfc0\t$1, $12\n\t" "andi\t%0, 1\n\t" "ori\t$1, 1\n\t" "xori\t$1, 1\n\t" "or\t%0, $1\n\t" "mtc0\t%0, $12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tat\n\t" ".set\treorder" : "=r" (__tmp1) : "0" (flags) : "$1", "memory"); } while(0);
}
# 411 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ void __change_bit(int nr, volatile void * addr)
{
 unsigned long * m = ((unsigned long *) addr) + (nr >> 5);

 *m ^= 1UL << (nr & 31);
}
# 426 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ int test_and_set_bit(int nr, volatile void * addr)
{
 int mask, retval;
 volatile int *a = addr;
 unsigned long flags;

 a += nr >> 5;
 mask = 1 << (nr & 0x1f);
 __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" ".set\tnoat\n\t" "mfc0\t%0,$12\n\t" "ori\t$1,%0,1\n\t" "xori\t$1,1\n\t" ".set\tnoreorder\n\t" "mtc0\t$1,$12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tpop\n\t" : "=r" (flags) : : "$1", "memory");
 retval = (mask & *a) != 0;
 *a |= mask;
 do { unsigned long __tmp1; __asm__ __volatile__( ".set\tnoreorder\t\t\t# __restore_flags\n\t" ".set\tnoat\n\t" "mfc0\t$1, $12\n\t" "andi\t%0, 1\n\t" "ori\t$1, 1\n\t" "xori\t$1, 1\n\t" "or\t%0, $1\n\t" "mtc0\t%0, $12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tat\n\t" ".set\treorder" : "=r" (__tmp1) : "0" (flags) : "$1", "memory"); } while(0);

 return retval;
}
# 451 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ int __test_and_set_bit(int nr, volatile void * addr)
{
 int mask, retval;
 volatile int *a = addr;

 a += nr >> 5;
 mask = 1 << (nr & 0x1f);
 retval = (mask & *a) != 0;
 *a |= mask;

 return retval;
}
# 472 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ int test_and_clear_bit(int nr, volatile void * addr)
{
 int mask, retval;
 volatile int *a = addr;
 unsigned long flags;

 a += nr >> 5;
 mask = 1 << (nr & 0x1f);
 __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" ".set\tnoat\n\t" "mfc0\t%0,$12\n\t" "ori\t$1,%0,1\n\t" "xori\t$1,1\n\t" ".set\tnoreorder\n\t" "mtc0\t$1,$12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tpop\n\t" : "=r" (flags) : : "$1", "memory");
 retval = (mask & *a) != 0;
 *a &= ~mask;
 do { unsigned long __tmp1; __asm__ __volatile__( ".set\tnoreorder\t\t\t# __restore_flags\n\t" ".set\tnoat\n\t" "mfc0\t$1, $12\n\t" "andi\t%0, 1\n\t" "ori\t$1, 1\n\t" "xori\t$1, 1\n\t" "or\t%0, $1\n\t" "mtc0\t%0, $12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tat\n\t" ".set\treorder" : "=r" (__tmp1) : "0" (flags) : "$1", "memory"); } while(0);

 return retval;
}
# 497 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ int __test_and_clear_bit(int nr, volatile void * addr)
{
 int mask, retval;
 volatile int *a = addr;

 a += nr >> 5;
 mask = 1 << (nr & 0x1f);
 retval = (mask & *a) != 0;
 *a &= ~mask;

 return retval;
}
# 518 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ int test_and_change_bit(int nr, volatile void * addr)
{
 int mask, retval;
 volatile int *a = addr;
 unsigned long flags;

 a += nr >> 5;
 mask = 1 << (nr & 0x1f);
 __asm__ __volatile__( ".set\tpush\n\t" ".set\treorder\n\t" ".set\tnoat\n\t" "mfc0\t%0,$12\n\t" "ori\t$1,%0,1\n\t" "xori\t$1,1\n\t" ".set\tnoreorder\n\t" "mtc0\t$1,$12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tpop\n\t" : "=r" (flags) : : "$1", "memory");
 retval = (mask & *a) != 0;
 *a ^= mask;
 do { unsigned long __tmp1; __asm__ __volatile__( ".set\tnoreorder\t\t\t# __restore_flags\n\t" ".set\tnoat\n\t" "mfc0\t$1, $12\n\t" "andi\t%0, 1\n\t" "ori\t$1, 1\n\t" "xori\t$1, 1\n\t" "or\t%0, $1\n\t" "mtc0\t%0, $12\n\t" "nop\n\t" "nop\n\t" "nop\n\t" ".set\tat\n\t" ".set\treorder" : "=r" (__tmp1) : "0" (flags) : "$1", "memory"); } while(0);

 return retval;
}
# 543 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ int __test_and_change_bit(int nr, volatile void * addr)
{
 int mask, retval;
 volatile int *a = addr;

 a += nr >> 5;
 mask = 1 << (nr & 0x1f);
 retval = (mask & *a) != 0;
 *a ^= mask;

 return retval;
}
# 568 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ int test_bit(int nr, volatile void *addr)
{
 return ((1UL << (nr & 31)) & (((const unsigned int *) addr)[nr >> 5])) != 0;
}
# 682 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ unsigned long ffz(unsigned long word)
{
 unsigned int __res;
 unsigned int mask = 1;

 __asm__ (
  ".set\tnoreorder\n\t"
  ".set\tnoat\n\t"
  "move\t%0,$0\n"
  "1:\tand\t$1,%2,%1\n\t"
  "beqz\t$1,2f\n\t"
  "sll\t%1,1\n\t"
  "bnez\t%1,1b\n\t"
  "addiu\t%0,1\n\t"
  ".set\tat\n\t"
  ".set\treorder\n"
  "2:\n\t"
  : "=&r" (__res), "=r" (mask)
  : "r" (word), "1" (mask)
  : "$1");

 return __res;
}
# 739 "/workspace/u-boot/include/asm/bitops.h"
static __inline__ int find_next_zero_bit(void *addr, int size, int offset)
{
 unsigned long *p = ((unsigned long *) addr) + (offset >> 5);
 unsigned long result = offset & ~31UL;
 unsigned long tmp;

 if (offset >= size)
  return size;
 size -= result;
 offset &= 31UL;
 if (offset) {
  tmp = *(p++);
  tmp |= ~0UL >> (32-offset);
  if (size < 32)
   goto found_first;
  if (~tmp)
   goto found_middle;
  size -= 32;
  result += 32;
 }
 while (size & ~31UL) {
  if (~(tmp = *(p++)))
   goto found_middle;
  result += 32;
  size -= 32;
 }
 if (!size)
  return result;
 tmp = *p;

found_first:
 tmp |= ~0UL << size;
found_middle:
 return result + ffz(tmp);
}
# 70 "/workspace/u-boot/include/linux/bitops.h" 2
# 37 "/workspace/u-boot/include/common.h" 2

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
# 39 "/workspace/u-boot/include/common.h" 2

# 1 "/workspace/build/OpenWrt-SDK-15.05.1-ar71xx-generic_gcc-4.8-linaro_uClibc-0.9.33.2.Linux-x86_64/staging_dir/toolchain-mips_34kc_gcc-4.8-linaro_uClibc-0.9.33.2/lib/gcc/mips-openwrt-linux-uclibc/4.8.3/include/stdarg.h" 1 3 4
# 40 "/workspace/build/OpenWrt-SDK-15.05.1-ar71xx-generic_gcc-4.8-linaro_uClibc-0.9.33.2.Linux-x86_64/staging_dir/toolchain-mips_34kc_gcc-4.8-linaro_uClibc-0.9.33.2/lib/gcc/mips-openwrt-linux-uclibc/4.8.3/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "/workspace/build/OpenWrt-SDK-15.05.1-ar71xx-generic_gcc-4.8-linaro_uClibc-0.9.33.2.Linux-x86_64/staging_dir/toolchain-mips_34kc_gcc-4.8-linaro_uClibc-0.9.33.2/lib/gcc/mips-openwrt-linux-uclibc/4.8.3/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 41 "/workspace/u-boot/include/common.h" 2
# 100 "/workspace/u-boot/include/common.h"
# 1 "/workspace/u-boot/include/part.h" 1
# 25 "/workspace/u-boot/include/part.h"
# 1 "/workspace/u-boot/include/ide.h" 1
# 44 "/workspace/u-boot/include/ide.h"
typedef ulong lbaint_t;






void ide_init (void);
ulong ide_read (int device, lbaint_t blknr, ulong blkcnt, ulong *buffer);
ulong ide_write (int device, lbaint_t blknr, ulong blkcnt, ulong *buffer);
# 26 "/workspace/u-boot/include/part.h" 2

typedef struct block_dev_desc {
 int if_type;
 int dev;
 unsigned char part_type;
 unsigned char target;
 unsigned char lun;
 unsigned char type;
 unsigned char removable;



 lbaint_t lba;
 unsigned long blksz;
 unsigned char vendor [40+1];
 unsigned char product[20+1];
 unsigned char revision[8+1];
 unsigned long (*block_read)(int dev,
          unsigned long start,
          lbaint_t blkcnt,
          unsigned long *buffer);
}block_dev_desc_t;
# 78 "/workspace/u-boot/include/part.h"
typedef struct disk_partition {
 ulong start;
 ulong size;
 ulong blksz;
 uchar name[32];
 uchar type[32];
} disk_partition_t;


int get_partition_info (block_dev_desc_t * dev_desc, int part, disk_partition_t *info);
void print_part (block_dev_desc_t *dev_desc);
void init_part (block_dev_desc_t *dev_desc);
void dev_print(block_dev_desc_t *dev_desc);
# 101 "/workspace/u-boot/include/common.h" 2
# 1 "/workspace/u-boot/include/flash.h" 1
# 32 "/workspace/u-boot/include/flash.h"
typedef struct {
 ulong size;
 ushort sector_count;
 ulong flash_id;
 ulong start[64];
 uchar protect[64];
# 50 "/workspace/u-boot/include/flash.h"
} flash_info_t;
# 79 "/workspace/u-boot/include/flash.h"
extern unsigned long flash_init (void);
extern void flash_print_info (flash_info_t *);
extern int flash_erase (flash_info_t *, int, int);
extern int flash_sect_erase (ulong addr_first, ulong addr_last);
extern int flash_sect_protect (int flag, ulong addr_first, ulong addr_last);


extern void flash_protect (int flag, ulong from, ulong to, flash_info_t *info);
extern int flash_write (char *, ulong, ulong);
extern flash_info_t *addr2info (ulong);
extern int write_buff (flash_info_t *info, uchar *src, ulong addr, ulong cnt);
# 102 "/workspace/u-boot/include/common.h" 2
# 1 "/workspace/u-boot/include/image.h" 1
# 143 "/workspace/u-boot/include/image.h"
typedef struct image_header {
 uint32_t ih_magic;
 uint32_t ih_hcrc;
 uint32_t ih_time;
 uint32_t ih_size;
 uint32_t ih_load;
 uint32_t ih_ep;
 uint32_t ih_dcrc;
 uint8_t ih_os;
 uint8_t ih_arch;
 uint8_t ih_type;
 uint8_t ih_comp;
 uint8_t ih_name[32];
} image_header_t;
# 103 "/workspace/u-boot/include/common.h" 2
# 112 "/workspace/u-boot/include/common.h"
typedef void (interrupt_handler_t)(void *);

# 1 "/workspace/u-boot/include/asm/u-boot.h" 1
# 34 "/workspace/u-boot/include/asm/u-boot.h"
typedef struct bd_info {
 int bi_baudrate;
 unsigned long bi_ip_addr;
 unsigned char bi_enetaddr[6];
 unsigned long bi_arch_number;
 unsigned long bi_boot_params;
 unsigned long bi_memstart;
 unsigned long bi_memsize;
 unsigned long bi_flashstart;
 unsigned long bi_flashsize;
 unsigned long bi_flashoffset;
} bd_t;
# 115 "/workspace/u-boot/include/common.h" 2
# 1 "/workspace/u-boot/include/asm/global_data.h" 1
# 27 "/workspace/u-boot/include/asm/global_data.h"
# 1 "/workspace/u-boot/include/asm/regdef.h" 1
# 28 "/workspace/u-boot/include/asm/global_data.h" 2
# 39 "/workspace/u-boot/include/asm/global_data.h"
typedef struct global_data {
 bd_t *bd;
 unsigned long flags;
 unsigned long baudrate;
 unsigned long have_console;
 unsigned long ram_size;
 unsigned long reloc_off;
 unsigned long env_addr;
 unsigned long env_valid;
 void **jt;
} gd_t;
# 116 "/workspace/u-boot/include/common.h" 2
# 173 "/workspace/u-boot/include/common.h"
void hang (void) __attribute__ ((noreturn));


long int initdram (int);
int display_options (void);
void print_size (ulong, const char *);


void main_loop (void);
int run_command (const char *cmd, int flag);
int readline (const char *const prompt);
void init_cmd_timeout(void);
void reset_cmd_timeout(void);


void board_init_f (ulong);
void board_init_r (gd_t *, ulong);

int checkboard (char *);



int checkflash (void);
int checkdram (void);
char * strmhz(char *buf, long hz);
int last_stage_init(void);
extern ulong monitor_flash_len;


void flash_perror (int);


int autoscript (ulong addr);


void print_image_hdr (image_header_t *hdr);

extern ulong load_addr;


int env_init (void);
void env_relocate (void);
char *getenv (char *);
int getenv_r (char *name, char *buf, unsigned len);
int saveenv (void);



void setenv (char *, char *);
# 236 "/workspace/u-boot/include/common.h"
void pci_init (void);

int pci_init_board(void);



void pciinfo (int, int);
# 257 "/workspace/u-boot/include/common.h"
int misc_init_f (void);
int misc_init_r (void);


void jumptable_init(void);


int get_ram_size (volatile long *, long);


void reset_phy (void);
void fdc_hw_init (void);


void eeprom_init (void);

int eeprom_probe (unsigned dev_addr, unsigned offset);

int eeprom_read (unsigned dev_addr, unsigned offset, uchar *buffer, unsigned cnt);
int eeprom_write (unsigned dev_addr, unsigned offset, uchar *buffer, unsigned cnt);
# 303 "/workspace/u-boot/include/common.h"
void rpxlite_init (void);
# 330 "/workspace/u-boot/include/common.h"
void load_sernum_ethaddr (void);


int board_early_init_f (void);
int board_late_init (void);
int board_postclk_init (void);
int board_early_init_r (void);
void board_poweroff (void);
# 348 "/workspace/u-boot/include/common.h"
uint get_pir (void);



uint get_pvr (void);
uint get_svr (void);
uint rd_ic_cst (void);
void wr_ic_cst (uint);
void wr_ic_adr (uint);
uint rd_dc_cst (void);
void wr_dc_cst (uint);
void wr_dc_adr (uint);
int icache_status (void);
void icache_enable (void);
void icache_disable(void);
int dcache_status (void);
void dcache_enable (void);
void dcache_disable(void);
void relocate_code (ulong, gd_t *, ulong);
void ar7240_ddr_tap_init(void);
ulong get_endaddr (void);
void trap_init (ulong);
# 396 "/workspace/u-boot/include/common.h"
int checkcpu (void);
int checkicache (void);
int checkdcache (void);
void upmconfig (unsigned int, unsigned int *, unsigned int);
ulong get_tbclk (void);
void reset_cpu (ulong addr);


int serial_init (void);
void serial_addr (unsigned int);
void serial_setbrg (void);
void serial_putc (const char);
void serial_putc_raw(const char);
void serial_puts (const char *);
int serial_getc (void);
int serial_tstc (void);

void _serial_setbrg (const int);
void _serial_putc (const char, const int);
void _serial_putc_raw(const char, const int);
void _serial_puts (const char *, const int);
int _serial_getc (const int);
int _serial_tstc (const int);


int get_clocks (void);
int get_clocks_866 (void);
int sdram_adjust_866 (void);
int adjust_sdram_tbs_8xx (void);
# 460 "/workspace/u-boot/include/common.h"
ulong get_bus_freq (ulong);
# 484 "/workspace/u-boot/include/common.h"
int cpu_init_r (void);





int interrupt_init (void);
void timer_interrupt (struct pt_regs *);
void external_interrupt (struct pt_regs *);
void irq_install_handler(int, interrupt_handler_t *, void *);
void irq_free_handler (int);
void reset_timer (void);
ulong get_timer (ulong base);
void set_timer (ulong t);
void enable_interrupts (void);
int disable_interrupts (void);


int dpram_init (void);
uint dpram_base(void);
uint dpram_base_align(uint align);
uint dpram_alloc(uint size);
uint dpram_alloc_align(uint size,uint align);
void post_word_store (ulong);
ulong post_word_load (void);
void bootcount_store (ulong);
ulong bootcount_load (void);



void mii_init (void);


ulong lcd_setmem (ulong);


ulong vfd_setmem (ulong);


ulong video_setmem (ulong);


void flush_cache (unsigned long, unsigned long);



unsigned long long get_ticks(void);
void wait_ticks (unsigned long);


void udelay (unsigned long);
ulong usec2ticks (unsigned long usec);
ulong ticks2usec (unsigned long ticks);
int init_timebase (void);


ulong simple_strtoul(const char *cp,char **endp,unsigned int base);



long simple_strtol(const char *cp,char **endp,unsigned int base);
void panic(const char *fmt, ...);
int sprintf(char * buf, const char *fmt, ...);
int vsprintf(char *buf, const char *fmt, va_list args);


ulong crc32 (ulong, const unsigned char *, uint);
ulong crc32_no_comp (ulong, const unsigned char *, uint);


int console_init_f(void);
int console_init_r(void);
int console_assign (int file, char *devname);
int ctrlc (void);
int had_ctrlc (void);
void clear_ctrlc (void);
int disable_ctrlc (int);






void serial_printf (const char *fmt, ...);


int getc(void);
int tstc(void);


void putc(const char c);
void puts(const char *s);
void printf(const char *fmt, ...);
void vprintf(const char *fmt, va_list args);
# 593 "/workspace/u-boot/include/common.h"
void fprintf(int file, const char *fmt, ...);
void fputs(int file, const char *s);
void fputc(int file, const char c);
int ftstc(int file);
int fgetc(int file);

int pcmcia_init (void);
# 36 "ds164x.c" 2
# 1 "/workspace/u-boot/include/command.h" 1
# 39 "/workspace/u-boot/include/command.h"
struct cmd_tbl_s {
 char *name;
 int maxargs;
 int repeatable;

 int (*cmd)(struct cmd_tbl_s *, int, int, char *[]);
 char *usage;

 char *help;





};

typedef struct cmd_tbl_s cmd_tbl_t;

extern cmd_tbl_t __u_boot_cmd_start;
extern cmd_tbl_t __u_boot_cmd_end;



cmd_tbl_t *find_cmd(const char *cmd);
# 77 "/workspace/u-boot/include/command.h"
typedef void command_t (cmd_tbl_t *, int, int, char *[]);
# 37 "ds164x.c" 2
# 1 "/workspace/u-boot/include/rtc.h" 1
# 43 "/workspace/u-boot/include/rtc.h"
struct rtc_time {
 int tm_sec;
 int tm_min;
 int tm_hour;
 int tm_mday;
 int tm_mon;
 int tm_year;
 int tm_wday;
 int tm_yday;
 int tm_isdst;
};

void rtc_get (struct rtc_time *);
void rtc_set (struct rtc_time *);
void rtc_reset (void);

void GregorianDay (struct rtc_time *);
void to_tm (int, struct rtc_time *);
unsigned long mktime (unsigned int, unsigned int, unsigned int,
        unsigned int, unsigned int, unsigned int);
# 38 "ds164x.c" 2

# 1 "net.c"
# 1 "/workspace/u-boot/net//"
# 1 "<command-line>"
# 1 "net.c"
# 77 "net.c"
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
# 78 "net.c" 2
# 1 "/workspace/u-boot/include/watchdog.h" 1
# 79 "net.c" 2
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
# 80 "net.c" 2
# 1 "/workspace/u-boot/include/net.h" 1
# 72 "/workspace/u-boot/include/net.h"
typedef ulong IPaddr_t;







typedef void rxhand_f(uchar *, unsigned, unsigned, unsigned);




typedef void thand_f(void);



enum eth_state_t {
 ETH_STATE_INIT,
 ETH_STATE_PASSIVE,
 ETH_STATE_ACTIVE
};

struct eth_device {
 char name[16];
 unsigned char enetaddr[6];
 int iobase;
 int state;

 int (*init) (struct eth_device*, bd_t*);
 int (*send) (struct eth_device*, volatile void* pachet, int length);
 int (*recv) (struct eth_device*);
 void (*halt) (struct eth_device*);

 struct eth_device *next;
 void *priv;
};

extern int eth_initialize(bd_t *bis);
extern int eth_register(struct eth_device* dev);
extern void eth_try_another(int first_restart);

extern void eth_set_current(void);

extern struct eth_device *eth_get_dev(void);
extern struct eth_device *eth_get_dev_by_name(char *devname);
extern int eth_get_dev_index (void);
extern void eth_set_enetaddr(int num, char* a);

extern int eth_init(bd_t *bis);
extern int eth_send(volatile void *packet, int length);
extern int eth_rx(void);
extern void eth_halt(void);
extern char *eth_get_name(void);
# 136 "/workspace/u-boot/include/net.h"
typedef struct {
 uchar et_dest[6];
 uchar et_src[6];
 ushort et_protlen;
 uchar et_dsap;
 uchar et_ssap;
 uchar et_ctl;
 uchar et_snap1;
 uchar et_snap2;
 uchar et_snap3;
 ushort et_prot;
} Ethernet_t;







typedef struct {
 uchar vet_dest[6];
 uchar vet_src[6];
 ushort vet_vlan_type;
 ushort vet_tag;
 ushort vet_type;
} VLAN_Ethernet_t;
# 176 "/workspace/u-boot/include/net.h"
typedef struct {
 uchar ip_hl_v;
 uchar ip_tos;
 ushort ip_len;
 ushort ip_id;
 ushort ip_off;
 uchar ip_ttl;
 uchar ip_p;
 ushort ip_sum;
 IPaddr_t ip_src;
 IPaddr_t ip_dst;
 ushort udp_src;
 ushort udp_dst;
 ushort udp_len;
 ushort udp_xsum;
} IP_t;
# 200 "/workspace/u-boot/include/net.h"
typedef struct
{
 ushort ar_hrd;

 ushort ar_pro;
 uchar ar_hln;
 uchar ar_pln;
 ushort ar_op;
# 219 "/workspace/u-boot/include/net.h"
 uchar ar_data[0];






} ARP_t;
# 241 "/workspace/u-boot/include/net.h"
typedef struct icmphdr {
 uchar type;
 uchar code;
 ushort checksum;
 union {
  struct {
   ushort id;
   ushort sequence;
  } echo;
  ulong gateway;
  struct {
   ushort __unused;
   ushort mtu;
  } frag;
 } un;
} ICMP_t;
# 300 "/workspace/u-boot/include/net.h"
extern IPaddr_t NetOurGatewayIP;
extern IPaddr_t NetOurSubnetMask;
extern IPaddr_t NetOurDNSIP;



extern char NetOurNISDomain[32];
extern char NetOurHostName[32];
extern char NetOurRootPath[64];
extern ushort NetBootFileSize;

extern ulong NetBootFileXferSize;
extern uchar NetOurEther[6];
extern uchar NetServerEther[6];
extern IPaddr_t NetOurIP;
extern IPaddr_t NetServerIP;
extern volatile uchar * NetTxPacket;
extern volatile uchar * NetRxPackets[16];
extern volatile uchar * NetRxPkt;
extern int NetRxPktLen;
extern unsigned NetIPID;
extern uchar NetBcastAddr[6];
extern uchar NetEtherNullAddr[6];



extern ushort NetOurVLAN;
extern ushort NetOurNativeVLAN;

extern uchar NetCDPAddr[6];
extern ushort CDPNativeVLAN;
extern ushort CDPApplianceVLAN;

extern int NetState;






extern int NetRestartWrap;





typedef enum { BOOTP, RARP, ARP, TFTP, DHCP, PING, DNS, NFS, CDP, NETCONS, SNTP } proto_t;



extern char BootFile[128];


extern IPaddr_t NetPingIP;
# 368 "/workspace/u-boot/include/net.h"
extern int NetLoop(proto_t);


extern void NetStop(void);


extern void NetStartAgain(void);


extern int NetEthHdrSize(void);


extern int NetSetEther(volatile uchar *, uchar *, uint);


extern void NetSetIP(volatile uchar *, IPaddr_t, int, int, int);


extern int NetCksumOk(uchar *, int);
extern uint NetCksum(uchar *, int);


extern void NetSetHandler(rxhand_f *);
extern void NetSetTimeout(ulong, thand_f *);


extern void NetSendPacket(volatile uchar *, int);


extern int NetSendUDPPacket(uchar *ether, IPaddr_t dest, int dport, int sport, int len);


extern void NetReceive(volatile uchar *, int);


extern void print_IPaddr (IPaddr_t);
# 413 "/workspace/u-boot/include/net.h"
static inline IPaddr_t NetReadIP(void *from)
{
 IPaddr_t ip;
 memcpy((void*)&ip, from, sizeof(ip));
 return ip;
}


static inline ulong NetReadLong(ulong *from)
{
 ulong l;
 memcpy((void*)&l, (void*)from, sizeof(l));
 return l;
}


static inline void NetWriteIP(void *to, IPaddr_t ip)
{
 memcpy(to, (void*)&ip, sizeof(ip));
}


static inline void NetCopyIP(void *to, void *from)
{
 memcpy(to, from, sizeof(IPaddr_t));
}


static inline void NetCopyLong(ulong *to, ulong *from)
{
 memcpy((void*)to, (void*)from, sizeof(ulong));
}


extern void ip_to_string (IPaddr_t x, char *s);


extern IPaddr_t string_to_ip(char *s);


extern void VLAN_to_string (ushort x, char *s);


extern ushort string_to_VLAN(char *s);


extern IPaddr_t getenv_IPaddr (char *);


extern ushort getenv_VLAN(char *);


extern void copy_filename (char *dst, char *src, int size);
# 81 "net.c" 2
# 1 "bootp.h" 1
# 27 "bootp.h"
typedef struct
{
 uchar bp_op;


 uchar bp_htype;

 uchar bp_hlen;

 uchar bp_hops;
 ulong bp_id;
 ushort bp_secs;
 ushort bp_spare1;
 IPaddr_t bp_ciaddr;
 IPaddr_t bp_yiaddr;
 IPaddr_t bp_siaddr;
 IPaddr_t bp_giaddr;
 uchar bp_chaddr[16];
 char bp_sname[64];
 char bp_file[128];
 char bp_vend[64];
} Bootp_t;
# 59 "bootp.h"
extern ulong BootpID;
extern char BootFile[128];
extern int BootpTry;






extern void BootpRequest (void);


extern void DhcpRequest(void);


typedef enum { INIT,
        INIT_REBOOT,
        REBOOTING,
        SELECTING,
        REQUESTING,
        REBINDING,
        BOUND,
        RENEWING } dhcp_state_t;
# 82 "net.c" 2
# 1 "tftp.h" 1
# 17 "tftp.h"
extern void TftpStart (void);
# 83 "net.c" 2
# 1 "rarp.h" 1
# 38 "rarp.h"
extern int RarpTry;

extern void RarpRequest (void);
# 84 "net.c" 2
# 1 "nfs.h" 1
# 46 "nfs.h"
struct rpc_t {
 union {
  uint8_t data[2048];
  struct {
   uint32_t id;
   uint32_t type;
   uint32_t rpcvers;
   uint32_t prog;
   uint32_t vers;
   uint32_t proc;
   uint32_t data[1];
  } call;
  struct {
   uint32_t id;
   uint32_t type;
   uint32_t rstatus;
   uint32_t verifier;
   uint32_t v2;
   uint32_t astatus;
   uint32_t data[19];
  } reply;
 } u;
};
extern void NfsStart (void);
# 85 "net.c" 2
# 95 "net.c"
register volatile gd_t *gd asm ("k0");
# 110 "net.c"
IPaddr_t NetOurSubnetMask=0;
IPaddr_t NetOurGatewayIP=0;
IPaddr_t NetOurDNSIP=0;



char NetOurNISDomain[32]={0,};
char NetOurHostName[32]={0,};
char NetOurRootPath[64]={0,};
ushort NetBootFileSize=0;



ulong NetBootFileXferSize;
uchar NetOurEther[6];
uchar NetServerEther[6] =
   { 0, 0, 0, 0, 0, 0 };
IPaddr_t NetOurIP;
IPaddr_t NetServerIP;
volatile uchar *NetRxPkt;
int NetRxPktLen;
unsigned NetIPID;
uchar NetBcastAddr[6] =
   { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };
uchar NetEtherNullAddr[6] =
   { 0, 0, 0, 0, 0, 0 };




int NetState;

int NetRestartWrap = 0;
static int NetRestarted = 0;
static int NetDevExists = 0;



ushort NetOurVLAN = 0xFFFF;
ushort NetOurNativeVLAN = 0xFFFF;

char BootFile[128];


IPaddr_t NetPingIP;

static void PingStart(void);
# 176 "net.c"
volatile uchar PktBuf[(16 +1) * 1536 + 32];

volatile uchar *NetRxPackets[16];

static rxhand_f *packetHandler;
static thand_f *timeHandler;
static ulong timeStart;
static ulong timeDelta;
volatile uchar *NetTxPacket = 0;

static int net_check_prereq (proto_t protocol);



IPaddr_t NetArpWaitPacketIP;
IPaddr_t NetArpWaitReplyIP;
uchar *NetArpWaitPacketMAC;
uchar *NetArpWaitTxPacket;
int NetArpWaitTxPacketSize;
uchar NetArpWaitPacketBuf[1536 + 32];
ulong NetArpWaitTimerStart;
int NetArpWaitTry;

void ArpRequest (void)
{
 int i;
 volatile uchar *pkt;
 ARP_t *arp;




 pkt = NetTxPacket;

 pkt += NetSetEther (pkt, NetBcastAddr, 0x0806);

 arp = (ARP_t *) pkt;

 arp->ar_hrd = ((__u16)(1));
 arp->ar_pro = ((__u16)(0x0800));
 arp->ar_hln = 6;
 arp->ar_pln = 4;
 arp->ar_op = ((__u16)(1));

 memcpy (&arp->ar_data[0], NetOurEther, 6);
 NetWriteIP ((uchar *) & arp->ar_data[6], NetOurIP);
 for (i = 10; i < 16; ++i) {
  arp->ar_data[i] = 0;
 }

 if ((NetArpWaitPacketIP & NetOurSubnetMask) !=
     (NetOurIP & NetOurSubnetMask)) {
  if (NetOurGatewayIP == 0) {
   puts ("## Warning: gatewayip needed but not set\n");
   NetArpWaitReplyIP = NetArpWaitPacketIP;
  } else {
   NetArpWaitReplyIP = NetOurGatewayIP;
  }
 } else {
  NetArpWaitReplyIP = NetArpWaitPacketIP;
 }

 NetWriteIP ((uchar *) & arp->ar_data[16], NetArpWaitReplyIP);
 (void) eth_send (NetTxPacket, (pkt - NetTxPacket) + (8+20));
}

void ArpTimeoutCheck(void)
{
 ulong t;

 if (!NetArpWaitPacketIP)
  return;

 t = get_timer(0);


 if ((t - NetArpWaitTimerStart) > 5 * ((((((((((22) << 6) & 0x00000fc0)) & 0x00000fc0) >> 6)) * (40) * 1000000)) / 2)) {
  NetArpWaitTry++;

  if (NetArpWaitTry >= 5) {
   puts ("\nARP Retry count exceeded; starting again\n");
   NetArpWaitTry = 0;
   NetStartAgain();
  } else {
   NetArpWaitTimerStart = t;
   ArpRequest();
  }
 }
}






int
NetLoop(proto_t protocol)
{
 bd_t *bd = gd->bd;





 NetRestarted = 0;
 NetDevExists = 0;



 NetArpWaitPacketMAC = ((void *)0);
 NetArpWaitTxPacket = ((void *)0);
 NetArpWaitPacketIP = 0;
 NetArpWaitReplyIP = 0;
 NetArpWaitTxPacket = ((void *)0);
 NetTxPacket = ((void *)0);

 if (!NetTxPacket) {
  int i;



  NetTxPacket = &PktBuf[0] + (32 - 1);
  NetTxPacket -= (ulong)NetTxPacket % 32;
  for (i = 0; i < 16; i++) {
   NetRxPackets[i] = NetTxPacket + (i+1)*1536;
  }
 }

 if (!NetArpWaitTxPacket) {
  NetArpWaitTxPacket = &NetArpWaitPacketBuf[0] + (32 - 1);
  NetArpWaitTxPacket -= (ulong)NetArpWaitTxPacket % 32;
  NetArpWaitTxPacketSize = 0;
 }
# 319 "net.c"
 eth_halt();
# 333 "net.c"
 setenv("ethact", "eth1");



 eth_set_current();

 if (eth_init(bd) < 0) {
  eth_halt();
  return(-1);
 }


restart:

 memcpy (NetOurEther, eth_get_dev()->enetaddr, 6);




 NetState = 1;







 switch (protocol) {




 case PING:




 case NETCONS:
 case TFTP:
  NetCopyIP(&NetOurIP, &bd->bi_ip_addr);
  NetOurGatewayIP = getenv_IPaddr ("gatewayip");
  NetOurSubnetMask= getenv_IPaddr ("netmask");
  NetOurVLAN = getenv_VLAN("vlan");
  NetOurNativeVLAN = getenv_VLAN("nvlan");

  switch (protocol) {



  case NETCONS:
  case TFTP:
   NetServerIP = getenv_IPaddr ("serverip");
   break;

  case PING:

   break;






  default:
   break;
  }

  break;
 case BOOTP:
 case RARP:




  NetOurIP = 0;
  NetServerIP = getenv_IPaddr ("serverip");
  NetOurVLAN = getenv_VLAN("vlan");
  NetOurNativeVLAN = getenv_VLAN("nvlan");
 case CDP:
  NetOurVLAN = getenv_VLAN("vlan");
  NetOurNativeVLAN = getenv_VLAN("nvlan");
  break;





 default:
  break;
 }





 switch (net_check_prereq (protocol)) {
 case 1:

  eth_halt();
  return (-1);


 case 2:

  break;


 case 0:

  NetDevExists = 1;

  switch (protocol) {
  case TFTP:

   TftpStart();
   break;
# 471 "net.c"
  case PING:
   PingStart();
   break;
# 496 "net.c"
  default:
   break;
  }

  NetBootFileXferSize = 0;
  break;
 }
# 521 "net.c"
skip_netloop:
 for (;;) {
  {};
# 534 "net.c"
   eth_rx();




  if (ctrlc()) {
   eth_halt();
   puts ("\nAbort\n");
   return (-1);
  }




  ArpTimeoutCheck();






  if (timeHandler && ((get_timer(0) - timeStart) > timeDelta)) {
   thand_f *x;
# 573 "net.c"
   x = timeHandler;
   timeHandler = (thand_f *)0;
   (*x)();
  }
  switch (NetState) {

  case 2:

   NetRestarted = 1;

   goto restart;

  case 3:





   if (NetBootFileXferSize > 0) {
    char buf[10];
    printf("Bytes transferred = %ld (%lx hex)\n",
     NetBootFileXferSize,
     NetBootFileXferSize);

    sprintf(buf, "%lx", NetBootFileXferSize);
    setenv("filesize", buf);

    sprintf(buf, "%lX", (unsigned long)load_addr);
    setenv("fileaddr", buf);
   }
   eth_halt();
   return NetBootFileXferSize;

  case 4:
   return (-1);
  }
 }
}



static void
startAgainTimeout(void)
{
 NetState = 2;
}

static void
startAgainHandler(uchar * pkt, unsigned dest, unsigned src, unsigned len)
{

}

void NetStartAgain (void)
{

 extern ushort fw_recovery;

 if(fw_recovery != 0)
  return;


 char *nretry;
 int noretry = 0, once = 0;

 if ((nretry = getenv ("netretry")) != ((void *)0)) {
  noretry = (strcmp (nretry, "no") == 0);
  once = (strcmp (nretry, "once") == 0);
 }
 if (noretry) {
  eth_halt ();
  NetState = 4;
  return;
 }




 eth_halt ();
 eth_try_another (!NetRestarted);
 eth_init (gd->bd);
 if (NetRestartWrap) {
  NetRestartWrap = 0;
  if (NetDevExists && !once) {
   NetSetTimeout (10 * ((((((((((22) << 6) & 0x00000fc0)) & 0x00000fc0) >> 6)) * (40) * 1000000)) / 2), startAgainTimeout);
   NetSetHandler (startAgainHandler);
  } else {
   NetState = 4;
  }
 } else {
  NetState = 2;
 }

}






void
NetSetHandler(rxhand_f * f)
{
 packetHandler = f;
}


void
NetSetTimeout(ulong iv, thand_f * f)
{
 if (iv == 0) {
  timeHandler = (thand_f *)0;
 } else {
  timeHandler = f;
  timeStart = get_timer(0);
  timeDelta = iv;
 }
}


void
NetSendPacket(volatile uchar * pkt, int len)
{
 (void) eth_send(pkt, len);
}

int
NetSendUDPPacket(uchar *ether, IPaddr_t dest, int dport, int sport, int len)
{
 uchar *pkt;


 if (dest == 0)
  dest = 0xFFFFFFFF;


 if (dest == 0xFFFFFFFF)
  ether = NetBcastAddr;


 if (memcmp(ether, NetEtherNullAddr, 6) == 0) {




  NetArpWaitPacketIP = dest;
  NetArpWaitPacketMAC = ether;

  pkt = NetArpWaitTxPacket;
  pkt += NetSetEther (pkt, NetArpWaitPacketMAC, 0x0800);

  NetSetIP (pkt, dest, dport, sport, len);
  memcpy(pkt + (sizeof (IP_t)), (uchar *)NetTxPacket + (pkt - (uchar *)NetArpWaitTxPacket) + (sizeof (IP_t)), len);


  NetArpWaitTxPacketSize = (pkt - NetArpWaitTxPacket) + (sizeof (IP_t)) + len;


  NetArpWaitTry = 1;
  NetArpWaitTimerStart = get_timer(0);
  ArpRequest();
  return 1;
 }






 pkt = (uchar *)NetTxPacket;
 pkt += NetSetEther (pkt, ether, 0x0800);
 NetSetIP (pkt, dest, dport, sport, len);
 (void) eth_send(NetTxPacket, (pkt - NetTxPacket) + (sizeof (IP_t)) + len);

 return 0;
}


static ushort PingSeqNo;

int PingSend(void)
{
 static uchar mac[6];
 volatile IP_t *ip;
 volatile ushort *s;
 uchar *pkt;



 memcpy(mac, NetEtherNullAddr, 6);





 NetArpWaitPacketIP = NetPingIP;
 NetArpWaitPacketMAC = mac;

 pkt = NetArpWaitTxPacket;
 pkt += NetSetEther(pkt, mac, 0x0800);

 ip = (volatile IP_t *)pkt;




 ip->ip_hl_v = 0x45;
 ip->ip_tos = 0;
 ip->ip_len = ((__u16)((sizeof (IP_t) - 8) + 8));
 ip->ip_id = ((__u16)(NetIPID++));
 ip->ip_off = ((__u16)(0x4000));
 ip->ip_ttl = 255;
 ip->ip_p = 0x01;
 ip->ip_sum = 0;
 NetCopyIP((void*)&ip->ip_src, &NetOurIP);
 NetCopyIP((void*)&ip->ip_dst, &NetPingIP);
 ip->ip_sum = ~NetCksum((uchar *)ip, (sizeof (IP_t) - 8) / 2);

 s = &ip->udp_src;
 s[0] = ((__u16)(0x0800));
 s[1] = 0;
 s[2] = 0;
 s[3] = ((__u16)(PingSeqNo++));
 s[1] = ~NetCksum((uchar *)s, 8/2);


 NetArpWaitTxPacketSize = (pkt - NetArpWaitTxPacket) + (sizeof (IP_t) - 8) + 8;


 NetArpWaitTry = 1;
 NetArpWaitTimerStart = get_timer(0);
 ArpRequest();
 return 1;
}

static void
PingTimeout (void)
{
 eth_halt();
 NetState = 4;
}

static void
PingHandler (uchar * pkt, unsigned dest, unsigned src, unsigned len)
{
 IPaddr_t tmp;
 volatile IP_t *ip = (volatile IP_t *)pkt;

 tmp = NetReadIP((void *)&ip->ip_src);
 if (tmp != NetPingIP)
  return;

 NetState = 3;
}

static void PingStart(void)
{

 printf ("Using %s device\n", eth_get_name());



 NetSetTimeout (10 * ((((((((((22) << 6) & 0x00000fc0)) & 0x00000fc0) >> 6)) * (40) * 1000000)) / 2), PingTimeout);





 NetSetHandler (PingHandler);

 PingSend();
}
# 1201 "net.c"
void
NetReceive(volatile uchar * inpkt, int len)
{
 Ethernet_t *et;
 IP_t *ip;
 ARP_t *arp;
 IPaddr_t tmp;
 int x;
 uchar *pkt;






 ushort cti = 0, vlanid = 4095, myvlanid, mynvlanid;
# 1239 "net.c"
        NetRxPkt = inpkt;
 NetRxPktLen = len;
        et = (Ethernet_t *)inpkt;


 if (len < 14)
  return;






 myvlanid = ((__u16)(NetOurVLAN));
 if (myvlanid == (ushort)-1)
  myvlanid = 4095;
 mynvlanid = ((__u16)(NetOurNativeVLAN));
 if (mynvlanid == (ushort)-1)
  mynvlanid = 4095;

 x = ((__u16)(et->et_protlen));





 if (x < 1514) {



  x = ((__u16)(et->et_prot));

  ip = (IP_t *)(inpkt + 22);
  len -= 22;

 } else if (x != 0x8100) {
  ip = (IP_t *)(inpkt + 14);
  len -= 14;

 } else {
  VLAN_Ethernet_t *vet = (VLAN_Ethernet_t *)et;





  if (len < 18)
   return;


  if ((((__u16)(NetOurVLAN)) & 0x0fff) == 4095



    )
   return;

  cti = ((__u16)(vet->vet_tag));
  vlanid = cti & 0x0fff;
  x = ((__u16)(vet->vet_type));

  ip = (IP_t *)(inpkt + 18);
  len -= 18;
 }
# 1315 "net.c"
 if ((myvlanid & 0x0fff) != 4095) {
  if (vlanid == 4095)
   vlanid = (mynvlanid & 0x0fff);

  if (vlanid != (myvlanid & 0x0fff))
   return;
 }

 switch (x) {

 case 0x0806:
# 1338 "net.c"
  arp = (ARP_t *)ip;
  if (len < (8+20)) {
   printf("bad length %d < %d\n", len, (8+20));
   return;
  }
  if (((__u16)(arp->ar_hrd)) != 1) {
   return;
  }
  if (((__u16)(arp->ar_pro)) != 0x0800) {
   return;
  }
  if (arp->ar_hln != 6) {
   return;
  }
  if (arp->ar_pln != 4) {
   return;
  }

  if (NetOurIP == 0) {
   return;
  }

  if (NetReadIP(&arp->ar_data[16]) != NetOurIP) {
   return;
  }

  switch (((__u16)(arp->ar_op))) {
  case 1:



   pkt = (uchar *)et;
   pkt += NetSetEther(pkt, et->et_src, 0x0806);
   arp->ar_op = ((__u16)(2));
   memcpy (&arp->ar_data[10], &arp->ar_data[0], 6);
   NetCopyIP(&arp->ar_data[16], &arp->ar_data[6]);
   memcpy (&arp->ar_data[ 0], NetOurEther, 6);
   NetCopyIP(&arp->ar_data[ 6], &NetOurIP);
   (void) eth_send((uchar *)et, (pkt - (uchar *)et) + (8+20));
   return;

  case 2:

   if (!NetArpWaitPacketIP || !NetArpWaitPacketMAC)
    break;







   tmp = NetReadIP(&arp->ar_data[6]);


   if (tmp == NetArpWaitReplyIP) {




    memcpy(NetArpWaitPacketMAC, &arp->ar_data[0], 6);





    memcpy(((Ethernet_t *)NetArpWaitTxPacket)->et_dest, NetArpWaitPacketMAC, 6);
    (void) eth_send(NetArpWaitTxPacket, NetArpWaitTxPacketSize);


    NetArpWaitPacketIP = 0;
    NetArpWaitTxPacketSize = 0;
    NetArpWaitPacketMAC = ((void *)0);

   }
   return;
  default:



   return;
  }
  break;

 case 0x8035:



  arp = (ARP_t *)ip;
  if (len < (8+20)) {
   printf("bad length %d < %d\n", len, (8+20));
   return;
  }

  if ((((__u16)(arp->ar_op)) != 4) ||
   (((__u16)(arp->ar_hrd)) != 1) ||
   (((__u16)(arp->ar_pro)) != 0x0800) ||
   (arp->ar_hln != 6) || (arp->ar_pln != 4)) {

   puts ("invalid RARP header\n");
  } else {
   NetCopyIP(&NetOurIP, &arp->ar_data[16]);
   if (NetServerIP == 0)
    NetCopyIP(&NetServerIP, &arp->ar_data[ 6]);
   memcpy (NetServerEther, &arp->ar_data[ 0], 6);

   (*packetHandler)(0,0,0,0);
  }
  break;

 case 0x0800:



  if (len < (sizeof (IP_t))) {
   ;
   return;
  }
  if (len < ((__u16)(ip->ip_len))) {
   printf("len bad %d < %d\n", len, ((__u16)(ip->ip_len)));
   return;
  }
  len = ((__u16)(ip->ip_len));



  if ((ip->ip_hl_v & 0xf0) != 0x40) {
   return;
  }
  if (ip->ip_off & ((__u16)(0x1fff))) {
   return;
  }
  if (!NetCksumOk((uchar *)ip, (sizeof (IP_t) - 8) / 2)) {
   puts ("checksum bad\n");
   return;
  }
  tmp = NetReadIP(&ip->ip_dst);
  if (NetOurIP && tmp != NetOurIP && tmp != 0xFFFFFFFF) {
   return;
  }
# 1495 "net.c"
  if (ip->ip_p == 1) {
   ICMP_t *icmph = (ICMP_t *)&(ip->udp_src);

   switch (icmph->type) {
   case 5:
    if (icmph->code != 1)
     return;
    puts (" ICMP Host Redirect to ");
    print_IPaddr(icmph->un.gateway);
    putc(' ');
    return;

   case 0:




    (*packetHandler)((uchar *)ip, 0, 0, 0);
    return;

   default:
    return;
   }
  } else if (ip->ip_p != 17) {
   return;
  }
# 1571 "net.c"
  (*packetHandler)((uchar *)ip +(sizeof (IP_t)),
      ((__u16)(ip->udp_dst)),
      ((__u16)(ip->udp_src)),
      ((__u16)(ip->udp_len)) - 8);
  break;
 }
}




static int net_check_prereq (proto_t protocol)
{
 switch (protocol) {


 case PING:
  if (NetPingIP == 0) {
   puts ("*** ERROR: ping address not given\n");
   return (1);
  }
  goto common;
# 1605 "net.c"
 case NETCONS:
 case TFTP:
  if (NetServerIP == 0) {
   puts ("*** ERROR: `serverip' not set\n");
   return (1);
  }

    common:


  if (NetOurIP == 0) {
   puts ("*** ERROR: `ipaddr' not set\n");
   return (1);
  }


 case DHCP:
 case RARP:
 case BOOTP:
 case CDP:
  if (memcmp (NetOurEther, "\0\0\0\0\0\0", 6) == 0) {

   extern int eth_get_dev_index (void);
   int num = eth_get_dev_index ();

   switch (num) {
   case -1:
    puts ("*** ERROR: No ethernet found.\n");
    return (1);
   case 0:
    puts ("*** ERROR: `ethaddr' not set\n");
    break;
   default:
    printf ("*** ERROR: `eth%daddr' not set\n",
     num);
    break;
   }

   NetStartAgain ();
   return (2);




  }

 default:
  return (0);
 }
 return (0);
}


int
NetCksumOk(uchar * ptr, int len)
{
 return !((NetCksum(ptr, len) + 1) & 0xfffe);
}


unsigned
NetCksum(uchar * ptr, int len)
{
 ulong xsum;
 ushort *p = (ushort *)ptr;

 xsum = 0;
 while (len-- > 0)
  xsum += *p++;
 xsum = (xsum & 0xffff) + (xsum >> 16);
 xsum = (xsum & 0xffff) + (xsum >> 16);
 return (xsum & 0xffff);
}

int
NetEthHdrSize(void)
{
 ushort myvlanid;

 myvlanid = ((__u16)(NetOurVLAN));
 if (myvlanid == (ushort)-1)
  myvlanid = 4095;

 return ((myvlanid & 0x0fff) == 4095) ? 14 : 18;
}

int
NetSetEther(volatile uchar * xet, uchar * addr, uint prot)
{
 Ethernet_t *et = (Ethernet_t *)xet;
 ushort myvlanid;

 myvlanid = ((__u16)(NetOurVLAN));
 if (myvlanid == (ushort)-1)
  myvlanid = 4095;

 memcpy (et->et_dest, addr, 6);
 memcpy (et->et_src, NetOurEther, 6);
 if ((myvlanid & 0x0fff) == 4095) {
 et->et_protlen = ((__u16)(prot));
  return 14;
 } else {
  VLAN_Ethernet_t *vet = (VLAN_Ethernet_t *)xet;

  vet->vet_vlan_type = ((__u16)(0x8100));
  vet->vet_tag = ((__u16)((0 << 5) | (myvlanid & 0x0fff)));
  vet->vet_type = ((__u16)(prot));
  return 18;
 }
}

void
NetSetIP(volatile uchar * xip, IPaddr_t dest, int dport, int sport, int len)
{
 volatile IP_t *ip = (IP_t *)xip;






 if (len & 1)
  xip[(sizeof (IP_t)) + len] = 0;





 ip->ip_hl_v = 0x45;
 ip->ip_tos = 0;
 ip->ip_len = ((__u16)((sizeof (IP_t)) + len));
 ip->ip_id = ((__u16)(NetIPID++));
 ip->ip_off = ((__u16)(0x4000));
 ip->ip_ttl = 255;
 ip->ip_p = 17;
 ip->ip_sum = 0;
 NetCopyIP((void*)&ip->ip_src, &NetOurIP);
 NetCopyIP((void*)&ip->ip_dst, &dest);
 ip->udp_src = ((__u16)(sport));
 ip->udp_dst = ((__u16)(dport));
 ip->udp_len = ((__u16)(8 + len));
 ip->udp_xsum = 0;
 ip->ip_sum = ~NetCksum((uchar *)ip, (sizeof (IP_t) - 8) / 2);
}

void copy_filename (char *dst, char *src, int size)
{
 if (*src && (*src == '"')) {
  ++src;
  --size;
 }

 while ((--size > 0) && *src && (*src != '"')) {
  *dst++ = *src++;
 }
 *dst = '\0';
}



void ip_to_string (IPaddr_t x, char *s)
{
 x = ((__u32)(x));
 sprintf (s, "%d.%d.%d.%d",
   (int) ((x >> 24) & 0xff),
   (int) ((x >> 16) & 0xff),
   (int) ((x >> 8) & 0xff), (int) ((x >> 0) & 0xff)
 );
}

IPaddr_t string_to_ip(char *s)
{
 IPaddr_t addr;
 char *e;
 int i;

 if (s == ((void *)0))
  return(0);

 for (addr=0, i=0; i<4; ++i) {
  ulong val = s ? simple_strtoul(s, &e, 10) : 0;
  addr <<= 8;
  addr |= (val & 0xFF);
  if (s) {
   s = (*e) ? e+1 : e;
  }
 }

 return (((__u32)(addr)));
}

void VLAN_to_string(ushort x, char *s)
{
 x = ((__u16)(x));

 if (x == (ushort)-1)
  x = 4095;

 if (x == 4095)
  strcpy(s, "none");
 else
  sprintf(s, "%d", x & 0x0fff);
}

ushort string_to_VLAN(char *s)
{
 ushort id;

 if (s == ((void *)0))
  return ((__u16)(4095));

 if (*s < '0' || *s > '9')
  id = 4095;
 else
  id = (ushort)simple_strtoul(s, ((void *)0), 10);

 return ((__u16)(id));
}

void print_IPaddr (IPaddr_t x)
{
 char tmp[16];

 ip_to_string (x, tmp);

 puts (tmp);
}

IPaddr_t getenv_IPaddr (char *var)
{
 return (string_to_ip(getenv(var)));
}

ushort getenv_VLAN(char *var)
{
 return (string_to_VLAN(getenv(var)));
}

# 1 "../common/serial.c"
# 1 "/workspace/u-boot/board/atheros/board953x//"
# 1 "<command-line>"
# 1 "../common/serial.c"
# 1 "/workspace/u-boot/include/asm/addrspace.h" 1
# 2 "../common/serial.c" 2
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
# 3 "../common/serial.c" 2
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
# 4 "../common/serial.c" 2


int serial_init(void)
{

 uint32_t div, val;

 div = ath_uart_freq() / (16 * 115200);



 val = (*(volatile ath_reg_t *)((__typeof__(0x18040000))(((unsigned long)(0x18040000) & 0x1fffffff) | 0xa0000000))) & (~0xcffc10u);

 do { ((*(volatile ath_reg_t *)((__typeof__(0x18040000))(((unsigned long)(0x18040000) & 0x1fffffff) | 0xa0000000))) = (val)); (*(volatile ath_reg_t *)((__typeof__(0x18040000))(((unsigned long)(0x18040000) & 0x1fffffff) | 0xa0000000))); } while(0);

 do { do { ((*(volatile ath_reg_t *)((__typeof__((0x18040034)))(((unsigned long)((0x18040034)) & 0x1fffffff) | 0xa0000000))) = (((*(volatile ath_reg_t *)((__typeof__((0x18040034)))(((unsigned long)((0x18040034)) & 0x1fffffff) | 0xa0000000))) | ((((0x16) << 16) & 0x00ff0000))))); (*(volatile ath_reg_t *)((__typeof__((0x18040034)))(((unsigned long)((0x18040034)) & 0x1fffffff) | 0xa0000000))); } while(0); (*(volatile ath_reg_t *)((__typeof__((0x18040034)))(((unsigned long)((0x18040034)) & 0x1fffffff) | 0xa0000000))); } while(0)
                                               ;

 do { do { ((*(volatile ath_reg_t *)((__typeof__((0x18040044)))(((unsigned long)((0x18040044)) & 0x1fffffff) | 0xa0000000))) = (((*(volatile ath_reg_t *)((__typeof__((0x18040044)))(((unsigned long)((0x18040044)) & 0x1fffffff) | 0xa0000000))) & ~((((0xff) << 8) & 0x0000ff00))))); (*(volatile ath_reg_t *)((__typeof__((0x18040044)))(((unsigned long)((0x18040044)) & 0x1fffffff) | 0xa0000000))); } while(0); (*(volatile ath_reg_t *)((__typeof__((0x18040044)))(((unsigned long)((0x18040044)) & 0x1fffffff) | 0xa0000000))); } while(0)
                                      ;

 do { do { ((*(volatile ath_reg_t *)((__typeof__((0x18040044)))(((unsigned long)((0x18040044)) & 0x1fffffff) | 0xa0000000))) = (((*(volatile ath_reg_t *)((__typeof__((0x18040044)))(((unsigned long)((0x18040044)) & 0x1fffffff) | 0xa0000000))) | ((((0x9) << 8) & 0x0000ff00))))); (*(volatile ath_reg_t *)((__typeof__((0x18040044)))(((unsigned long)((0x18040044)) & 0x1fffffff) | 0xa0000000))); } while(0); (*(volatile ath_reg_t *)((__typeof__((0x18040044)))(((unsigned long)((0x18040044)) & 0x1fffffff) | 0xa0000000))); } while(0)
                                     ;




 val = (*(volatile ath_reg_t *)((__typeof__(0x18040070))(((unsigned long)(0x18040070) & 0x1fffffff) | 0xa0000000)));
 do { ((*(volatile ath_reg_t *)((__typeof__(0x18040070))(((unsigned long)(0x18040070) & 0x1fffffff) | 0xa0000000))) = ((val | 0x8402))); (*(volatile ath_reg_t *)((__typeof__(0x18040070))(((unsigned long)(0x18040070) & 0x1fffffff) | 0xa0000000))); } while(0);






 do { ((*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(3 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(3 * 4))) & 0x1fffffff) | 0xa0000000))) = (0x80)); (*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(3 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(3 * 4))) & 0x1fffffff) | 0xa0000000))); } while(0);


 do { ((*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(0 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(0 * 4))) & 0x1fffffff) | 0xa0000000))) = ((div & 0xff))); (*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(0 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(0 * 4))) & 0x1fffffff) | 0xa0000000))); } while(0);
 do { ((*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(1 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(1 * 4))) & 0x1fffffff) | 0xa0000000))) = (((div >> 8) & 0xff))); (*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(1 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(1 * 4))) & 0x1fffffff) | 0xa0000000))); } while(0);


 do { ((*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(3 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(3 * 4))) & 0x1fffffff) | 0xa0000000))) = (0x00)); (*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(3 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(3 * 4))) & 0x1fffffff) | 0xa0000000))); } while(0);


 do { ((*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(3 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(3 * 4))) & 0x1fffffff) | 0xa0000000))) = (0x3)); (*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(3 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(3 * 4))) & 0x1fffffff) | 0xa0000000))); } while(0);

 do { ((*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(1 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(1 * 4))) & 0x1fffffff) | 0xa0000000))) = (0)); (*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(1 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(1 * 4))) & 0x1fffffff) | 0xa0000000))); } while(0);

 return 0;
}

int serial_tstc (void)
{
 return((*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(5 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(5 * 4))) & 0x1fffffff) | 0xa0000000))) & 0x1);
}

u8 serial_getc(void)
{
 while(!serial_tstc());

 return (*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(0 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(0 * 4))) & 0x1fffffff) | 0xa0000000)));
}


void serial_putc(u8 byte)
{
 if (byte == '\n') serial_putc ('\r');

 while ((((*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(5 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(5 * 4))) & 0x1fffffff) | 0xa0000000)))) & 0x20) == 0x0);

 do { ((*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(0 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(0 * 4))) & 0x1fffffff) | 0xa0000000))) = (byte)); (*(volatile ath_reg_t *)((__typeof__((0x18000000 +0x00020000 +(0 * 4))))(((unsigned long)((0x18000000 +0x00020000 +(0 * 4))) & 0x1fffffff) | 0xa0000000))); } while(0);
}

void serial_setbrg (void)
{
}

void serial_puts (const char *s)
{
 while (*s)
 {
  serial_putc (*s++);
 }
}

# 1 "ldiv.c"
# 1 "/workspace/u-boot/lib_generic//"
# 1 "<command-line>"
# 1 "ldiv.c"
# 19 "ldiv.c"
typedef struct {
 long quot;
 long rem;
} ldiv_t;

ldiv_t
ldiv (long int numer, long int denom)
{
  ldiv_t result;

  result.quot = numer / denom;
  result.rem = numer % denom;
# 48 "ldiv.c"
  if (numer >= 0 && result.rem < 0)
    {
      ++result.quot;
      result.rem -= denom;
    }

  return result;
}

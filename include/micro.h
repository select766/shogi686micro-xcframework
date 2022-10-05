#ifndef micro_hpp
#define micro_hpp

#include <stdio.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef int usi_read_cb(char* buf);
typedef void usi_write_cb(const char* buf);
int micro_main(usi_read_cb usi_read, usi_write_cb usi_write);

#ifdef __cplusplus
}
#endif
#endif /* micro_hpp */

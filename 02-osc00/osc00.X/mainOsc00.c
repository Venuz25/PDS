/*
 * File:   mainOsc00.c
 * Author: Areli Guevara
 *
 * Created on 29 de octubre de 2025, 5:57 p.m.
 */

#include <stdio.h>
#include "xc.h"
#include "configOsc00.h"
#include "osc00.h"

#if defined(__dsPIC33F__)
#include "p33Fxxxx.h"
#endif;


int main(void) {
    OSCCONbits.NOSC = 0b000;
    TRISB = 0x0000;
    while(1){
        LATBbits.LATB15 = 1;
        //LATBbits.LATB2 = 1;
        __delay32(400000);
        LATBbits.LATB15 = 0;
        //LATBbits.LATB2 = 0;
        __delay32(400000);
    }
    return 0;
}

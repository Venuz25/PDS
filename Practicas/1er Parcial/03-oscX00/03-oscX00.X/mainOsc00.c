/*
 * File:   mainOscx00.c
 * Author: Areli Guevara
 *
 * Created on 13 de marzo de 2024, 02:03 PM
 */

#include <stdio.h>
#include "xc.h"
#include "configOsc00.h"
#include "osc00.h"

#if defined(__dsPIC33F__)
#include "p33Fxxxx.h"
#endif;


int main(void) {
    OSCCONbits.NOSC = 0b010;
    TRISB = 0x0000;
    while(1){
        LATBbits.LATB15 = 1;
        //LATBbits.LATB0 = 1;
        __delay32(400000);
        LATBbits.LATB15 = 0;
        //LATBbits.LATB0 = 0;
        __delay32(400000);
    }
    return 0;
}

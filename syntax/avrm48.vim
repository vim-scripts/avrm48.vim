" Vim syntax file
" Language:     Avr Mega48 Assembler (Atmel's microcontroller)
" Maintainer:   Alfred Hell <alhell@gmx.net>
" Last Change:  2015 04 29
" Revision:     0.2

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword avrTodo NOTE TODO XXX contained

syn case ignore

" Directives
syn match avrDirective		"\.[a-z]\+"

syn match avrIdentifier 	"[a-z_$][a-z0-9_$]*"
syn match avrLabel      	"^[A-Z_$][A-Z0-9_$]*:"

syn match decNumber		"0\+[1-7]\=[\t\n$,; ]"
syn match decNumber		"[1-9]\d*"
syn match octNumber		"0[oO][0-7]\+"
syn match octNumber		"0[0-7][0-7]\+"
syn match hexNumber		"0[xX][0-9A-Fa-f]\+"
syn match hexNumber     	"\$[0-9A-Fa-f]\+\>"
syn match binNumber		"0[bB][0-1]*"

syn match avrComment    	";.*" contains=avrTodo

syn region avrString    	start=+"+ end=+"+

" Rx
syn match avrRegister           "\<[Rr]\([0-9]\|[0-2][0-9]\|30\|31\)\>" 
syn keyword avrRegister 	ZL ZH YL YH XL XH Z X Y

" REGISTER
syn keyword avrRegister		UDR0 UBRR0H UBRR0L UCSR0C UCSR0B UCSR0A
syn keyword avrRegister		TWAMR TWCR TWDR	TWAR TWSR TWBR ASSR PRR
syn keyword avrRegister		OCR2B OCR2A TCNT2 TCCR2B TCCR2A	OCR1BH OCR1BL
syn keyword avrRegister		OCR1AH OCR1AL ICR1H ICR1L TCNT1H TCNT1L
syn keyword avrRegister		TCCR1C TCCR1B TCCR1A DIDR1 DIDR0 ADMUX
syn keyword avrRegister		ADCSRB ADCSRA ADCH ADCL	TIMSK2 TIMSK1
syn keyword avrRegister		TIMSK0 PCMSK2 PCMSK1 PCMSK0 EICRA PCICR
syn keyword avrRegister		OSCCAL CLKPR WDTCSR SREG SPH SPL SPMCSR
syn keyword avrRegister		MCUCR MCUSR SMCR ACSR SPDR SPSR	SPCR
syn keyword avrRegister		GPIOR2 GPIOR1 OCR0B OCR0A TCNT0	TCCR0B
syn keyword avrRegister		TCCR0A GTCCR EEARH EEARL EEDR EECR
syn keyword avrRegister		GPIOR0 EIMSK EIFR PCIFR	TIFR2 TIFR1
syn keyword avrRegister		TIFR0 PORTD DDRD PIND PORTC DDRC
syn keyword avrRegister		PINC PORTB DDRB	PINB


" REGISTER BITS
syn keyword avrRegisterPart	UDR0_0 UDR0_1 UDR0_2 UDR0_3 UDR0_4 UDR0_5 UDR0_6 UDR0_7
syn keyword avrRegisterPart	MPCM0 U2X0 UPE0 DOR0 FE0 UDRE0 TXC0 RXC0 TXB80 RXB80
syn keyword avrRegisterPart	UCSZ02 TXEN0 RXEN0 UDRIE0 TXCIE0 RXCIE0	UCPOL0 UCSZ00
syn keyword avrRegisterPart	UCPHA0 UCSZ01 UDORD0 USBS0 UPM000 UPM01	UMSEL00 UMSEL0
syn keyword avrRegisterPart	UMSEL01 UMSEL1 TWAM0 TWAMR0 TWAM1 TWAMR1 TWAM2 TWAMR2
syn keyword avrRegisterPart	TWAM3 TWAMR3 TWAM4 TWAMR4 TWAM5	TWAMR5 TWAM6 TWAMR6
syn keyword avrRegisterPart	TWBR0 TWBR1 TWBR2 TWBR3	TWBR4 TWBR5 TWBR6 TWBR7	TWIE
syn keyword avrRegisterPart	TWEN TWWC TWSTO	TWSTA TWEA TWINT TWPS0 TWPS1 TWS3
syn keyword avrRegisterPart	TWS4 TWS5 TWS6 TWS7 TWD0 TWD1 TWD2 TWD3	TWD4 TWD5 TWD6
syn keyword avrRegisterPart	TWD7 TWGCE TWA0	TWA1 TWA2 TWA3 TWA4 TWA5 TWA6 TOIE1
syn keyword avrRegisterPart	OCIE1A OCIE1B ICIE1 TOV1 OCF1A OCF1B ICF1 WGM10	WGM11
syn keyword avrRegisterPart	COM1B0 COM1B1 COM1A0 COM1A1 CS10 CS11 CS12 WGM12 WGM13
syn keyword avrRegisterPart	ICES1 ICNC1 FOC1B FOC1A	PSRSYNC	TSM TOIE2 TOIE2A OCIE2A
syn keyword avrRegisterPart	OCIE2B TOV2 OCF2A OCF2B WGM20 WGM21 COM2B0 COM2B1 COM2A0
syn keyword avrRegisterPart	COM2A1 CS20 CS21 CS22 WGM22 FOC2B FOC2A	TCNT2_0	TCNT2_1
syn keyword avrRegisterPart	TCNT2_2	TCNT2_3	TCNT2_4	TCNT2_5	TCNT2_6	TCNT2_7	OCR2_0
syn keyword avrRegisterPart	OCR2_1 OCR2_2 OCR2_3 OCR2_4 OCR2_5 OCR2_6 OCR2_7 TCR2BUB
syn keyword avrRegisterPart	TCR2AUB	OCR2BUB	OCR2AUB	TCN2UB AS2 EXCLK PSRASY	PSR2
syn keyword avrRegisterPart	TSM MUX0 MUX1 MUX2 MUX3	ADLAR REFS0 REFS1 ADPS0	ADPS1
syn keyword avrRegisterPart	ADPS2 ADIE ADIF	ADATE ADSC ADEN ADTS0 ADTS1 ADTS2 ACME
syn keyword avrRegisterPart	ADCH0 ADCH1 ADCH2 ADCH3	ADCH4 ADCH5 ADCH6 ADCH7	ADCL0
syn keyword avrRegisterPart	ADCL1 ADCL2 ADCL3 ADCL4	ADCL5 ADCL6 ADCL7 ADC0D	ADC1D
syn keyword avrRegisterPart	ADC2D ADC3D ADC4D ADC5D	ACIS0 ACIS1 ACIC ACIE ACI ACO
syn keyword avrRegisterPart	ACBG ACD AIN0D AIN1D PORTB0 PB0 PORTB1 PB1 PORTB2 PB2
syn keyword avrRegisterPart	PORTB3 PB3 PORTB4 PB4 PORTB5 PB5 PORTB6	PB6 PORTB7 PB7
syn keyword avrRegisterPart	DDB0 DDB1 DDB2 DDB3 DDB4 DDB5 DDB6 DDB7	PINB0 PINB1
syn keyword avrRegisterPart	PINB2 PINB3 PINB4 PINB5 PINB6 PINB7 PORTC0 PC0 PORTC1
syn keyword avrRegisterPart	PC1 PORTC2 PC2 PORTC3 PC3 PORTC4 PC4 PORTC5 PC5	PORTC6
syn keyword avrRegisterPart	PC6 DDC0 DDC1 DDC2 DDC3	DDC4 DDC5 DDC6 PINC0 PINC1 PINC2
syn keyword avrRegisterPart	PINC3 PINC4 PINC5 PINC6	PORTD0 PD0 PORTD1 PD1 PORTD2 PD2
syn keyword avrRegisterPart	PORTD3 PD3 PORTD4 PD4 PORTD5 PD5 PORTD6	PD6 PORTD7 PD7
syn keyword avrRegisterPart	DDD0 DDD1 DDD2 DDD3 DDD4 DDD5 DDD6 DDD7	PIND0 PIND1
syn keyword avrRegisterPart	PIND2 PIND3 PIND4 PIND5	PIND6 PIND7 TOIE0 OCIE0A OCIE0B
syn keyword avrRegisterPart	TOV0 OCF0A OCF0B WGM00 WGM01 COM0B0 COM0B1 COM0A0 COM0A1
syn keyword avrRegisterPart	CS00 CS01 CS02 WGM02 FOC0B FOC0A TCNT0_0 TCNT0_1 TCNT0_2
syn keyword avrRegisterPart	TCNT0_3	TCNT0_4	TCNT0_5	TCNT0_6	TCNT0_7	OCROA_0	OCROA_1
syn keyword avrRegisterPart	OCROA_2	OCROA_3	OCROA_4	OCROA_5	OCROA_6	OCROA_7	OCR0B_0
syn keyword avrRegisterPart	OCR0B_1	OCR0B_2	OCR0B_3	OCR0B_4	OCR0B_5	OCR0B_6	OCR0B_7
syn keyword avrRegisterPart	PSRSYNC	PSR10 TSM ISC00	ISC01 ISC10 ISC11 INT0 INT1 INTF0
syn keyword avrRegisterPart	INTF1 PCINT16 PCINT17 PCINT18 PCINT19 PCINT20PCINT21
syn keyword avrRegisterPart	PCINT22	PCINT23	PCINT8 PCINT9 PCINT10 PCINT11 PCINT12
syn keyword avrRegisterPart	PCINT13	PCINT14	PCINT0 PCINT1 PCINT2 PCINT3 PCINT4 PCINT5
syn keyword avrRegisterPart	PCINT6 PCINT7 PCIF0 PCIF1 PCIF2	SPDR0 SPDR1 SPDR2 SPDR3
syn keyword avrRegisterPart	SPDR4 SPDR5 SPDR6 SPDR7	SPI2X WCOL SPIF SPR0 SPR1 CPHA
syn keyword avrRegisterPart	CPOL MSTR DORD SPE SPIE	SREG_C SREG_Z SREG_N SREG_V
syn keyword avrRegisterPart	SREG_S SREG_H SREG_T SREG_I CAL0 CAL1 CAL2 CAL3	CAL4
syn keyword avrRegisterPart	CAL5 CAL6 CAL7 CLKPS0 CLKPS1 CLKPS2 CLKPS3 CLKPCE
syn keyword avrRegisterPart	SELFPRGEN PGERS	PGWRT BLBSET RWWSRE RWWSB SPMIE
syn keyword avrRegisterPart	IVCE PUD PORF EXTRF EXTREF BORF	WDRF SE SM0 SM1	SM2
syn keyword avrRegisterPart	GPIOR20	GPIOR21	GPIOR22	GPIOR23	GPIOR24	GPIOR25	GPIOR26
syn keyword avrRegisterPart	GPIOR27	GPIOR10	GPIOR11	GPIOR12	GPIOR13	GPIOR14	GPIOR15
syn keyword avrRegisterPart	GPIOR16	GPIOR17	GPIOR00	GPIOR01	GPIOR02	GPIOR03	GPIOR04
syn keyword avrRegisterPart	GPIOR05	GPIOR06	GPIOR07	PRADC PRUSART0 PRSPI PRTIM1
syn keyword avrRegisterPart	PRTIM0 PRTIM2 PRTWI PCIE0 PCIE1	PCIE2 WDP0 WDP1	WDP2
syn keyword avrRegisterPart	WDE WDCE WDP3 WDIE WDIF
syn keyword avrRegisterPart	EEAR0 EEAR1 EEAR2 EEAR3	EEAR4 EEAR5 EEAR6 EEAR7	EEDR0
syn keyword avrRegisterPart	EEDR1 EEDR2 EEDR3 EEDR4 EEDR5 EEDR6 EEDR7 EERE EEPE
syn keyword avrRegisterPart	EEWE EEMPE EEMWE EERIE EEPM0 EEPM1 LB1 LB2 BLB01
syn keyword avrRegisterPart	BLB02 BLB11 BLB12 CKSEL0 CKSEL1	CKSEL2 CKSEL3 SUT0
syn keyword avrRegisterPart	SUT1 CKOUT CKDIV8 BODLEVEL0 BODLEVEL1 BODLEVEL2
syn keyword avrRegisterPart	EESAVE WDTON SPIEN DWEN	RSTDISBL SELFPRGEN



" OpCodes...
syn keyword avrOpcode  		ADD ADC ADIW SUB SUBI SBC SBCI SBIW AND ANDI OR ORI EOR
syn keyword avrOpcode  		COM NEG SBR CBR INC DEC TST CLR SER MUL MULS MULSU FMUL
syn keyword avrOpcode  		FMULS FMULSU RJMP IJMP RCALL ICALL
syn keyword avrOpcode  		RET RETI CPSE CP CPC CPI SBRC SBRS SBIC SBIS BRBS BRBC
syn keyword avrOpcode  		BREQ BRNE BRCS BRCC BRSH BRLO BRMI BRPL BRGE BRLT BRHS
syn keyword avrOpcode  		BRHC BRTS BRTC BRVS BRVC BRIE BRID SBI CBI LSL LSR ROL 
syn keyword avrOpcode  		ROR ASR SWAP BSET BCLR BST BLD SEC CLC SEN CLN SEZ CLZ 
syn keyword avrOpcode  		SEI CLI SES CLS SEV CLV SET CLT SEH CLH MOV MOVW LDI LD 
syn keyword avrOpcode  		LDD LDS ST STD STS LPM SPM IN OUT PUSH POP 
syn keyword avrOpcode  		NOP SLEEP WDR BREAK


syn case match

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_avr_syntax_inits")
  if version < 508
    let did_avr_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink avrTodo		Todo
  HiLink avrComment		Comment
  HiLink avrDirective		PreProc
  HiLink avrLabel		Label
  HiLink avrString		String
  HiLink avrOpcode		Statement
  HiLink avrRegister		StorageClass
  HiLink avrRegisterPart	Special
  HiLink hexNumber		Number
  HiLink decNumber		Number
  HiLink octNumber		Number
  HiLink binNumber		Number
  HiLink avrIdentifier		Identifier

  delcommand HiLink
endif

let b:current_syntax = "avrm48"

" vim: ts=8

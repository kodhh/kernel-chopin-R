










SECTIONS {




 /DISCARD/ : {
  *(.eh_frame)
 }

 .bss : {
  *(.bss .bss.[0-9a-zA-Z_]*)
  *(.bss..L* .bss..compoundliteral*)
 }

 .data : {
  *(.data .data.[0-9a-zA-Z_]*)
  *(.data..L* .data..compoundliteral*)
 }

 .rodata : {
  *(.rodata .rodata.[0-9a-zA-Z_]*)
  *(.rodata..L* .rodata..compoundliteral*)
 }





 .text : ALIGN((1 << 12)) {
  *(.text.__cfi_check)
  *(.text .text.[0-9a-zA-Z_]* .text..L.cfi*)
 }
}

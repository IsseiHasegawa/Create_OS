    .section .text.boot
    .globl boot
boot:
    # スタックポインタを設定
    la sp, __stack_top

    # Cのエントリポイントを呼ぶ
    call kernel_main

1:  wfi
    j 1b

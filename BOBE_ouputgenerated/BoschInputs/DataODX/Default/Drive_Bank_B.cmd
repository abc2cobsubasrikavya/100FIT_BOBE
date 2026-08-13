@echo off
set Parameter=read -in BOBE_PLACEHOLDER_HEX_FILE -id ID1  read -in BOBE_PLACEHOLDER_Odx_Artifacts\Drive_Bank_B.hex -id ID2 memcopyacross -id ID1 -from 00800000 -l 0x188000 -id2 ID2 -to 00800000  -o true -fill 0xFF write -out BOBE_PLACEHOLDER_Odx_Artifacts\Drive_Bank_B.hex exit

Call  BOBE_PLACEHOLDER_HexmodX_CMD %Parameter% >NUL


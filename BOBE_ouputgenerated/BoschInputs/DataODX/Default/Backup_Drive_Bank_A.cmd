@echo off
set Parameter=read -in BOBE_PLACEHOLDER_HEX_FILE -id ID1  read -in BOBE_PLACEHOLDER_Odx_Artifacts\Backup_Drive_Bank_A.hex -id ID2 memcopyacross -id ID1 -from 0100A000 -l 0xD6000 -id2 ID2 -to 8000A000  -o true -fill 0xFF write -out BOBE_PLACEHOLDER_Odx_Artifacts\Backup_Drive_Bank_A.hex exit

Call  BOBE_PLACEHOLDER_HexmodX_CMD %Parameter% >NUL


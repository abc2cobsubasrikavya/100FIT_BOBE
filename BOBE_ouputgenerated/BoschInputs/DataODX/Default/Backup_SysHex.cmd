@echo off
set Parameter=read -in BOBE_PLACEHOLDER_HEX_FILE -id ID1  read -in BOBE_PLACEHOLDER_Odx_Artifacts\Backup_SysHex.hex -id ID2 memcopyacross -id ID1 -from 01004000 -l 0x2000 -id2 ID2 -to 80004000  -o true -fill 0xFF write -out BOBE_PLACEHOLDER_Odx_Artifacts\Backup_SysHex.hex exit

Call  BOBE_PLACEHOLDER_HexmodX_CMD %Parameter% >NUL


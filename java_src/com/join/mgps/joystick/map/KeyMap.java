package com.join.mgps.joystick.map;

import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class KeyMap {
    public static final int MAX_FILE_NUM = 4;
    public static final String[] dcDefKeysValue;
    public static final String dcKeyMapSection = "DC_KEY_MAP";
    public static final String[] dcKeysKey;
    public static final String[] emuDefKeysValue;
    public static final String emuKeyMapSection = "EMU_KEY_MAP";
    public static final String[] emuKeysKey;
    public static final String[] fbaDefKeysValue;
    public static final String fbaKeyMapSection = "FBA_KEY_MAP";
    public static final String[] fbaKeysKey;
    public static final String[] fcDefKeysValue;
    public static final String fcKeyMapSection = "FC_KEY_MAP";
    public static final String[] fcKeysKey;
    public static final String[] gbaDefKeysValue;
    public static final String gbaKeyMapSection = "GBA_KEY_MAP";
    public static final String[] gbaKeysKey;
    public static final String[] gbcDefKeysValue;
    public static final String gbcKeyMapSection = "GBC_KEY_MAP";
    public static final String[] gbcKeysKey;
    public static final String keySection = "KEY";
    public static final String[] mdDefKeysValue;
    public static final String mdKeyMapSection = "MD_KEY_MAP";
    public static final String[] mdKeysKey;
    public static final String[] n64DefKeysValue;
    public static final String n64KeyMapSection = "N64_KEY_MAP";
    public static final String[] n64KeysKey;
    public static final String[] psDefKeysValue;
    public static final String psKeyMapSection = "PS_KEY_MAP";
    public static final String[] psKeysKey;
    public static final String[] pspDefKeysValue;
    public static final String pspKeyMapSection = "PSP_KEY_MAP";
    public static final String[] pspKeysKey;
    public static final String[] sections;
    public static final String[] sfcDefKeysValue;
    public static final String sfcKeyMapSection = "SFC_KEY_MAP";
    public static final String[] sfcKeysKey;
    public static final String[] wscDefKeysValue;
    public static final String wscKeyMapSection = "WSC_KEY_MAP";
    public static final String[] wscKeysKey;
    public static final String[] inifiles = {"key_map.ini", "", "", ""};
    public static final int[] defJoystickKeys = {109, 108, 99, 96, 100, 97, 102, 104, 103, 105, 21, 19, 22, 20, 106, 107};
    public static final int[] defKeyboardKeys = {67, 66, 8, 9, 11, 10, 12, 14, 13, 15, 29, 51, 32, 47, 16, 7};
    public static final String[] keysKey = {b.f71750c, b.f71753d, b.f71756e, b.f71762g, b.f71759f, b.f71765h, b.f71768i, b.f71771j, b.f71774k, b.f71777l, b.f71780m, b.f71783n, b.f71789p, b.f71786o, b.f71792q, b.f71795r};

    public enum EmuMap {
        FBA(KeyMap.fbaKeyMapSection, KeyMap.fbaKeysKey, KeyMap.fbaDefKeysValue),
        FC(KeyMap.fcKeyMapSection, KeyMap.fcKeysKey, KeyMap.fcDefKeysValue),
        SFC(KeyMap.sfcKeyMapSection, KeyMap.sfcKeysKey, KeyMap.sfcDefKeysValue),
        PSP(KeyMap.pspKeyMapSection, KeyMap.pspKeysKey, KeyMap.pspDefKeysValue),
        GBA(KeyMap.gbaKeyMapSection, KeyMap.gbaKeysKey, KeyMap.gbaDefKeysValue),
        MD(KeyMap.mdKeyMapSection, KeyMap.mdKeysKey, KeyMap.mdDefKeysValue),
        PS(KeyMap.psKeyMapSection, KeyMap.psKeysKey, KeyMap.psDefKeysValue),
        WSC(KeyMap.wscKeyMapSection, KeyMap.wscKeysKey, KeyMap.wscDefKeysValue),
        GBC(KeyMap.gbcKeyMapSection, KeyMap.gbcKeysKey, KeyMap.gbcDefKeysValue),
        DC(KeyMap.dcKeyMapSection, KeyMap.dcKeysKey, KeyMap.dcDefKeysValue),
        N64(KeyMap.n64KeyMapSection, KeyMap.n64KeysKey, KeyMap.n64DefKeysValue);

        public String[] keysKey;
        public HashMap<String, String> map;
        public String section;

        EmuMap(String section, String[] keysKey, String[] defKeysValue) {
            this.section = section;
            this.keysKey = keysKey;
            if (keysKey == null) {
                return;
            }
            boolean z10 = defKeysValue == null || defKeysValue.length != keysKey.length;
            this.map = new HashMap<>();
            for (int i10 = 0; i10 < keysKey.length; i10++) {
                if (z10) {
                    this.map.put(keysKey[i10], "");
                } else {
                    this.map.put(keysKey[i10], defKeysValue[i10]);
                }
            }
        }

        public static EmuMap getEmuMap(String section) {
            if (section == null || section.trim().equals("")) {
                return null;
            }
            for (EmuMap emuMap : values()) {
                if (emuMap.section.equals(section)) {
                    return emuMap;
                }
            }
            return null;
        }

        public String defValue(String key) {
            HashMap<String, String> map = this.map;
            return map != null ? "" : map.get(key);
        }
    }

    static {
        StringBuilder sb2 = new StringBuilder();
        KeyCodes keyCodes = KeyCodes.KEY_SELECT;
        sb2.append(keyCodes.value());
        sb2.append("");
        String string = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        KeyCodes keyCodes2 = KeyCodes.KEY_START;
        sb3.append(keyCodes2.value());
        sb3.append("");
        String string2 = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        KeyCodes keyCodes3 = KeyCodes.KEY_A;
        sb4.append(keyCodes3.value());
        sb4.append("");
        String string3 = sb4.toString();
        StringBuilder sb5 = new StringBuilder();
        KeyCodes keyCodes4 = KeyCodes.KEY_B;
        sb5.append(keyCodes4.value());
        sb5.append("");
        String string4 = sb5.toString();
        StringBuilder sb6 = new StringBuilder();
        KeyCodes keyCodes5 = KeyCodes.KEY_C;
        sb6.append(keyCodes5.value());
        sb6.append("");
        String string5 = sb6.toString();
        StringBuilder sb7 = new StringBuilder();
        KeyCodes keyCodes6 = KeyCodes.KEY_D;
        sb7.append(keyCodes6.value());
        sb7.append("");
        String string6 = sb7.toString();
        StringBuilder sb8 = new StringBuilder();
        KeyCodes keyCodes7 = KeyCodes.KEY_E;
        sb8.append(keyCodes7.value());
        sb8.append("");
        String string7 = sb8.toString();
        StringBuilder sb9 = new StringBuilder();
        KeyCodes keyCodes8 = KeyCodes.KEY_F;
        sb9.append(keyCodes8.value());
        sb9.append("");
        fbaKeysKey = new String[]{string, string2, string3, string4, string5, string6, string7, sb9.toString(), (keyCodes3.value() | keyCodes4.value()) + "", (keyCodes5.value() | keyCodes6.value()) + "", (keyCodes3.value() | keyCodes4.value() | keyCodes5.value()) + ""};
        fbaDefKeysValue = new String[]{b.f71750c, b.f71753d, b.f71756e, b.f71762g, b.f71759f, b.f71765h, b.f71768i, b.f71771j, b.f71774k, b.f71777l, b.f71795r};
        fcKeysKey = new String[]{keyCodes.value() + "", keyCodes2.value() + "", keyCodes6.value() + "", keyCodes5.value() + "", keyCodes4.value() + "", keyCodes3.value() + "", (keyCodes3.value() | keyCodes4.value()) + ""};
        fcDefKeysValue = new String[]{b.f71750c, b.f71753d, b.f71762g, b.f71765h, b.f71756e, b.f71759f, b.f71774k};
        String str = keyCodes.value() + "";
        String str2 = keyCodes2.value() + "";
        String str3 = keyCodes5.value() + "";
        String str4 = keyCodes3.value() + "";
        String str5 = keyCodes6.value() + "";
        String str6 = keyCodes4.value() + "";
        StringBuilder sb10 = new StringBuilder();
        KeyCodes keyCodes9 = KeyCodes.KEY_L1;
        sb10.append(keyCodes9.value());
        sb10.append("");
        String string8 = sb10.toString();
        StringBuilder sb11 = new StringBuilder();
        KeyCodes keyCodes10 = KeyCodes.KEY_R1;
        sb11.append(keyCodes10.value());
        sb11.append("");
        sfcKeysKey = new String[]{str, str2, str3, str4, str5, str6, string8, sb11.toString()};
        sfcDefKeysValue = new String[]{b.f71750c, b.f71753d, b.f71756e, b.f71762g, b.f71759f, b.f71765h, b.f71768i, b.f71774k};
        pspKeysKey = new String[]{keyCodes.value() + "", keyCodes2.value() + "", keyCodes5.value() + "", keyCodes3.value() + "", keyCodes6.value() + "", keyCodes4.value() + "", keyCodes9.value() + "", keyCodes10.value() + ""};
        pspDefKeysValue = new String[]{b.f71750c, b.f71753d, b.f71756e, b.f71762g, b.f71759f, b.f71765h, b.f71768i, b.f71774k};
        gbaKeysKey = new String[]{keyCodes.value() + "", keyCodes2.value() + "", keyCodes5.value() + "", keyCodes4.value() + "", keyCodes6.value() + "", keyCodes3.value() + "", keyCodes10.value() + "", keyCodes9.value() + ""};
        gbaDefKeysValue = new String[]{b.f71750c, b.f71753d, b.f71765h, b.f71756e, b.f71759f, b.f71762g, b.f71774k, b.f71768i};
        mdKeysKey = new String[]{keyCodes.value() + "", keyCodes2.value() + "", keyCodes6.value() + "", keyCodes4.value() + "", keyCodes7.value() + "", keyCodes3.value() + "", keyCodes5.value() + "", keyCodes8.value() + ""};
        mdDefKeysValue = new String[]{b.f71750c, b.f71753d, b.f71756e, b.f71765h, b.f71759f, b.f71762g, b.f71774k, b.f71768i};
        String str7 = keyCodes.value() + "";
        String str8 = keyCodes2.value() + "";
        String str9 = keyCodes5.value() + "";
        String str10 = keyCodes3.value() + "";
        String str11 = keyCodes4.value() + "";
        String str12 = keyCodes6.value() + "";
        String str13 = keyCodes9.value() + "";
        String str14 = keyCodes10.value() + "";
        StringBuilder sb12 = new StringBuilder();
        KeyCodes keyCodes11 = KeyCodes.KEY_L2;
        sb12.append(keyCodes11.value());
        sb12.append("");
        String string9 = sb12.toString();
        StringBuilder sb13 = new StringBuilder();
        KeyCodes keyCodes12 = KeyCodes.KEY_R2;
        sb13.append(keyCodes12.value());
        sb13.append("");
        psKeysKey = new String[]{str7, str8, str9, str10, str11, str12, str13, str14, string9, sb13.toString()};
        psDefKeysValue = new String[]{b.f71750c, b.f71753d, b.f71756e, b.f71762g, b.f71759f, b.f71765h, b.f71768i, b.f71774k, b.f71771j, b.f71777l};
        String str15 = keyCodes.value() + "";
        String str16 = keyCodes2.value() + "";
        String str17 = keyCodes3.value() + "";
        String str18 = keyCodes4.value() + "";
        String str19 = KeyCodes.KEY_UP1.value() + "";
        String str20 = KeyCodes.KEY_RIGHT1.value() + "";
        StringBuilder sb14 = new StringBuilder();
        KeyCodes keyCodes13 = KeyCodes.KEY_LEFT1;
        sb14.append(keyCodes13.value());
        sb14.append("");
        wscKeysKey = new String[]{str15, str16, str17, str18, str19, str20, sb14.toString(), KeyCodes.KEY_DOWN1.value() + "", KeyCodes.KEY_LEFT.value() + "", KeyCodes.KEY_UP.value() + "", KeyCodes.KEY_RIGHT.value() + "", KeyCodes.KEY_DOWN.value() + ""};
        wscDefKeysValue = new String[]{b.f71750c, b.f71753d, b.f71762g, b.f71765h, b.f71768i, b.f71774k, b.f71771j, b.f71777l, b.f71780m, b.f71783n, b.f71789p, b.f71786o};
        gbcKeysKey = new String[]{keyCodes.value() + "", keyCodes2.value() + "", keyCodes6.value() + "", keyCodes5.value() + "", keyCodes4.value() + "", keyCodes3.value() + "", (keyCodes3.value() | keyCodes4.value()) + ""};
        gbcDefKeysValue = new String[]{b.f71750c, b.f71753d, b.f71762g, b.f71765h, b.f71756e, b.f71759f, b.f71774k};
        dcKeysKey = new String[]{keyCodes2.value() + "", keyCodes3.value() + "", keyCodes4.value() + "", keyCodes5.value() + "", keyCodes6.value() + "", keyCodes9.value() + "", keyCodes10.value() + ""};
        dcDefKeysValue = new String[]{b.f71753d, b.f71762g, b.f71765h, b.f71756e, b.f71759f, b.f71768i, b.f71774k};
        n64KeysKey = new String[]{keyCodes2.value() + "", keyCodes3.value() + "", keyCodes4.value() + "", keyCodes5.value() + "", keyCodes6.value() + "", keyCodes9.value() + "", keyCodes10.value() + "", keyCodes11.value() + "", keyCodes12.value() + "", keyCodes13.value() + ""};
        n64DefKeysValue = new String[]{b.f71753d, b.f71762g, b.f71765h, b.f71756e, b.f71759f, b.f71768i, b.f71774k, b.f71771j, b.f71777l, b.f71792q};
        emuKeysKey = new String[]{"hideVirtual", fbaKeyMapSection, fcKeyMapSection, sfcKeyMapSection, gbaKeyMapSection, pspKeyMapSection, mdKeyMapSection, psKeyMapSection, wscKeyMapSection, gbcKeyMapSection, dcKeyMapSection, n64KeyMapSection};
        emuDefKeysValue = new String[]{"true", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1"};
        sections = new String[]{keySection, emuKeyMapSection, fbaKeyMapSection, sfcKeyMapSection, fcKeyMapSection, gbaKeyMapSection, pspKeyMapSection, mdKeyMapSection, psKeyMapSection, wscKeyMapSection, gbcKeyMapSection, dcKeyMapSection, n64KeyMapSection};
    }
}

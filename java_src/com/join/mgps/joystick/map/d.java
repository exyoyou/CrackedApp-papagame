package com.join.mgps.joystick.map;

import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.join.mgps.Util.g2;
import com.join.mgps.Util.y;
import com.join.mgps.Util.z;
import com.join.mgps.joystick.KeyMapActions;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f71826b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f71827c = "d";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static KeyMap.EmuMap f71828d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static y[] f71829e = new y[4];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Context f71830f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int[] f71831a = {0, 0, 0, 0};

    public d(KeyMap.EmuMap map) {
        f71826b = z.f50164c + "/MG/config";
        f(map);
    }

    public static c b(int gamer, KeyEvent keyEvent) {
        String str;
        String next;
        if (f71828d == null) {
            return null;
        }
        c cVar = new c();
        if (f71829e[gamer] == null) {
            return cVar;
        }
        cVar.h(keyEvent);
        y.c cVarB = f71829e[gamer].b(KeyMap.keySection);
        Iterator<String> it2 = cVarB.d().iterator();
        do {
            str = "null";
            if (!it2.hasNext()) {
                next = "null";
                break;
            }
            next = it2.next();
        } while (Integer.parseInt(cVarB.c(next)) != keyEvent.getKeyCode());
        cVar.e(next);
        y.c cVarB2 = f71829e[gamer].b(f71828d.section);
        for (String str2 : cVarB2.d()) {
            String strC = cVarB2.c(str2);
            if (!TextUtils.isEmpty(strC) && strC.equals(next)) {
                str = str2;
                break;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("keyCode=");
        sb2.append(next);
        sb2.append(" val=");
        sb2.append(str);
        cVar.f(str);
        cVar.g(-1);
        return cVar;
    }

    public static Map c(String sectionTitle) {
        HashMap map = new HashMap();
        f(f71828d);
        y yVar = f71829e[0];
        y.c cVarB = yVar.b(sectionTitle);
        if (cVarB != null && !e(cVarB)) {
            yVar.i(sectionTitle);
            cVarB = null;
        }
        if (cVarB != null) {
            for (String str : cVarB.d()) {
                map.put(str, cVarB.c(str));
            }
        }
        return map;
    }

    private static File d(int gamer) {
        String[] strArr = KeyMap.inifiles;
        String str = strArr[gamer];
        if (str == null || str.equals("")) {
            return null;
        }
        return new File(f71826b + e.F0 + strArr[gamer]);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0024 A[PHI: r1
      0x0024: PHI (r1v9 com.join.mgps.joystick.map.KeyMap$EmuMap) = 
      (r1v0 com.join.mgps.joystick.map.KeyMap$EmuMap)
      (r1v1 com.join.mgps.joystick.map.KeyMap$EmuMap)
      (r1v2 com.join.mgps.joystick.map.KeyMap$EmuMap)
      (r1v3 com.join.mgps.joystick.map.KeyMap$EmuMap)
      (r1v4 com.join.mgps.joystick.map.KeyMap$EmuMap)
      (r1v5 com.join.mgps.joystick.map.KeyMap$EmuMap)
      (r1v6 com.join.mgps.joystick.map.KeyMap$EmuMap)
      (r1v7 com.join.mgps.joystick.map.KeyMap$EmuMap)
      (r1v8 com.join.mgps.joystick.map.KeyMap$EmuMap)
     binds: [B:9:0x0022, B:12:0x002e, B:15:0x0039, B:18:0x0044, B:21:0x004f, B:24:0x005a, B:27:0x0065, B:30:0x0070, B:33:0x007b] A[DONT_GENERATE, DONT_INLINE]] */
    private static boolean e(y.c section) {
        String str = section.f50156a;
        if (str.equals(KeyMap.keySection) || str.equals(KeyMap.emuKeyMapSection)) {
            return true;
        }
        KeyMap.EmuMap emuMap = KeyMap.EmuMap.getEmuMap(str);
        KeyMap.EmuMap emuMap2 = KeyMap.EmuMap.FBA;
        if (str.equals(emuMap2.section)) {
            emuMap = emuMap2;
        } else {
            emuMap2 = KeyMap.EmuMap.FC;
            if (str.equals(emuMap2.section)) {
                emuMap = emuMap2;
            } else {
                emuMap2 = KeyMap.EmuMap.SFC;
                if (str.equals(emuMap2.section)) {
                    emuMap = emuMap2;
                } else {
                    emuMap2 = KeyMap.EmuMap.PSP;
                    if (str.equals(emuMap2.section)) {
                        emuMap = emuMap2;
                    } else {
                        emuMap2 = KeyMap.EmuMap.GBA;
                        if (str.equals(emuMap2.section)) {
                            emuMap = emuMap2;
                        } else {
                            emuMap2 = KeyMap.EmuMap.MD;
                            if (str.equals(emuMap2.section)) {
                                emuMap = emuMap2;
                            } else {
                                emuMap2 = KeyMap.EmuMap.PS;
                                if (str.equals(emuMap2.section)) {
                                    emuMap = emuMap2;
                                } else {
                                    emuMap2 = KeyMap.EmuMap.WSC;
                                    if (str.equals(emuMap2.section)) {
                                        emuMap = emuMap2;
                                    } else {
                                        emuMap2 = KeyMap.EmuMap.GBC;
                                        if (str.equals(emuMap2.section)) {
                                            emuMap = emuMap2;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return emuMap != null;
    }

    public static synchronized void f(KeyMap.EmuMap map) {
        f71826b = z.f50164c + "/MG/config";
        f71828d = map;
        for (int i10 = 0; i10 < f71829e.length; i10++) {
            File fileD = d(i10);
            if (fileD != null) {
                String absolutePath = fileD.getAbsolutePath();
                try {
                    if (!fileD.getParentFile().exists()) {
                        fileD.getParentFile().mkdirs();
                    }
                    if (fileD.exists() && fileD.isDirectory()) {
                        fileD.delete();
                    }
                    if (!fileD.exists()) {
                        fileD.setReadable(true);
                        fileD.setWritable(true);
                        fileD.createNewFile();
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                f71829e[i10] = new y(absolutePath);
                h(i10);
            }
        }
    }

    public static synchronized void g(int gamer, String sectionTitle, String parameter, String value) {
        y yVar = f71829e[gamer];
        yVar.g(sectionTitle, parameter, value);
        yVar.j();
    }

    private static void h(int gamer) {
        y yVar = f71829e[gamer];
        int i10 = 0;
        while (true) {
            String[] strArr = KeyMap.sections;
            if (i10 >= strArr.length) {
                return;
            }
            String str = strArr[i10];
            y.c cVarB = yVar.b(str);
            if (cVarB != null && !e(cVarB)) {
                yVar.i(str);
                cVarB = null;
            }
            if (cVarB == null) {
                y.c cVar = new y.c(str);
                yVar.f(cVar);
                i(cVar);
            }
            i10++;
        }
    }

    private static void i(y.c section) {
        String str = section.f50156a;
        int i10 = 0;
        if (str.equals(KeyMap.keySection)) {
            while (true) {
                String[] strArr = KeyMap.keysKey;
                if (i10 >= strArr.length) {
                    return;
                }
                section.e(strArr[i10], String.valueOf(KeyMap.defJoystickKeys[i10]));
                i10++;
            }
        } else {
            if (!str.equals(KeyMap.emuKeyMapSection)) {
                KeyMap.EmuMap emuMap = KeyMap.EmuMap.getEmuMap(str);
                if (emuMap == null) {
                    return;
                }
                for (Map.Entry<String, String> entry : emuMap.map.entrySet()) {
                    section.e(entry.getKey(), entry.getValue());
                }
                return;
            }
            while (true) {
                String[] strArr2 = KeyMap.emuKeysKey;
                if (i10 >= strArr2.length) {
                    return;
                }
                section.e(strArr2[i10], String.valueOf(KeyMap.emuDefKeysValue[i10]));
                i10++;
            }
        }
    }

    public static synchronized void j() {
        int i10 = 0;
        while (true) {
            y[] yVarArr = f71829e;
            if (i10 < yVarArr.length) {
                y yVar = yVarArr[i10];
                if (yVar != null) {
                    yVar.j();
                    try {
                        k(f71830f, f71828d, d(i10).getAbsolutePath());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                i10++;
            }
        }
    }

    private static void k(Context context, KeyMap.EmuMap emuMap, String absolutePath) throws Exception {
        try {
            KeyMapActions.class.getDeclaredMethod("saveStat", Context.class, KeyMap.EmuMap.class, String.class).invoke(null, context, emuMap, absolutePath);
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
        }
    }

    public static boolean l(int gamer, Boolean... hide) {
        f(f71828d);
        y yVar = f71829e[gamer];
        String[] strArr = KeyMap.emuKeysKey;
        boolean zC = g2.c(yVar.c(KeyMap.emuKeyMapSection, strArr[0]), true);
        if (hide == null || hide.length == 0) {
            return zC;
        }
        boolean zBooleanValue = hide[0].booleanValue();
        g(gamer, KeyMap.emuKeyMapSection, strArr[0], String.valueOf(zBooleanValue));
        return zBooleanValue;
    }

    public static void m(Context context_, KeyMap.EmuMap map, Map<String, String> data) {
        f71830f = context_;
        f71828d = map;
        if (map != null) {
            n(map.section, data);
        }
    }

    public static void n(String sectionTitle, Map<String, String> data) {
        KeyMap.EmuMap emuMap = f71828d;
        if (emuMap != null) {
            f(emuMap);
        } else {
            f(null);
        }
        Iterator<Map.Entry<String, String>> it2 = data.entrySet().iterator();
        while (it2.hasNext()) {
            String key = it2.next().getKey();
            String str = data.get(key);
            y yVar = f71829e[0];
            if (yVar != null) {
                yVar.g(sectionTitle, key, str);
            }
        }
        j();
    }

    public static void o(Context context_, KeyMap.EmuMap map, Map<String, String> data) {
        f71830f = context_;
        f71828d = map;
        if (map != null) {
            p(map.section, data);
        }
    }

    public static void p(String sectionTitle, Map<String, String> data) {
        KeyMap.EmuMap emuMap = f71828d;
        if (emuMap != null) {
            f(emuMap);
        } else {
            f(null);
        }
        Iterator<Map.Entry<String, String>> it2 = data.entrySet().iterator();
        while (it2.hasNext()) {
            String key = it2.next().getKey();
            String str = data.get(key);
            y yVar = f71829e[0];
            if (yVar != null) {
                yVar.g(sectionTitle, str, key);
            }
        }
        j();
    }

    public Map a() {
        KeyMap.EmuMap emuMap = f71828d;
        return emuMap == null ? new HashMap() : c(emuMap.section);
    }
}

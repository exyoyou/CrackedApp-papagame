package com.byazt.lf;

import android.content.Context;
import com.byazt.hw.sp;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 526, 15})
public class uj {
    public static void c(Context context, int i10, String str, int i11) {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (i10 == 1) {
                linkedHashMap.put(c(i11), str);
            }
            ve.tt("MultiProcessFileUtils", "saveData = ".concat(String.valueOf(str)));
            if (sp.c().c(i11).uj() != null) {
                sp.c().c(i11).uj().c(context, linkedHashMap);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002a  */
    public static String c(Context context, int i10, int i11) {
        String strC;
        if (i10 != 1) {
            strC = "";
        } else {
            try {
                if (sp.c().c(i11).uj() != null) {
                    strC = sp.c().c(i11).uj().c(context, c(i11), "");
                } else {
                    strC = "";
                }
            } catch (Exception unused) {
            }
        }
        return strC instanceof String ? String.valueOf(strC) : "";
    }

    private static String c(int i10) {
        return "tnc_config".concat(String.valueOf(i10));
    }
}

package com.byazt.vx;

import android.text.TextUtils;
import java.security.SecureRandom;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Random f21414c = new SecureRandom();

    public static JSONObject c(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            return jSONObject2;
        }
        try {
            try {
                String strC = c(jSONObject.toString());
                if (TextUtils.isEmpty(strC)) {
                    jSONObject2.put("message", jSONObject.toString());
                    jSONObject2.put("cypher", 0);
                } else {
                    jSONObject2.put("message", strC);
                    jSONObject2.put("cypher", 3);
                }
            } catch (Throwable th) {
                com.byazt.eu.tt.c(th.getMessage());
            }
        } catch (Throwable unused) {
            jSONObject2.put("message", jSONObject.toString());
            jSONObject2.put("cypher", 0);
        }
        return jSONObject2;
    }

    public static String tt() {
        String strC = c(8);
        if (strC == null || strC.length() != 16) {
            return null;
        }
        return strC;
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strC = c();
        String strC2 = c(strC, 32);
        String strTt = tt();
        return 3 + strC + strTt + ((strC2 == null || strTt == null) ? null : c.c(str, strTt, strC2));
    }

    public static String c() {
        String strC = c(16);
        if (strC == null || strC.length() != 32) {
            return null;
        }
        return strC;
    }

    public static String c(String str, int i10) {
        if (str == null || str.length() != i10) {
            return null;
        }
        int i11 = i10 / 2;
        return str.substring(i11, i10) + str.substring(0, i11);
    }

    public static String c(int i10) {
        try {
            byte[] bArr = new byte[i10];
            f21414c.nextBytes(bArr);
            return sl.c(bArr);
        } catch (Exception unused) {
            return null;
        }
    }
}

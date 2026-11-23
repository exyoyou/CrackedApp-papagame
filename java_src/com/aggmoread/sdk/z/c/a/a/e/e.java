package com.aggmoread.sdk.z.c.a.a.e;

import android.text.TextUtils;
import android.util.Base64;
import com.sigmob.sdk.base.mta.PointCategory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f5229a = System.getProperty("line.separator");

    public static void a(String str) {
        if (com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue()) {
            a("AMSDK", str);
        }
    }

    public static void b(String str) {
    }

    public static void c(String str) {
        b("BIDTAG", str);
    }

    static void a(String str, String str2) {
    }

    public static void b(String str, String str2) {
        if (com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue()) {
            a(str, str2);
        }
    }

    public static void c(String str, String str2) {
        if (com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue()) {
            try {
                if (str.startsWith("{")) {
                    str = new JSONObject(str).toString(4);
                } else if (str.startsWith("[")) {
                    str = new JSONArray(str).toString(4);
                }
            } catch (JSONException unused) {
            }
            a("AMSDK", true);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            String str3 = f5229a;
            sb2.append(str3);
            sb2.append(str);
            for (String str4 : sb2.toString().split(str3)) {
                a("AMHTTAG", "* " + str4);
            }
            a("AMSDK", false);
        }
    }

    public static void a(String str, String str2, Object... objArr) {
        if (com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue()) {
            if (objArr != null && objArr.length > 0) {
                try {
                    str2 = String.format(str2, objArr);
                } catch (Exception unused) {
                }
            }
            a(str, str2);
        }
    }

    static void a(String str, boolean z10) {
        a(str, "+-------------------------------+");
    }

    public static void a(byte[] bArr, String str) {
        String string;
        if (com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue()) {
            boolean zContains = str.contains("ads2");
            if (bArr != null && bArr.length > 0) {
                try {
                    String str2 = new String(bArr, "UTF-8");
                    if (zContains) {
                        b("AMHTTAG_ads", "tmp raw data " + str2);
                    }
                    byte[] bArrE = !str.contains(PointCategory.REQUEST) ? com.aggmoread.sdk.z.c.a.a.b.e(bArr) : com.aggmoread.sdk.z.c.a.a.b.a(Base64.decode(bArr, 0));
                    if (bArrE != null) {
                        bArr = bArrE;
                    }
                    String str3 = new String(bArr, "UTF-8");
                    if (TextUtils.isEmpty(str3)) {
                        string = "";
                    } else {
                        string = str3.startsWith("[") ? new JSONArray(str3).toString() : new JSONObject(str3).toString();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } else {
                if (zContains) {
                    b("AMHTTAG_ads", "json:= empty  " + str);
                    return;
                }
                string = "json:= empty";
            }
            c(string, str);
        }
    }
}

package com.sdk.s;

import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.framework.utils.log.MobileLogManager;
import com.sdk.f.d;
import com.sdk.o.b;
import com.sdk.p.f;
import java.util.TreeMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Boolean f78583b;

    static {
        new TreeMap();
        f78582a = a.class.getSimpleName();
        f78583b = Boolean.valueOf(d.f78521a);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    public static String a(String str) {
        byte b10;
        switch (com.sdk.t.a.f78587d) {
            case "B":
                b10 = 3;
                break;
            case "C":
                b10 = 0;
                break;
            case "D":
                b10 = 1;
                break;
            case "E":
                b10 = 2;
                break;
            default:
                b10 = -1;
                break;
        }
        if (b10 == 0 || b10 == 1 || b10 == 2) {
            try {
                String str2 = com.sdk.t.a.f78590g;
                if (com.sdk.r.a.a(str2).booleanValue()) {
                    return null;
                }
                String strB = f.a().f78578a.b(str2, str.replaceAll("\n", ""));
                if (!com.sdk.r.a.a(strB).booleanValue()) {
                    return strB;
                }
            } catch (Throwable th) {
                MobileLogManager.status302001(th.toString());
                LogUtils.e(f78582a, "SDK解密异常：" + th.toString(), f78583b);
            }
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String strOptString = jSONObject.optString("aesKey");
                return f.a().f78578a.b(b.a(strOptString, com.sdk.t.a.f78585b), jSONObject.optString("data"));
            } catch (Throwable th2) {
                MobileLogManager.status302001(th2.toString());
                LogUtils.e(f78582a, "SDK解密异常：" + th2.toString(), f78583b);
            }
        }
        return null;
    }
}

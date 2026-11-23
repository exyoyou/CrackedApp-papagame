package x;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f97575c = "\"&";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f97576d = "&";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f97577e = "bizcontext=\"";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f97578f = "bizcontext=";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f97579g = "\"";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f97580h = "appkey";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f97581i = "ty";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f97582j = "sv";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f97583k = "an";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f97584l = "av";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f97585m = "sdk_start_time";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f97586n = "UTF-8";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f97587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f97588b;

    public a(Context context) {
        this.f97587a = "";
        this.f97588b = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            this.f97587a = packageInfo.versionName;
            this.f97588b = packageInfo.packageName;
        } catch (Exception unused) {
        }
    }

    private static String c(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = str.split(str2);
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            if (!TextUtils.isEmpty(strArrSplit[i10]) && strArrSplit[i10].startsWith(str3)) {
                return strArrSplit[i10];
            }
        }
        return null;
    }

    private String d(String str, String str2) throws JSONException, UnsupportedEncodingException {
        return str + b("", "") + str2;
    }

    private String e(String str, String str2, String str3) throws JSONException, UnsupportedEncodingException {
        String strSubstring = str.substring(str2.length());
        JSONObject jSONObject = new JSONObject(strSubstring.substring(0, strSubstring.length() - str3.length()));
        if (!jSONObject.has("appkey")) {
            jSONObject.put("appkey", u.a.f97401c);
        }
        if (!jSONObject.has(f97581i)) {
            jSONObject.put(f97581i, "and_lite");
        }
        if (!jSONObject.has(f97582j)) {
            jSONObject.put(f97582j, u.a.f97404f);
        }
        if (!jSONObject.has(f97583k)) {
            jSONObject.put(f97583k, this.f97588b);
        }
        if (!jSONObject.has(f97584l)) {
            jSONObject.put(f97584l, this.f97587a);
        }
        if (!jSONObject.has(f97585m)) {
            jSONObject.put(f97585m, System.currentTimeMillis());
        }
        return str2 + jSONObject.toString() + str3;
    }

    private static boolean f(String str) {
        return !str.contains(f97575c);
    }

    private String g(String str) {
        try {
            String strC = c(str, f97576d, f97578f);
            if (TextUtils.isEmpty(strC)) {
                str = str + f97576d + d(f97578f, "");
            } else {
                int iIndexOf = str.indexOf(strC);
                str = str.substring(0, iIndexOf) + e(strC, f97578f, "") + str.substring(iIndexOf + strC.length());
            }
        } catch (Throwable unused) {
        }
        return str;
    }

    private String h(String str) {
        try {
            String strC = c(str, f97575c, f97577e);
            if (TextUtils.isEmpty(strC)) {
                return str + f97576d + d(f97577e, f97579g);
            }
            if (!strC.endsWith(f97579g)) {
                strC = strC + f97579g;
            }
            int iIndexOf = str.indexOf(strC);
            return str.substring(0, iIndexOf) + e(strC, f97577e, f97579g) + str.substring(iIndexOf + strC.length());
        } catch (Throwable unused) {
            return str;
        }
    }

    public final String a(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("new_external_info==")) {
            return str;
        }
        return str.contains(f97575c) ^ true ? g(str) : h(str);
    }

    public final String b(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appkey", u.a.f97401c);
            jSONObject.put(f97581i, "and_lite");
            jSONObject.put(f97582j, u.a.f97404f);
            jSONObject.put(f97583k, this.f97588b);
            jSONObject.put(f97584l, this.f97587a);
            jSONObject.put(f97585m, System.currentTimeMillis());
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(str, str2);
            }
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}

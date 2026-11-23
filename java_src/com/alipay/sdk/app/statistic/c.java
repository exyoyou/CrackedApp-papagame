package com.alipay.sdk.app.statistic;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f7065k = "net";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f7066l = "biz";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f7067m = "cp";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f7068n = "H5PayNetworkError";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f7069o = "H5AuthNetworkError";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f7070p = "SSLError";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f7071q = "H5PayDataAnalysisError";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f7072r = "H5AuthDataAnalysisError";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f7073s = "ClientSignError";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f7074t = "ClientBindFailed";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f7075u = "TriDesEncryptError";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f7076v = "TriDesDecryptError";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f7077w = "ClientBindException";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f7078x = "partner";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f7079y = "out_trade_no";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f7080z = "trade_no";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f7082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f7083c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f7086f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f7089i = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f7081a = String.format("123456789,%s", new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date()));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f7084d = String.format("android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-", b("15.0.8"), b(u.a.f97404f));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f7085e = String.format("%s,%s,-,-,-", b(y.b.a().f97669a), b(x.b.b().e()));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String f7087g = "-";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f7088h = "-";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f7090j = "-";

    public c(Context context) {
        this.f7083c = a(context);
        this.f7086f = String.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,-", b(com.alipay.sdk.util.b.j(context)), "android", b(Build.VERSION.RELEASE), b(Build.MODEL), "-", b(com.alipay.sdk.util.b.a(context).b()), b(com.alipay.sdk.util.b.d(context).a()), "gw", b(com.alipay.sdk.util.b.a(context).e()));
    }

    private static String a(Context context) {
        String packageName;
        String str;
        String str2 = "-";
        if (context != null) {
            try {
                Context applicationContext = context.getApplicationContext();
                packageName = applicationContext.getPackageName();
                try {
                    str2 = applicationContext.getPackageManager().getPackageInfo(packageName, 0).versionName;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                packageName = "-";
            }
            str = str2;
            str2 = packageName;
        } else {
            str = "-";
        }
        return String.format("%s,%s,-,-,-", str2, str);
    }

    static String b(String str) {
        return TextUtils.isEmpty(str) ? "" : str.replace("[", "【").replace("]", "】").replace("(", "（").replace(")", "）").replace(",", "，").replace("-", SimpleComparison.EQUAL_TO_OPERATION).replace("^", "~");
    }

    private static String c(Throwable th) {
        if (th == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append(th.getClass().getName());
            stringBuffer.append(":");
            stringBuffer.append(th.getMessage());
            stringBuffer.append(" 》 ");
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null) {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    stringBuffer.append(stackTraceElement.toString() + " 》 ");
                }
            }
        } catch (Throwable unused) {
        }
        return stringBuffer.toString();
    }

    private boolean f() {
        return TextUtils.isEmpty(this.f7089i);
    }

    @SuppressLint({"SimpleDateFormat"})
    private static String g() {
        return String.format("123456789,%s", new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date()));
    }

    private static String h(Context context) {
        return String.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,-", b(com.alipay.sdk.util.b.j(context)), "android", b(Build.VERSION.RELEASE), b(Build.MODEL), "-", b(com.alipay.sdk.util.b.a(context).b()), b(com.alipay.sdk.util.b.d(context).a()), "gw", b(com.alipay.sdk.util.b.a(context).e()));
    }

    private String i(String str) {
        String str2;
        if (TextUtils.isEmpty(this.f7089i)) {
            return "";
        }
        String[] strArrSplit = str.split(x.a.f97576d);
        String strReplace = null;
        if (strArrSplit != null) {
            String strReplace2 = null;
            for (String str3 : strArrSplit) {
                String[] strArrSplit2 = str3.split(SimpleComparison.EQUAL_TO_OPERATION);
                if (strArrSplit2 != null && strArrSplit2.length == 2) {
                    if (strArrSplit2[0].equalsIgnoreCase("partner")) {
                        strArrSplit2[1].replace(x.a.f97579g, "");
                    } else if (strArrSplit2[0].equalsIgnoreCase("out_trade_no")) {
                        strReplace = strArrSplit2[1].replace(x.a.f97579g, "");
                    } else if (strArrSplit2[0].equalsIgnoreCase(f7080z)) {
                        strReplace2 = strArrSplit2[1].replace(x.a.f97579g, "");
                    }
                }
            }
            str2 = strReplace;
            strReplace = strReplace2;
        } else {
            str2 = null;
        }
        String strB = b(strReplace);
        String strB2 = b(str2);
        String str4 = String.format("%s,%s,-,%s,-,-,-", strB, strB2, b(strB2));
        this.f7082b = str4;
        return String.format("[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]", this.f7081a, str4, this.f7083c, this.f7084d, this.f7085e, this.f7086f, this.f7087g, this.f7088h, this.f7089i, this.f7090j);
    }

    private static String j() {
        return String.format("android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-", b("15.0.8"), b(u.a.f97404f));
    }

    private static String k(String str) {
        String str2;
        String[] strArrSplit = str.split(x.a.f97576d);
        String strReplace = null;
        if (strArrSplit != null) {
            String strReplace2 = null;
            for (String str3 : strArrSplit) {
                String[] strArrSplit2 = str3.split(SimpleComparison.EQUAL_TO_OPERATION);
                if (strArrSplit2 != null && strArrSplit2.length == 2) {
                    if (strArrSplit2[0].equalsIgnoreCase("partner")) {
                        strArrSplit2[1].replace(x.a.f97579g, "");
                    } else if (strArrSplit2[0].equalsIgnoreCase("out_trade_no")) {
                        strReplace = strArrSplit2[1].replace(x.a.f97579g, "");
                    } else if (strArrSplit2[0].equalsIgnoreCase(f7080z)) {
                        strReplace2 = strArrSplit2[1].replace(x.a.f97579g, "");
                    }
                }
            }
            str2 = strReplace;
            strReplace = strReplace2;
        } else {
            str2 = null;
        }
        String strB = b(strReplace);
        String strB2 = b(str2);
        return String.format("%s,%s,-,%s,-,-,-", strB, strB2, b(strB2));
    }

    private static String l() {
        return String.format("%s,%s,-,-,-", b(y.b.a().f97669a), b(x.b.b().e()));
    }

    public final void d(String str, String str2, String str3) {
        String str4 = "";
        if (!TextUtils.isEmpty(this.f7089i)) {
            str4 = "^";
        }
        this.f7089i += (str4 + String.format("%s,%s,%s,-", str, str2, b(str3)));
    }

    public final void e(String str, String str2, Throwable th) {
        d(str, str2, c(th));
    }
}

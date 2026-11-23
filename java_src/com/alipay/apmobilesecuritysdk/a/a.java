package com.alipay.apmobilesecuritysdk.a;

import a0.c;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.alipay.security.mobile.module.a.d;
import com.alipay.security.mobile.module.commonutils.crypto.i;
import com.sdk.base.framework.utils.log.LogFile;
import com.umeng.analytics.pro.bm;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;
import q.e;
import q.f;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f6981b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f6982a;

    public a(Context context) {
        this.f6982a = context;
    }

    public static String a(Context context) {
        q.b bVarB;
        try {
            String strD = f.d();
            try {
                if (!c0.a.b(strD) || (bVarB = q.a.b(context)) == null || c0.a.b(bVarB.f96401c)) {
                    return strD;
                }
                strD = bVarB.f96401c;
                f.b(bVarB);
                return strD;
            } catch (Throwable unused) {
                return strD;
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    static /* synthetic */ void c(a aVar, String str, String str2, String str3) {
        try {
            a0.a aVarA = d.a(aVar.f6982a).a("android", str, str2, str3);
            if (!aVarA.f37a) {
                d(false);
            } else {
                e.a(aVar.f6982a, aVarA.f36d, aVarA.f35c);
                d(false);
            }
        } catch (Throwable th) {
            try {
                c0.d.c(th);
            } finally {
                d(false);
            }
        }
    }

    private static synchronized void d(boolean z10) {
        f6981b = z10;
    }

    private static synchronized boolean e() {
        return f6981b;
    }

    private c f(Map<String, String> map) {
        String str;
        String str2;
        String strE;
        try {
            Context context = this.f6982a;
            a0.d dVar = new a0.d();
            String strA = c0.a.a(map, bm.f84404g, "");
            q.b bVarD = q.a.d(context);
            if (bVarD != null) {
                str2 = bVarD.f96401c;
                strE = bVarD.f96399a;
                str = bVarD.f96402d;
            } else {
                str = "";
                str2 = str;
                strE = str2;
            }
            q.b bVarA = q.a.a();
            String strA2 = bVarA != null ? bVarA.f96399a : "";
            if (c0.a.b(strE) && c0.a.b(strA2)) {
                strE = n.a.e(context);
                strA2 = n.a.a();
            }
            dVar.f46a = "android";
            dVar.f49d = strE;
            dVar.f48c = strA2;
            dVar.f50e = str2;
            dVar.f51f = strA;
            dVar.f53h = str;
            dVar.f52g = "3";
            dVar.f54i = o.e.b(context, map);
            return d.a(this.f6982a).b(dVar);
        } catch (Throwable th) {
            c0.d.c(th);
            return null;
        }
    }

    public static String g(Context context) {
        try {
            String strA = f.a();
            try {
                if (!c0.a.b(strA)) {
                    return strA;
                }
                q.b bVarB = q.a.b(context);
                if (bVarB != null && !c0.a.b(bVarB.f96399a)) {
                    f.b(bVarB);
                    return bVarB.f96399a;
                }
                String strB = n.a.b(context);
                if (!c0.a.b(strB)) {
                    return strB;
                }
                String strA2 = r.b.a(context);
                return !c0.a.b(strA2) ? strA2 : strA2;
            } catch (Throwable unused) {
                return strA;
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x010e  */
    public final String b(Map<String, String> map) {
        boolean z10;
        boolean z11;
        String strA;
        String str;
        String str2 = "";
        if (map == null) {
            return "";
        }
        try {
            String str3 = this.f6982a.getFilesDir().getAbsolutePath() + "/log/ap";
            String str4 = Build.MODEL;
            String str5 = this.f6982a.getApplicationContext().getApplicationInfo().packageName;
            String strA2 = c0.a.a(map, u.b.f97417c, "");
            String strA3 = c0.a.a(map, u.b.f97421g, "");
            q.b bVarB = q.a.b(this.f6982a);
            com.alipay.apmobilesecuritysdk.b.a aVar = new com.alipay.apmobilesecuritysdk.b.a(str4, str5, "security-sdk-token", "3.0.2.20151027", strA2, strA3, bVarB != null ? bVarB.f96399a : "");
            c0.d.b(str3, new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime()) + LogFile.LOG_SUFFIX, aVar.toString());
            String strA4 = c0.a.a(map, "userId", "");
            Date date = new Date();
            boolean z12 = false;
            if (!(date.after(new Date(115, 10, 10, 0, 0, 0)) && date.before(new Date(115, 10, 11, 23, 59, 59)))) {
                z10 = date.after(new Date(115, 11, 11, 0, 0, 0)) && date.before(new Date(115, 11, 12, 23, 59, 59));
            }
            if (z10) {
                q.b bVarB2 = q.a.b(this.f6982a);
                if (bVarB2 == null || c0.a.b(bVarB2.f96401c)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            } else {
                o.e.c();
                String strD = o.e.d(this.f6982a, map);
                q.b bVarB3 = q.a.b(this.f6982a);
                if (bVarB3 == null || (!c0.a.c(strD, bVarB3.f96400b)) || !f.c(this.f6982a) || c0.a.b(bVarB3.f96401c)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            }
            if (z11) {
                c cVarF = f(map);
                if (cVarF != null) {
                    if (!c0.a.b(cVarF.f39c) ? cVarF.f37a : false) {
                        Context context = this.f6982a;
                        boolean zEquals = "1".equals(cVarF.f44h);
                        try {
                            SharedPreferences.Editor editorEdit = context.getSharedPreferences("vkeyid_settings", 0).edit();
                            if (editorEdit != null) {
                                editorEdit.putString("log_switch", zEquals ? i.c(i.a(), "1") : i.c(i.a(), "0"));
                                editorEdit.commit();
                            }
                        } catch (Throwable unused) {
                        }
                        String strD2 = e.d(this.f6982a);
                        if (!c0.a.b(cVarF.f45i) && !c0.a.c(strD2, cVarF.f45i)) {
                            String str6 = cVarF.f40d;
                            if (!e()) {
                                d(true);
                                try {
                                    new b(this, strA4, str6, "").start();
                                } catch (Throwable unused2) {
                                }
                            }
                        }
                        q.b bVar = new q.b(cVarF, o.e.d(this.f6982a, map));
                        q.a.c(this.f6982a, bVar);
                        f.b(bVar);
                        n.a.c(bVar);
                        Context context2 = this.f6982a;
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        try {
                            SharedPreferences.Editor editorEdit2 = context2.getSharedPreferences("vkeyid_settings", 0).edit();
                            if (editorEdit2 != null) {
                                editorEdit2.putString("vkey_valid", i.c(i.a(), String.valueOf(jCurrentTimeMillis)));
                                editorEdit2.commit();
                            }
                        } catch (Throwable unused3) {
                        }
                        strA = cVarF.f40d;
                    }
                }
                if (cVarF != null) {
                    str = "Server error, result:" + cVarF.f38b;
                } else {
                    str = "Server error, response is null";
                }
                c0.d.a(str);
                strA = a(this.f6982a);
            } else {
                strA = a(this.f6982a);
            }
            str2 = strA;
            com.alipay.apmobilesecuritysdk.b.b bVar2 = new com.alipay.apmobilesecuritysdk.b.b(str3, d.a(this.f6982a));
            Context context3 = this.f6982a;
            ConnectivityManager connectivityManager = (ConnectivityManager) context3.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager == null ? null : connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getType() == 1) {
                z12 = true;
            }
            boolean zB = e.b(context3);
            if (z12 && zB) {
                new Thread(new com.alipay.apmobilesecuritysdk.b.c(bVar2)).start();
            }
        } catch (Throwable th) {
            c0.d.c(th);
        }
        return str2;
    }
}

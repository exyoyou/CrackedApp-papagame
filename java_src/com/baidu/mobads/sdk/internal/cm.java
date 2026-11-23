package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public class cm {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7731b = "404";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f7732c = 843;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final bv f7740d = bv.a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f7741h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7730a = z.f8060b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static cm f7735g = new cm();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile String f7733e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile String f7734f = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static AtomicBoolean f7736i = new AtomicBoolean(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f7737j = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static AtomicBoolean f7738k = new AtomicBoolean(false);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static String f7739l = "";

    private cm() {
    }

    public static cm a() {
        return f7735g;
    }

    private String d() {
        String str = cn.f7746e;
        if (!"0.0".equals(str)) {
            return str;
        }
        try {
            double dB = cb.b(cb.a(this.f7741h));
            return dB > 0.0d ? String.valueOf(dB) : str;
        } catch (Throwable th) {
            this.f7740d.a(th);
            return str;
        }
    }

    public String b() {
        try {
            if (f7736i.compareAndSet(false, true)) {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                String str = (String) cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]);
                if (!TextUtils.isEmpty(str)) {
                    f7737j = str;
                }
            }
            return f7737j;
        } catch (Throwable th) {
            this.f7740d.a(th);
            return f7737j;
        }
    }

    public String c() {
        try {
            if (f7738k.get()) {
                return f7739l;
            }
            if (!f7736i.get()) {
                b();
            }
            if (f7737j.equalsIgnoreCase("")) {
                f7738k.set(true);
                return "";
            }
            if (f7738k.compareAndSet(false, true)) {
                String strA = a("hw_sc.build.platform.version", "");
                if (!TextUtils.isEmpty(strA)) {
                    f7739l = strA;
                }
            }
            return f7739l;
        } catch (Throwable th) {
            this.f7740d.a(th);
            return f7739l;
        }
    }

    public void a(Context context) {
        if (this.f7741h == null) {
            this.f7741h = context;
        }
    }

    public void a(String str, String str2, String str3) {
        try {
            HashMap<String, String> map = new HashMap<>();
            map.put("ad", str3);
            map.put("stacktrace", str2);
            a(str, f7731b, map);
        } catch (Exception e10) {
            this.f7740d.a(e10);
        }
    }

    private void a(String str, String str2, HashMap<String, String> map) {
        Uri.Builder builder = new Uri.Builder();
        try {
            Uri.Builder builderAppendQueryParameter = builder.appendQueryParameter("type", str2).appendQueryParameter("subtype", String.valueOf(f7732c)).appendQueryParameter(com.umeng.analytics.pro.bm.bj, "9.450").appendQueryParameter("appsid", a("appsid", new Object[0])).appendQueryParameter("v", "android_" + d() + "_" + cn.f7747f);
            Context context = this.f7741h;
            builderAppendQueryParameter.appendQueryParameter("pack", context != null ? context.getPackageName() : "").appendQueryParameter("sn", a("encodedSn", this.f7741h)).appendQueryParameter("cuid", a("encodedCUID", this.f7741h)).appendQueryParameter(com.umeng.analytics.pro.bm.f84421x, "android").appendQueryParameter("osv", bn.a(this.f7741h).c()).appendQueryParameter("romn", b()).appendQueryParameter("romv", c()).appendQueryParameter("bdr", "" + bn.a(this.f7741h).a()).appendQueryParameter("brd", "" + a(bn.a(this.f7741h).e()));
            if (str != null && str.length() > 128) {
                int iIndexOf = str.indexOf(10);
                if (iIndexOf <= 0) {
                    iIndexOf = 127;
                }
                str = str.substring(0, iIndexOf);
            }
            builder.appendQueryParameter(MediationConstant.KEY_REASON, str);
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    builder.appendQueryParameter(entry.getKey(), entry.getValue());
                }
            }
        } catch (Throwable th) {
            this.f7740d.a(th);
        }
        an anVar = new an(f7730a, "POST");
        anVar.a(builder);
        anVar.b();
    }

    private String a(String str, Object... objArr) {
        IXAdContainerFactory iXAdContainerFactoryC;
        aa aaVarA = aa.a();
        if (aaVarA == null || (iXAdContainerFactoryC = aaVarA.c()) == null) {
            return "";
        }
        Object remoteParam = iXAdContainerFactoryC.getRemoteParam(str, objArr);
        return remoteParam instanceof String ? (String) remoteParam : "";
    }

    private String a(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    private String a(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str3 = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
            return TextUtils.isEmpty(str3) ? str2 : str3;
        } catch (Throwable th) {
            this.f7740d.a(th);
            return str2;
        }
    }
}

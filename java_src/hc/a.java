package hc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.kwai.monitor.log.OAIDListener;
import com.kwai.monitor.oaid.OADIDSDKHelper;
import com.kwai.monitor.oaid.OADIDSDKHelper25;
import ec.c;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f91458a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static OAIDListener f91459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f91460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f91461d;

    /* JADX INFO: renamed from: hc.a$a, reason: collision with other inner class name */
    public class C1171a implements OADIDSDKHelper.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f91462a;

        public C1171a(Context context) {
            this.f91462a = context;
        }
    }

    public class b implements OADIDSDKHelper25.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f91463a;

        public b(Context context) {
            this.f91463a = context;
        }
    }

    public static String a(Context context) {
        if (!c.m(f91458a)) {
            return f91458a;
        }
        String strA = c.a(context, "ks_oaid");
        f91458a = strA;
        if (!c.m(strA)) {
            return f91458a;
        }
        e(context);
        return f91458a;
    }

    @SuppressLint({"PrivateApi"})
    public static String b(String str) {
        if (str == null) {
            return null;
        }
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Exception unused) {
            return null;
        }
    }

    public static /* synthetic */ void c() {
        try {
            OAIDListener oAIDListener = f91459b;
            if (oAIDListener != null) {
                oAIDListener.OnOAIDValid(f91458a);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void e(Context context) {
        if (c.m(f91458a) && context != null) {
            if (TextUtils.isEmpty(f91458a) && !f91461d && !f91460c) {
                f91460c = true;
                new Thread(new hc.b(context)).start();
            }
            if (OADIDSDKHelper.a()) {
                C1171a c1171a = new C1171a(context);
                if (OADIDSDKHelper.f75339b) {
                    return;
                }
                if (!OADIDSDKHelper.a()) {
                    OADIDSDKHelper.f75339b = true;
                    return;
                }
                if (OADIDSDKHelper.f75338a) {
                    return;
                }
                OADIDSDKHelper.f75338a = true;
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    int iInitSdk = MdidSdkHelper.InitSdk(context.getApplicationContext(), true, new OADIDSDKHelper.IIdentifierListenerImpl(jCurrentTimeMillis, c1171a));
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("OADIDSDKHelper:sdk init time=");
                    sb2.append(jCurrentTimeMillis2);
                    sb2.append("--result=");
                    sb2.append(iInitSdk);
                    return;
                } catch (Throwable unused) {
                    OADIDSDKHelper.f75338a = false;
                    OADIDSDKHelper.f75339b = true;
                    return;
                }
            }
            if (OADIDSDKHelper25.a()) {
                b bVar = new b(context);
                if (OADIDSDKHelper25.f75341b) {
                    return;
                }
                if (!OADIDSDKHelper25.a()) {
                    OADIDSDKHelper25.f75341b = true;
                    return;
                }
                if (OADIDSDKHelper25.f75340a) {
                    return;
                }
                OADIDSDKHelper25.f75340a = true;
                try {
                    long jCurrentTimeMillis3 = System.currentTimeMillis();
                    int iInitSdk2 = MdidSdkHelper.InitSdk(context.getApplicationContext(), true, new OADIDSDKHelper25.IIdentifierListener25(jCurrentTimeMillis3, bVar));
                    long jCurrentTimeMillis4 = System.currentTimeMillis() - jCurrentTimeMillis3;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("OADIDSDKHelper25:sdk init time=");
                    sb3.append(jCurrentTimeMillis4);
                    sb3.append("--result=");
                    sb3.append(iInitSdk2);
                } catch (Throwable unused2) {
                    OADIDSDKHelper25.f75340a = false;
                    OADIDSDKHelper25.f75341b = true;
                }
            }
        }
    }

    public static /* synthetic */ boolean f() {
        String strB = b("ro.build.freeme.label");
        return !TextUtils.isEmpty(strB) && strB.equalsIgnoreCase("FREEMEOS");
    }

    public static /* synthetic */ boolean h() {
        String strB = b("ro.ssui.product");
        return (TextUtils.isEmpty(strB) || strB.equalsIgnoreCase("unknown")) ? false : true;
    }
}

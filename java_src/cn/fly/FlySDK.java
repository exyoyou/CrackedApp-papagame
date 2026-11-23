package cn.fly;

import android.content.Context;
import android.text.TextUtils;
import cn.fly.commons.C1293r;
import cn.fly.commons.CSCenter;
import cn.fly.commons.FlyProduct;
import cn.fly.commons.InternationalDomain;
import cn.fly.commons.aa;
import cn.fly.commons.c;
import cn.fly.commons.o;
import cn.fly.commons.q;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.PublicMemberKeeper;
import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes7.dex */
public class FlySDK implements PublicMemberKeeper {
    public static final int CHANNEL_APICLOUD = 5;
    public static final int CHANNEL_COCOS = 1;
    public static final int CHANNEL_FLUTTER = 4;
    public static final int CHANNEL_JS = 3;
    public static final int CHANNEL_NATIVE = 0;
    public static final int CHANNEL_QUICKSDK = 6;
    public static final int CHANNEL_REACT_NATIVE = 8;
    public static final int CHANNEL_UNIAPP = 7;
    public static final int CHANNEL_UNITY = 2;
    public static final int SDK_VERSION_CODE;
    public static final String SDK_VERSION_NAME;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile Context f903a;

    static {
        int i10;
        String strReplace = "1.0.0";
        try {
            strReplace = "2026-09-18".replace("-", o0.f49827a);
            i10 = Integer.parseInt("2026-09-18".replace("-", ""));
        } catch (Throwable unused) {
            i10 = 1;
        }
        SDK_VERSION_CODE = i10;
        SDK_VERSION_NAME = strReplace;
    }

    public static boolean checkFH(boolean z10) {
        if (z10) {
            return x.f1479g;
        }
        if (x.f1478f) {
            return x.f1478f;
        }
        return ((Integer) c.a("hs", 1)).intValue() == 1;
    }

    public static boolean checkForceHttps() {
        return checkFH(false);
    }

    public static boolean checkV6() {
        return x.f1480h;
    }

    public static String getAppSecret() {
        if (TextUtils.isEmpty(x.f1474b)) {
            return x.f1476d == null ? "" : x.f1476d;
        }
        return x.f1474b == null ? "" : x.f1474b;
    }

    public static String getAppkey() {
        if (aa.h()) {
            return q.a();
        }
        return null;
    }

    public static Context getContext() {
        if (f903a == null) {
            try {
                Context contextA = C1293r.a();
                if (contextA != null) {
                    init(contextA);
                }
            } catch (Throwable unused) {
            }
        }
        return f903a;
    }

    public static Context getContextSafely() {
        return f903a;
    }

    public static boolean getDefaultPrivacy() {
        return true;
    }

    public static InternationalDomain getDmn() {
        return x.f1477e == null ? InternationalDomain.DEFAULT : x.f1477e;
    }

    public static int getPrivacyGrantedStatus() {
        return aa.c();
    }

    public static synchronized void init(Context context) {
        init(context, null, null);
    }

    public static final int isAuth() {
        return q.b();
    }

    public static final boolean isFly() {
        return q.c();
    }

    public static final boolean isForb() {
        return q.d();
    }

    public static final boolean isGppVer() {
        return x.f1482j;
    }

    public static void setChannel(FlyProduct flyProduct, int i10) {
        if (isForb()) {
            FlyLog.getInstance().d("isForb: true", new Object[0]);
        } else {
            o.a().a(flyProduct, i10);
        }
    }

    public static void submitPolicyGrantResult(boolean z10) {
        aa.b(z10);
    }

    public static String syncGetBSDM(String str, String str2, String str3, boolean z10) {
        return q.a(str, str2, str3, z10);
    }

    public static void updateFlyCustomController(FlyCustomController flyCustomController) {
        CSCenter.getInstance().updateCustomController(flyCustomController);
    }

    public static void submitPolicyGrantResult(FlyCustomController flyCustomController, boolean z10) {
        submitPolicyGrantResult(z10);
        updateFlyCustomController(flyCustomController);
    }

    public static synchronized void init(Context context, String str) {
        init(context, str, null);
    }

    public static synchronized void init(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        if (f903a == null) {
            f903a = context.getApplicationContext();
            x.f1473a = str;
            x.f1474b = str2;
            q.a(false);
        } else if (!TextUtils.isEmpty(str) && !str.equals(x.f1473a)) {
            x.f1473a = str;
            x.f1474b = str2;
            q.a(true);
        }
    }
}

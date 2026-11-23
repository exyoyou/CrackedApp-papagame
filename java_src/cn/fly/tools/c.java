package cn.fly.tools;

import android.content.pm.ApplicationInfo;
import android.content.pm.Signature;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.a.m;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.ReflectHelper;
import com.haima.hmcp.utils.HmIMEManager;
import com.kuaishou.weapon.p0.t;
import com.sigmob.sdk.base.mta.PointType;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public class c {
    public static int a(ApplicationInfo applicationInfo, String str) {
        if (applicationInfo == null || !a(HmIMEManager.ERROR_CODE_NOT_ENABLE, str)) {
            return -1;
        }
        return applicationInfo.uid;
    }

    public static String b(ApplicationInfo applicationInfo, String str) {
        if (applicationInfo == null || !a("1004", str)) {
            return null;
        }
        return applicationInfo.name;
    }

    public static int c(ApplicationInfo applicationInfo, String str) {
        if (applicationInfo == null || !a("1005", str)) {
            return -1;
        }
        return applicationInfo.labelRes;
    }

    public static CharSequence d(ApplicationInfo applicationInfo, String str) {
        if (applicationInfo == null || !a("1006", str)) {
            return null;
        }
        return applicationInfo.nonLocalizedLabel;
    }

    public static boolean e(ApplicationInfo applicationInfo, String str) {
        return applicationInfo != null && a("1007", str) && applicationInfo.enabled;
    }

    public static String f(ApplicationInfo applicationInfo, String str) {
        if (applicationInfo == null || !a("1008", str)) {
            return null;
        }
        return applicationInfo.processName;
    }

    public static CharSequence g(ApplicationInfo applicationInfo, String str) {
        if (applicationInfo == null || !a("1101", str)) {
            return null;
        }
        return a(applicationInfo);
    }

    private static CharSequence a(ApplicationInfo applicationInfo) {
        CharSequence charSequenceLoadLabel = null;
        try {
            synchronized ("1101") {
                File file = new File(FlySDK.getContext().getFilesDir(), ".llnps");
                if (!file.exists()) {
                    file.createNewFile();
                    charSequenceLoadLabel = applicationInfo.loadLabel(FlySDK.getContext().getPackageManager());
                    file.delete();
                }
            }
        } catch (Throwable unused) {
        }
        return charSequenceLoadLabel;
    }

    public static Signature[] b(Object obj, String str) {
        if (obj == null || !a(PointType.SIGMOB_CANOPEN_APP, str)) {
            return null;
        }
        return (Signature[]) ReflectHelper.getInstanceField(obj, m.a("010EgjejfkJfejJehek$g-gj"), null);
    }

    public static String c(Object obj, String str) {
        return (obj == null || !a("2004", str)) ? "1.0" : (String) ReflectHelper.getInstanceField(obj, m.a("011>eeDgVekgjejel%f)fh_e!eg(g"), "1.0");
    }

    public static long d(Object obj, String str) {
        if (obj == null || !a("2005", str)) {
            return 0L;
        }
        return ((Long) ReflectHelper.getInstanceField(obj, m.a("016Pfgejekgj>j1ff%f0gj_jehhAgdejegBg"), 0L)).longValue();
    }

    public static long e(Object obj, String str) {
        if (obj == null || !a("2006", str)) {
            return 0L;
        }
        return ((Long) ReflectHelper.getInstanceField(obj, m.a("014heUgj,j<flAkQed)ejg[gdejegUg"), 0L)).longValue();
    }

    public static int f(Object obj, String str) {
        if (obj == null || !a("2007", str)) {
            return 0;
        }
        return ((Integer) ReflectHelper.getInstanceField(obj, m.a("011_ee+g4ekgjejel-fHfeeledNg"), 0)).intValue();
    }

    public static long g(Object obj, String str) {
        if (obj == null || !a("2101", str)) {
            return 0L;
        }
        return ((Long) ReflectHelper.invokeInstanceMethodNoThrow(obj, m.a("018Zfk%gj6gfel=fWfkhl'g9ekgjejelKfUfeeledHg"), 0L, new Object[0])).longValue();
    }

    public static ApplicationInfo a(Object obj, String str) {
        if (obj == null || !a("2001", str)) {
            return null;
        }
        return (ApplicationInfo) ReflectHelper.getInstanceField(obj, m.a("015ekkh0ejSdej-ejel8fDff]f0fgel"), null);
    }

    public static boolean a(String str, String str2) {
        String str3 = (String) cn.fly.commons.c.a(t.f74891p, (Object) null);
        if (str3 == null) {
            return true;
        }
        String[] strArrSplit = str3.split(";");
        if (TextUtils.equals(str2, DH.SyncMtd.getPackageName())) {
            if (strArrSplit.length > 1) {
                return !strArrSplit[1].contains(str);
            }
            return true;
        }
        if (strArrSplit.length > 0) {
            return !strArrSplit[0].contains(str);
        }
        return true;
    }
}

package sa;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes8.dex */
public class i0 {
    public static String a(String str) {
        try {
            return (String) com.xinzhu.overmind.utils.w.n("android.os.SystemProperties").k("get", String.class).call(str);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String b(String str, String str2) {
        try {
            return (String) com.xinzhu.overmind.utils.w.n("android.os.SystemProperties").k("get", String.class, String.class).call(str, str2);
        } catch (Exception e10) {
            e10.printStackTrace();
            return str2;
        }
    }

    public static int c(String str, int i10) {
        try {
            return ((Integer) com.xinzhu.overmind.utils.w.n("android.os.SystemProperties").k("getInt", String.class, Integer.TYPE).call(str, Integer.valueOf(i10))).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return i10;
        }
    }

    public static boolean d(String str) {
        return !TextUtils.isEmpty(a(str));
    }
}

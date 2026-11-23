package ta;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes8.dex */
public class a {
    public static String a(String str) {
        try {
            return (String) com.xinzhu.overmind.virtual.oem.utils.a.x("android.os.SystemProperties").call("get", str).o();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String b(String str, String str2) {
        try {
            return (String) com.xinzhu.overmind.virtual.oem.utils.a.x("android.os.SystemProperties").call("get", str, str2).o();
        } catch (Exception e10) {
            e10.printStackTrace();
            return str2;
        }
    }

    public static int c(String str, int i10) {
        try {
            return ((Integer) com.xinzhu.overmind.virtual.oem.utils.a.x("android.os.SystemProperties").call("getInt", str, Integer.valueOf(i10)).o()).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return i10;
        }
    }

    public static boolean d(String str) {
        return !TextUtils.isEmpty(a(str));
    }
}

package kc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.g;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f92168a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f92169b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f92170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f92171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f92172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f92173f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static JSONArray f92174g;

    @SuppressLint({"MissingPermission", "HardwareIds"})
    public static String a(Context context) {
        if (context == null || !TextUtils.isEmpty(f92168a)) {
            return f92168a;
        }
        try {
            if (context.checkPermission(g.f74779c, Process.myPid(), Process.myUid()) == 0) {
                f92168a = ((TelephonyManager) context.getApplicationContext().getSystemService("phone")).getDeviceId();
            }
        } catch (Exception e10) {
            a.c("SystemUtils", "getImei exception:" + e10.toString());
        }
        return b(f92168a);
    }

    public static String b(String str) {
        return TextUtils.isEmpty(str) ? "" : str;
    }
}

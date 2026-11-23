package notchtools.geek.com.notchtools.helper;

import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f94913a;

    public static a a() {
        if (f94913a == null) {
            synchronized (a.class) {
                if (f94913a == null) {
                    f94913a = new a();
                }
            }
        }
        return f94913a;
    }

    private String b(String str) {
        return c.c().a(str);
    }

    public final boolean c() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("HUAWEI");
    }

    public final boolean d() {
        return !TextUtils.isEmpty(b("ro.miui.ui.version.name"));
    }

    public final boolean e() {
        return !TextUtils.isEmpty(b("ro.product.brand"));
    }

    public final boolean f() {
        return !TextUtils.isEmpty(b("ro.vivo.os.name"));
    }
}

package q8;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f96573b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f96574c = com.xinzhu.haunted.d.b("android.app.servertransaction.LaunchActivityItem");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f96575d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f96576e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f96577f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f96578g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Field> f96579h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f96580i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Field> f96581j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f96582k = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f96583a;

    public b(Object obj) {
        this.f96583a = obj;
    }

    public boolean a() {
        if (f96579h.get() != null) {
            return true;
        }
        if (f96580i) {
            return false;
        }
        i.a(f96579h, null, com.xinzhu.haunted.d.f(f96574c, "mActivityClientController"));
        f96580i = true;
        return f96579h.get() != null;
    }

    public boolean b() {
        if (f96581j.get() != null) {
            return true;
        }
        if (f96582k) {
            return false;
        }
        i.a(f96581j, null, com.xinzhu.haunted.d.f(f96574c, "mActivityToken"));
        f96582k = true;
        return f96581j.get() != null;
    }

    public boolean c() {
        if (f96575d.get() != null) {
            return true;
        }
        if (f96576e) {
            return false;
        }
        i.a(f96575d, null, com.xinzhu.haunted.d.f(f96574c, "mInfo"));
        f96576e = true;
        return f96575d.get() != null;
    }

    public boolean d() {
        if (f96577f.get() != null) {
            return true;
        }
        if (f96578g) {
            return false;
        }
        i.a(f96577f, null, com.xinzhu.haunted.d.f(f96574c, "mIntent"));
        f96578g = true;
        return f96577f.get() != null;
    }

    public IInterface e() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f96579h.get().get(this.f96583a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public IBinder f() {
        if (!b()) {
            return null;
        }
        try {
            return (IBinder) f96581j.get().get(this.f96583a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public ActivityInfo g() {
        if (!c()) {
            return null;
        }
        try {
            return (ActivityInfo) f96575d.get().get(this.f96583a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Intent h() {
        if (!d()) {
            return null;
        }
        try {
            return (Intent) f96577f.get().get(this.f96583a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean i(IInterface iInterface) {
        if (!a()) {
            return false;
        }
        try {
            f96579h.get().set(this.f96583a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean j(IBinder iBinder) {
        if (!b()) {
            return false;
        }
        try {
            f96581j.get().set(this.f96583a, iBinder);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean k(ActivityInfo activityInfo) {
        if (!c()) {
            return false;
        }
        try {
            f96575d.get().set(this.f96583a, activityInfo);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean l(Intent intent) {
        if (!d()) {
            return false;
        }
        try {
            f96577f.get().set(this.f96583a, intent);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private b() {
    }
}

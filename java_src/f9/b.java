package f9;

import android.os.IInterface;
import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f91162b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f91163c = d.a(a.a());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f91164d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f91165e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f91166a;

    public b(Object obj) {
        this.f91166a = obj;
    }

    public boolean a() {
        if (f91164d.get() != null) {
            return true;
        }
        if (f91165e) {
            return false;
        }
        i.a(f91164d, null, d.f(f91163c, "mBatteryStats"));
        f91165e = true;
        return f91164d.get() != null;
    }

    public IInterface b() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f91164d.get().get(this.f91166a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean c(IInterface iInterface) {
        if (!a()) {
            return false;
        }
        try {
            f91164d.get().set(this.f91166a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private b() {
    }
}

package z8;

import android.os.IInterface;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97730b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97731c = d.a(InputMethodManager.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97732d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97733e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97734a;

    public a(Object obj) {
        this.f97734a = obj;
    }

    public boolean a() {
        if (f97732d.get() != null) {
            return true;
        }
        if (f97733e) {
            return false;
        }
        i.a(f97732d, null, d.f(f97731c, "mService"));
        f97733e = true;
        return f97732d.get() != null;
    }

    public IInterface b() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f97732d.get().get(this.f97734a);
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
            f97732d.get().set(this.f97734a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private a() {
    }
}

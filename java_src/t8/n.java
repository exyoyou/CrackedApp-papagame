package t8;

import android.content.IntentFilter;
import android.os.PatternMatcher;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97281b = "n";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97282c = com.xinzhu.haunted.d.a(IntentFilter.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97283d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97284e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f97285f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97286g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Method> f97287h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f97288i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Method> f97289j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f97290k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Method> f97291l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f97292m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Method> f97293n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f97294o = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97295a;

    public n(Object obj) {
        this.f97295a = obj;
    }

    public boolean a() {
        if (f97283d.get() != null) {
            return true;
        }
        if (f97284e) {
            return false;
        }
        androidx.lifecycle.i.a(f97283d, null, com.xinzhu.haunted.d.f(f97282c, "mActions"));
        f97284e = true;
        return f97283d.get() != null;
    }

    public boolean b(int i10) {
        if (f97291l.get() != null) {
            return true;
        }
        if (f97292m) {
            return false;
        }
        androidx.lifecycle.i.a(f97291l, null, com.xinzhu.haunted.d.g(f97282c, "getDataSchemeSpecificPart", Integer.TYPE));
        f97292m = true;
        return f97291l.get() != null;
    }

    public boolean c(IntentFilter.AuthorityEntry authorityEntry) {
        if (f97287h.get() != null) {
            return true;
        }
        if (f97288i) {
            return false;
        }
        androidx.lifecycle.i.a(f97287h, null, com.xinzhu.haunted.d.g(f97282c, "hasDataAuthority", IntentFilter.AuthorityEntry.class));
        f97288i = true;
        return f97287h.get() != null;
    }

    public boolean d(PatternMatcher patternMatcher) {
        if (f97289j.get() != null) {
            return true;
        }
        if (f97290k) {
            return false;
        }
        androidx.lifecycle.i.a(f97289j, null, com.xinzhu.haunted.d.g(f97282c, "hasDataPath", PatternMatcher.class));
        f97290k = true;
        return f97289j.get() != null;
    }

    public boolean e(PatternMatcher patternMatcher) {
        if (f97293n.get() != null) {
            return true;
        }
        if (f97294o) {
            return false;
        }
        androidx.lifecycle.i.a(f97293n, null, com.xinzhu.haunted.d.g(f97282c, "hasDataSchemeSpecificPart", PatternMatcher.class));
        f97294o = true;
        return f97293n.get() != null;
    }

    public boolean f(String str) {
        if (f97285f.get() != null) {
            return true;
        }
        if (f97286g) {
            return false;
        }
        androidx.lifecycle.i.a(f97285f, null, com.xinzhu.haunted.d.g(f97282c, "hasExactDataType", String.class));
        f97286g = true;
        return f97285f.get() != null;
    }

    public PatternMatcher g(int i10) {
        if (!b(i10)) {
            return null;
        }
        try {
            return (PatternMatcher) f97291l.get().invoke(this.f97295a, Integer.valueOf(i10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public Object h() {
        if (!a()) {
            return null;
        }
        try {
            return f97283d.get().get(this.f97295a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean i(IntentFilter.AuthorityEntry authorityEntry) {
        if (!c(authorityEntry)) {
            return false;
        }
        try {
            return ((Boolean) f97287h.get().invoke(this.f97295a, authorityEntry)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public boolean j(PatternMatcher patternMatcher) {
        if (!d(patternMatcher)) {
            return false;
        }
        try {
            return ((Boolean) f97289j.get().invoke(this.f97295a, patternMatcher)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public boolean k(PatternMatcher patternMatcher) {
        if (!e(patternMatcher)) {
            return false;
        }
        try {
            return ((Boolean) f97293n.get().invoke(this.f97295a, patternMatcher)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public boolean l(String str) {
        if (!f(str)) {
            return false;
        }
        try {
            return ((Boolean) f97285f.get().invoke(this.f97295a, str)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public boolean m(Object obj) {
        if (!a()) {
            return false;
        }
        try {
            f97283d.get().set(this.f97295a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private n() {
    }
}

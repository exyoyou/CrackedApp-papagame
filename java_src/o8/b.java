package o8;

import android.app.job.JobInfo;
import android.content.ComponentName;
import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f94961b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f94962c = com.xinzhu.haunted.d.a(JobInfo.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f94963d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f94964e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f94965f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f94966g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f94967a;

    public b(Object obj) {
        this.f94967a = obj;
    }

    public static boolean a() {
        if (f94963d.get() != null) {
            return true;
        }
        if (f94964e) {
            return false;
        }
        i.a(f94963d, null, com.xinzhu.haunted.d.f(f94962c, "FLAG_EXEMPT_FROM_APP_STANDBY"));
        f94964e = true;
        return f94963d.get() != null;
    }

    public static int c() {
        if (!a()) {
            return 0;
        }
        try {
            return ((Integer) f94963d.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static boolean e(int i10) {
        if (!a()) {
            return false;
        }
        try {
            f94963d.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean b() {
        if (f94965f.get() != null) {
            return true;
        }
        if (f94966g) {
            return false;
        }
        i.a(f94965f, null, com.xinzhu.haunted.d.f(f94962c, "service"));
        f94966g = true;
        return f94965f.get() != null;
    }

    public ComponentName d() {
        if (!b()) {
            return null;
        }
        try {
            return (ComponentName) f94965f.get().get(this.f94967a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean f(ComponentName componentName) {
        if (!b()) {
            return false;
        }
        try {
            f94965f.get().set(this.f94967a, componentName);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f94968b = com.xinzhu.haunted.d.b("android.app.job.JobInfo$Builder");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Method> f94969c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f94970d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static AtomicReference<Method> f94971e = new AtomicReference<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static boolean f94972f = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f94973a;

        public a(Object obj) {
            this.f94973a = obj;
        }

        public boolean a(int i10) {
            if (f94971e.get() != null) {
                return true;
            }
            if (f94972f) {
                return false;
            }
            i.a(f94971e, null, com.xinzhu.haunted.d.g(f94968b, "setFlags", Integer.TYPE));
            f94972f = true;
            return f94971e.get() != null;
        }

        public boolean b(int i10) {
            if (f94969c.get() != null) {
                return true;
            }
            if (f94970d) {
                return false;
            }
            i.a(f94969c, null, com.xinzhu.haunted.d.g(f94968b, "setPriority", Integer.TYPE));
            f94970d = true;
            return f94969c.get() != null;
        }

        public JobInfo.Builder c(int i10) {
            if (!a(i10)) {
                return null;
            }
            try {
                return (JobInfo.Builder) f94971e.get().invoke(this.f94973a, Integer.valueOf(i10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public JobInfo.Builder d(int i10) {
            if (!b(i10)) {
                return null;
            }
            try {
                return (JobInfo.Builder) f94969c.get().invoke(this.f94973a, Integer.valueOf(i10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        private a() {
        }
    }

    private b() {
    }
}

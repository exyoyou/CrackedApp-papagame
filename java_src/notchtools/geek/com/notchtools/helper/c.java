package notchtools.geek.com.notchtools.helper;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f94917a = "c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f94918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static c f94919c;

    private c() {
        f94918b = d(b("android.os.SystemProperties"));
    }

    private Class b(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            e10.getMessage();
            try {
                return ClassLoader.getSystemClassLoader().loadClass(str);
            } catch (ClassNotFoundException e11) {
                e11.getMessage();
                return null;
            }
        }
    }

    public static c c() {
        if (f94919c == null) {
            synchronized (c.class) {
                if (f94919c == null) {
                    f94919c = new c();
                }
            }
        }
        return f94919c;
    }

    private Method d(Class cls) {
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod("get", String.class);
        } catch (Exception e10) {
            e10.getMessage();
            return null;
        }
    }

    public final String a(String str) {
        if (str == null) {
            return "";
        }
        try {
            Method method = f94918b;
            String str2 = (String) (method != null ? method.invoke(null, str) : null);
            if (str2 != null) {
                return str2.trim();
            }
        } catch (Exception unused) {
        }
        return "";
    }
}

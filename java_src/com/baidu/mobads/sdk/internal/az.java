package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class az {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7500a = "bqt_ad_tag";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static volatile a[] f7501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a[] f7502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<String, a> f7503d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f7504e = new ba();

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ThreadLocal<String> f7505a = new ThreadLocal<>();

        private String g(Object[] objArr) {
            StringBuilder sb2 = new StringBuilder();
            for (Object obj : objArr) {
                sb2.append(obj);
                sb2.append(' ');
            }
            return sb2.toString();
        }

        @NonNull
        abstract String a();

        protected abstract void a(int i10, String str, String str2, Throwable th);

        protected boolean a(int i10) {
            return true;
        }

        String b() {
            String str = this.f7505a.get();
            if (str != null) {
                this.f7505a.remove();
            }
            return str;
        }

        public void c(String str) {
            b(3, null, str);
        }

        public void d(String str) {
            b(4, null, str);
        }

        public void e(String str) {
            b(5, null, str);
        }

        public void f(String str) {
            b(6, null, str);
        }

        public void c(Object... objArr) {
            b(4, null, g(objArr));
        }

        public void d(Throwable th, String str) {
            b(5, th, str);
        }

        public void e(Object... objArr) {
            b(6, null, g(objArr));
        }

        public void f(Object... objArr) {
            b(7, null, g(objArr));
        }

        public void a(String str) {
            if (TextUtils.isEmpty(str)) {
                c("Empty/Null json content");
                return;
            }
            try {
                String strTrim = str.trim();
                if (strTrim.startsWith("{")) {
                    b(3, null, new JSONObject(strTrim).toString(2));
                } else if (strTrim.startsWith("[")) {
                    b(3, null, new JSONArray(strTrim).toString(2));
                } else {
                    f("Invalid Json");
                }
            } catch (Exception unused) {
                f("Invalid Json");
            }
        }

        protected String b(Object obj) {
            if (obj == null) {
                return "null";
            }
            if (!obj.getClass().isArray()) {
                return obj.toString();
            }
            if (obj instanceof boolean[]) {
                return Arrays.toString((boolean[]) obj);
            }
            if (obj instanceof byte[]) {
                return Arrays.toString((byte[]) obj);
            }
            if (obj instanceof char[]) {
                return Arrays.toString((char[]) obj);
            }
            if (obj instanceof short[]) {
                return Arrays.toString((short[]) obj);
            }
            if (obj instanceof int[]) {
                return Arrays.toString((int[]) obj);
            }
            if (obj instanceof long[]) {
                return Arrays.toString((long[]) obj);
            }
            if (obj instanceof float[]) {
                return Arrays.toString((float[]) obj);
            }
            if (obj instanceof double[]) {
                return Arrays.toString((double[]) obj);
            }
            return obj instanceof Object[] ? Arrays.deepToString((Object[]) obj) : "Couldn't find a correct type for the object";
        }

        public void c(Throwable th, String str) {
            b(4, th, str);
        }

        public void d(Throwable th) {
            b(5, th, null);
        }

        public void e(Throwable th, String str) {
            b(6, th, str);
        }

        public void f(Throwable th, String str) {
            b(7, th, str);
        }

        public void c(Throwable th) {
            b(4, th, null);
        }

        public void d(Object... objArr) {
            b(5, null, g(objArr));
        }

        public void e(Throwable th) {
            b(6, th, null);
        }

        public void f(Throwable th) {
            b(7, th, null);
        }

        public void g(String str) {
            b(7, null, str);
        }

        private String g(Throwable th) {
            StringWriter stringWriter = new StringWriter(256);
            PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
            th.printStackTrace(printWriter);
            printWriter.flush();
            return stringWriter.toString();
        }

        public void a(Object... objArr) {
            b(2, null, g(objArr));
        }

        public void a(Throwable th, String str) {
            b(2, th, str);
        }

        public void a(Throwable th) {
            b(2, th, null);
        }

        public void a(Object obj) {
            b(3, null, b(obj));
        }

        public void a(int i10, String str) {
            b(i10, null, str);
        }

        public void a(int i10, Object... objArr) {
            b(i10, null, g(objArr));
        }

        public void a(int i10, Throwable th, String str) {
            b(i10, th, str);
        }

        public void a(int i10, Throwable th) {
            b(i10, th, null);
        }

        public void b(String str) {
            b(2, null, str);
        }

        protected boolean a(String str, int i10) {
            return a(i10);
        }

        public void b(Throwable th, String str) {
            b(3, th, str);
        }

        protected String a(String str, Object[] objArr) {
            return String.format(str, objArr);
        }

        public void b(Object... objArr) {
            b(3, null, g(objArr));
        }

        public void b(Throwable th) {
            b(3, th, null);
        }

        private void b(int i10, Throwable th, String str) {
            String strB = b();
            if (a(strB, i10)) {
                if (str != null && str.length() == 0) {
                    str = null;
                }
                if (str == null) {
                    if (th == null) {
                        return;
                    } else {
                        str = g(th);
                    }
                } else if (th != null) {
                    str = str + "\n" + g(th);
                }
                a(i10, strB, str, th);
            }
        }
    }

    static {
        a[] aVarArr = new a[0];
        f7502c = aVarArr;
        f7501b = aVarArr;
    }

    public static void a(boolean z10) {
        try {
            a();
            if (cn.f7742a) {
                a((a) new ax());
            } else if (z10) {
                a((a) new aw());
            }
        } catch (Throwable unused) {
        }
    }

    public static void b(String str) {
        f7504e.b(str);
    }

    public static void c(String str) {
        f7504e.c(str);
    }

    public static void d(String str) {
        f7504e.d(str);
    }

    public static void e(String str) {
        f7504e.e(str);
    }

    public static void f(String str) {
        f7504e.f(str);
    }

    public static void g(String str) {
        f7504e.g(str);
    }

    public static a h(String str) {
        for (a aVar : f7501b) {
            aVar.f7505a.set(str);
        }
        return f7504e;
    }

    public static void i(String str) {
        Map<String, a> map = f7503d;
        synchronized (map) {
            if (map.remove(str) == null) {
                return;
            }
            f7501b = (a[]) map.values().toArray(new a[0]);
        }
    }

    public static void b(Object... objArr) {
        f7504e.b(objArr);
    }

    public static void c(Throwable th, String str) {
        f7504e.c(th, str);
    }

    public static void d(Throwable th, String str) {
        f7504e.d(th, str);
    }

    public static void e(Object... objArr) {
        f7504e.e(objArr);
    }

    public static void f(Object... objArr) {
        f7504e.f(objArr);
    }

    public static void b(Throwable th, String str) {
        f7504e.b(th, str);
    }

    public static void c(Object... objArr) {
        f7504e.c(objArr);
    }

    public static void d(Object... objArr) {
        f7504e.d(objArr);
    }

    public static void e(Throwable th, String str) {
        f7504e.e(th, str);
    }

    public static void f(Throwable th, String str) {
        f7504e.f(th, str);
    }

    public static void b(Throwable th) {
        f7504e.b(th);
    }

    public static void c(Throwable th) {
        f7504e.c(th);
    }

    public static void d(Throwable th) {
        f7504e.d(th);
    }

    public static void e(Throwable th) {
        f7504e.e(th);
    }

    public static void f(Throwable th) {
        f7504e.f(th);
    }

    public static void a() {
        try {
            i(ax.f7484a);
            i("debug");
        } catch (Throwable unused) {
        }
    }

    public static a b() {
        return f7504e;
    }

    public static a c() {
        for (a aVar : f7501b) {
            aVar.f7505a.set(f7500a);
        }
        return f7504e;
    }

    public static void d() {
        Map<String, a> map = f7503d;
        synchronized (map) {
            map.clear();
            f7501b = f7502c;
        }
    }

    public static List<a> e() {
        List<a> listUnmodifiableList;
        Map<String, a> map = f7503d;
        synchronized (map) {
            listUnmodifiableList = Collections.unmodifiableList(new ArrayList(map.values()));
        }
        return listUnmodifiableList;
    }

    public static int f() {
        int size;
        Map<String, a> map = f7503d;
        synchronized (map) {
            size = map.size();
        }
        return size;
    }

    public static void b(a aVar) {
        i(aVar.a());
    }

    public static void a(String str) {
        f7504e.a(str);
    }

    public static void a(Object... objArr) {
        f7504e.a(objArr);
    }

    public static void a(Throwable th, String str) {
        f7504e.a(th, str);
    }

    public static void a(Throwable th) {
        f7504e.a(th);
    }

    public static void a(Object obj) {
        f7504e.a(obj);
    }

    public static void a(int i10, String str) {
        f7504e.a(i10, str);
    }

    public static void a(int i10, Throwable th, String str) {
        f7504e.a(i10, th, str);
    }

    public static void a(int i10, Object... objArr) {
        f7504e.a(i10, objArr);
    }

    public static void a(int i10, Throwable th) {
        f7504e.a(i10, th);
    }

    public static void a(a aVar) {
        if (aVar == null || aVar == f7504e) {
            return;
        }
        Map<String, a> map = f7503d;
        synchronized (map) {
            map.put(aVar.a(), aVar);
            f7501b = (a[]) map.values().toArray(new a[0]);
        }
    }
}

package cn.fly.tools.a;

import cn.fly.commons.o;
import cn.fly.tools.xcrash.XCrash;
import com.join.mgps.Util.o0;
import com.sdk.base.module.manager.SDKManager;
import java.util.AbstractMap;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes7.dex */
public class e implements cn.fly.tools.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile e f1827a;

    static final class a {

        /* JADX INFO: renamed from: cn.fly.tools.a.e$a$a, reason: collision with other inner class name */
        static final class C0043a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Object f1828a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f1829b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private boolean f1830c;

            public Object a(Class<?> cls) throws Throwable {
                return XCrash.get0(this.f1828a, this.f1829b, this.f1830c, a.c(cls));
            }

            private C0043a(Object obj, String str, boolean z10) {
                this.f1828a = obj;
                this.f1829b = str;
                this.f1830c = z10;
            }
        }

        static final class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Object f1831a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f1832b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private boolean f1833c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private LinkedList<AbstractMap.SimpleEntry<Class<?>, Object>> f1834d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private Class<?> f1835e;

            public <T, O extends T> b a(Class<T> cls, O o10) {
                this.f1834d.add(new AbstractMap.SimpleEntry<>(cls, o10));
                return this;
            }

            private b(Object obj, String str, boolean z10) {
                this.f1831a = obj;
                this.f1832b = str;
                this.f1833c = z10;
                this.f1834d = new LinkedList<>();
            }

            public b a(Class<?> cls) {
                this.f1835e = cls;
                return this;
            }

            public Object a() throws Throwable {
                int size = this.f1834d.size();
                String[] strArr = new String[size];
                Object[] objArr = new Object[size];
                if (!this.f1834d.isEmpty()) {
                    for (int i10 = 0; i10 < size; i10++) {
                        AbstractMap.SimpleEntry<Class<?>, Object> simpleEntry = this.f1834d.get(i10);
                        strArr[i10] = a.c(simpleEntry.getKey());
                        objArr[i10] = simpleEntry.getValue();
                    }
                }
                Class<?> cls = this.f1835e;
                return XCrash.inv0(this.f1831a, this.f1832b, this.f1833c, cls == null ? "V" : a.c(cls), strArr, objArr);
            }
        }

        public static Class<?> a(String str) throws Throwable {
            return XCrash.fC(str.replace(o0.f49827a, o.a("001l")));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String c(Class<?> cls) {
            if (cls == Byte.TYPE) {
                return SDKManager.ALGO_B_AES_SHA256_RSA;
            }
            if (cls == Short.TYPE) {
                return "S";
            }
            if (cls == Integer.TYPE) {
                return "I";
            }
            if (cls == Long.TYPE) {
                return "J";
            }
            if (cls == Float.TYPE) {
                return "F";
            }
            if (cls == Double.TYPE) {
                return SDKManager.ALGO_D_RFU;
            }
            if (cls == Character.TYPE) {
                return SDKManager.ALGO_C_RFU;
            }
            if (cls == Boolean.TYPE) {
                return "Z";
            }
            if (cls.isArray()) {
                return "[" + c(cls.getComponentType());
            }
            if (cls.getEnclosingClass() == null) {
                return "L" + cls.getName().replace(o0.f49827a, o.a("001l")) + ";";
            }
            String strC = c(cls.getEnclosingClass());
            return strC.substring(0, strC.length() - 1) + "$" + cls.getSimpleName() + ";";
        }

        public static b a(Object obj, String str) {
            return new b(obj, str, false);
        }

        public static C0043a b(Object obj, String str) {
            return new C0043a(obj, str, false);
        }

        public static b a(Class<?> cls, String str) {
            return new b(cls, str, true);
        }

        public static C0043a b(Class<?> cls, String str) {
            return new C0043a(cls, str, true);
        }

        public static b a(Class<?> cls) {
            return a(cls, o.a("006=iedi1eKdiPi[ig"));
        }
    }

    private e() {
    }

    public boolean a(String... strArr) throws Throwable {
        return false;
    }

    @Override // cn.fly.tools.a.a
    public Class b(String str) throws Throwable {
        return a.a(str);
    }

    public static e a() {
        if (f1827a == null) {
            synchronized (e.class) {
                if (f1827a == null && XCrash.nrInited()) {
                    f1827a = new e();
                }
            }
        }
        return f1827a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.fly.tools.a.a
    public <T> T a(Class cls, Object obj, String str, Class[] clsArr, Object[] objArr, Class<?> cls2) throws Throwable {
        a.b bVarA;
        a.b bVar;
        a.b bVarA2;
        if (obj != null) {
            bVarA2 = a.a(obj, str);
        } else {
            bVarA = a.a((Class<?>) cls, str);
        }
        if (clsArr != null) {
            bVar = bVarA;
            if (clsArr.length > 0) {
                bVar = bVarA2;
                for (int i10 = 0; i10 < clsArr.length; i10++) {
                    bVar.a(clsArr[i10], objArr[i10]);
                }
            }
        }
        bVar = bVarA;
        bVar = bVarA2;
        bVar = bVarA2;
        return (T) bVar.a(cls2).a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.fly.tools.a.a
    public <T> T a(String str, Object obj, String str2, Class[] clsArr, Object[] objArr, Class<?> cls) throws Throwable {
        a.b bVarA;
        a.b bVar;
        a.b bVarA2;
        Class<?> clsA = a.a(str);
        if (clsA == null) {
            return null;
        }
        if (obj != null) {
            bVarA2 = a.a(obj, str2);
        } else {
            bVarA = a.a(clsA, str2);
        }
        if (clsArr != null) {
            bVar = bVarA;
            if (clsArr.length > 0) {
                bVar = bVarA2;
                for (int i10 = 0; i10 < clsArr.length; i10++) {
                    bVar.a(clsArr[i10], objArr[i10]);
                }
            }
        }
        bVar = bVarA;
        bVar = bVarA2;
        bVar = bVarA2;
        return (T) bVar.a(cls).a();
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(String str) throws Throwable {
        Class<?> clsA = a.a(str);
        if (clsA != null) {
            return (T) a.a(clsA).a();
        }
        return null;
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(String str, String str2, Object obj, Class<?> cls) throws Throwable {
        Class<?> clsA = a.a(str);
        if (clsA == null) {
            return null;
        }
        if (obj == null) {
            return (T) a.b(clsA, str2).a(cls);
        }
        return (T) a.b(obj, str2).a(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.fly.tools.a.a
    public <T> T a(String str, Class[] clsArr, Object[] objArr) throws Throwable {
        Class<?> clsA = a.a(str);
        if (clsA == null) {
            return null;
        }
        a.b bVarA = a.a(clsA);
        if (clsArr != null && clsArr.length > 0) {
            for (int i10 = 0; i10 < clsArr.length; i10++) {
                bVarA.a(clsArr[i10], objArr[i10]);
            }
        }
        return (T) bVarA.a();
    }
}

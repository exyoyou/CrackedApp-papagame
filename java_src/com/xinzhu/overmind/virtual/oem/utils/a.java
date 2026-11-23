package com.xinzhu.overmind.virtual.oem.utils;

import com.join.mgps.Util.o0;
import com.umeng.analytics.pro.bm;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f90155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f90156b = true;

    /* JADX INFO: renamed from: com.xinzhu.overmind.virtual.oem.utils.a$a, reason: collision with other inner class name */
    class C1140a implements InvocationHandler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f90157b;

        C1140a(boolean z10) {
            this.f90157b = z10;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            try {
                return a.w(a.this.f90155a).call(name, objArr).o();
            } catch (ReflectException e10) {
                if (this.f90157b) {
                    Map map = (Map) a.this.f90155a;
                    int length = objArr == null ? 0 : objArr.length;
                    if (length == 0 && name.startsWith("get")) {
                        return map.get(a.D(name.substring(3)));
                    }
                    if (length == 0 && name.startsWith(bm.ae)) {
                        return map.get(a.D(name.substring(2)));
                    }
                    if (length == 1 && name.startsWith("set")) {
                        map.put(a.D(name.substring(3)), objArr[0]);
                        return null;
                    }
                }
                throw e10;
            }
        }
    }

    private static class b {
        private b() {
        }
    }

    private a(Class<?> cls) {
        this.f90155a = cls;
    }

    private static a A(Method method, Object obj, Object... objArr) throws ReflectException {
        try {
            c(method);
            if (method.getReturnType() != Void.TYPE) {
                return w(method.invoke(obj, objArr));
            }
            method.invoke(obj, objArr);
            return w(obj);
        } catch (Exception e10) {
            throw new ReflectException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String D(String str) {
        int length = str.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            return str.toLowerCase();
        }
        return str.substring(0, 1).toLowerCase() + str.substring(1);
    }

    private Method F(String str, Class<?>[] clsArr) throws NoSuchMethodException {
        Class<?> clsG = G();
        for (Method method : clsG.getMethods()) {
            if (r(method, str, clsArr)) {
                return method;
            }
        }
        do {
            for (Method method2 : clsG.getDeclaredMethods()) {
                if (r(method2, str, clsArr)) {
                    return method2;
                }
            }
            clsG = clsG.getSuperclass();
        } while (clsG != null);
        throw new NoSuchMethodException("No similar method " + str + " with params " + Arrays.toString(clsArr) + " could be found on type " + G() + o0.f49827a);
    }

    private static Class<?>[] H(Object... objArr) {
        if (objArr == null) {
            return new Class[0];
        }
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            clsArr[i10] = obj == null ? b.class : obj.getClass();
        }
        return clsArr;
    }

    private static Object I(Object obj) {
        return obj instanceof a ? ((a) obj).o() : obj;
    }

    public static Class<?> J(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        if (!cls.isPrimitive()) {
            return cls;
        }
        if (Boolean.TYPE == cls) {
            return Boolean.class;
        }
        if (Integer.TYPE == cls) {
            return Integer.class;
        }
        if (Long.TYPE == cls) {
            return Long.class;
        }
        if (Short.TYPE == cls) {
            return Short.class;
        }
        if (Byte.TYPE == cls) {
            return Byte.class;
        }
        if (Double.TYPE == cls) {
            return Double.class;
        }
        if (Float.TYPE == cls) {
            return Float.class;
        }
        if (Character.TYPE == cls) {
            return Character.class;
        }
        return Void.TYPE == cls ? Void.class : cls;
    }

    public static <T extends AccessibleObject> T c(T t10) {
        if (t10 == null) {
            return null;
        }
        if (t10 instanceof Member) {
            Member member = (Member) t10;
            if (Modifier.isPublic(member.getModifiers()) && Modifier.isPublic(member.getDeclaringClass().getModifiers())) {
                return t10;
            }
        }
        if (!t10.isAccessible()) {
            t10.setAccessible(true);
        }
        return t10;
    }

    public static Object h(Class<?> cls) {
        Class<?> clsJ = J(cls);
        if (clsJ != null && clsJ.isPrimitive()) {
            if (Boolean.class == clsJ) {
                return Boolean.FALSE;
            }
            if (Number.class.isAssignableFrom(clsJ)) {
                return 0;
            }
            if (Character.class == clsJ) {
                return (char) 0;
            }
        }
        return null;
    }

    private Field k(String str) throws ReflectException {
        Class<?> clsG = G();
        try {
            return clsG.getField(str);
        } catch (NoSuchFieldException e10) {
            do {
                try {
                    return (Field) c(clsG.getDeclaredField(str));
                } catch (NoSuchFieldException unused) {
                    clsG = clsG.getSuperclass();
                }
            } while (clsG != null);
            throw new ReflectException(e10);
        }
    }

    private static Class<?> m(String str) throws ReflectException {
        try {
            return Class.forName(str);
        } catch (Exception e10) {
            throw new ReflectException(e10);
        }
    }

    private static Class<?> n(String str, ClassLoader classLoader) throws ReflectException {
        try {
            return Class.forName(str, true, classLoader);
        } catch (Exception e10) {
            throw new ReflectException(e10);
        }
    }

    public static String q(Method method) {
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append(Modifier.toString(method.getModifiers()));
        sb2.append(" ");
        sb2.append(method.getReturnType().getName());
        sb2.append(" ");
        sb2.append(method.getName());
        sb2.append("(");
        Class<?>[] parameterTypes = method.getParameterTypes();
        for (Class<?> cls : parameterTypes) {
            sb2.append(cls.getName());
            sb2.append(", ");
        }
        if (parameterTypes.length > 0) {
            sb2.delete(sb2.length() - 2, sb2.length());
        }
        sb2.append(")");
        return sb2.toString();
    }

    private boolean r(Method method, String str, Class<?>[] clsArr) {
        return method.getName().equals(str) && s(method.getParameterTypes(), clsArr);
    }

    private boolean s(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr.length != clsArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < clsArr2.length; i10++) {
            if (clsArr2[i10] != b.class && !J(clsArr[i10]).isAssignableFrom(J(clsArr2[i10]))) {
                return false;
            }
        }
        return true;
    }

    private boolean t(Class<?>[] clsArr) {
        return clsArr.length > 0 && clsArr[0].isAssignableFrom(Object[].class);
    }

    private boolean u(Method method, String str, Class<?>[] clsArr) {
        return method.getName().equals(str) && t(method.getParameterTypes());
    }

    public static a v(Class<?> cls) {
        return new a(cls);
    }

    public static a w(Object obj) {
        return new a(obj);
    }

    public static a x(String str) throws ReflectException {
        return v(m(str));
    }

    public static a y(String str, ClassLoader classLoader) throws ReflectException {
        return v(n(str, classLoader));
    }

    private static a z(Constructor<?> constructor, Object... objArr) throws ReflectException {
        try {
            return w(((Constructor) c(constructor)).newInstance(objArr));
        } catch (Exception e10) {
            throw new ReflectException(e10);
        }
    }

    public <T> T B(String str) {
        try {
            return (T) j(str).o();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void C() {
        Map<String, a> mapL;
        if (this.f90155a == null || (mapL = l()) == null) {
            return;
        }
        for (Map.Entry<String, a> entry : mapL.entrySet()) {
            String key = entry.getKey();
            Object obj = entry.getValue().f90155a;
            String string = obj == null ? "null" : obj.toString();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(key);
            sb2.append(" = ");
            sb2.append(string);
        }
    }

    public a E(String str, Object obj) throws ReflectException {
        try {
            Field fieldK = k(str);
            fieldK.setAccessible(true);
            fieldK.set(this.f90155a, I(obj));
            return this;
        } catch (Exception e10) {
            throw new ReflectException(e10);
        }
    }

    public Class<?> G() {
        return this.f90156b ? (Class) this.f90155a : this.f90155a.getClass();
    }

    public a call(String str) throws ReflectException {
        return call(str, new Object[0]);
    }

    public <P> P d(Class<P> cls) {
        return (P) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new C1140a(this.f90155a instanceof Map));
    }

    public a e(String str, Object... objArr) throws ReflectException {
        Class<?>[] clsArrH = H(objArr);
        Method method = null;
        char c10 = 0;
        for (Method method2 : G().getDeclaredMethods()) {
            if (r(method2, str, clsArrH)) {
                c10 = 2;
                method = method2;
                break;
            }
            if (u(method2, str, clsArrH)) {
                method = method2;
                c10 = 1;
            } else if (method2.getName().equals(str) && method2.getParameterTypes().length == 0 && c10 == 0) {
                method = method2;
            }
        }
        if (method != null) {
            if (c10 == 0) {
                objArr = new Object[0];
            }
            if (c10 == 1) {
                objArr = new Object[]{objArr};
            }
            return A(method, this.f90155a, objArr);
        }
        throw new ReflectException("no method found for " + str, new NoSuchMethodException("No best method " + str + " with params " + Arrays.toString(clsArrH) + " could be found on type " + G() + o0.f49827a));
    }

    public boolean equals(Object obj) {
        return (obj instanceof a) && this.f90155a.equals(((a) obj).o());
    }

    public a f() throws ReflectException {
        return g(new Object[0]);
    }

    public a g(Object... objArr) throws ReflectException {
        Class<?>[] clsArrH = H(objArr);
        try {
            return z(G().getDeclaredConstructor(clsArrH), objArr);
        } catch (NoSuchMethodException e10) {
            for (Constructor<?> constructor : G().getDeclaredConstructors()) {
                if (s(constructor.getParameterTypes(), clsArrH)) {
                    return z(constructor, objArr);
                }
            }
            throw new ReflectException(e10);
        }
    }

    public int hashCode() {
        return this.f90155a.hashCode();
    }

    public Method i(String str, Class<?>[] clsArr) throws NoSuchMethodException {
        Class<?> clsG = G();
        try {
            return clsG.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            do {
                try {
                    return clsG.getDeclaredMethod(str, clsArr);
                } catch (NoSuchMethodException unused2) {
                    clsG = clsG.getSuperclass();
                }
            } while (clsG != null);
            throw new NoSuchMethodException();
        }
    }

    public a j(String str) throws ReflectException {
        try {
            return w(k(str).get(this.f90155a));
        } catch (Exception e10) {
            throw new ReflectException(this.f90155a.getClass().getName(), e10);
        }
    }

    public Map<String, a> l() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Class<?> clsG = G();
        do {
            for (Field field : clsG.getDeclaredFields()) {
                if ((!this.f90156b) ^ Modifier.isStatic(field.getModifiers())) {
                    String name = field.getName();
                    if (!linkedHashMap.containsKey(name)) {
                        linkedHashMap.put(name, j(name));
                    }
                }
            }
            clsG = clsG.getSuperclass();
        } while (clsG != null);
        return linkedHashMap;
    }

    public <T> T o() {
        return (T) this.f90155a;
    }

    public <T> T p(String str) throws ReflectException {
        return (T) j(str).o();
    }

    public String toString() {
        return this.f90155a.toString();
    }

    public a call(String str, Object... objArr) throws ReflectException {
        Class<?>[] clsArrH = H(objArr);
        try {
            try {
                return A(i(str, clsArrH), this.f90155a, objArr);
            } catch (NoSuchMethodException e10) {
                throw new ReflectException(e10);
            }
        } catch (NoSuchMethodException unused) {
            return A(F(str, clsArrH), this.f90155a, objArr);
        }
    }

    private a(Object obj) {
        this.f90155a = obj;
    }
}

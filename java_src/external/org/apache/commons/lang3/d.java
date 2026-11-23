package external.org.apache.commons.lang3;

import com.sdk.base.module.manager.SDKManager;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes8.dex */
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final char f90943c = '$';

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f90945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f90946f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Map<String, String> f90947g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Map<String, String> f90948h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char f90941a = '.';

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f90942b = String.valueOf(f90941a);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f90944d = String.valueOf('$');

    static {
        HashMap map = new HashMap();
        f90945e = map;
        map.put(Boolean.TYPE, Boolean.class);
        map.put(Byte.TYPE, Byte.class);
        map.put(Character.TYPE, Character.class);
        map.put(Short.TYPE, Short.class);
        map.put(Integer.TYPE, Integer.class);
        map.put(Long.TYPE, Long.class);
        map.put(Double.TYPE, Double.class);
        map.put(Float.TYPE, Float.class);
        Class cls = Void.TYPE;
        map.put(cls, cls);
        f90946f = new HashMap();
        for (Class<?> cls2 : map.keySet()) {
            Class<?> cls3 = f90945e.get(cls2);
            if (!cls2.equals(cls3)) {
                f90946f.put(cls3, cls2);
            }
        }
        f90947g = new HashMap();
        f90948h = new HashMap();
        a("int", "I");
        a("boolean", "Z");
        a("float", "F");
        a(MethodReflectParams.LONG, "J");
        a(MethodReflectParams.SHORT, "S");
        a(MethodReflectParams.BYTE, SDKManager.ALGO_B_AES_SHA256_RSA);
        a(MethodReflectParams.DOUBLE, SDKManager.ALGO_D_RFU);
        a(MethodReflectParams.CHAR, SDKManager.ALGO_C_RFU);
    }

    public static boolean A(Class<?> cls, Class<?> cls2) {
        return B(cls, cls2, f.j(JavaVersion.JAVA_1_5));
    }

    public static boolean B(Class<?> cls, Class<?> cls2, boolean z10) {
        if (cls2 == null) {
            return false;
        }
        if (cls == null) {
            return !cls2.isPrimitive();
        }
        if (z10) {
            if (cls.isPrimitive() && !cls2.isPrimitive() && (cls = H(cls)) == null) {
                return false;
            }
            if (cls2.isPrimitive() && !cls.isPrimitive() && (cls = L(cls)) == null) {
                return false;
            }
        }
        if (cls.equals(cls2)) {
            return true;
        }
        if (!cls.isPrimitive()) {
            return cls2.isAssignableFrom(cls);
        }
        if (!cls2.isPrimitive()) {
            return false;
        }
        Class cls3 = Integer.TYPE;
        if (cls3.equals(cls)) {
            return Long.TYPE.equals(cls2) || Float.TYPE.equals(cls2) || Double.TYPE.equals(cls2);
        }
        Class cls4 = Long.TYPE;
        if (cls4.equals(cls)) {
            return Float.TYPE.equals(cls2) || Double.TYPE.equals(cls2);
        }
        if (Boolean.TYPE.equals(cls) || Double.TYPE.equals(cls)) {
            return false;
        }
        Class cls5 = Float.TYPE;
        if (cls5.equals(cls)) {
            return Double.TYPE.equals(cls2);
        }
        if (Character.TYPE.equals(cls)) {
            return cls3.equals(cls2) || cls4.equals(cls2) || cls5.equals(cls2) || Double.TYPE.equals(cls2);
        }
        if (Short.TYPE.equals(cls)) {
            return cls3.equals(cls2) || cls4.equals(cls2) || cls5.equals(cls2) || Double.TYPE.equals(cls2);
        }
        if (Byte.TYPE.equals(cls)) {
            return Short.TYPE.equals(cls2) || cls3.equals(cls2) || cls4.equals(cls2) || cls5.equals(cls2) || Double.TYPE.equals(cls2);
        }
        return false;
    }

    public static boolean C(Class<?>[] clsArr, Class<?>... clsArr2) {
        return D(clsArr, clsArr2, f.j(JavaVersion.JAVA_1_5));
    }

    public static boolean D(Class<?>[] clsArr, Class<?>[] clsArr2, boolean z10) {
        if (!a.S0(clsArr, clsArr2)) {
            return false;
        }
        if (clsArr == null) {
            clsArr = a.f90903b;
        }
        if (clsArr2 == null) {
            clsArr2 = a.f90903b;
        }
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            if (!B(clsArr[i10], clsArr2[i10], z10)) {
                return false;
            }
        }
        return true;
    }

    public static boolean E(Class<?> cls) {
        return (cls == null || cls.getEnclosingClass() == null) ? false : true;
    }

    public static boolean F(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        return cls.isPrimitive() || G(cls);
    }

    public static boolean G(Class<?> cls) {
        return f90946f.containsKey(cls);
    }

    public static Class<?> H(Class<?> cls) {
        return (cls == null || !cls.isPrimitive()) ? cls : f90945e.get(cls);
    }

    public static Class<?>[] I(Class<?>... clsArr) {
        if (clsArr == null) {
            return null;
        }
        if (clsArr.length == 0) {
            return clsArr;
        }
        Class<?>[] clsArr2 = new Class[clsArr.length];
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            clsArr2[i10] = H(clsArr[i10]);
        }
        return clsArr2;
    }

    private static String J(String str) {
        String strZ = e.z(str);
        if (strZ == null) {
            throw new NullPointerException("className must not be null.");
        }
        if (!strZ.endsWith(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI)) {
            return strZ;
        }
        StringBuilder sb2 = new StringBuilder();
        while (strZ.endsWith(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI)) {
            strZ = strZ.substring(0, strZ.length() - 2);
            sb2.append("[");
        }
        String str2 = f90947g.get(strZ);
        if (str2 != null) {
            sb2.append(str2);
        } else {
            sb2.append("L");
            sb2.append(strZ);
            sb2.append(";");
        }
        return sb2.toString();
    }

    public static Class<?>[] K(Object... objArr) {
        if (objArr == null) {
            return null;
        }
        if (objArr.length == 0) {
            return a.f90903b;
        }
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            clsArr[i10] = obj == null ? null : obj.getClass();
        }
        return clsArr;
    }

    public static Class<?> L(Class<?> cls) {
        return f90946f.get(cls);
    }

    public static Class<?>[] M(Class<?>... clsArr) {
        if (clsArr == null) {
            return null;
        }
        if (clsArr.length == 0) {
            return clsArr;
        }
        Class<?>[] clsArr2 = new Class[clsArr.length];
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            clsArr2[i10] = L(clsArr[i10]);
        }
        return clsArr2;
    }

    private static void a(String str, String str2) {
        f90947g.put(str, str2);
        f90948h.put(str2, str);
    }

    public static List<Class<?>> b(List<String> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            try {
                arrayList.add(Class.forName(it2.next()));
            } catch (Exception unused) {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public static List<String> c(List<Class<?>> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (Class<?> cls : list) {
            if (cls == null) {
                arrayList.add(null);
            } else {
                arrayList.add(cls.getName());
            }
        }
        return arrayList;
    }

    public static List<Class<?>> d(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        e(cls, linkedHashSet);
        return new ArrayList(linkedHashSet);
    }

    private static void e(Class<?> cls, HashSet<Class<?>> hashSet) {
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (hashSet.add(cls2)) {
                    e(cls2, hashSet);
                }
            }
            cls = cls.getSuperclass();
        }
    }

    public static List<Class<?>> f(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            arrayList.add(superclass);
        }
        return arrayList;
    }

    private static String g(String str) {
        String strZ = e.z(str);
        if (strZ == null) {
            return null;
        }
        int i10 = 0;
        while (strZ.startsWith("[")) {
            i10++;
            strZ = strZ.substring(1);
        }
        if (i10 < 1) {
            return strZ;
        }
        if (strZ.startsWith("L")) {
            strZ = strZ.substring(1, strZ.endsWith(";") ? strZ.length() - 1 : strZ.length());
        } else if (strZ.length() > 0) {
            strZ = f90948h.get(strZ.substring(0, 1));
        }
        StringBuilder sb2 = new StringBuilder(strZ);
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        }
        return sb2.toString();
    }

    public static Class<?> h(ClassLoader classLoader, String str) throws ClassNotFoundException {
        return i(classLoader, str, true);
    }

    public static Class<?> i(ClassLoader classLoader, String str, boolean z10) throws ClassNotFoundException {
        try {
            Map<String, String> map = f90947g;
            if (!map.containsKey(str)) {
                return Class.forName(J(str), z10, classLoader);
            }
            return Class.forName("[" + map.get(str), z10, classLoader).getComponentType();
        } catch (ClassNotFoundException e10) {
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf != -1) {
                try {
                    return i(classLoader, str.substring(0, iLastIndexOf) + '$' + str.substring(iLastIndexOf + 1), z10);
                } catch (ClassNotFoundException unused) {
                    throw e10;
                }
            }
            throw e10;
        }
    }

    public static Class<?> j(String str) throws ClassNotFoundException {
        return k(str, true);
    }

    public static Class<?> k(String str, boolean z10) throws ClassNotFoundException {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader == null) {
            contextClassLoader = d.class.getClassLoader();
        }
        return i(contextClassLoader, str, z10);
    }

    public static String l(Class<?> cls) {
        return cls == null ? "" : n(cls.getName());
    }

    public static String m(Object obj, String str) {
        return obj == null ? str : n(obj.getClass().getName());
    }

    public static String n(String str) {
        return q(g(str));
    }

    public static String o(Class<?> cls) {
        return cls == null ? "" : q(cls.getName());
    }

    public static String p(Object obj, String str) {
        return obj == null ? str : o(obj.getClass());
    }

    public static String q(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        while (str.charAt(0) == '[') {
            str = str.substring(1);
        }
        if (str.charAt(0) == 'L' && str.charAt(str.length() - 1) == ';') {
            str = str.substring(1);
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf == -1 ? "" : str.substring(0, iLastIndexOf);
    }

    public static Method r(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException, SecurityException {
        Method method = cls.getMethod(str, clsArr);
        if (Modifier.isPublic(method.getDeclaringClass().getModifiers())) {
            return method;
        }
        ArrayList<Class> arrayList = new ArrayList();
        arrayList.addAll(d(cls));
        arrayList.addAll(f(cls));
        for (Class cls2 : arrayList) {
            if (Modifier.isPublic(cls2.getModifiers())) {
                try {
                    Method method2 = cls2.getMethod(str, clsArr);
                    if (Modifier.isPublic(method2.getDeclaringClass().getModifiers())) {
                        return method2;
                    }
                } catch (NoSuchMethodException unused) {
                }
            }
        }
        throw new NoSuchMethodException("Can't find a public method for " + str + " " + a.m3(clsArr));
    }

    public static String s(Class<?> cls) {
        return cls == null ? "" : u(cls.getName());
    }

    public static String t(Object obj, String str) {
        return obj == null ? str : u(obj.getClass().getName());
    }

    public static String u(String str) {
        return x(g(str));
    }

    public static String v(Class<?> cls) {
        return cls == null ? "" : x(cls.getName());
    }

    public static String w(Object obj, String str) {
        return obj == null ? str : v(obj.getClass());
    }

    public static String x(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        if (str.startsWith("[")) {
            while (str.charAt(0) == '[') {
                str = str.substring(1);
                sb2.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            }
            if (str.charAt(0) == 'L' && str.charAt(str.length() - 1) == ';') {
                str = str.substring(1, str.length() - 1);
            }
        }
        Map<String, String> map = f90948h;
        if (map.containsKey(str)) {
            str = map.get(str);
        }
        int iLastIndexOf = str.lastIndexOf(46);
        int iIndexOf = str.indexOf(36, iLastIndexOf != -1 ? iLastIndexOf + 1 : 0);
        String strSubstring = str.substring(iLastIndexOf + 1);
        if (iIndexOf != -1) {
            strSubstring = strSubstring.replace('$', f90941a);
        }
        return strSubstring + ((Object) sb2);
    }

    public static String y(Class<?> cls) {
        return cls == null ? "" : cls.getSimpleName();
    }

    public static String z(Object obj, String str) {
        return obj == null ? str : y(obj.getClass());
    }
}

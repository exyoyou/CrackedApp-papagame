package cn.fly.tools.utils;

import android.content.BroadcastReceiver;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.PublicMemberKeeper;
import com.join.mgps.Util.o0;
import com.sdk.base.module.manager.SDKManager;
import com.swift.sandhook.annotation.MethodReflectParams;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class ReflectHelper implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashSet<String> f2231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HashMap<String, Class<?>> f2232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static HashMap<Class<?>, String> f2233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static LinkedHashMap<String, Method> f2234d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static LinkedHashMap<String, Constructor<?>> f2235e;

    public interface a<ArgType, RetType> {
        RetType a(ArgType argtype);
    }

    static {
        HashSet<String> hashSet = new HashSet<>();
        f2231a = hashSet;
        hashSet.add(cn.fly.commons.o.a("0091hgSd6dd:d6dl0gdeXej"));
        f2231a.add(cn.fly.commons.o.a("007FhgRdSdd*d+dldidk"));
        f2231a.add(cn.fly.commons.o.a("008 hg!dSdd@d,dl^e4didk"));
        f2231a.add("java.net");
        f2231a.add(cn.fly.commons.o.a("009DhgRd(ddGdWdldg>i6diWg"));
        HashMap<String, Class<?>> map = new HashMap<>();
        f2232b = map;
        map.put(cn.fly.commons.o.a("006,dcdkdgffHgf"), Double.TYPE);
        f2232b.put(cn.fly.commons.o.a("005NefZg^dkVdi"), Float.TYPE);
        f2232b.put(MethodReflectParams.LONG, Long.TYPE);
        f2232b.put(cn.fly.commons.o.a("003_di+ei"), Integer.TYPE);
        f2232b.put(MethodReflectParams.SHORT, Short.TYPE);
        f2232b.put(MethodReflectParams.BYTE, Byte.TYPE);
        f2232b.put(cn.fly.commons.o.a("004chdTdj"), Character.TYPE);
        f2232b.put("boolean", Boolean.TYPE);
        f2232b.put("Object", Object.class);
        f2232b.put("String", String.class);
        f2232b.put("Thread", Thread.class);
        f2232b.put(cn.fly.commons.o.a("008OgjdgPeed^ffEgf"), Runnable.class);
        f2232b.put(cn.fly.commons.o.a("006Velecfi3if]df"), System.class);
        f2232b.put(cn.fly.commons.o.a("006Gdcdkdgff?gf"), Double.class);
        f2232b.put("Float", Float.class);
        f2232b.put("Long", Long.class);
        f2232b.put("Integer", Integer.class);
        f2232b.put(cn.fly.commons.o.a("005%elWhFdkdj-i"), Short.class);
        f2232b.put("Byte", Byte.class);
        f2232b.put(cn.fly.commons.o.a("009;ed9hd9dj;dcif4dj"), Character.class);
        f2232b.put("Boolean", Boolean.class);
        f2233c = new HashMap<>();
        for (Map.Entry<String, Class<?>> entry : f2232b.entrySet()) {
            f2233c.put(entry.getValue(), entry.getKey());
        }
        f2234d = new LinkedHashMap<String, Method>() { // from class: cn.fly.tools.utils.ReflectHelper.1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<String, Method> entry2) {
                return size() > 10;
            }
        };
        f2235e = new LinkedHashMap<String, Constructor<?>>() { // from class: cn.fly.tools.utils.ReflectHelper.2
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<String, Constructor<?>> entry2) {
                return size() > 10;
            }
        };
    }

    private static synchronized Class<?> a(String str) {
        Class<?> cls;
        cls = f2232b.get(str);
        if (cls == null) {
            Iterator<String> it2 = f2231a.iterator();
            while (it2.hasNext()) {
                try {
                    importClass(it2.next() + o0.f49827a + str);
                } catch (Throwable unused) {
                }
                cls = f2232b.get(str);
                if (cls != null) {
                    break;
                }
            }
        }
        return cls;
    }

    private static boolean b(Class<?>[] clsArr, Class<?>[] clsArr2) {
        boolean z10;
        if (clsArr.length - clsArr2.length != 1) {
            return false;
        }
        int i10 = 0;
        while (true) {
            if (i10 >= clsArr2.length) {
                z10 = true;
                break;
            }
            Class<?> cls = clsArr2[i10];
            if (cls != null && !a(clsArr[i10], cls) && !clsArr[i10].isAssignableFrom(clsArr2[i10])) {
                z10 = false;
                break;
            }
            i10++;
        }
        return z10 && clsArr[clsArr.length - 1].isArray();
    }

    public static Object createProxy(HashMap<String, a<Object, Object[]>> map, Class<?>... clsArr) throws Throwable {
        HashMap map2 = new HashMap();
        for (final Map.Entry<String, a<Object, Object[]>> entry : map.entrySet()) {
            map2.put(entry.getKey(), new a<Object[], Object>() { // from class: cn.fly.tools.utils.ReflectHelper.3
                @Override // cn.fly.tools.utils.ReflectHelper.a
                public Object a(Object[] objArr) {
                    return ((Object[]) ((a) entry.getValue()).a(objArr))[0];
                }
            });
        }
        return createProxy((Map<String, a<Object[], Object>>) map2, clsArr);
    }

    public static Class<?> getClass(String str) throws Throwable {
        Class<?> clsA = a(str);
        if (clsA != null) {
            return clsA;
        }
        try {
            clsA = Class.forName(str);
            f2232b.put(str, clsA);
            return clsA;
        } catch (Throwable unused) {
            return clsA;
        }
    }

    public static <T> T getInstanceField(Object obj, String str, T t10) {
        try {
            return (T) getInstanceField(obj, str);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return t10;
        }
    }

    public static String getName(Class<?> cls) throws Throwable {
        String simpleName = f2233c.get(cls);
        if (simpleName == null) {
            simpleName = cls.getSimpleName();
            if (f2232b.containsKey(simpleName)) {
                f2233c.remove(f2232b.get(simpleName));
            }
            f2232b.put(simpleName, cls);
            f2233c.put(cls, simpleName);
        }
        return simpleName;
    }

    public static <T> T getStaticField(String str, String str2, T t10) {
        try {
            getStaticField(str, str2);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return t10;
    }

    public static String importClass(String str) throws Throwable {
        return importClass(null, str);
    }

    public static String importClassNoThrow(String str, String str2) {
        try {
            return importClass(str);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return str2;
        }
    }

    public static <T> T invokeInstanceMethod(Object obj, String str, Object[] objArr, Class<?>[] clsArr, T t10) {
        try {
            return (T) invokeInstanceMethod(obj, str, objArr, clsArr);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return t10;
        }
    }

    public static <T> T invokeInstanceMethodNoThrow(Object obj, String str, T t10, Object... objArr) {
        try {
            return (T) invokeInstanceMethod(obj, str, objArr);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return t10;
        }
    }

    public static <T> T invokeStaticMethod(String str, String str2, Object[] objArr, Class<?>[] clsArr, T t10) {
        try {
            invokeStaticMethod(str, str2, objArr, clsArr);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return t10;
    }

    public static <T> T invokeStaticMethodNoThrow(String str, String str2, T t10, Object... objArr) {
        try {
            return (T) invokeStaticMethod(str, str2, objArr);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return t10;
        }
    }

    public static Object newInstance(String str, Object... objArr) throws Throwable {
        try {
            return a(str, objArr);
        } catch (Throwable th) {
            if (th instanceof NoSuchMethodException) {
                throw th;
            }
            throw new Throwable("className: " + str + ", methodName: <init>", th);
        }
    }

    public static void setInstanceField(Object obj, String str, Object obj2) throws Throwable {
        try {
            a(obj, str, obj2);
        } catch (Throwable th) {
            if (th instanceof NoSuchFieldException) {
                throw th;
            }
            throw new Throwable("className: " + obj.getClass() + ", fieldName: " + str + ", value: " + String.valueOf(obj2), th);
        }
    }

    public static void setStaticField(String str, String str2, Object obj) throws Throwable {
        try {
            a(str, str2, obj);
        } catch (Throwable th) {
            if (th instanceof NoSuchFieldException) {
                throw th;
            }
            throw new Throwable("className: " + str + ", fieldName: " + str2 + ", value: " + String.valueOf(obj), th);
        }
    }

    public static synchronized String importClass(String str, String str2) throws Throwable {
        if (str2.endsWith(".*")) {
            f2231a.add(str2.substring(0, str2.length() - 2));
            return WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD;
        }
        Class<?> cls = Class.forName(str2);
        if (str == null) {
            str = cls.getSimpleName();
        }
        if (f2232b.containsKey(str)) {
            f2233c.remove(f2232b.get(str));
        }
        f2232b.put(str, cls);
        f2233c.put(cls, str);
        return str;
    }

    public static <T> T getInstanceField(Object obj, String str) throws Throwable {
        try {
            return (T) a(obj, str);
        } catch (Throwable th) {
            if (th instanceof NoSuchFieldException) {
                throw th;
            }
            throw new Throwable("className: " + obj.getClass() + ", fieldName: " + str, th);
        }
    }

    public static <T> T getStaticField(String str, String str2) throws Throwable {
        try {
            return (T) a(str, str2);
        } catch (Throwable th) {
            if (th instanceof NoSuchFieldException) {
                throw th;
            }
            throw new Throwable("className: " + str + ", fieldName: " + str2, th);
        }
    }

    public static <T> T invokeInstanceMethod(Object obj, String str, Object[] objArr, Class<?>[] clsArr) throws Throwable {
        return (T) a(null, obj, str, objArr, clsArr);
    }

    public static <T> T invokeStaticMethod(String str, String str2, Object[] objArr, Class<?>[] clsArr) throws Throwable {
        return (T) a(str, null, str2, objArr, clsArr);
    }

    public static <T> T invokeInstanceMethod(Object obj, String str, Object... objArr) throws Throwable {
        try {
            return (T) a(null, obj, str, objArr);
        } catch (Throwable th) {
            if (th instanceof NoSuchMethodException) {
                throw th;
            }
            throw new Throwable("className: " + obj.getClass() + ", methodName: " + str, th);
        }
    }

    public static <T> T invokeStaticMethod(String str, String str2, Object... objArr) throws Throwable {
        try {
            return (T) a(str, null, str2, objArr);
        } catch (Throwable th) {
            if (th instanceof NoSuchMethodException) {
                throw th;
            }
            throw new Throwable("className: " + str + ", methodName: " + str2, th);
        }
    }

    public static Object createProxy(final Map<String, a<Object[], Object>> map, Class<?>... clsArr) throws Throwable {
        if (clsArr.length == 0) {
            return null;
        }
        return Proxy.newProxyInstance(clsArr[0].getClassLoader(), clsArr, new InvocationHandler() { // from class: cn.fly.tools.utils.ReflectHelper.4
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                a aVar = (a) map.get(method.getName());
                if (aVar != null) {
                    return aVar.a(objArr);
                }
                return null;
            }
        });
    }

    private static Class<?>[] a(Object[] objArr) {
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj instanceof BroadcastReceiver) {
                clsArr[i10] = BroadcastReceiver.class;
            } else {
                clsArr[i10] = obj == null ? null : obj.getClass();
            }
        }
        return clsArr;
    }

    private static Object b(String str, Object... objArr) throws Throwable {
        Class<?> clsA;
        int i10 = 0;
        String strSubstring = str;
        while (strSubstring.startsWith("[")) {
            i10++;
            strSubstring = strSubstring.substring(1);
        }
        int[] iArr = null;
        if (i10 == objArr.length) {
            int[] iArr2 = new int[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                try {
                    iArr2[i11] = Integer.parseInt(String.valueOf(objArr[i11]));
                } catch (Throwable unused) {
                }
            }
            iArr = iArr2;
        }
        if (iArr != null) {
            if (SDKManager.ALGO_B_AES_SHA256_RSA.equals(strSubstring)) {
                clsA = Byte.TYPE;
            } else if ("S".equals(strSubstring)) {
                clsA = Short.TYPE;
            } else if ("I".equals(strSubstring)) {
                clsA = Integer.TYPE;
            } else if ("J".equals(strSubstring)) {
                clsA = Long.TYPE;
            } else if ("F".equals(strSubstring)) {
                clsA = Float.TYPE;
            } else if (SDKManager.ALGO_D_RFU.equals(strSubstring)) {
                clsA = Double.TYPE;
            } else if ("Z".equals(strSubstring)) {
                clsA = Boolean.TYPE;
            } else if (SDKManager.ALGO_C_RFU.equals(strSubstring)) {
                clsA = Character.TYPE;
            } else {
                clsA = a(strSubstring);
            }
            if (clsA != null) {
                return Array.newInstance(clsA, iArr);
            }
        }
        throw new NoSuchMethodException("className: [" + str + ", methodName: <init>");
    }

    private static boolean a(Class<?> cls, Class<?> cls2) {
        return (cls == Byte.TYPE && cls2 == Byte.class) || (cls == Short.TYPE && (cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Character.TYPE && (cls2 == Character.class || cls2 == Short.class || cls2 == Byte.class)) || ((cls == Integer.TYPE && (cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Long.TYPE && (cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Float.TYPE && (cls2 == Float.class || cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Double.TYPE && (cls2 == Double.class || cls2 == Float.class || cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || (cls == Boolean.TYPE && cls2 == Boolean.class))))));
    }

    private static boolean a(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr.length != clsArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < clsArr2.length; i10++) {
            Class<?> cls = clsArr2[i10];
            if (cls != null && !a(clsArr[i10], cls) && !clsArr[i10].isAssignableFrom(clsArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    private static Object a(String str, Object... objArr) throws Throwable {
        boolean z10;
        if (str.startsWith("[")) {
            return b(str, objArr);
        }
        Class<?> clsA = a(str);
        String str2 = clsA.getName() + "#" + objArr.length;
        Constructor<?> constructor = f2235e.get(str2);
        Class<?>[] clsArrA = a(objArr);
        if (constructor != null && a(constructor.getParameterTypes(), clsArrA)) {
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        }
        Constructor<?>[] declaredConstructors = clsA.getDeclaredConstructors();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Constructor<?> constructor2 : declaredConstructors) {
            Class<?>[] parameterTypes = constructor2.getParameterTypes();
            if (a(parameterTypes, clsArrA)) {
                f2235e.put(str2, constructor2);
                constructor2.setAccessible(true);
                return constructor2.newInstance(objArr);
            }
            if (parameterTypes.length > 0 && parameterTypes[parameterTypes.length - 1].isArray() && clsArrA.length >= parameterTypes.length - 1) {
                arrayList.add(constructor2);
                arrayList2.add(parameterTypes);
            }
        }
        for (int i10 = 0; i10 < arrayList2.size(); i10++) {
            Class[] clsArr = (Class[]) arrayList2.get(i10);
            Class<?> componentType = clsArr[clsArr.length - 1].getComponentType();
            if (b((Class<?>[]) clsArr, clsArrA)) {
                Object[] objArr2 = new Object[objArr.length + 1];
                System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
                objArr2[objArr.length] = Array.newInstance(componentType, 0);
                Constructor constructor3 = (Constructor) arrayList.get(i10);
                constructor3.setAccessible(true);
                return constructor3.newInstance(objArr);
            }
            int length = clsArr.length - 1;
            while (true) {
                if (length >= clsArrA.length) {
                    z10 = true;
                    break;
                }
                if (!clsArrA[length].equals(componentType)) {
                    z10 = false;
                    break;
                }
                length++;
            }
            if (z10) {
                int length2 = (clsArrA.length - clsArr.length) + 1;
                Object objNewInstance = Array.newInstance(componentType, length2);
                for (int i11 = 0; i11 < length2; i11++) {
                    Array.set(objNewInstance, i11, objArr[(clsArr.length - 1) + i11]);
                }
                Object[] objArr3 = new Object[objArr.length + 1];
                System.arraycopy(objArr, 0, objArr3, 0, objArr.length);
                objArr3[objArr.length] = objNewInstance;
                Constructor constructor4 = (Constructor) arrayList.get(i10);
                constructor4.setAccessible(true);
                return constructor4.newInstance(objArr);
            }
        }
        throw new NoSuchMethodException("className: " + str + ", methodName: <init>");
    }

    private static Object b(Object obj, String str) throws Throwable {
        int i10;
        int i11;
        if (obj instanceof List) {
            if (str.startsWith("[") && str.endsWith("]")) {
                try {
                    i11 = Integer.parseInt(str.substring(1, str.length() - 1));
                } catch (Throwable unused) {
                    i11 = -1;
                }
                if (i11 != -1) {
                    return ((List) obj).get(i11);
                }
            }
        } else {
            if (cn.fly.commons.o.a("006gfeLejYih").equals(str)) {
                return Integer.valueOf(Array.getLength(obj));
            }
            if (str.startsWith("[") && str.endsWith("]")) {
                try {
                    i10 = Integer.parseInt(str.substring(1, str.length() - 1));
                } catch (Throwable unused2) {
                    i10 = -1;
                }
                if (i10 != -1) {
                    return Array.get(obj, i10);
                }
            }
        }
        throw new NoSuchFieldException("className: " + obj.getClass() + ", fieldName: " + str);
    }

    private static void b(Object obj, String str, Object obj2) throws Throwable {
        int i10;
        int i11;
        if (obj instanceof List) {
            if (str.startsWith("[") && str.endsWith("]")) {
                try {
                    i11 = Integer.parseInt(str.substring(1, str.length() - 1));
                } catch (Throwable unused) {
                    i11 = -1;
                }
                if (i11 != -1) {
                    ((List) obj).set(i11, obj2);
                    return;
                }
            }
        } else if (str.startsWith("[") && str.endsWith("]")) {
            try {
                i10 = Integer.parseInt(str.substring(1, str.length() - 1));
            } catch (Throwable unused2) {
                i10 = -1;
            }
            if (i10 != -1) {
                String name = obj.getClass().getName();
                while (name.startsWith("[")) {
                    name = name.substring(1);
                }
                Class<?> cls = obj2.getClass();
                if (!SDKManager.ALGO_B_AES_SHA256_RSA.equals(name)) {
                    Object objValueOf = null;
                    if ("S".equals(name)) {
                        if (cls == Short.class) {
                            objValueOf = obj2;
                        } else if (cls == Byte.class) {
                            objValueOf = Short.valueOf(((Byte) obj2).byteValue());
                        }
                        if (objValueOf != null) {
                            Array.set(obj, i10, objValueOf);
                            return;
                        }
                    } else if ("I".equals(name)) {
                        if (cls == Integer.class) {
                            objValueOf = obj2;
                        } else if (cls == Short.class) {
                            objValueOf = Integer.valueOf(((Short) obj2).shortValue());
                        } else if (cls == Byte.class) {
                            objValueOf = Integer.valueOf(((Byte) obj2).byteValue());
                        }
                        if (objValueOf != null) {
                            Array.set(obj, i10, objValueOf);
                            return;
                        }
                    } else if ("J".equals(name)) {
                        if (cls == Long.class) {
                            objValueOf = obj2;
                        } else if (cls == Integer.class) {
                            objValueOf = Long.valueOf(((Integer) obj2).intValue());
                        } else if (cls == Short.class) {
                            objValueOf = Long.valueOf(((Short) obj2).shortValue());
                        } else if (cls == Byte.class) {
                            objValueOf = Long.valueOf(((Byte) obj2).byteValue());
                        }
                        if (objValueOf != null) {
                            Array.set(obj, i10, objValueOf);
                            return;
                        }
                    } else if ("F".equals(name)) {
                        if (cls == Float.class) {
                            objValueOf = obj2;
                        } else if (cls == Long.class) {
                            objValueOf = Float.valueOf(((Long) obj2).longValue());
                        } else if (cls == Integer.class) {
                            objValueOf = Float.valueOf(((Integer) obj2).intValue());
                        } else if (cls == Short.class) {
                            objValueOf = Float.valueOf(((Short) obj2).shortValue());
                        } else if (cls == Byte.class) {
                            objValueOf = Float.valueOf(((Byte) obj2).byteValue());
                        }
                        if (objValueOf != null) {
                            Array.set(obj, i10, objValueOf);
                            return;
                        }
                    } else if (SDKManager.ALGO_D_RFU.equals(name)) {
                        if (cls == Double.class) {
                            objValueOf = obj2;
                        } else if (cls == Float.class) {
                            objValueOf = Double.valueOf(((Float) obj2).floatValue());
                        } else if (cls == Long.class) {
                            objValueOf = Double.valueOf(((Long) obj2).longValue());
                        } else if (cls == Integer.class) {
                            objValueOf = Double.valueOf(((Integer) obj2).intValue());
                        } else if (cls == Short.class) {
                            objValueOf = Double.valueOf(((Short) obj2).shortValue());
                        } else if (cls == Byte.class) {
                            objValueOf = Double.valueOf(((Byte) obj2).byteValue());
                        }
                        if (objValueOf != null) {
                            Array.set(obj, i10, objValueOf);
                            return;
                        }
                    } else if ("Z".equals(name)) {
                        if (cls == Boolean.class) {
                            Array.set(obj, i10, obj2);
                            return;
                        }
                    } else if (SDKManager.ALGO_C_RFU.equals(name)) {
                        if (cls == Character.class) {
                            Array.set(obj, i10, obj2);
                            return;
                        }
                    } else if (name.equals(cls.getName())) {
                        Array.set(obj, i10, obj2);
                        return;
                    }
                } else if (cls == Byte.class) {
                    Array.set(obj, i10, obj2);
                    return;
                }
            }
        }
        throw new NoSuchFieldException("className: " + obj.getClass() + ", fieldName: " + str + ", value: " + String.valueOf(obj2));
    }

    private static <T> T a(String str, Object obj, String str2, Object[] objArr, Class<?>[] clsArr) throws Throwable {
        Class<?> superclass;
        if (objArr == null) {
            objArr = new Object[0];
        }
        if (clsArr == null) {
            clsArr = new Class[0];
        }
        if (obj == null) {
            superclass = a(str);
        } else {
            superclass = obj.getClass();
        }
        String str3 = superclass.getName() + "#" + str2 + "#" + objArr.length;
        Method method = f2234d.get(str3);
        if (method != null) {
            method.setAccessible(true);
            if (method.getReturnType() == Void.TYPE) {
                method.invoke(obj, objArr);
                return null;
            }
            return (T) method.invoke(obj, objArr);
        }
        while (superclass != null) {
            try {
                Method declaredMethod = superclass.getDeclaredMethod(str2, clsArr);
                f2234d.put(str3, declaredMethod);
                declaredMethod.setAccessible(true);
                if (declaredMethod.getReturnType() == Void.TYPE) {
                    declaredMethod.invoke(obj, objArr);
                    return null;
                }
                return (T) declaredMethod.invoke(obj, objArr);
            } catch (InvocationTargetException e10) {
                throw e10;
            } catch (Throwable unused) {
                superclass = superclass.getSuperclass();
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("className: ");
        Object obj2 = str;
        if (obj != null) {
            obj2 = obj.getClass();
        }
        sb2.append(obj2);
        sb2.append(", methodName: ");
        sb2.append(str2);
        throw new NoSuchMethodException(sb2.toString());
    }

    private static <T> T a(String str, Object obj, String str2, Object... objArr) throws Throwable {
        Class<?> superclass;
        Class<?>[] clsArrA;
        if (obj == null) {
            superclass = a(str);
        } else {
            superclass = obj.getClass();
        }
        boolean z10 = false;
        if (str2.equals(cn.fly.commons.o.a("009Cej%fi)hc$fihUdkdc")) && objArr != null && objArr.length == 2) {
            clsArrA = new Class[]{String.class, Class[].class};
            if (objArr[1] == String.class) {
                objArr[1] = new Class[]{String.class};
            }
        } else if (str2.equals("getDeviceId") && objArr != null && objArr.length == 1) {
            clsArrA = new Class[]{Integer.TYPE};
        } else if (str2.equals(cn.fly.commons.o.a("006Zdi!eFdddkehJf")) && objArr != null && objArr.length == 2) {
            clsArrA = new Class[]{Object.class, Object[].class};
        } else {
            clsArrA = (str2.equals(cn.fly.commons.o.a("013:fiCfi2fd<ccf=fifidiff5gf")) && objArr != null && objArr.length == 1) ? new Class[]{Boolean.TYPE} : a(objArr);
        }
        StringBuffer stringBuffer = new StringBuffer();
        int length = clsArrA.length;
        for (int i10 = 0; i10 < length; i10++) {
            Class<?> cls = clsArrA[i10];
            stringBuffer.append(cls == null ? "" : cls.getName());
        }
        String str3 = superclass.getName() + "#" + str2 + "#" + objArr.length + stringBuffer.toString();
        Method method = f2234d.get(str3);
        if (method != null) {
            boolean zIsStatic = Modifier.isStatic(method.getModifiers());
            if (obj == null) {
                z10 = zIsStatic;
            } else if (!zIsStatic) {
                z10 = true;
            }
            if (z10 && a(method.getParameterTypes(), clsArrA)) {
                method.setAccessible(true);
                if (method.getReturnType() == Void.TYPE) {
                    method.invoke(obj, objArr);
                    return null;
                }
                return (T) method.invoke(obj, objArr);
            }
        }
        while (superclass != null) {
            try {
                Method declaredMethod = superclass.getDeclaredMethod(str2, clsArrA);
                f2234d.put(str3, declaredMethod);
                declaredMethod.setAccessible(true);
                if (declaredMethod.getReturnType() == Void.TYPE) {
                    declaredMethod.invoke(obj, objArr);
                    return null;
                }
                return (T) declaredMethod.invoke(obj, objArr);
            } catch (InvocationTargetException e10) {
                throw e10;
            } catch (Throwable unused) {
                superclass = superclass.getSuperclass();
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("className: ");
        Object obj2 = str;
        if (obj != null) {
            obj2 = obj.getClass();
        }
        sb2.append(obj2);
        sb2.append(", methodName: ");
        sb2.append(str2);
        throw new NoSuchMethodException(sb2.toString());
    }

    private static <T> T a(String str, String str2) throws Throwable {
        Field declaredField;
        ArrayList arrayList = new ArrayList();
        for (Class<?> clsA = a(str); clsA != null; clsA = clsA.getSuperclass()) {
            arrayList.add(clsA);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            try {
                declaredField = ((Class) it2.next()).getDeclaredField(str2);
            } catch (Throwable unused) {
                declaredField = null;
            }
            if (declaredField != null && Modifier.isStatic(declaredField.getModifiers())) {
                declaredField.setAccessible(true);
                return (T) declaredField.get(null);
            }
        }
        throw new NoSuchFieldException("className: " + str + ", fieldName: " + str2);
    }

    private static void a(String str, String str2, Object obj) throws Throwable {
        Field declaredField;
        ArrayList arrayList = new ArrayList();
        for (Class<?> clsA = a(str); clsA != null; clsA = clsA.getSuperclass()) {
            arrayList.add(clsA);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            try {
                declaredField = ((Class) it2.next()).getDeclaredField(str2);
            } catch (Throwable unused) {
                declaredField = null;
            }
            if (declaredField != null && Modifier.isStatic(declaredField.getModifiers())) {
                if (Modifier.isFinal(declaredField.getModifiers()) && DH.SyncMtd.getOSVersionIntForFly() >= 37 && cn.fly.tools.b.c.a(FlySDK.getContext()).d().ar().targetSdkVersion >= 37) {
                    throw new Throwable("className: " + str + ", fieldName: " + str2 + " is static final, not allowed in 37");
                }
                declaredField.setAccessible(true);
                declaredField.set(null, obj);
                return;
            }
        }
        throw new NoSuchFieldException("className: " + str + ", fieldName: " + str2 + ", value: " + String.valueOf(obj));
    }

    private static <T> T a(Object obj, String str) throws Throwable {
        Field declaredField;
        if (!(obj instanceof List) && !obj.getClass().isArray()) {
            if (obj instanceof Map) {
                return (T) ((Map) obj).get(str);
            }
            ArrayList arrayList = new ArrayList();
            for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                arrayList.add(superclass);
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                try {
                    declaredField = ((Class) it2.next()).getDeclaredField(str);
                } catch (Throwable unused) {
                    declaredField = null;
                }
                if (declaredField != null && !Modifier.isStatic(declaredField.getModifiers())) {
                    declaredField.setAccessible(true);
                    return (T) declaredField.get(obj);
                }
            }
            throw new NoSuchFieldException("className: " + obj.getClass() + ", fieldName: " + str);
        }
        return (T) b(obj, str);
    }

    private static void a(Object obj, String str, Object obj2) throws Throwable {
        Field declaredField;
        if (!(obj instanceof List) && !obj.getClass().isArray()) {
            if (obj instanceof Map) {
                ((Map) obj).put(str, obj2);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                arrayList.add(superclass);
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                try {
                    declaredField = ((Class) it2.next()).getDeclaredField(str);
                } catch (Throwable unused) {
                    declaredField = null;
                }
                if (declaredField != null && !Modifier.isStatic(declaredField.getModifiers())) {
                    declaredField.setAccessible(true);
                    declaredField.set(obj, obj2);
                    return;
                }
            }
            throw new NoSuchFieldException("className: " + obj.getClass() + ", fieldName: " + str + ", value: " + String.valueOf(obj2));
        }
        b(obj, str, obj2);
    }
}

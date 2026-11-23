package external.org.apache.commons.lang3.reflect;

import external.org.apache.commons.lang3.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes8.dex */
public class b {
    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return b(cls.getMethod(str, clsArr));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static Method b(Method method) {
        if (!a.e(method)) {
            return null;
        }
        Class<?> declaringClass = method.getDeclaringClass();
        if (Modifier.isPublic(declaringClass.getModifiers())) {
            return method;
        }
        String name = method.getName();
        Class<?>[] parameterTypes = method.getParameterTypes();
        Method methodC = c(declaringClass, name, parameterTypes);
        return methodC == null ? d(declaringClass, name, parameterTypes) : methodC;
    }

    private static Method c(Class<?> cls, String str, Class<?>... clsArr) {
        Method methodC = null;
        while (cls != null) {
            Class<?>[] interfaces = cls.getInterfaces();
            for (int i10 = 0; i10 < interfaces.length; i10++) {
                if (Modifier.isPublic(interfaces[i10].getModifiers())) {
                    try {
                        methodC = interfaces[i10].getDeclaredMethod(str, clsArr);
                    } catch (NoSuchMethodException unused) {
                    }
                    if (methodC != null || (methodC = c(interfaces[i10], str, clsArr)) != null) {
                        break;
                    }
                }
            }
            cls = cls.getSuperclass();
        }
        return methodC;
    }

    private static Method d(Class<?> cls, String str, Class<?>... clsArr) {
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            if (Modifier.isPublic(superclass.getModifiers())) {
                try {
                    return superclass.getMethod(str, clsArr);
                } catch (NoSuchMethodException unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public static Method e(Class<?> cls, String str, Class<?>... clsArr) {
        Method methodB;
        try {
            Method method = cls.getMethod(str, clsArr);
            a.g(method);
            return method;
        } catch (NoSuchMethodException unused) {
            Method method2 = null;
            for (Method method3 : cls.getMethods()) {
                if (method3.getName().equals(str) && d.D(clsArr, method3.getParameterTypes(), true) && (methodB = b(method3)) != null && (method2 == null || a.a(methodB.getParameterTypes(), method2.getParameterTypes(), clsArr) < 0)) {
                    method2 = methodB;
                }
            }
            if (method2 != null) {
                a.g(method2);
            }
            return method2;
        }
    }

    public static Object f(Object obj, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        if (objArr == null) {
            objArr = external.org.apache.commons.lang3.a.f90902a;
        }
        int length = objArr.length;
        Class[] clsArr = new Class[length];
        for (int i10 = 0; i10 < length; i10++) {
            clsArr[i10] = objArr[i10].getClass();
        }
        return g(obj, str, objArr, clsArr);
    }

    public static Object g(Object obj, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        if (objArr == null) {
            objArr = external.org.apache.commons.lang3.a.f90902a;
        }
        if (clsArr == null) {
            clsArr = external.org.apache.commons.lang3.a.f90903b;
        }
        Method methodA = a(obj.getClass(), str, clsArr);
        if (methodA != null) {
            return methodA.invoke(obj, objArr);
        }
        throw new NoSuchMethodException("No such accessible method: " + str + "() on object: " + obj.getClass().getName());
    }

    public static Object h(Class<?> cls, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        if (objArr == null) {
            objArr = external.org.apache.commons.lang3.a.f90902a;
        }
        int length = objArr.length;
        Class[] clsArr = new Class[length];
        for (int i10 = 0; i10 < length; i10++) {
            clsArr[i10] = objArr[i10].getClass();
        }
        return i(cls, str, objArr, clsArr);
    }

    public static Object i(Class<?> cls, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        if (objArr == null) {
            objArr = external.org.apache.commons.lang3.a.f90902a;
        }
        if (clsArr == null) {
            clsArr = external.org.apache.commons.lang3.a.f90903b;
        }
        Method methodA = a(cls, str, clsArr);
        if (methodA != null) {
            return methodA.invoke(null, objArr);
        }
        throw new NoSuchMethodException("No such accessible method: " + str + "() on class: " + cls.getName());
    }

    public static Object j(Object obj, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        if (objArr == null) {
            objArr = external.org.apache.commons.lang3.a.f90902a;
        }
        int length = objArr.length;
        Class[] clsArr = new Class[length];
        for (int i10 = 0; i10 < length; i10++) {
            clsArr[i10] = objArr[i10].getClass();
        }
        return k(obj, str, objArr, clsArr);
    }

    public static Object k(Object obj, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        if (clsArr == null) {
            clsArr = external.org.apache.commons.lang3.a.f90903b;
        }
        if (objArr == null) {
            objArr = external.org.apache.commons.lang3.a.f90902a;
        }
        Method methodE = e(obj.getClass(), str, clsArr);
        if (methodE != null) {
            return methodE.invoke(obj, objArr);
        }
        throw new NoSuchMethodException("No such accessible method: " + str + "() on object: " + obj.getClass().getName());
    }

    public static Object l(Class<?> cls, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        if (objArr == null) {
            objArr = external.org.apache.commons.lang3.a.f90902a;
        }
        int length = objArr.length;
        Class[] clsArr = new Class[length];
        for (int i10 = 0; i10 < length; i10++) {
            clsArr[i10] = objArr[i10].getClass();
        }
        return m(cls, str, objArr, clsArr);
    }

    public static Object m(Class<?> cls, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        if (clsArr == null) {
            clsArr = external.org.apache.commons.lang3.a.f90903b;
        }
        if (objArr == null) {
            objArr = external.org.apache.commons.lang3.a.f90902a;
        }
        Method methodE = e(cls, str, clsArr);
        if (methodE != null) {
            return methodE.invoke(null, objArr);
        }
        throw new NoSuchMethodException("No such accessible method: " + str + "() on class: " + cls.getName());
    }
}

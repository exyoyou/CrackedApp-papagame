package external.org.apache.commons.lang3;

import external.org.apache.commons.lang3.exception.CloneFailedException;
import external.org.apache.commons.lang3.mutable.MutableInt;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes8.dex */
public class ObjectUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Null f90901a = new Null();

    public static class Null implements Serializable {
        private static final long serialVersionUID = 7092611880189329093L;

        Null() {
        }

        private Object readResolve() {
            return ObjectUtils.f90901a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T a(T t10) {
        if (!(t10 instanceof Cloneable)) {
            return null;
        }
        if (!t10.getClass().isArray()) {
            try {
                return (T) t10.getClass().getMethod("clone", new Class[0]).invoke(t10, new Object[0]);
            } catch (IllegalAccessException e10) {
                throw new CloneFailedException("Cannot clone Cloneable type " + t10.getClass().getName(), e10);
            } catch (NoSuchMethodException e11) {
                throw new CloneFailedException("Cloneable type " + t10.getClass().getName() + " has no clone method", e11);
            } catch (InvocationTargetException e12) {
                throw new CloneFailedException("Exception cloning Cloneable type " + t10.getClass().getName(), e12.getCause());
            }
        }
        Class<?> componentType = t10.getClass().getComponentType();
        if (!componentType.isPrimitive()) {
            return (T) ((Object[]) t10).clone();
        }
        int length = Array.getLength(t10);
        T t11 = (T) Array.newInstance(componentType, length);
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return t11;
            }
            Array.set(t11, i10, Array.get(t10, i10));
            length = i10;
        }
    }

    public static <T> T b(T t10) {
        T t11 = (T) a(t10);
        return t11 == null ? t10 : t11;
    }

    public static <T extends Comparable<? super T>> int c(T t10, T t11) {
        return d(t10, t11, false);
    }

    public static <T extends Comparable<? super T>> int d(T t10, T t11, boolean z10) {
        if (t10 == t11) {
            return 0;
        }
        if (t10 == null) {
            return z10 ? 1 : -1;
        }
        if (t11 == null) {
            return z10 ? -1 : 1;
        }
        return t10.compareTo(t11);
    }

    public static <T> T e(T t10, T t11) {
        return t10 != null ? t10 : t11;
    }

    public static boolean f(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public static <T> T g(T... tArr) {
        if (tArr == null) {
            return null;
        }
        for (T t10 : tArr) {
            if (t10 != null) {
                return t10;
            }
        }
        return null;
    }

    public static int h(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static int i(Object... objArr) {
        int iH = 1;
        if (objArr != null) {
            for (Object obj : objArr) {
                iH = (iH * 31) + h(obj);
            }
        }
        return iH;
    }

    public static String j(Object obj) {
        if (obj == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        k(stringBuffer, obj);
        return stringBuffer.toString();
    }

    public static void k(StringBuffer stringBuffer, Object obj) {
        if (obj == null) {
            throw new NullPointerException("Cannot get the toString of a null identity");
        }
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append('@');
        stringBuffer.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static <T extends Comparable<? super T>> T l(T... tArr) {
        T t10 = null;
        if (tArr != null) {
            for (T t11 : tArr) {
                if (d(t11, t10, false) > 0) {
                    t10 = t11;
                }
            }
        }
        return t10;
    }

    public static <T extends Comparable<? super T>> T m(T... tArr) {
        g.A(tArr);
        g.q(tArr);
        TreeSet treeSet = new TreeSet();
        Collections.addAll(treeSet, tArr);
        return (T) treeSet.toArray()[(treeSet.size() - 1) / 2];
    }

    public static <T> T n(Comparator<T> comparator, T... tArr) {
        g.B(tArr, "null/empty items", new Object[0]);
        g.q(tArr);
        g.D(comparator, "null comparator", new Object[0]);
        TreeSet treeSet = new TreeSet(comparator);
        Collections.addAll(treeSet, tArr);
        return (T) treeSet.toArray()[(treeSet.size() - 1) / 2];
    }

    public static <T extends Comparable<? super T>> T o(T... tArr) {
        T t10 = null;
        if (tArr != null) {
            for (T t11 : tArr) {
                if (d(t11, t10, true) < 0) {
                    t10 = t11;
                }
            }
        }
        return t10;
    }

    public static <T> T p(T... tArr) {
        if (!a.J0(tArr)) {
            return null;
        }
        HashMap map = new HashMap(tArr.length);
        int i10 = 0;
        for (T t10 : tArr) {
            MutableInt mutableInt = (MutableInt) map.get(t10);
            if (mutableInt == null) {
                map.put(t10, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        while (true) {
            T t11 = null;
            for (Map.Entry entry : map.entrySet()) {
                int iIntValue = ((MutableInt) entry.getValue()).intValue();
                if (iIntValue != i10) {
                    if (iIntValue > i10) {
                        t11 = (T) entry.getKey();
                        i10 = iIntValue;
                    }
                }
            }
            return t11;
        }
    }

    public static boolean q(Object obj, Object obj2) {
        return !f(obj, obj2);
    }

    public static String r(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    public static String s(Object obj, String str) {
        return obj == null ? str : obj.toString();
    }
}

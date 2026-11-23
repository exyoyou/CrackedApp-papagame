package de.robv.android.xposed;

import android.annotation.SuppressLint;
import android.util.Log;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.xposedcompat.methodgen.DynamicBridge;
import com.swift.sandhook.xposedcompat.utils.DexLog;
import de.robv.android.xposed.XC_MethodHook.Unhook;
import de.robv.android.xposed.callbacks.XC_InitPackageResources;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public final class XposedBridge {
    static long BOOT_START_TIME = 0;
    private static final int RUNTIME_ART = 2;
    private static final int RUNTIME_DALVIK = 1;
    public static final String TAG = "SandXposed";

    @Deprecated
    public static int XPOSED_BRIDGE_VERSION;
    public static final ClassLoader BOOTCLASSLOADER = XposedBridge.class.getClassLoader();
    static boolean isZygote = true;
    private static int runtime = 2;
    public static boolean disableHooks = false;
    private static final Object[] EMPTY_ARRAY = new Object[0];
    public static final Map<Member, CopyOnWriteSortedSet<XC_MethodHook>> sHookedMethodCallbacks = new HashMap();
    public static final CopyOnWriteSortedSet<XC_LoadPackage> sLoadedPackageCallbacks = new CopyOnWriteSortedSet<>();
    static final CopyOnWriteSortedSet<XC_InitPackageResources> sInitPackageResourcesCallbacks = new CopyOnWriteSortedSet<>();

    public static class AdditionalHookInfo {
        public final CopyOnWriteSortedSet<XC_MethodHook> callbacks;
        public final Class<?>[] parameterTypes;
        public final Class<?> returnType;

        private AdditionalHookInfo(CopyOnWriteSortedSet<XC_MethodHook> copyOnWriteSortedSet, Class<?>[] clsArr, Class<?> cls) {
            this.callbacks = copyOnWriteSortedSet;
            this.parameterTypes = clsArr;
            this.returnType = cls;
        }
    }

    public static final class CopyOnWriteSortedSet<E> {
        private volatile transient Object[] elements = XposedBridge.EMPTY_ARRAY;

        private int indexOf(Object obj) {
            for (int i10 = 0; i10 < this.elements.length; i10++) {
                if (obj.equals(this.elements[i10])) {
                    return i10;
                }
            }
            return -1;
        }

        public synchronized boolean add(E e10) {
            if (indexOf(e10) >= 0) {
                return false;
            }
            Object[] objArr = new Object[this.elements.length + 1];
            System.arraycopy(this.elements, 0, objArr, 0, this.elements.length);
            objArr[this.elements.length] = e10;
            Arrays.sort(objArr);
            this.elements = objArr;
            return true;
        }

        public Object[] getSnapshot() {
            return this.elements;
        }

        public synchronized boolean remove(E e10) {
            int iIndexOf = indexOf(e10);
            if (iIndexOf == -1) {
                return false;
            }
            Object[] objArr = new Object[this.elements.length - 1];
            System.arraycopy(this.elements, 0, objArr, 0, iIndexOf);
            System.arraycopy(this.elements, iIndexOf + 1, objArr, iIndexOf, (this.elements.length - iIndexOf) - 1);
            this.elements = objArr;
            return true;
        }
    }

    private XposedBridge() {
    }

    @SuppressLint({"SetWorldReadable"})
    private static File ensureSuperDexFile(String str, Class<?> cls, Class<?> cls2) throws IOException {
        return null;
    }

    public static int getXposedVersion() {
        return 90;
    }

    public static Set<XC_MethodHook.Unhook> hookAllConstructors(Class<?> cls, XC_MethodHook xC_MethodHook) {
        HashSet hashSet = new HashSet();
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            hashSet.add(hookMethod(constructor, xC_MethodHook));
        }
        return hashSet;
    }

    public static Set<XC_MethodHook.Unhook> hookAllMethods(Class<?> cls, String str, XC_MethodHook xC_MethodHook) {
        HashSet hashSet = new HashSet();
        for (Method method : cls.getDeclaredMethods()) {
            if (method.getName().equals(str)) {
                hashSet.add(hookMethod(method, xC_MethodHook));
            }
        }
        return hashSet;
    }

    public static void hookInitPackageResources(XC_InitPackageResources xC_InitPackageResources) {
    }

    public static void hookLoadPackage(XC_LoadPackage xC_LoadPackage) {
        CopyOnWriteSortedSet<XC_LoadPackage> copyOnWriteSortedSet = sLoadedPackageCallbacks;
        synchronized (copyOnWriteSortedSet) {
            copyOnWriteSortedSet.add(xC_LoadPackage);
        }
    }

    public static XC_MethodHook.Unhook hookMethod(Member member, XC_MethodHook xC_MethodHook) {
        CopyOnWriteSortedSet<XC_MethodHook> copyOnWriteSortedSet;
        int intField;
        boolean z10;
        Class<?>[] parameterTypes;
        Class<?> returnType;
        if (!(member instanceof Method) && !(member instanceof Constructor)) {
            throw new IllegalArgumentException("Only methods and constructors can be hooked: " + member.toString());
        }
        if (member.getDeclaringClass().isInterface()) {
            throw new IllegalArgumentException("Cannot hook interfaces: " + member.toString());
        }
        if (Modifier.isAbstract(member.getModifiers())) {
            throw new IllegalArgumentException("Cannot hook abstract methods: " + member.toString());
        }
        if (xC_MethodHook == null) {
            throw new IllegalArgumentException("callback should not be null!");
        }
        Map<Member, CopyOnWriteSortedSet<XC_MethodHook>> map = sHookedMethodCallbacks;
        synchronized (map) {
            copyOnWriteSortedSet = map.get(member);
            intField = 0;
            if (copyOnWriteSortedSet == null) {
                copyOnWriteSortedSet = new CopyOnWriteSortedSet<>();
                map.put(member, copyOnWriteSortedSet);
                z10 = true;
            } else {
                z10 = false;
            }
        }
        copyOnWriteSortedSet.add(xC_MethodHook);
        if (z10) {
            Class<?> declaringClass = member.getDeclaringClass();
            if (runtime == 2) {
                returnType = null;
                parameterTypes = null;
            } else if (member instanceof Method) {
                intField = XposedHelpers.getIntField(member, "slot");
                Method method = (Method) member;
                parameterTypes = method.getParameterTypes();
                returnType = method.getReturnType();
            } else {
                intField = XposedHelpers.getIntField(member, "slot");
                parameterTypes = ((Constructor) member).getParameterTypes();
                returnType = null;
            }
            hookMethodNative(member, declaringClass, intField, new AdditionalHookInfo(copyOnWriteSortedSet, parameterTypes, returnType));
        }
        return xC_MethodHook.new Unhook(member);
    }

    private static synchronized void hookMethodNative(Member member, Class<?> cls, int i10, Object obj) {
        DynamicBridge.hookMethod(member, (AdditionalHookInfo) obj);
    }

    private static void initXResources() throws IOException {
    }

    public static Object invokeOriginalMethod(Member member, Object obj, Object[] objArr) throws IllegalAccessException, IllegalArgumentException, NullPointerException, InvocationTargetException {
        try {
            return SandHook.callOriginMethod(member, obj, objArr);
        } catch (IllegalAccessException e10) {
            throw e10;
        } catch (IllegalArgumentException e11) {
            throw e11;
        } catch (NullPointerException e12) {
            throw e12;
        } catch (InvocationTargetException e13) {
            throw e13;
        } catch (Throwable th) {
            throw new InvocationTargetException(th);
        }
    }

    public static synchronized void log(String str) {
        boolean z10 = DexLog.DEBUG;
    }

    public static void main(String[] strArr) {
    }

    @Deprecated
    public static void unhookMethod(Member member, XC_MethodHook xC_MethodHook) {
        Map<Member, CopyOnWriteSortedSet<XC_MethodHook>> map = sHookedMethodCallbacks;
        synchronized (map) {
            CopyOnWriteSortedSet<XC_MethodHook> copyOnWriteSortedSet = map.get(member);
            if (copyOnWriteSortedSet == null) {
                return;
            }
            copyOnWriteSortedSet.remove(xC_MethodHook);
        }
    }

    public static synchronized void log(Throwable th) {
        if (DexLog.DEBUG) {
            Log.getStackTraceString(th);
        }
    }
}

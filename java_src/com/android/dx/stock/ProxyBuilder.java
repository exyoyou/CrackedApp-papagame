package com.android.dx.stock;

import com.android.dx.Code;
import com.android.dx.Comparison;
import com.android.dx.DexMaker;
import com.android.dx.Label;
import com.android.dx.Local;
import com.android.dx.MethodId;
import com.android.dx.TypeId;
import com.join.mgps.Util.o0;
import external.org.apache.commons.lang3.d;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes7.dex */
public final class ProxyBuilder<T> {
    private static final String FIELD_NAME_HANDLER = "$__handler";
    private static final String FIELD_NAME_METHODS = "$__methodArray";
    private static final Map<Class<?>, Class<?>> PRIMITIVE_TO_BOXED;
    private static final Map<Class<?>, MethodId<?, ?>> PRIMITIVE_TO_UNBOX_METHOD;
    private static final Map<TypeId<?>, MethodId<?, ?>> PRIMITIVE_TYPE_TO_UNBOX_METHOD;
    public static final int VERSION = 1;
    private static final Map<ProxiedClass<?>, Class<?>> generatedProxyClasses = Collections.synchronizedMap(new HashMap());
    private final Class<T> baseClass;
    private File dexCache;
    private InvocationHandler handler;
    private boolean markTrusted;
    private Method[] methods;
    private boolean sharedClassLoader;
    private ClassLoader parentClassLoader = ProxyBuilder.class.getClassLoader();
    private Class<?>[] constructorArgTypes = new Class[0];
    private Object[] constructorArgValues = new Object[0];
    private List<Class<?>> interfaces = new ArrayList();

    public static class MethodSetEntry {
        public final String name;
        public final Method originalMethod;
        public final Class<?>[] paramTypes;
        public final Class<?> returnType;

        public MethodSetEntry(Method method) {
            this.originalMethod = method;
            this.name = method.getName();
            this.paramTypes = method.getParameterTypes();
            this.returnType = method.getReturnType();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof MethodSetEntry)) {
                return false;
            }
            MethodSetEntry methodSetEntry = (MethodSetEntry) obj;
            return this.name.equals(methodSetEntry.name) && this.returnType.equals(methodSetEntry.returnType) && Arrays.equals(this.paramTypes, methodSetEntry.paramTypes);
        }

        public int hashCode() {
            int iHashCode = 527 + this.name.hashCode() + 17;
            int iHashCode2 = iHashCode + (iHashCode * 31) + this.returnType.hashCode();
            return iHashCode2 + (iHashCode2 * 31) + Arrays.hashCode(this.paramTypes);
        }
    }

    private static class ProxiedClass<U> {
        final Class<U> clazz;
        final List<Class<?>> interfaces;
        final ClassLoader requestedClassloader;
        final boolean sharedClassLoader;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ProxiedClass proxiedClass = (ProxiedClass) obj;
            return this.clazz == proxiedClass.clazz && this.interfaces.equals(proxiedClass.interfaces) && this.requestedClassloader == proxiedClass.requestedClassloader && this.sharedClassLoader == proxiedClass.sharedClassLoader;
        }

        public int hashCode() {
            return this.clazz.hashCode() + this.interfaces.hashCode() + this.requestedClassloader.hashCode() + (this.sharedClassLoader ? 1 : 0);
        }

        private ProxiedClass(Class<U> cls, List<Class<?>> list, ClassLoader classLoader, boolean z10) {
            this.clazz = cls;
            this.interfaces = new ArrayList(list);
            this.requestedClassloader = classLoader;
            this.sharedClassLoader = z10;
        }
    }

    static {
        HashMap map = new HashMap();
        PRIMITIVE_TO_BOXED = map;
        map.put(Boolean.TYPE, Boolean.class);
        map.put(Integer.TYPE, Integer.class);
        map.put(Byte.TYPE, Byte.class);
        map.put(Long.TYPE, Long.class);
        map.put(Short.TYPE, Short.class);
        map.put(Float.TYPE, Float.class);
        map.put(Double.TYPE, Double.class);
        map.put(Character.TYPE, Character.class);
        PRIMITIVE_TYPE_TO_UNBOX_METHOD = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            TypeId<?> typeId = TypeId.get((Class) entry.getKey());
            TypeId typeId2 = TypeId.get((Class) entry.getValue());
            PRIMITIVE_TYPE_TO_UNBOX_METHOD.put(typeId, typeId2.getMethod(typeId2, "valueOf", typeId));
        }
        HashMap map2 = new HashMap();
        map2.put(Boolean.TYPE, TypeId.get(Boolean.class).getMethod(TypeId.BOOLEAN, "booleanValue", new TypeId[0]));
        map2.put(Integer.TYPE, TypeId.get(Integer.class).getMethod(TypeId.INT, "intValue", new TypeId[0]));
        map2.put(Byte.TYPE, TypeId.get(Byte.class).getMethod(TypeId.BYTE, "byteValue", new TypeId[0]));
        map2.put(Long.TYPE, TypeId.get(Long.class).getMethod(TypeId.LONG, "longValue", new TypeId[0]));
        map2.put(Short.TYPE, TypeId.get(Short.class).getMethod(TypeId.SHORT, "shortValue", new TypeId[0]));
        map2.put(Float.TYPE, TypeId.get(Float.class).getMethod(TypeId.FLOAT, "floatValue", new TypeId[0]));
        map2.put(Double.TYPE, TypeId.get(Double.class).getMethod(TypeId.DOUBLE, "doubleValue", new TypeId[0]));
        map2.put(Character.TYPE, TypeId.get(Character.class).getMethod(TypeId.CHAR, "charValue", new TypeId[0]));
        PRIMITIVE_TO_UNBOX_METHOD = map2;
    }

    private ProxyBuilder(Class<T> cls) {
        this.baseClass = cls;
    }

    private static Local<?> boxIfRequired(Code code, Local<?> local, Local<Object> local2) {
        MethodId<?, ?> methodId = PRIMITIVE_TYPE_TO_UNBOX_METHOD.get(local.getType());
        if (methodId == null) {
            return local;
        }
        code.invokeStatic(methodId, local2, local);
        return local2;
    }

    public static Object callSuper(Object obj, Method method, Object... objArr) throws Throwable {
        try {
            return obj.getClass().getMethod(superMethodName(method), method.getParameterTypes()).invoke(obj, objArr);
        } catch (InvocationTargetException e10) {
            throw e10.getCause();
        }
    }

    private static void check(boolean z10, String str) {
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
    }

    private static TypeId<?>[] classArrayToTypeArray(Class<?>[] clsArr) {
        TypeId<?>[] typeIdArr = new TypeId[clsArr.length];
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            typeIdArr[i10] = TypeId.get(clsArr[i10]);
        }
        return typeIdArr;
    }

    public static <T> ProxyBuilder<T> forClass(Class<T> cls) {
        return new ProxyBuilder<>(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T, G extends T> void generateCodeForAllMethods(DexMaker dexMaker, TypeId<G> typeId, Method[] methodArr, TypeId<T> typeId2) {
        Local localNewLocal;
        Local localNewLocal2;
        Local local;
        Local[] localArr;
        MethodId methodId;
        DexMaker dexMaker2 = dexMaker;
        TypeId<G> typeId3 = typeId;
        TypeId<V> typeId4 = TypeId.get(InvocationHandler.class);
        TypeId<V> typeId5 = TypeId.get(Method[].class);
        Object field = typeId3.getField(typeId4, FIELD_NAME_HANDLER);
        Object field2 = typeId3.getField(typeId5, FIELD_NAME_METHODS);
        TypeId typeId6 = TypeId.get(Method.class);
        TypeId typeId7 = TypeId.get(Object[].class);
        TypeId<Object> typeId8 = TypeId.OBJECT;
        MethodId method = typeId4.getMethod(typeId8, "invoke", typeId8, typeId6, typeId7);
        int i10 = 0;
        Object obj = typeId4;
        Object obj2 = typeId5;
        while (i10 < methodArr.length) {
            Method method2 = methodArr[i10];
            String name = method2.getName();
            Class<?>[] parameterTypes = method2.getParameterTypes();
            int length = parameterTypes.length;
            TypeId<?>[] typeIdArr = new TypeId[length];
            for (int i11 = 0; i11 < length; i11++) {
                typeIdArr[i11] = TypeId.get(parameterTypes[i11]);
            }
            Class<?> returnType = method2.getReturnType();
            MethodId methodId2 = method;
            TypeId<R> typeId9 = TypeId.get(returnType);
            Object obj3 = field;
            MethodId<?, ?> method3 = typeId3.getMethod(typeId9, name, typeIdArr);
            TypeId<T> typeId10 = TypeId.get(AbstractMethodError.class);
            Object obj4 = field2;
            Code codeDeclare = dexMaker2.declare(method3, 1);
            Local local2 = codeDeclare.getThis(typeId3);
            Local localNewLocal3 = codeDeclare.newLocal(obj);
            TypeId<Object> typeId11 = TypeId.OBJECT;
            Local localNewLocal4 = codeDeclare.newLocal(typeId11);
            TypeId<Integer> typeId12 = TypeId.INT;
            Local localNewLocal5 = codeDeclare.newLocal(typeId12);
            Local localNewLocal6 = codeDeclare.newLocal(typeId7);
            TypeId typeId13 = typeId7;
            Local localNewLocal7 = codeDeclare.newLocal(typeId12);
            Local localNewLocal8 = codeDeclare.newLocal(typeId11);
            Local localNewLocal9 = codeDeclare.newLocal(typeId9);
            Local localNewLocal10 = codeDeclare.newLocal(obj2);
            Object obj5 = obj2;
            Local localNewLocal11 = codeDeclare.newLocal(typeId6);
            Local localNewLocal12 = codeDeclare.newLocal(typeId12);
            TypeId typeId14 = typeId6;
            Class<?> cls = PRIMITIVE_TO_BOXED.get(returnType);
            Local localNewLocal13 = cls != null ? codeDeclare.newLocal(TypeId.get(cls)) : null;
            Local localNewLocal14 = codeDeclare.newLocal(obj);
            Object obj6 = obj;
            if ((method2.getModifiers() & 1024) == 0) {
                Local[] localArr2 = new Local[parameterTypes.length];
                Local localNewLocal15 = codeDeclare.newLocal(typeId9);
                MethodId method4 = typeId2.getMethod(typeId9, name, typeIdArr);
                local = localNewLocal15;
                localNewLocal = null;
                methodId = method4;
                localArr = localArr2;
                localNewLocal2 = null;
            } else {
                localNewLocal = codeDeclare.newLocal(TypeId.STRING);
                localNewLocal2 = codeDeclare.newLocal(typeId10);
                local = null;
                localArr = null;
                methodId = null;
            }
            codeDeclare.loadConstant(localNewLocal12, Integer.valueOf(i10));
            codeDeclare.sget(obj4, localNewLocal10);
            codeDeclare.aget(localNewLocal11, localNewLocal10, localNewLocal12);
            codeDeclare.loadConstant(localNewLocal7, Integer.valueOf(length));
            codeDeclare.newArray(localNewLocal6, localNewLocal7);
            codeDeclare.iget(obj3, localNewLocal3, local2);
            codeDeclare.loadConstant(localNewLocal14, null);
            Label label = new Label();
            codeDeclare.compare(Comparison.EQ, label, localNewLocal14, localNewLocal3);
            int i12 = length;
            int i13 = 0;
            while (i13 < i12) {
                codeDeclare.loadConstant(localNewLocal5, Integer.valueOf(i13));
                codeDeclare.aput(localNewLocal6, localNewLocal5, boxIfRequired(codeDeclare, codeDeclare.getParameter(i13, typeIdArr[i13]), localNewLocal8));
                i13++;
                i12 = i12;
                i10 = i10;
                localNewLocal2 = localNewLocal2;
            }
            int i14 = i10;
            Local local3 = localNewLocal2;
            codeDeclare.invokeInterface(methodId2, localNewLocal4, localNewLocal3, local2, localNewLocal11, localNewLocal6);
            generateCodeForReturnStatement(codeDeclare, returnType, localNewLocal4, localNewLocal9, localNewLocal13);
            codeDeclare.mark(label);
            if ((method2.getModifiers() & 1024) == 0) {
                for (int i15 = 0; i15 < localArr.length; i15++) {
                    localArr[i15] = codeDeclare.getParameter(i15, typeIdArr[i15]);
                }
                if (Void.TYPE.equals(returnType)) {
                    codeDeclare.invokeSuper(methodId, null, local2, localArr);
                    codeDeclare.returnVoid();
                } else {
                    invokeSuper(methodId, codeDeclare, local2, localArr, local);
                    codeDeclare.returnValue(local);
                }
            } else {
                throwAbstractMethodError(codeDeclare, method2, localNewLocal, local3);
            }
            typeId3 = typeId;
            Code codeDeclare2 = dexMaker.declare(typeId3.getMethod(typeId9, superMethodName(method2), typeIdArr), 1);
            if ((method2.getModifiers() & 1024) == 0) {
                Local<T> local4 = codeDeclare2.getThis(typeId3);
                int length2 = parameterTypes.length;
                Local<?>[] localArr3 = new Local[length2];
                for (int i16 = 0; i16 < length2; i16++) {
                    localArr3[i16] = codeDeclare2.getParameter(i16, typeIdArr[i16]);
                }
                if (Void.TYPE.equals(returnType)) {
                    codeDeclare2.invokeSuper(methodId, null, local4, localArr3);
                    codeDeclare2.returnVoid();
                } else {
                    Local<T> localNewLocal16 = codeDeclare2.newLocal(typeId9);
                    invokeSuper(methodId, codeDeclare2, local4, localArr3, localNewLocal16);
                    codeDeclare2.returnValue(localNewLocal16);
                }
            } else {
                throwAbstractMethodError(codeDeclare2, method2, codeDeclare2.newLocal(TypeId.STRING), codeDeclare2.newLocal(typeId10));
            }
            i10 = i14 + 1;
            method = methodId2;
            dexMaker2 = dexMaker;
            field = obj3;
            field2 = obj4;
            typeId7 = typeId13;
            obj2 = obj5;
            typeId6 = typeId14;
            obj = obj6;
        }
    }

    private static void generateCodeForReturnStatement(Code code, Class cls, Local local, Local local2, Local local3) {
        if (PRIMITIVE_TO_UNBOX_METHOD.containsKey(cls)) {
            code.cast(local3, local);
            code.invokeVirtual(getUnboxMethodForPrimitive(cls), local2, local3, new Local[0]);
            code.returnValue(local2);
        } else if (Void.TYPE.equals(cls)) {
            code.returnVoid();
        } else {
            code.cast(local2, local);
            code.returnValue(local2);
        }
    }

    private static <T, G extends T> void generateConstructorsAndFields(DexMaker dexMaker, TypeId<G> typeId, TypeId<T> typeId2, Class<T> cls) {
        TypeId<V> typeId3 = TypeId.get(InvocationHandler.class);
        TypeId<V> typeId4 = TypeId.get(Method[].class);
        dexMaker.declare(typeId.getField(typeId3, FIELD_NAME_HANDLER), 2, null);
        dexMaker.declare(typeId.getField(typeId4, FIELD_NAME_METHODS), 10, null);
        for (Constructor constructor : getConstructorsToOverwrite(cls)) {
            if (constructor.getModifiers() != 16) {
                TypeId<?>[] typeIdArrClassArrayToTypeArray = classArrayToTypeArray(constructor.getParameterTypes());
                Code codeDeclare = dexMaker.declare(typeId.getConstructor(typeIdArrClassArrayToTypeArray), 1);
                Local<T> local = codeDeclare.getThis(typeId);
                int length = typeIdArrClassArrayToTypeArray.length;
                Local<?>[] localArr = new Local[length];
                for (int i10 = 0; i10 < length; i10++) {
                    localArr[i10] = codeDeclare.getParameter(i10, typeIdArrClassArrayToTypeArray[i10]);
                }
                codeDeclare.invokeDirect(typeId2.getConstructor(typeIdArrClassArrayToTypeArray), null, local, localArr);
                codeDeclare.returnVoid();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> Constructor<T>[] getConstructorsToOverwrite(Class<T> cls) {
        return (Constructor<T>[]) cls.getDeclaredConstructors();
    }

    private TypeId<?>[] getInterfacesAsTypeIds() {
        TypeId<?>[] typeIdArr = new TypeId[this.interfaces.size()];
        Iterator<Class<?>> it2 = this.interfaces.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            typeIdArr[i10] = TypeId.get(it2.next());
            i10++;
        }
        return typeIdArr;
    }

    public static InvocationHandler getInvocationHandler(Object obj) {
        try {
            Field declaredField = obj.getClass().getDeclaredField(FIELD_NAME_HANDLER);
            declaredField.setAccessible(true);
            return (InvocationHandler) declaredField.get(obj);
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        } catch (NoSuchFieldException e11) {
            throw new IllegalArgumentException("Not a valid proxy instance", e11);
        }
    }

    private static <T> String getMethodNameForProxyOf(Class<T> cls, List<Class<?>> list) {
        return cls.getName().replace(o0.f49827a, e.F0) + "_" + Integer.toHexString(list.hashCode()) + "_Proxy";
    }

    private void getMethodsToProxy(Set<MethodSetEntry> set, Set<MethodSetEntry> set2, Class<?> cls) {
        for (Method method : cls.getDeclaredMethods()) {
            if ((method.getModifiers() & 16) != 0) {
                MethodSetEntry methodSetEntry = new MethodSetEntry(method);
                set2.add(methodSetEntry);
                set.remove(methodSetEntry);
            } else if ((method.getModifiers() & 8) == 0 && ((Modifier.isPublic(method.getModifiers()) || Modifier.isProtected(method.getModifiers()) || (this.sharedClassLoader && !Modifier.isPrivate(method.getModifiers()))) && (!method.getName().equals("finalize") || method.getParameterTypes().length != 0))) {
                MethodSetEntry methodSetEntry2 = new MethodSetEntry(method);
                if (!set2.contains(methodSetEntry2)) {
                    set.add(methodSetEntry2);
                }
            }
        }
        if (cls.isInterface()) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                getMethodsToProxy(set, set2, cls2);
            }
        }
    }

    private Method[] getMethodsToProxyRecursive() {
        int i10;
        Set<MethodSetEntry> hashSet = new HashSet<>();
        Set<MethodSetEntry> hashSet2 = new HashSet<>();
        for (Class<T> superclass = this.baseClass; superclass != null; superclass = superclass.getSuperclass()) {
            getMethodsToProxy(hashSet, hashSet2, superclass);
        }
        Class<T> superclass2 = this.baseClass;
        while (true) {
            i10 = 0;
            if (superclass2 == null) {
                break;
            }
            Class<?>[] interfaces = superclass2.getInterfaces();
            int length = interfaces.length;
            while (i10 < length) {
                getMethodsToProxy(hashSet, hashSet2, interfaces[i10]);
                i10++;
            }
            superclass2 = superclass2.getSuperclass();
        }
        Iterator<Class<?>> it2 = this.interfaces.iterator();
        while (it2.hasNext()) {
            getMethodsToProxy(hashSet, hashSet2, it2.next());
        }
        Method[] methodArr = new Method[hashSet.size()];
        Iterator<MethodSetEntry> it3 = hashSet.iterator();
        while (it3.hasNext()) {
            methodArr[i10] = it3.next().originalMethod;
            i10++;
        }
        return methodArr;
    }

    private static MethodId<?, ?> getUnboxMethodForPrimitive(Class<?> cls) {
        return PRIMITIVE_TO_UNBOX_METHOD.get(cls);
    }

    private static void invokeSuper(MethodId methodId, Code code, Local local, Local[] localArr, Local local2) {
        code.invokeSuper(methodId, local2, local, localArr);
    }

    public static boolean isProxyClass(Class<?> cls) {
        try {
            cls.getDeclaredField(FIELD_NAME_HANDLER);
            return true;
        } catch (NoSuchFieldException unused) {
            return false;
        }
    }

    private static RuntimeException launderCause(InvocationTargetException invocationTargetException) {
        Throwable cause = invocationTargetException.getCause();
        if (cause instanceof Error) {
            throw ((Error) cause);
        }
        if (cause instanceof RuntimeException) {
            throw ((RuntimeException) cause);
        }
        throw new UndeclaredThrowableException(cause);
    }

    private Class<? extends T> loadClass(ClassLoader classLoader, String str) throws ClassNotFoundException {
        return (Class<? extends T>) classLoader.loadClass(str);
    }

    public static void setInvocationHandler(Object obj, InvocationHandler invocationHandler) {
        try {
            Field declaredField = obj.getClass().getDeclaredField(FIELD_NAME_HANDLER);
            declaredField.setAccessible(true);
            declaredField.set(obj, invocationHandler);
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        } catch (NoSuchFieldException e11) {
            throw new IllegalArgumentException("Not a valid proxy instance", e11);
        }
    }

    private static void setMethodsStaticField(Class<?> cls, Method[] methodArr) {
        try {
            Field declaredField = cls.getDeclaredField(FIELD_NAME_METHODS);
            declaredField.setAccessible(true);
            declaredField.set(null, methodArr);
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        } catch (NoSuchFieldException e11) {
            throw new AssertionError(e11);
        }
    }

    private static String superMethodName(Method method) {
        return "super$" + method.getName() + "$" + method.getReturnType().getName().replace(d.f90941a, '_').replace('[', '_').replace(';', '_');
    }

    private static void throwAbstractMethodError(Code code, Method method, Local<String> local, Local<AbstractMethodError> local2) {
        MethodId<T, Void> constructor = TypeId.get(AbstractMethodError.class).getConstructor(TypeId.STRING);
        code.loadConstant(local, "'" + method + "' cannot be called");
        code.newInstance(local2, constructor, local);
        code.throwValue(local2);
    }

    public T build() throws IOException {
        check(this.handler != null, "handler == null");
        check(this.constructorArgTypes.length == this.constructorArgValues.length, "constructorArgValues.length != constructorArgTypes.length");
        try {
            try {
                T tNewInstance = buildProxyClass().getConstructor(this.constructorArgTypes).newInstance(this.constructorArgValues);
                setInvocationHandler(tNewInstance, this.handler);
                return tNewInstance;
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InstantiationException e11) {
                throw new AssertionError(e11);
            } catch (InvocationTargetException e12) {
                throw launderCause(e12);
            }
        } catch (NoSuchMethodException unused) {
            throw new IllegalArgumentException("No constructor for " + this.baseClass.getName() + " with parameter types " + Arrays.toString(this.constructorArgTypes));
        }
    }

    public Class<? extends T> buildProxyClass() throws IOException {
        ClassLoader classLoader = this.sharedClassLoader ? this.baseClass.getClassLoader() : this.parentClassLoader;
        ProxiedClass<?> proxiedClass = new ProxiedClass<>(this.baseClass, this.interfaces, classLoader, this.sharedClassLoader);
        Map<ProxiedClass<?>, Class<?>> map = generatedProxyClasses;
        Class<? extends T> cls = (Class) map.get(proxiedClass);
        if (cls != null) {
            return cls;
        }
        DexMaker dexMaker = new DexMaker();
        String methodNameForProxyOf = getMethodNameForProxyOf(this.baseClass, this.interfaces);
        TypeId<?> typeId = TypeId.get("L" + methodNameForProxyOf + ";");
        TypeId<?> typeId2 = TypeId.get(this.baseClass);
        generateConstructorsAndFields(dexMaker, typeId, typeId2, this.baseClass);
        Method[] methodsToProxyRecursive = this.methods;
        if (methodsToProxyRecursive == null) {
            methodsToProxyRecursive = getMethodsToProxyRecursive();
        }
        Arrays.sort(methodsToProxyRecursive, new Comparator<Method>() { // from class: com.android.dx.stock.ProxyBuilder.1
            @Override // java.util.Comparator
            public int compare(Method method, Method method2) {
                return (method.getDeclaringClass() + method.getName() + Arrays.toString(method.getParameterTypes()) + method.getReturnType()).compareTo(method2.getDeclaringClass() + method2.getName() + Arrays.toString(method2.getParameterTypes()) + method2.getReturnType());
            }
        });
        generateCodeForAllMethods(dexMaker, typeId, methodsToProxyRecursive, typeId2);
        dexMaker.declare(typeId, methodNameForProxyOf + ".generated", 1, typeId2, getInterfacesAsTypeIds());
        if (this.sharedClassLoader) {
            dexMaker.setSharedClassLoader(classLoader);
        }
        if (this.markTrusted) {
            dexMaker.markAsTrusted();
        }
        try {
            Class<? extends T> clsLoadClass = loadClass(this.sharedClassLoader ? dexMaker.generateAndLoad(null, this.dexCache) : dexMaker.generateAndLoad(this.parentClassLoader, this.dexCache), methodNameForProxyOf);
            setMethodsStaticField(clsLoadClass, methodsToProxyRecursive);
            map.put(proxiedClass, clsLoadClass);
            return clsLoadClass;
        } catch (ClassNotFoundException e10) {
            throw new AssertionError(e10);
        } catch (IllegalAccessError e11) {
            throw new UnsupportedOperationException("cannot proxy inaccessible class " + this.baseClass, e11);
        }
    }

    public ProxyBuilder<T> constructorArgTypes(Class<?>... clsArr) {
        this.constructorArgTypes = clsArr;
        return this;
    }

    public ProxyBuilder<T> constructorArgValues(Object... objArr) {
        this.constructorArgValues = objArr;
        return this;
    }

    public ProxyBuilder<T> dexCache(File file) {
        File file2 = new File(file, "v" + Integer.toString(1));
        this.dexCache = file2;
        file2.mkdir();
        return this;
    }

    public ProxyBuilder<T> handler(InvocationHandler invocationHandler) {
        this.handler = invocationHandler;
        return this;
    }

    public ProxyBuilder<T> implementing(Class<?>... clsArr) {
        List<Class<?>> list = this.interfaces;
        for (Class<?> cls : clsArr) {
            if (!cls.isInterface()) {
                throw new IllegalArgumentException("Not an interface: " + cls.getName());
            }
            if (!list.contains(cls)) {
                list.add(cls);
            }
        }
        return this;
    }

    public ProxyBuilder<T> markTrusted() {
        this.markTrusted = true;
        return this;
    }

    public ProxyBuilder<T> onlyMethods(Method[] methodArr) {
        this.methods = methodArr;
        return this;
    }

    public ProxyBuilder<T> parentClassLoader(ClassLoader classLoader) {
        this.parentClassLoader = classLoader;
        return this;
    }

    public ProxyBuilder<T> withSharedClassLoader() {
        this.sharedClassLoader = true;
        return this;
    }
}

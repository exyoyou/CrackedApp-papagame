package com.swift.sandhook.wrapper;

import android.text.TextUtils;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.annotation.HookClass;
import com.swift.sandhook.annotation.HookMethod;
import com.swift.sandhook.annotation.HookMethodBackup;
import com.swift.sandhook.annotation.HookReflectClass;
import com.swift.sandhook.annotation.MethodParams;
import com.swift.sandhook.annotation.MethodReflectParams;
import com.swift.sandhook.annotation.Param;
import com.swift.sandhook.annotation.SkipParamCheck;
import com.swift.sandhook.annotation.ThisObject;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class HookWrapper {
    public static void addHookClass(Class<?>... clsArr) throws HookErrorException {
        addHookClass((ClassLoader) null, clsArr);
    }

    public static void checkSignature(Member member, Method method, Class[] clsArr) throws HookErrorException {
        Class<?> returnType;
        int i10;
        if (!Modifier.isStatic(method.getModifiers())) {
            throw new HookErrorException("hook method must static! - " + method.getName());
        }
        if (member instanceof Constructor) {
            if (!method.getReturnType().equals(Void.TYPE)) {
                throw new HookErrorException("error return type! - " + method.getName());
            }
        } else if ((member instanceof Method) && (returnType = ((Method) member).getReturnType()) != method.getReturnType() && !returnType.isAssignableFrom(returnType)) {
            throw new HookErrorException("error return type! - " + method.getName());
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes == null) {
            parameterTypes = new Class[0];
        }
        if (clsArr == null) {
            clsArr = new Class[0];
        }
        if (clsArr.length == 0 && parameterTypes.length == 0) {
            return;
        }
        if (Modifier.isStatic(member.getModifiers())) {
            if (parameterTypes.length != clsArr.length) {
                throw new HookErrorException("hook method pars must match the origin method! " + method.getName());
            }
            i10 = 0;
        } else {
            if (parameterTypes.length == 0) {
                throw new HookErrorException("first par must be this! " + method.getName());
            }
            if (parameterTypes[0] != member.getDeclaringClass() && !parameterTypes[0].isAssignableFrom(member.getDeclaringClass())) {
                throw new HookErrorException("first par must be this! " + method.getName());
            }
            i10 = 1;
            if (parameterTypes.length != clsArr.length + 1) {
                throw new HookErrorException("hook method pars must match the origin method! " + method.getName());
            }
        }
        for (int i11 = 0; i11 < clsArr.length; i11++) {
            Class<?> cls = parameterTypes[i11 + i10];
            Class<?> cls2 = clsArr[i11];
            if (cls != cls2 && !cls.isAssignableFrom(cls2)) {
                throw new HookErrorException("hook method pars must match the origin method! " + method.getName());
            }
        }
    }

    private static Class classNameToClass(String str, ClassLoader classLoader) throws ClassNotFoundException {
        str.hashCode();
        switch (str) {
            case "double":
                return Double.TYPE;
            case "int":
                return Integer.TYPE;
            case "byte":
                return Byte.TYPE;
            case "char":
                return Character.TYPE;
            case "long":
                return Long.TYPE;
            case "boolean":
                return Boolean.TYPE;
            case "float":
                return Float.TYPE;
            case "short":
                return Short.TYPE;
            default:
                return classLoader == null ? Class.forName(str) : Class.forName(str, true, classLoader);
        }
    }

    private static void fillBackupMethod(ClassLoader classLoader, Class<?> cls, Map<Member, HookEntity> map) {
        Field[] declaredFields;
        HookMethodBackup hookMethodBackup;
        try {
            declaredFields = cls.getDeclaredFields();
        } catch (Throwable unused) {
            declaredFields = null;
        }
        if (declaredFields == null || declaredFields.length == 0 || map.isEmpty()) {
            return;
        }
        for (Field field : declaredFields) {
            if (Modifier.isStatic(field.getModifiers()) && (hookMethodBackup = (HookMethodBackup) field.getAnnotation(HookMethodBackup.class)) != null) {
                for (HookEntity hookEntity : map.values()) {
                    if (TextUtils.equals(hookEntity.isCtor() ? "<init>" : hookEntity.target.getName(), hookMethodBackup.value()) && samePars(classLoader, field, hookEntity.pars)) {
                        field.setAccessible(true);
                        if (hookEntity.backup == null) {
                            hookEntity.backup = StubMethodsFactory.getStubMethod();
                            hookEntity.hookIsStub = true;
                            hookEntity.resolveDexCache = false;
                        }
                        if (hookEntity.backup != null) {
                            try {
                                if (field.getType() == Method.class) {
                                    field.set(null, hookEntity.backup);
                                } else if (field.getType() == HookEntity.class) {
                                    field.set(null, hookEntity);
                                }
                            } catch (IllegalAccessException e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                }
            }
        }
    }

    private static Map<Member, HookEntity> getHookMethods(ClassLoader classLoader, Class cls, Class<?> cls2) throws HookErrorException {
        Method[] declaredMethods;
        HashMap map = new HashMap();
        try {
            declaredMethods = cls2.getDeclaredMethods();
        } catch (Throwable unused) {
            declaredMethods = null;
        }
        if (declaredMethods == null || declaredMethods.length == 0) {
            throw new HookErrorException("error hook wrapper class :" + cls.getName());
        }
        for (Method method : declaredMethods) {
            HookMethod hookMethod = (HookMethod) method.getAnnotation(HookMethod.class);
            HookMethodBackup hookMethodBackup = (HookMethodBackup) method.getAnnotation(HookMethodBackup.class);
            if (hookMethod != null) {
                String strValue = hookMethod.value();
                Class<?>[] methodPars = parseMethodPars(classLoader, method);
                try {
                    Member constructor = strValue.equals("<init>") ? cls.getConstructor(methodPars) : cls.getDeclaredMethod(strValue, methodPars);
                    if (!method.isAnnotationPresent(SkipParamCheck.class)) {
                        checkSignature(constructor, method, methodPars);
                    }
                    HookEntity hookEntity = (HookEntity) map.get(constructor);
                    if (hookEntity == null) {
                        hookEntity = new HookEntity(constructor);
                        map.put(constructor, hookEntity);
                    }
                    hookEntity.pars = methodPars;
                    hookEntity.hook = method;
                } catch (NoSuchMethodException e10) {
                    throw new HookErrorException("can not find target method: " + strValue, e10);
                }
            } else if (hookMethodBackup != null) {
                String strValue2 = hookMethodBackup.value();
                Class<?>[] methodPars2 = parseMethodPars(classLoader, method);
                try {
                    Member constructor2 = strValue2.equals("<init>") ? cls.getConstructor(methodPars2) : cls.getDeclaredMethod(strValue2, methodPars2);
                    if (!method.isAnnotationPresent(SkipParamCheck.class)) {
                        checkSignature(constructor2, method, methodPars2);
                    }
                    HookEntity hookEntity2 = (HookEntity) map.get(constructor2);
                    if (hookEntity2 == null) {
                        hookEntity2 = new HookEntity(constructor2);
                        map.put(constructor2, hookEntity2);
                    }
                    hookEntity2.pars = methodPars2;
                    hookEntity2.backup = method;
                } catch (NoSuchMethodException e11) {
                    throw new HookErrorException("can not find target method: " + strValue2, e11);
                }
            } else {
                continue;
            }
        }
        return map;
    }

    private static int getParsCount(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes == null) {
            return 0;
        }
        return parameterTypes.length;
    }

    private static Class getRealParType(ClassLoader classLoader, Class cls, Annotation[] annotationArr, boolean z10) throws Exception {
        if (annotationArr != null && annotationArr.length != 0) {
            for (Annotation annotation : annotationArr) {
                if (annotation instanceof Param) {
                    Param param = (Param) annotation;
                    if (TextUtils.isEmpty(param.value())) {
                        return cls;
                    }
                    Class<?> clsClassNameToClass = classNameToClass(param.value(), classLoader);
                    if (z10 || clsClassNameToClass.equals(cls) || cls.isAssignableFrom(clsClassNameToClass)) {
                        return clsClassNameToClass;
                    }
                    throw new ClassCastException("hook method par cast error!");
                }
            }
        }
        return cls;
    }

    private static Class getTargetHookClass(ClassLoader classLoader, Class<?> cls) {
        HookClass hookClass = (HookClass) cls.getAnnotation(HookClass.class);
        HookReflectClass hookReflectClass = (HookReflectClass) cls.getAnnotation(HookReflectClass.class);
        if (hookClass != null) {
            return hookClass.value();
        }
        if (hookReflectClass != null) {
            try {
                return classLoader == null ? Class.forName(hookReflectClass.value()) : Class.forName(hookReflectClass.value(), true, classLoader);
            } catch (ClassNotFoundException unused) {
            }
        }
        return null;
    }

    private static boolean hasThisObject(Method method) {
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        if (parameterAnnotations == null || parameterAnnotations.length == 0) {
            return false;
        }
        return isThisObject(parameterAnnotations[0]);
    }

    private static boolean isThisObject(Annotation[] annotationArr) {
        if (annotationArr != null && annotationArr.length != 0) {
            for (Annotation annotation : annotationArr) {
                if (annotation instanceof ThisObject) {
                    return true;
                }
            }
        }
        return false;
    }

    private static Class[] parseMethodPars(ClassLoader classLoader, Method method) throws HookErrorException {
        MethodParams methodParams = (MethodParams) method.getAnnotation(MethodParams.class);
        MethodReflectParams methodReflectParams = (MethodReflectParams) method.getAnnotation(MethodReflectParams.class);
        if (methodParams != null) {
            return methodParams.value();
        }
        if (methodReflectParams == null) {
            if (getParsCount(method) <= 0) {
                return null;
            }
            if (getParsCount(method) != 1) {
                return parseMethodParsNew(classLoader, method);
            }
            if (hasThisObject(method)) {
                return parseMethodParsNew(classLoader, method);
            }
            return null;
        }
        if (methodReflectParams.value().length == 0) {
            return null;
        }
        Class[] clsArr = new Class[methodReflectParams.value().length];
        for (int i10 = 0; i10 < methodReflectParams.value().length; i10++) {
            try {
                clsArr[i10] = classNameToClass(methodReflectParams.value()[i10], classLoader);
            } catch (ClassNotFoundException e10) {
                throw new HookErrorException("hook method pars error: " + method.getName(), e10);
            }
        }
        return clsArr;
    }

    private static Class[] parseMethodParsNew(ClassLoader classLoader, Method method) throws HookErrorException {
        Class<?>[] parameterTypes = method.getParameterTypes();
        Class[] clsArr = null;
        if (parameterTypes != null && parameterTypes.length != 0) {
            Annotation[][] parameterAnnotations = method.getParameterAnnotations();
            int i10 = 0;
            for (int i11 = 0; i11 < parameterAnnotations.length; i11++) {
                Class<?> cls = parameterTypes[i11];
                Annotation[] annotationArr = parameterAnnotations[i11];
                if (i11 != 0) {
                    try {
                        clsArr[i10] = getRealParType(classLoader, cls, annotationArr, method.isAnnotationPresent(SkipParamCheck.class));
                        i10++;
                    } catch (Exception e10) {
                        throw new HookErrorException("hook method <" + method.getName() + "> parser pars error", e10);
                    }
                } else if (isThisObject(annotationArr)) {
                    clsArr = new Class[parameterAnnotations.length - 1];
                } else {
                    clsArr = new Class[parameterAnnotations.length];
                    clsArr[i10] = getRealParType(classLoader, cls, annotationArr, method.isAnnotationPresent(SkipParamCheck.class));
                    i10++;
                }
            }
        }
        return clsArr;
    }

    private static boolean samePars(ClassLoader classLoader, Field field, Class[] clsArr) {
        try {
            Class[] methodPars = parseMethodPars(classLoader, field);
            if (methodPars == null && field.isAnnotationPresent(SkipParamCheck.class)) {
                return true;
            }
            if (clsArr == null) {
                clsArr = new Class[0];
            }
            if (methodPars == null) {
                methodPars = new Class[0];
            }
            if (clsArr.length != methodPars.length) {
                return false;
            }
            for (int i10 = 0; i10 < clsArr.length; i10++) {
                if (clsArr[i10] != methodPars[i10]) {
                    return false;
                }
            }
            return true;
        } catch (HookErrorException unused) {
            return false;
        }
    }

    public static void addHookClass(ClassLoader classLoader, Class<?>... clsArr) throws HookErrorException {
        for (Class<?> cls : clsArr) {
            addHookClass(classLoader, cls);
        }
    }

    public static void addHookClass(ClassLoader classLoader, Class<?> cls) throws HookErrorException {
        Class targetHookClass = getTargetHookClass(classLoader, cls);
        if (targetHookClass != null) {
            Map<Member, HookEntity> hookMethods = getHookMethods(classLoader, targetHookClass, cls);
            try {
                fillBackupMethod(classLoader, cls, hookMethods);
                Iterator<HookEntity> it2 = hookMethods.values().iterator();
                while (it2.hasNext()) {
                    SandHook.hook(it2.next());
                }
                return;
            } catch (Throwable th) {
                throw new HookErrorException("fillBackupMethod error!", th);
            }
        }
        throw new HookErrorException("error hook wrapper class :" + cls.getName());
    }

    public static class HookEntity {
        public Method backup;
        public boolean backupIsStub;
        public Method hook;
        public boolean hookIsStub;
        public int hookMode;
        public boolean initClass;
        public Class[] pars;
        public boolean resolveDexCache;
        public Member target;

        public HookEntity(Member member) {
            this.hookIsStub = false;
            this.resolveDexCache = true;
            this.backupIsStub = true;
            this.initClass = true;
            this.target = member;
        }

        public Object callOrigin(Object obj, Object... objArr) throws Throwable {
            return SandHook.callOriginMethod(this.backupIsStub, this.target, this.backup, obj, objArr);
        }

        public boolean isCtor() {
            return this.target instanceof Constructor;
        }

        public HookEntity(Member member, Method method, Method method2) {
            this.hookIsStub = false;
            this.resolveDexCache = true;
            this.backupIsStub = true;
            this.initClass = true;
            this.target = member;
            this.hook = method;
            this.backup = method2;
        }

        public HookEntity(Member member, Method method, Method method2, boolean z10) {
            this.hookIsStub = false;
            this.backupIsStub = true;
            this.initClass = true;
            this.target = member;
            this.hook = method;
            this.backup = method2;
            this.resolveDexCache = z10;
        }
    }

    private static Class[] parseMethodPars(ClassLoader classLoader, Field field) throws HookErrorException {
        MethodParams methodParams = (MethodParams) field.getAnnotation(MethodParams.class);
        MethodReflectParams methodReflectParams = (MethodReflectParams) field.getAnnotation(MethodReflectParams.class);
        if (methodParams != null) {
            return methodParams.value();
        }
        Class[] clsArr = null;
        if (methodReflectParams != null) {
            if (methodReflectParams.value().length == 0) {
                return null;
            }
            clsArr = new Class[methodReflectParams.value().length];
            for (int i10 = 0; i10 < methodReflectParams.value().length; i10++) {
                try {
                    clsArr[i10] = classNameToClass(methodReflectParams.value()[i10], classLoader);
                } catch (ClassNotFoundException e10) {
                    throw new HookErrorException("hook method pars error: " + field.getName(), e10);
                }
            }
        }
        return clsArr;
    }
}

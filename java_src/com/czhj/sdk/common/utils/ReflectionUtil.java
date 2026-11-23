package com.czhj.sdk.common.utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class ReflectionUtil {

    public static class MethodBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f25663a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f25664b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Class<?> f25665c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<Class<?>> f25666d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List<Object> f25667e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f25668f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f25669g;

        public MethodBuilder(Class<?> cls, String str) {
            Preconditions.NoThrow.checkNotNull(str);
            this.f25669g = true;
            this.f25663a = null;
            this.f25664b = str;
            this.f25666d = new ArrayList();
            this.f25667e = new ArrayList();
            this.f25665c = cls;
        }

        public <T> MethodBuilder addParam(Class<T> cls, T t10) {
            Preconditions.NoThrow.checkNotNull(cls);
            this.f25666d.add(cls);
            this.f25667e.add(t10);
            return this;
        }

        public Object execute() throws Exception {
            Method declaredMethodWithTraversal = ReflectionUtil.getDeclaredMethodWithTraversal(this.f25665c, this.f25664b, (Class[]) this.f25666d.toArray(new Class[this.f25666d.size()]));
            if (this.f25668f) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            return declaredMethodWithTraversal.invoke(this.f25669g ? null : this.f25663a, this.f25667e.toArray());
        }

        public MethodBuilder(Object obj, String str) {
            Preconditions.NoThrow.checkNotNull(str);
            this.f25663a = obj;
            this.f25664b = str;
            this.f25666d = new ArrayList();
            this.f25667e = new ArrayList();
            this.f25665c = obj == null ? null : obj.getClass();
        }
    }

    public static Method getDeclaredMethodWithTraversal(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException {
        Preconditions.NoThrow.checkNotNull(str);
        Preconditions.NoThrow.checkNotNull(clsArr);
        while (cls != null) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (Throwable unused) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }

    public static List<Method> getMethodWithTraversal(Class<?> cls) {
        Preconditions.NoThrow.checkNotNull(cls);
        try {
            return Arrays.asList(cls.getMethods());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Map<String, String> getPrivateFields(Class<?> cls) {
        Field[] declaredFields = cls.getDeclaredFields();
        HashMap map = new HashMap(declaredFields.length);
        for (Field field : declaredFields) {
            map.put(field.getName(), field.getType().getName());
        }
        return map;
    }
}

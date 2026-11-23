package com.cloudplay.messagesdk.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes9.dex */
public abstract class i {

    static class a extends i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Method f23803a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f23804b;

        a(Method method, Object obj) {
            this.f23803a = method;
            this.f23804b = obj;
        }

        @Override // com.cloudplay.messagesdk.gson.internal.i
        public <T> T a(Class<T> cls) throws Exception {
            i.b(cls);
            return (T) this.f23803a.invoke(this.f23804b, cls);
        }
    }

    static class b extends i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Method f23805a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f23806b;

        b(Method method, int i10) {
            this.f23805a = method;
            this.f23806b = i10;
        }

        @Override // com.cloudplay.messagesdk.gson.internal.i
        public <T> T a(Class<T> cls) throws Exception {
            i.b(cls);
            return (T) this.f23805a.invoke(null, cls, Integer.valueOf(this.f23806b));
        }
    }

    static class c extends i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Method f23807a;

        c(Method method) {
            this.f23807a = method;
        }

        @Override // com.cloudplay.messagesdk.gson.internal.i
        public <T> T a(Class<T> cls) throws Exception {
            i.b(cls);
            return (T) this.f23807a.invoke(null, cls, Object.class);
        }
    }

    static class d extends i {
        d() {
        }

        @Override // com.cloudplay.messagesdk.gson.internal.i
        public <T> T a(Class<T> cls) {
            throw new UnsupportedOperationException("Cannot allocate " + cls);
        }
    }

    public static i a() {
        try {
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new a(Unsafe.class.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    return new b(declaredMethod2, iIntValue);
                } catch (Exception unused2) {
                    return new d();
                }
            } catch (Exception unused3) {
                Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod3.setAccessible(true);
                return new c(declaredMethod3);
            }
        }
    }

    static void b(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + cls.getName());
        }
        if (Modifier.isAbstract(modifiers)) {
            throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + cls.getName());
        }
    }

    public abstract <T> T a(Class<T> cls) throws Exception;
}

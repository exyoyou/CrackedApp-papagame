package com.xinzhu.overmind.utils;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes8.dex */
public class w {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f90137f = "Reflector";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Class<?> f90138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Object f90139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Constructor f90140c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Field f90141d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Method f90142e;

    public static class a extends w {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        protected Throwable f90143g;

        protected a() {
        }

        private static a A(Class<?> cls, Throwable th) {
            a aVar = new a();
            aVar.f90138a = cls;
            aVar.f90143g = th;
            return aVar;
        }

        public static a B(String str) {
            return D(str, true, a.class.getClassLoader());
        }

        public static a C(String str, boolean z10) {
            return D(str, z10, a.class.getClassLoader());
        }

        public static a D(String str, boolean z10, ClassLoader classLoader) {
            Class<?> cls = null;
            try {
                Class<?> cls2 = Class.forName(str, z10, classLoader);
                try {
                    return A(cls2, null);
                } catch (Throwable th) {
                    th = th;
                    cls = cls2;
                    return A(cls, th);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public static a J(Object obj) {
            return obj == null ? z(null) : z(obj.getClass()).a(obj);
        }

        public static a z(Class<?> cls) {
            return A(cls, cls == null ? new Exception("Type was null!") : null);
        }

        @Override // com.xinzhu.overmind.utils.w
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
        public a q(Object obj) {
            if (G()) {
                return this;
            }
            try {
                this.f90143g = null;
                super.q(obj);
            } catch (Throwable th) {
                this.f90143g = th;
            }
            return this;
        }

        @Override // com.xinzhu.overmind.utils.w
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public a r(Object obj, Object obj2) {
            if (G()) {
                return this;
            }
            try {
                this.f90143g = null;
                super.r(obj, obj2);
            } catch (Throwable th) {
                this.f90143g = th;
            }
            return this;
        }

        protected boolean G() {
            return H() || this.f90143g != null;
        }

        protected boolean H() {
            return this.f90138a == null;
        }

        @Override // com.xinzhu.overmind.utils.w
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public a s() {
            super.s();
            return this;
        }

        @Override // com.xinzhu.overmind.utils.w
        public <R> R b(Object obj, Object... objArr) {
            if (G()) {
                return null;
            }
            try {
                this.f90143g = null;
                return (R) super.b(obj, objArr);
            } catch (Throwable th) {
                this.f90143g = th;
                return null;
            }
        }

        @Override // com.xinzhu.overmind.utils.w
        public <R> R call(Object... objArr) {
            if (G()) {
                return null;
            }
            try {
                this.f90143g = null;
                return (R) super.call(objArr);
            } catch (Throwable th) {
                this.f90143g = th;
                return null;
            }
        }

        @Override // com.xinzhu.overmind.utils.w
        public <R> R i() {
            if (G()) {
                return null;
            }
            try {
                this.f90143g = null;
                return (R) super.i();
            } catch (Throwable th) {
                this.f90143g = th;
                return null;
            }
        }

        @Override // com.xinzhu.overmind.utils.w
        public <R> R j(Object obj) {
            if (G()) {
                return null;
            }
            try {
                this.f90143g = null;
                return (R) super.j(obj);
            } catch (Throwable th) {
                this.f90143g = th;
                return null;
            }
        }

        @Override // com.xinzhu.overmind.utils.w
        public <R> R l(Object... objArr) {
            if (G()) {
                return null;
            }
            try {
                this.f90143g = null;
                return (R) super.l(objArr);
            } catch (Throwable th) {
                this.f90143g = th;
                return null;
            }
        }

        @Override // com.xinzhu.overmind.utils.w
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public a a(Object obj) {
            if (H()) {
                return this;
            }
            try {
                this.f90143g = null;
                super.a(obj);
            } catch (Throwable th) {
                this.f90143g = th;
            }
            return this;
        }

        @Override // com.xinzhu.overmind.utils.w
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public a e(Class<?>... clsArr) {
            if (H()) {
                return this;
            }
            try {
                this.f90143g = null;
                super.e(clsArr);
            } catch (Throwable th) {
                this.f90143g = th;
            }
            return this;
        }

        @Override // com.xinzhu.overmind.utils.w
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        public a f(String str) {
            if (H()) {
                return this;
            }
            try {
                this.f90143g = null;
                super.f(str);
            } catch (Throwable th) {
                this.f90143g = th;
            }
            return this;
        }

        public Throwable x() {
            return this.f90143g;
        }

        @Override // com.xinzhu.overmind.utils.w
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public a k(String str, Class<?>... clsArr) {
            if (H()) {
                return this;
            }
            try {
                this.f90143g = null;
                super.k(str, clsArr);
            } catch (Throwable th) {
                this.f90143g = th;
            }
            return this;
        }
    }

    protected w() {
    }

    public static w m(Class<?> cls) {
        w wVar = new w();
        wVar.f90138a = cls;
        return wVar;
    }

    public static w n(String str) throws Exception {
        return p(str, true, w.class.getClassLoader());
    }

    public static w o(String str, boolean z10) throws Exception {
        return p(str, z10, w.class.getClassLoader());
    }

    public static w p(String str, boolean z10, ClassLoader classLoader) throws Exception {
        try {
            return m(Class.forName(str, z10, classLoader));
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public static w t(Object obj) throws Exception {
        return m(obj.getClass()).a(obj);
    }

    public w a(Object obj) throws Exception {
        this.f90139b = d(obj);
        return this;
    }

    public <R> R b(Object obj, Object... objArr) throws Exception {
        c(obj, this.f90142e, "Method");
        try {
            return (R) this.f90142e.invoke(obj, objArr);
        } catch (InvocationTargetException e10) {
            throw new Exception("Oops!", e10.getTargetException());
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    protected void c(Object obj, Member member, String str) throws Exception {
        if (member == null) {
            throw new Exception(str + " was null!");
        }
        if (obj == null && !Modifier.isStatic(member.getModifiers())) {
            throw new Exception("Need a caller!");
        }
        d(obj);
    }

    public <R> R call(Object... objArr) throws Exception {
        return (R) b(this.f90139b, objArr);
    }

    protected Object d(Object obj) throws Exception {
        if (obj == null || this.f90138a.isInstance(obj)) {
            return obj;
        }
        throw new Exception("Caller [" + obj + "] is not a instance of type [" + this.f90138a + "]!");
    }

    public w e(Class<?>... clsArr) throws Exception {
        try {
            Constructor<?> declaredConstructor = this.f90138a.getDeclaredConstructor(clsArr);
            this.f90140c = declaredConstructor;
            declaredConstructor.setAccessible(true);
            this.f90141d = null;
            this.f90142e = null;
            return this;
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public w f(String str) throws Exception {
        try {
            Field fieldG = g(str);
            this.f90141d = fieldG;
            fieldG.setAccessible(true);
            this.f90140c = null;
            this.f90142e = null;
            return this;
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    protected Field g(String str) throws NoSuchFieldException {
        try {
            return this.f90138a.getField(str);
        } catch (NoSuchFieldException e10) {
            for (Class<?> superclass = this.f90138a; superclass != null; superclass = superclass.getSuperclass()) {
                try {
                    return superclass.getDeclaredField(str);
                } catch (NoSuchFieldException unused) {
                }
            }
            throw e10;
        }
    }

    protected Method h(String str, Class<?>... clsArr) throws NoSuchMethodException {
        try {
            return this.f90138a.getMethod(str, clsArr);
        } catch (NoSuchMethodException e10) {
            for (Class<?> superclass = this.f90138a; superclass != null; superclass = superclass.getSuperclass()) {
                try {
                    return superclass.getDeclaredMethod(str, clsArr);
                } catch (NoSuchMethodException unused) {
                }
            }
            throw e10;
        }
    }

    public <R> R i() throws Exception {
        return (R) j(this.f90139b);
    }

    public <R> R j(Object obj) throws Exception {
        c(obj, this.f90141d, "Field");
        try {
            return (R) this.f90141d.get(obj);
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public w k(String str, Class<?>... clsArr) throws Exception {
        try {
            Method methodH = h(str, clsArr);
            this.f90142e = methodH;
            methodH.setAccessible(true);
            this.f90140c = null;
            this.f90141d = null;
            return this;
        } catch (NoSuchMethodException e10) {
            throw new Exception("Oops!", e10);
        }
    }

    public <R> R l(Object... objArr) throws Exception {
        Constructor constructor = this.f90140c;
        if (constructor == null) {
            throw new Exception("Constructor was null!");
        }
        try {
            return (R) constructor.newInstance(objArr);
        } catch (InvocationTargetException e10) {
            throw new Exception("Oops!", e10.getTargetException());
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public w q(Object obj) throws Exception {
        return r(this.f90139b, obj);
    }

    public w r(Object obj, Object obj2) throws Exception {
        c(obj, this.f90141d, "Field");
        try {
            this.f90141d.set(obj, obj2);
            return this;
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public w s() {
        this.f90139b = null;
        return this;
    }
}

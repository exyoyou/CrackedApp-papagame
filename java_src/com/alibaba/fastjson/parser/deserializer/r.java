package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final com.alibaba.fastjson.util.e f6570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Class<?> f6571b;

    public r(Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        this.f6571b = cls;
        this.f6570a = eVar;
    }

    public int a() {
        return 0;
    }

    public Field b() {
        return this.f6570a.i();
    }

    public Class<?> c() {
        return this.f6570a.j();
    }

    public com.alibaba.fastjson.util.e d() {
        return this.f6570a;
    }

    public Type e() {
        return this.f6570a.k();
    }

    public Method f() {
        return this.f6570a.p();
    }

    public abstract void g(com.alibaba.fastjson.parser.c cVar, Object obj, Type type, Map<String, Object> map);

    public void h(Object obj, int i10) {
        j(obj, Integer.valueOf(i10));
    }

    public void i(Object obj, long j10) {
        j(obj, Long.valueOf(j10));
    }

    public void j(Object obj, Object obj2) {
        Method methodP = this.f6570a.p();
        if (methodP == null) {
            Field fieldI = this.f6570a.i();
            if (fieldI != null) {
                try {
                    fieldI.set(obj, obj2);
                    return;
                } catch (Exception e10) {
                    throw new JSONException("set property error, " + this.f6570a.getName(), e10);
                }
            }
            return;
        }
        try {
            if (!this.f6570a.r()) {
                methodP.invoke(obj, obj2);
                return;
            }
            if (this.f6570a.j() == AtomicInteger.class) {
                AtomicInteger atomicInteger = (AtomicInteger) methodP.invoke(obj, new Object[0]);
                if (atomicInteger != null) {
                    atomicInteger.set(((AtomicInteger) obj2).get());
                    return;
                }
                return;
            }
            if (this.f6570a.j() == AtomicLong.class) {
                AtomicLong atomicLong = (AtomicLong) methodP.invoke(obj, new Object[0]);
                if (atomicLong != null) {
                    atomicLong.set(((AtomicLong) obj2).get());
                    return;
                }
                return;
            }
            if (this.f6570a.j() == AtomicBoolean.class) {
                AtomicBoolean atomicBoolean = (AtomicBoolean) methodP.invoke(obj, new Object[0]);
                if (atomicBoolean != null) {
                    atomicBoolean.set(((AtomicBoolean) obj2).get());
                    return;
                }
                return;
            }
            if (Map.class.isAssignableFrom(methodP.getReturnType())) {
                Map map = (Map) methodP.invoke(obj, new Object[0]);
                if (map != null) {
                    map.putAll((Map) obj2);
                    return;
                }
                return;
            }
            Collection collection = (Collection) methodP.invoke(obj, new Object[0]);
            if (collection != null) {
                collection.addAll((Collection) obj2);
            }
        } catch (Exception e11) {
            throw new JSONException("set property error, " + this.f6570a.getName(), e11);
        }
    }

    public void k(Object obj, String str) {
        j(obj, str);
    }

    public void l(Object obj, boolean z10) {
        j(obj, Boolean.valueOf(z10));
    }
}

package com.czhj.wire;

import com.czhj.wire.WireEnum;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes9.dex */
final class RuntimeEnumAdapter<E extends WireEnum> extends EnumAdapter<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<E> f25892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Method f25893b;

    RuntimeEnumAdapter(Class<E> cls) {
        super(cls);
        this.f25892a = cls;
    }

    private Method a() {
        Method method = this.f25893b;
        if (method != null) {
            return method;
        }
        try {
            Method method2 = this.f25892a.getMethod("fromValue", Integer.TYPE);
            this.f25893b = method2;
            return method2;
        } catch (NoSuchMethodException e10) {
            throw new AssertionError(e10);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof RuntimeEnumAdapter) && ((RuntimeEnumAdapter) obj).f25892a == this.f25892a;
    }

    @Override // com.czhj.wire.EnumAdapter
    protected E fromValue(int i10) {
        try {
            return (E) a().invoke(null, Integer.valueOf(i10));
        } catch (Throwable th) {
            throw new AssertionError(th);
        }
    }

    public int hashCode() {
        return this.f25892a.hashCode();
    }
}

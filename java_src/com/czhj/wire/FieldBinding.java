package com.czhj.wire;

import com.czhj.wire.Message;
import com.czhj.wire.Message.Builder;
import com.join.mgps.Util.o0;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
final class FieldBinding<M extends Message<M, B>, B extends Message.Builder<M, B>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f25856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f25857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Field f25858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Field f25859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Method f25860e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ProtoAdapter<?> f25861f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ProtoAdapter<?> f25862g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ProtoAdapter<Object> f25863h;
    public final WireField.Label label;
    public final String name;
    public final boolean redacted;
    public final int tag;

    FieldBinding(WireField wireField, Field field, Class<B> cls) {
        this.label = wireField.label();
        String name = field.getName();
        this.name = name;
        this.tag = wireField.tag();
        this.f25856a = wireField.keyAdapter();
        this.f25857b = wireField.adapter();
        this.redacted = wireField.redacted();
        this.f25858c = field;
        this.f25859d = a((Class<?>) cls, name);
        this.f25860e = a(cls, name, field.getType());
    }

    Object a(B b10) {
        try {
            return this.f25859d.get(b10);
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        }
    }

    ProtoAdapter<?> b() {
        ProtoAdapter<?> protoAdapter = this.f25861f;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<?> protoAdapter2 = ProtoAdapter.get(this.f25857b);
        this.f25861f = protoAdapter2;
        return protoAdapter2;
    }

    ProtoAdapter<?> c() {
        ProtoAdapter<?> protoAdapter = this.f25862g;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<?> protoAdapter2 = ProtoAdapter.get(this.f25856a);
        this.f25862g = protoAdapter2;
        return protoAdapter2;
    }

    ProtoAdapter<Object> d() {
        ProtoAdapter<Object> protoAdapter = this.f25863h;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<?> protoAdapterNewMapAdapter = a() ? ProtoAdapter.newMapAdapter(c(), b()) : b().withLabel(this.label);
        this.f25863h = protoAdapterNewMapAdapter;
        return protoAdapterNewMapAdapter;
    }

    Object a(M m10) {
        try {
            return this.f25858c.get(m10);
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        }
    }

    void b(B b10, Object obj) {
        try {
            if (this.label.c()) {
                this.f25860e.invoke(b10, obj);
            } else {
                this.f25859d.set(b10, obj);
            }
        } catch (Throwable th) {
            throw new AssertionError(th);
        }
    }

    private static Field a(Class<?> cls, String str) {
        try {
            return cls.getField(str);
        } catch (NoSuchFieldException unused) {
            throw new AssertionError("No builder field " + cls.getName() + o0.f49827a + str);
        }
    }

    private static Method a(Class<?> cls, String str, Class<?> cls2) {
        try {
            return cls.getMethod(str, cls2);
        } catch (NoSuchMethodException unused) {
            throw new AssertionError("No builder method " + cls.getName() + o0.f49827a + str + "(" + cls2.getName() + ")");
        }
    }

    void a(B b10, Object obj) {
        if (this.label.a()) {
            ((List) a(b10)).add(obj);
        } else if (this.f25856a.isEmpty()) {
            b(b10, obj);
        } else {
            ((Map) a(b10)).putAll((Map) obj);
        }
    }

    boolean a() {
        return !this.f25856a.isEmpty();
    }
}

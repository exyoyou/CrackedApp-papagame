package com.cloudplay.messagesdk.gson.j;

import com.cloudplay.messagesdk.gson.internal.C$Gson$Types;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes9.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Class<? super T> f23927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Type f23928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f23929c;

    protected a() {
        Type typeB = b(a.class);
        this.f23928b = typeB;
        this.f23927a = (Class<? super T>) C$Gson$Types.e(typeB);
        this.f23929c = typeB.hashCode();
    }

    static Type b(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        return C$Gson$Types.b(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
    }

    public final Class<? super T> a() {
        return this.f23927a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && C$Gson$Types.a(this.f23928b, ((a) obj).f23928b);
    }

    public final int hashCode() {
        return this.f23929c;
    }

    public final String toString() {
        return C$Gson$Types.h(this.f23928b);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public static <T> a<T> a(Class<T> cls) {
        return new a<>(cls);
    }

    a(Type type) {
        Type typeB = C$Gson$Types.b((Type) com.cloudplay.messagesdk.gson.internal.a.a(type));
        this.f23928b = typeB;
        this.f23927a = (Class<? super T>) C$Gson$Types.e(typeB);
        this.f23929c = typeB.hashCode();
    }

    public final Type b() {
        return this.f23928b;
    }
}

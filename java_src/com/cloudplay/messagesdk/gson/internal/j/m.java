package com.cloudplay.messagesdk.gson.internal.j;

import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes9.dex */
final class m<T> extends com.cloudplay.messagesdk.gson.h<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.b f23867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.h<T> f23868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f23869c;

    m(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.h<T> hVar, Type type) {
        this.f23867a = bVar;
        this.f23868b = hVar;
        this.f23869c = type;
    }

    @Override // com.cloudplay.messagesdk.gson.h
    /* JADX INFO: renamed from: a */
    public T a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
        return this.f23868b.a2(aVar);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0022 A[PHI: r0
      0x0022: PHI (r0v1 com.cloudplay.messagesdk.gson.h<T>) = 
      (r0v0 com.cloudplay.messagesdk.gson.h<T>)
      (r0v3 com.cloudplay.messagesdk.gson.h<T>)
      (r0v3 com.cloudplay.messagesdk.gson.h<T>)
     binds: [B:3:0x000a, B:5:0x0018, B:8:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.cloudplay.messagesdk.gson.h
    public void a(com.cloudplay.messagesdk.gson.stream.b bVar, T t10) throws IOException {
        com.cloudplay.messagesdk.gson.h<T> hVar;
        com.cloudplay.messagesdk.gson.h<T> hVarA = this.f23868b;
        Type typeA = a(this.f23869c, t10);
        if (typeA != this.f23869c) {
            hVarA = this.f23867a.a((com.cloudplay.messagesdk.gson.j.a) com.cloudplay.messagesdk.gson.j.a.a(typeA));
            if (hVarA instanceof k.b) {
                hVar = this.f23868b;
                if (hVar instanceof k.b) {
                    hVar = hVarA;
                }
            } else {
                hVar = hVarA;
            }
        } else {
            hVar = hVarA;
        }
        hVar.a(bVar, t10);
    }

    private Type a(Type type, Object obj) {
        if (obj != null) {
            return (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) ? obj.getClass() : type;
        }
        return type;
    }
}

package com.cloudplay.messagesdk.gson.internal.j;

import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import com.cloudplay.messagesdk.gson.internal.C$Gson$Types;
import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public final class a<E> extends com.cloudplay.messagesdk.gson.h<Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TypeAdapterFactory f23808c = new C0522a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<E> f23809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.h<E> f23810b;

    /* JADX INFO: renamed from: com.cloudplay.messagesdk.gson.internal.j.a$a, reason: collision with other inner class name */
    static class C0522a implements TypeAdapterFactory {
        C0522a() {
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
            Type typeB = aVar.b();
            if (!(typeB instanceof GenericArrayType) && (!(typeB instanceof Class) || !((Class) typeB).isArray())) {
                return null;
            }
            Type typeD = C$Gson$Types.d(typeB);
            return new a(bVar, bVar.a((com.cloudplay.messagesdk.gson.j.a) com.cloudplay.messagesdk.gson.j.a.a(typeD)), C$Gson$Types.e(typeD));
        }
    }

    public a(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.h<E> hVar, Class<E> cls) {
        this.f23810b = new m(bVar, hVar, cls);
        this.f23809a = cls;
    }

    @Override // com.cloudplay.messagesdk.gson.h
    /* JADX INFO: renamed from: a */
    public Object a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
        if (aVar.q() == JsonToken.NULL) {
            aVar.o();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.a();
        while (aVar.g()) {
            arrayList.add(this.f23810b.a2(aVar));
        }
        aVar.d();
        int size = arrayList.size();
        Object objNewInstance = Array.newInstance((Class<?>) this.f23809a, size);
        for (int i10 = 0; i10 < size; i10++) {
            Array.set(objNewInstance, i10, arrayList.get(i10));
        }
        return objNewInstance;
    }

    @Override // com.cloudplay.messagesdk.gson.h
    public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.h();
            return;
        }
        bVar.a();
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            this.f23810b.a(bVar, (E) Array.get(obj, i10));
        }
        bVar.c();
    }
}

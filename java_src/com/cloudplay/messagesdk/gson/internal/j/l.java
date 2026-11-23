package com.cloudplay.messagesdk.gson.internal.j;

import com.cloudplay.messagesdk.gson.JsonDeserializationContext;
import com.cloudplay.messagesdk.gson.JsonDeserializer;
import com.cloudplay.messagesdk.gson.JsonParseException;
import com.cloudplay.messagesdk.gson.JsonSerializationContext;
import com.cloudplay.messagesdk.gson.JsonSerializer;
import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes9.dex */
public final class l<T> extends com.cloudplay.messagesdk.gson.h<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JsonSerializer<T> f23859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final JsonDeserializer<T> f23860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final com.cloudplay.messagesdk.gson.b f23861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.j.a<T> f23862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TypeAdapterFactory f23863e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final l<T>.b f23864f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.cloudplay.messagesdk.gson.h<T> f23865g;

    private final class b implements JsonSerializationContext, JsonDeserializationContext {
        private b() {
        }

        @Override // com.cloudplay.messagesdk.gson.JsonDeserializationContext
        public <R> R deserialize(com.cloudplay.messagesdk.gson.d dVar, Type type) throws JsonParseException {
            return (R) l.this.f23861c.a(dVar, type);
        }

        @Override // com.cloudplay.messagesdk.gson.JsonSerializationContext
        public com.cloudplay.messagesdk.gson.d serialize(Object obj) {
            return l.this.f23861c.b(obj);
        }

        @Override // com.cloudplay.messagesdk.gson.JsonSerializationContext
        public com.cloudplay.messagesdk.gson.d serialize(Object obj, Type type) {
            return l.this.f23861c.b(obj, type);
        }
    }

    public l(JsonSerializer<T> jsonSerializer, JsonDeserializer<T> jsonDeserializer, com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar, TypeAdapterFactory typeAdapterFactory) {
        this.f23859a = jsonSerializer;
        this.f23860b = jsonDeserializer;
        this.f23861c = bVar;
        this.f23862d = aVar;
        this.f23863e = typeAdapterFactory;
    }

    private com.cloudplay.messagesdk.gson.h<T> b() {
        com.cloudplay.messagesdk.gson.h<T> hVar = this.f23865g;
        if (hVar != null) {
            return hVar;
        }
        com.cloudplay.messagesdk.gson.h<T> hVarA = this.f23861c.a(this.f23863e, this.f23862d);
        this.f23865g = hVarA;
        return hVarA;
    }

    @Override // com.cloudplay.messagesdk.gson.h
    /* JADX INFO: renamed from: a */
    public T a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
        if (this.f23860b == null) {
            return b().a2(aVar);
        }
        com.cloudplay.messagesdk.gson.d dVarA = com.cloudplay.messagesdk.gson.internal.h.a(aVar);
        if (dVarA.e()) {
            return null;
        }
        return this.f23860b.deserialize(dVarA, this.f23862d.b(), this.f23864f);
    }

    @Override // com.cloudplay.messagesdk.gson.h
    public void a(com.cloudplay.messagesdk.gson.stream.b bVar, T t10) throws IOException {
        JsonSerializer<T> jsonSerializer = this.f23859a;
        if (jsonSerializer == null) {
            b().a(bVar, t10);
        } else if (t10 == null) {
            bVar.h();
        } else {
            com.cloudplay.messagesdk.gson.internal.h.a(jsonSerializer.serialize(t10, this.f23862d.b(), this.f23864f), bVar);
        }
    }
}

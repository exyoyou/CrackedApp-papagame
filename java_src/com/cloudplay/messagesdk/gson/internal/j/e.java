package com.cloudplay.messagesdk.gson.internal.j;

import com.cloudplay.messagesdk.gson.JsonDeserializer;
import com.cloudplay.messagesdk.gson.JsonSerializer;
import com.cloudplay.messagesdk.gson.TypeAdapterFactory;

/* JADX INFO: loaded from: classes9.dex */
public final class e implements TypeAdapterFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.internal.b f23816a;

    public e(com.cloudplay.messagesdk.gson.internal.b bVar) {
        this.f23816a = bVar;
    }

    com.cloudplay.messagesdk.gson.h<?> a(com.cloudplay.messagesdk.gson.internal.b bVar, com.cloudplay.messagesdk.gson.b bVar2, com.cloudplay.messagesdk.gson.j.a<?> aVar, com.cloudplay.messagesdk.gson.i.b bVar3) {
        com.cloudplay.messagesdk.gson.h<?> lVar;
        Object objConstruct = bVar.a(com.cloudplay.messagesdk.gson.j.a.a((Class) bVar3.value())).construct();
        if (objConstruct instanceof com.cloudplay.messagesdk.gson.h) {
            lVar = (com.cloudplay.messagesdk.gson.h) objConstruct;
        } else if (objConstruct instanceof TypeAdapterFactory) {
            lVar = ((TypeAdapterFactory) objConstruct).create(bVar2, aVar);
        } else {
            boolean z10 = objConstruct instanceof JsonSerializer;
            if (!z10 && !(objConstruct instanceof JsonDeserializer)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objConstruct.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            lVar = new l<>(z10 ? (JsonSerializer) objConstruct : null, objConstruct instanceof JsonDeserializer ? (JsonDeserializer) objConstruct : null, bVar2, aVar, null);
        }
        return (lVar == null || !bVar3.nullSafe()) ? lVar : lVar.a();
    }

    @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
    public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
        com.cloudplay.messagesdk.gson.i.b bVar2 = (com.cloudplay.messagesdk.gson.i.b) aVar.a().getAnnotation(com.cloudplay.messagesdk.gson.i.b.class);
        if (bVar2 == null) {
            return null;
        }
        return (com.cloudplay.messagesdk.gson.h<T>) a(this.f23816a, bVar, aVar, bVar2);
    }
}

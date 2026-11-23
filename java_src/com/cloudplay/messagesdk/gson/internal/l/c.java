package com.cloudplay.messagesdk.gson.internal.l;

import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import com.cloudplay.messagesdk.gson.h;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: loaded from: classes9.dex */
class c extends h<Timestamp> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final TypeAdapterFactory f23921b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h<Date> f23922a;

    static class a implements TypeAdapterFactory {
        a() {
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T> h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
            a aVar2 = null;
            if (aVar.a() == Timestamp.class) {
                return new c(bVar.a((Class) Date.class), aVar2);
            }
            return null;
        }
    }

    /* synthetic */ c(h hVar, a aVar) {
        this(hVar);
    }

    private c(h<Date> hVar) {
        this.f23922a = hVar;
    }

    @Override // com.cloudplay.messagesdk.gson.h
    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
    public Timestamp a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
        Date dateA2 = this.f23922a.a2(aVar);
        if (dateA2 != null) {
            return new Timestamp(dateA2.getTime());
        }
        return null;
    }

    @Override // com.cloudplay.messagesdk.gson.h
    public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Timestamp timestamp) throws IOException {
        this.f23922a.a(bVar, timestamp);
    }
}

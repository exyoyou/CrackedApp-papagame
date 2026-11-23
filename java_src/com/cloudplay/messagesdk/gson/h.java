package com.cloudplay.messagesdk.gson;

import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public abstract class h<T> {
    public final h<T> a() {
        return new a();
    }

    public abstract T a(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException;

    public abstract void a(com.cloudplay.messagesdk.gson.stream.b bVar, T t10) throws IOException;

    class a extends h<T> {
        a() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, T t10) throws IOException {
            if (t10 == null) {
                bVar.h();
            } else {
                h.this.a(bVar, t10);
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public T a(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            return (T) h.this.a(aVar);
        }
    }

    public final d a(T t10) {
        try {
            com.cloudplay.messagesdk.gson.internal.j.g gVar = new com.cloudplay.messagesdk.gson.internal.j.g();
            a(gVar, t10);
            return gVar.i();
        } catch (IOException e10) {
            throw new JsonIOException(e10);
        }
    }
}

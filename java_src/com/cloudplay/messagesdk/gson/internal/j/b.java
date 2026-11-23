package com.cloudplay.messagesdk.gson.internal.j;

import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import com.cloudplay.messagesdk.gson.internal.C$Gson$Types;
import com.cloudplay.messagesdk.gson.internal.ObjectConstructor;
import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes9.dex */
public final class b implements TypeAdapterFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.internal.b f23811a;

    public b(com.cloudplay.messagesdk.gson.internal.b bVar) {
        this.f23811a = bVar;
    }

    @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
    public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
        Type typeB = aVar.b();
        Class<? super T> clsA = aVar.a();
        if (!Collection.class.isAssignableFrom(clsA)) {
            return null;
        }
        Type typeA = C$Gson$Types.a(typeB, (Class<?>) clsA);
        return new a(bVar, typeA, bVar.a((com.cloudplay.messagesdk.gson.j.a) com.cloudplay.messagesdk.gson.j.a.a(typeA)), this.f23811a.a(aVar));
    }

    private static final class a<E> extends com.cloudplay.messagesdk.gson.h<Collection<E>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.cloudplay.messagesdk.gson.h<E> f23812a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ObjectConstructor<? extends Collection<E>> f23813b;

        public a(com.cloudplay.messagesdk.gson.b bVar, Type type, com.cloudplay.messagesdk.gson.h<E> hVar, ObjectConstructor<? extends Collection<E>> objectConstructor) {
            this.f23812a = new m(bVar, hVar, type);
            this.f23813b = objectConstructor;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Collection<E> a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            Collection<E> collectionConstruct = this.f23813b.construct();
            aVar.a();
            while (aVar.g()) {
                collectionConstruct.add(this.f23812a.a2(aVar));
            }
            aVar.d();
            return collectionConstruct;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Collection<E> collection) throws IOException {
            if (collection == null) {
                bVar.h();
                return;
            }
            bVar.a();
            Iterator<E> it2 = collection.iterator();
            while (it2.hasNext()) {
                this.f23812a.a(bVar, it2.next());
            }
            bVar.c();
        }
    }
}

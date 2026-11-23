package com.cloudplay.messagesdk.gson.internal.j;

import com.cloudplay.messagesdk.gson.JsonSyntaxException;
import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import com.cloudplay.messagesdk.gson.internal.C$Gson$Types;
import com.cloudplay.messagesdk.gson.internal.ObjectConstructor;
import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class h implements TypeAdapterFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.internal.b f23828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean f23829b;

    public h(com.cloudplay.messagesdk.gson.internal.b bVar, boolean z10) {
        this.f23828a = bVar;
        this.f23829b = z10;
    }

    private com.cloudplay.messagesdk.gson.h<?> a(com.cloudplay.messagesdk.gson.b bVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? n.f23875f : bVar.a((com.cloudplay.messagesdk.gson.j.a) com.cloudplay.messagesdk.gson.j.a.a(type));
    }

    @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
    public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
        Type typeB = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        Type[] typeArrB = C$Gson$Types.b(typeB, C$Gson$Types.e(typeB));
        return new a(bVar, typeArrB[0], a(bVar, typeArrB[0]), typeArrB[1], bVar.a((com.cloudplay.messagesdk.gson.j.a) com.cloudplay.messagesdk.gson.j.a.a(typeArrB[1])), this.f23828a.a(aVar));
    }

    private final class a<K, V> extends com.cloudplay.messagesdk.gson.h<Map<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.cloudplay.messagesdk.gson.h<K> f23830a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.cloudplay.messagesdk.gson.h<V> f23831b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ObjectConstructor<? extends Map<K, V>> f23832c;

        public a(com.cloudplay.messagesdk.gson.b bVar, Type type, com.cloudplay.messagesdk.gson.h<K> hVar, Type type2, com.cloudplay.messagesdk.gson.h<V> hVar2, ObjectConstructor<? extends Map<K, V>> objectConstructor) {
            this.f23830a = new m(bVar, hVar, type);
            this.f23831b = new m(bVar, hVar2, type2);
            this.f23832c = objectConstructor;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Map<K, V> a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            JsonToken jsonTokenQ = aVar.q();
            if (jsonTokenQ == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            Map<K, V> mapConstruct = this.f23832c.construct();
            if (jsonTokenQ == JsonToken.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.g()) {
                    aVar.a();
                    K kA2 = this.f23830a.a2(aVar);
                    if (mapConstruct.put(kA2, this.f23831b.a2(aVar)) == null) {
                        aVar.d();
                    } else {
                        throw new JsonSyntaxException("duplicate key: " + kA2);
                    }
                }
                aVar.d();
            } else {
                aVar.b();
                while (aVar.g()) {
                    com.cloudplay.messagesdk.gson.internal.e.f23799a.a(aVar);
                    K kA3 = this.f23830a.a2(aVar);
                    if (mapConstruct.put(kA3, this.f23831b.a2(aVar)) != null) {
                        throw new JsonSyntaxException("duplicate key: " + kA3);
                    }
                }
                aVar.e();
            }
            return mapConstruct;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Map<K, V> map) throws IOException {
            if (map == null) {
                bVar.h();
                return;
            }
            if (!h.this.f23829b) {
                bVar.b();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    bVar.a(String.valueOf(entry.getKey()));
                    this.f23831b.a(bVar, entry.getValue());
                }
                bVar.d();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i10 = 0;
            boolean z10 = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                com.cloudplay.messagesdk.gson.d dVarA = this.f23830a.a(entry2.getKey());
                arrayList.add(dVarA);
                arrayList2.add(entry2.getValue());
                z10 |= dVarA.d() || dVarA.f();
            }
            if (z10) {
                bVar.a();
                int size = arrayList.size();
                while (i10 < size) {
                    bVar.a();
                    com.cloudplay.messagesdk.gson.internal.h.a((com.cloudplay.messagesdk.gson.d) arrayList.get(i10), bVar);
                    this.f23831b.a(bVar, (V) arrayList2.get(i10));
                    bVar.c();
                    i10++;
                }
                bVar.c();
                return;
            }
            bVar.b();
            int size2 = arrayList.size();
            while (i10 < size2) {
                bVar.a(a((com.cloudplay.messagesdk.gson.d) arrayList.get(i10)));
                this.f23831b.a(bVar, (V) arrayList2.get(i10));
                i10++;
            }
            bVar.d();
        }

        private String a(com.cloudplay.messagesdk.gson.d dVar) {
            if (dVar.g()) {
                com.cloudplay.messagesdk.gson.g gVarC = dVar.c();
                if (gVarC.o()) {
                    return String.valueOf(gVarC.l());
                }
                if (gVarC.n()) {
                    return Boolean.toString(gVarC.h());
                }
                if (gVarC.p()) {
                    return gVarC.m();
                }
                throw new AssertionError();
            }
            if (dVar.e()) {
                return "null";
            }
            throw new AssertionError();
        }
    }
}

package com.cloudplay.messagesdk.gson.internal.j;

import com.cloudplay.messagesdk.gson.FieldNamingStrategy;
import com.cloudplay.messagesdk.gson.JsonSyntaxException;
import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import com.cloudplay.messagesdk.gson.internal.C$Gson$Types;
import com.cloudplay.messagesdk.gson.internal.ObjectConstructor;
import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class k implements TypeAdapterFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.internal.b f23843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FieldNamingStrategy f23844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.internal.c f23845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f23846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.internal.k.b f23847e = com.cloudplay.messagesdk.gson.internal.k.b.a();

    static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f23856a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f23857b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final boolean f23858c;

        protected c(String str, boolean z10, boolean z11) {
            this.f23856a = str;
            this.f23857b = z10;
            this.f23858c = z11;
        }

        abstract void a(com.cloudplay.messagesdk.gson.stream.a aVar, Object obj) throws IllegalAccessException, IOException;

        abstract void a(com.cloudplay.messagesdk.gson.stream.b bVar, Object obj) throws IllegalAccessException, IOException;

        abstract boolean a(Object obj) throws IllegalAccessException, IOException;
    }

    public k(com.cloudplay.messagesdk.gson.internal.b bVar, FieldNamingStrategy fieldNamingStrategy, com.cloudplay.messagesdk.gson.internal.c cVar, e eVar) {
        this.f23843a = bVar;
        this.f23844b = fieldNamingStrategy;
        this.f23845c = cVar;
        this.f23846d = eVar;
    }

    public boolean a(Field field, boolean z10) {
        return a(field, z10, this.f23845c);
    }

    @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
    public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
        Class<? super T> clsA = aVar.a();
        if (Object.class.isAssignableFrom(clsA)) {
            return new b(this.f23843a.a(aVar), a(bVar, (com.cloudplay.messagesdk.gson.j.a<?>) aVar, (Class<?>) clsA));
        }
        return null;
    }

    static boolean a(Field field, boolean z10, com.cloudplay.messagesdk.gson.internal.c cVar) {
        return (cVar.a(field.getType(), z10) || cVar.a(field, z10)) ? false : true;
    }

    private List<String> a(Field field) {
        com.cloudplay.messagesdk.gson.i.c cVar = (com.cloudplay.messagesdk.gson.i.c) field.getAnnotation(com.cloudplay.messagesdk.gson.i.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f23844b.translateName(field));
        }
        String strValue = cVar.value();
        String[] strArrAlternate = cVar.alternate();
        if (strArrAlternate.length == 0) {
            return Collections.singletonList(strValue);
        }
        ArrayList arrayList = new ArrayList(strArrAlternate.length + 1);
        arrayList.add(strValue);
        for (String str : strArrAlternate) {
            arrayList.add(str);
        }
        return arrayList;
    }

    class a extends c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Field f23848d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f23849e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ com.cloudplay.messagesdk.gson.h f23850f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ com.cloudplay.messagesdk.gson.b f23851g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ com.cloudplay.messagesdk.gson.j.a f23852h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ boolean f23853i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(k kVar, String str, boolean z10, boolean z11, Field field, boolean z12, com.cloudplay.messagesdk.gson.h hVar, com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a aVar, boolean z13) {
            super(str, z10, z11);
            this.f23848d = field;
            this.f23849e = z12;
            this.f23850f = hVar;
            this.f23851g = bVar;
            this.f23852h = aVar;
            this.f23853i = z13;
        }

        @Override // com.cloudplay.messagesdk.gson.internal.j.k.c
        void a(com.cloudplay.messagesdk.gson.stream.b bVar, Object obj) throws IllegalAccessException, IOException {
            (this.f23849e ? this.f23850f : new m(this.f23851g, this.f23850f, this.f23852h.b())).a(bVar, this.f23848d.get(obj));
        }

        @Override // com.cloudplay.messagesdk.gson.internal.j.k.c
        void a(com.cloudplay.messagesdk.gson.stream.a aVar, Object obj) throws IllegalAccessException, IOException {
            Object objA2 = this.f23850f.a2(aVar);
            if (objA2 == null && this.f23853i) {
                return;
            }
            this.f23848d.set(obj, objA2);
        }

        @Override // com.cloudplay.messagesdk.gson.internal.j.k.c
        public boolean a(Object obj) throws IllegalAccessException, IOException {
            return this.f23857b && this.f23848d.get(obj) != obj;
        }
    }

    public static final class b<T> extends com.cloudplay.messagesdk.gson.h<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ObjectConstructor<T> f23854a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<String, c> f23855b;

        b(ObjectConstructor<T> objectConstructor, Map<String, c> map) {
            this.f23854a = objectConstructor;
            this.f23855b = map;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public T a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            T tConstruct = this.f23854a.construct();
            try {
                aVar.b();
                while (aVar.g()) {
                    c cVar = this.f23855b.get(aVar.n());
                    if (cVar == null || !cVar.f23858c) {
                        aVar.r();
                    } else {
                        cVar.a(aVar, tConstruct);
                    }
                }
                aVar.e();
                return tConstruct;
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (IllegalStateException e11) {
                throw new JsonSyntaxException(e11);
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, T t10) throws IOException {
            if (t10 == null) {
                bVar.h();
                return;
            }
            bVar.b();
            try {
                for (c cVar : this.f23855b.values()) {
                    if (cVar.a(t10)) {
                        bVar.a(cVar.f23856a);
                        cVar.a(bVar, t10);
                    }
                }
                bVar.d();
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    private c a(com.cloudplay.messagesdk.gson.b bVar, Field field, String str, com.cloudplay.messagesdk.gson.j.a<?> aVar, boolean z10, boolean z11) {
        boolean zA = com.cloudplay.messagesdk.gson.internal.g.a((Type) aVar.a());
        com.cloudplay.messagesdk.gson.i.b bVar2 = (com.cloudplay.messagesdk.gson.i.b) field.getAnnotation(com.cloudplay.messagesdk.gson.i.b.class);
        com.cloudplay.messagesdk.gson.h<?> hVarA = bVar2 != null ? this.f23846d.a(this.f23843a, bVar, aVar, bVar2) : null;
        boolean z12 = hVarA != null;
        if (hVarA == null) {
            hVarA = bVar.a((com.cloudplay.messagesdk.gson.j.a) aVar);
        }
        return new a(this, str, z10, z11, field, z12, hVarA, bVar, aVar, zA);
    }

    private Map<String, c> a(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<?> aVar, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type typeB = aVar.b();
        com.cloudplay.messagesdk.gson.j.a<?> aVarA = aVar;
        Class<?> clsA = cls;
        while (clsA != Object.class) {
            Field[] declaredFields = clsA.getDeclaredFields();
            int length = declaredFields.length;
            boolean z10 = false;
            int i10 = 0;
            while (i10 < length) {
                Field field = declaredFields[i10];
                boolean zA = a(field, true);
                boolean zA2 = a(field, z10);
                if (zA || zA2) {
                    this.f23847e.a(field);
                    Type typeA = C$Gson$Types.a(aVarA.b(), clsA, field.getGenericType());
                    List<String> listA = a(field);
                    int size = listA.size();
                    c cVar = null;
                    int i11 = 0;
                    while (i11 < size) {
                        String str = listA.get(i11);
                        boolean z11 = i11 != 0 ? false : zA;
                        int i12 = i11;
                        c cVar2 = cVar;
                        int i13 = size;
                        List<String> list = listA;
                        Field field2 = field;
                        cVar = cVar2 == null ? (c) linkedHashMap.put(str, a(bVar, field, str, com.cloudplay.messagesdk.gson.j.a.a(typeA), z11, zA2)) : cVar2;
                        i11 = i12 + 1;
                        zA = z11;
                        listA = list;
                        size = i13;
                        field = field2;
                    }
                    c cVar3 = cVar;
                    if (cVar3 != null) {
                        throw new IllegalArgumentException(typeB + " declares multiple JSON fields named " + cVar3.f23856a);
                    }
                }
                i10++;
                z10 = false;
            }
            aVarA = com.cloudplay.messagesdk.gson.j.a.a(C$Gson$Types.a(aVarA.b(), clsA, clsA.getGenericSuperclass()));
            clsA = aVarA.a();
        }
        return linkedHashMap;
    }
}

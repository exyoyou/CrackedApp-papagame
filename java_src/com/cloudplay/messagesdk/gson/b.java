package com.cloudplay.messagesdk.gson;

import com.cloudplay.messagesdk.gson.internal.j.i;
import com.cloudplay.messagesdk.gson.internal.j.j;
import com.cloudplay.messagesdk.gson.internal.j.k;
import com.cloudplay.messagesdk.gson.internal.j.n;
import com.cloudplay.messagesdk.gson.stream.JsonToken;
import com.cloudplay.messagesdk.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final com.cloudplay.messagesdk.gson.j.a<?> f23738k = com.cloudplay.messagesdk.gson.j.a.a(Object.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ThreadLocal<Map<com.cloudplay.messagesdk.gson.j.a<?>, f<?>>> f23739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<com.cloudplay.messagesdk.gson.j.a<?>, h<?>> f23740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.internal.b f23741c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.cloudplay.messagesdk.gson.internal.j.e f23742d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<TypeAdapterFactory> f23743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f23744f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final boolean f23745g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final boolean f23746h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final boolean f23747i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final boolean f23748j;

    public b() {
        this(com.cloudplay.messagesdk.gson.internal.c.f23785g, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, LongSerializationPolicy.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), ToNumberPolicy.DOUBLE, ToNumberPolicy.LAZILY_PARSED_NUMBER);
    }

    private h<Number> a(boolean z10) {
        return z10 ? n.f23891v : new a(this);
    }

    private h<Number> b(boolean z10) {
        return z10 ? n.f23890u : new C0519b(this);
    }

    public String toString() {
        return "{serializeNulls:" + this.f23744f + ",factories:" + this.f23743e + ",instanceCreators:" + this.f23741c + "}";
    }

    class a extends h<Number> {
        a(b bVar) {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            return Double.valueOf(aVar.k());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Number number) throws IOException {
            if (number == null) {
                bVar.h();
            } else {
                b.a(number.doubleValue());
                bVar.a(number);
            }
        }
    }

    /* JADX INFO: renamed from: com.cloudplay.messagesdk.gson.b$b, reason: collision with other inner class name */
    class C0519b extends h<Number> {
        C0519b(b bVar) {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Number a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            return Float.valueOf((float) aVar.k());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Number number) throws IOException {
            if (number == null) {
                bVar.h();
            } else {
                b.a(number.floatValue());
                bVar.a(number);
            }
        }
    }

    static class c extends h<Number> {
        c() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Number a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            return Long.valueOf(aVar.m());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Number number) throws IOException {
            if (number == null) {
                bVar.h();
            } else {
                bVar.c(number.toString());
            }
        }
    }

    static class d extends h<AtomicLong> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ h f23749a;

        d(h hVar) {
            this.f23749a = hVar;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, AtomicLong atomicLong) throws IOException {
            this.f23749a.a(bVar, Long.valueOf(atomicLong.get()));
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public AtomicLong a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            return new AtomicLong(((Number) this.f23749a.a2(aVar)).longValue());
        }
    }

    static class e extends h<AtomicLongArray> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ h f23750a;

        e(h hVar) {
            this.f23750a = hVar;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, AtomicLongArray atomicLongArray) throws IOException {
            bVar.a();
            int length = atomicLongArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                this.f23750a.a(bVar, Long.valueOf(atomicLongArray.get(i10)));
            }
            bVar.c();
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public AtomicLongArray a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.a();
            while (aVar.g()) {
                arrayList.add(Long.valueOf(((Number) this.f23750a.a2(aVar)).longValue()));
            }
            aVar.d();
            int size = arrayList.size();
            AtomicLongArray atomicLongArray = new AtomicLongArray(size);
            for (int i10 = 0; i10 < size; i10++) {
                atomicLongArray.set(i10, ((Long) arrayList.get(i10)).longValue());
            }
            return atomicLongArray;
        }
    }

    static class f<T> extends h<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private h<T> f23751a;

        f() {
        }

        public void a(h<T> hVar) {
            if (this.f23751a != null) {
                throw new AssertionError();
            }
            this.f23751a = hVar;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public T a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            h<T> hVar = this.f23751a;
            if (hVar != null) {
                return hVar.a2(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, T t10) throws IOException {
            h<T> hVar = this.f23751a;
            if (hVar != null) {
                hVar.a(bVar, t10);
                return;
            }
            throw new IllegalStateException();
        }
    }

    static void a(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private static h<AtomicLongArray> b(h<Number> hVar) {
        return new e(hVar).a();
    }

    private static h<Number> a(LongSerializationPolicy longSerializationPolicy) {
        if (longSerializationPolicy == LongSerializationPolicy.DEFAULT) {
            return n.f23889t;
        }
        return new c();
    }

    public com.cloudplay.messagesdk.gson.d b(Object obj) {
        if (obj == null) {
            return com.cloudplay.messagesdk.gson.e.f23753a;
        }
        return b(obj, obj.getClass());
    }

    b(com.cloudplay.messagesdk.gson.internal.c cVar, FieldNamingStrategy fieldNamingStrategy, Map<Type, InstanceCreator<?>> map, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, LongSerializationPolicy longSerializationPolicy, String str, int i10, int i11, List<TypeAdapterFactory> list, List<TypeAdapterFactory> list2, List<TypeAdapterFactory> list3, ToNumberStrategy toNumberStrategy, ToNumberStrategy toNumberStrategy2) {
        this.f23739a = new ThreadLocal<>();
        this.f23740b = new ConcurrentHashMap();
        com.cloudplay.messagesdk.gson.internal.b bVar = new com.cloudplay.messagesdk.gson.internal.b(map);
        this.f23741c = bVar;
        this.f23744f = z10;
        this.f23745g = z12;
        this.f23746h = z13;
        this.f23747i = z14;
        this.f23748j = z15;
        ArrayList arrayList = new ArrayList();
        arrayList.add(n.V);
        arrayList.add(j.a(toNumberStrategy));
        arrayList.add(cVar);
        arrayList.addAll(list3);
        arrayList.add(n.B);
        arrayList.add(n.f23882m);
        arrayList.add(n.f23876g);
        arrayList.add(n.f23878i);
        arrayList.add(n.f23880k);
        h<Number> hVarA = a(longSerializationPolicy);
        arrayList.add(n.a(Long.TYPE, Long.class, hVarA));
        arrayList.add(n.a(Double.TYPE, Double.class, a(z16)));
        arrayList.add(n.a(Float.TYPE, Float.class, b(z16)));
        arrayList.add(i.a(toNumberStrategy2));
        arrayList.add(n.f23884o);
        arrayList.add(n.f23886q);
        arrayList.add(n.a(AtomicLong.class, a(hVarA)));
        arrayList.add(n.a(AtomicLongArray.class, b(hVarA)));
        arrayList.add(n.f23888s);
        arrayList.add(n.f23893x);
        arrayList.add(n.D);
        arrayList.add(n.F);
        arrayList.add(n.a(BigDecimal.class, n.f23895z));
        arrayList.add(n.a(BigInteger.class, n.A));
        arrayList.add(n.H);
        arrayList.add(n.J);
        arrayList.add(n.N);
        arrayList.add(n.P);
        arrayList.add(n.T);
        arrayList.add(n.L);
        arrayList.add(n.f23873d);
        arrayList.add(com.cloudplay.messagesdk.gson.internal.j.c.f23814b);
        arrayList.add(n.R);
        if (com.cloudplay.messagesdk.gson.internal.l.d.f23923a) {
            arrayList.add(com.cloudplay.messagesdk.gson.internal.l.d.f23925c);
            arrayList.add(com.cloudplay.messagesdk.gson.internal.l.d.f23924b);
            arrayList.add(com.cloudplay.messagesdk.gson.internal.l.d.f23926d);
        }
        arrayList.add(com.cloudplay.messagesdk.gson.internal.j.a.f23808c);
        arrayList.add(n.f23871b);
        arrayList.add(new com.cloudplay.messagesdk.gson.internal.j.b(bVar));
        arrayList.add(new com.cloudplay.messagesdk.gson.internal.j.h(bVar, z11));
        com.cloudplay.messagesdk.gson.internal.j.e eVar = new com.cloudplay.messagesdk.gson.internal.j.e(bVar);
        this.f23742d = eVar;
        arrayList.add(eVar);
        arrayList.add(n.W);
        arrayList.add(new k(bVar, fieldNamingStrategy, cVar, eVar));
        this.f23743e = Collections.unmodifiableList(arrayList);
    }

    public com.cloudplay.messagesdk.gson.d b(Object obj, Type type) {
        com.cloudplay.messagesdk.gson.internal.j.g gVar = new com.cloudplay.messagesdk.gson.internal.j.g();
        a(obj, type, gVar);
        return gVar.i();
    }

    private static h<AtomicLong> a(h<Number> hVar) {
        return new d(hVar).a();
    }

    public <T> h<T> a(com.cloudplay.messagesdk.gson.j.a<T> aVar) {
        boolean z10;
        h<T> hVar = (h) this.f23740b.get(aVar == null ? f23738k : aVar);
        if (hVar != null) {
            return hVar;
        }
        Map<com.cloudplay.messagesdk.gson.j.a<?>, f<?>> map = this.f23739a.get();
        if (map == null) {
            map = new HashMap<>();
            this.f23739a.set(map);
            z10 = true;
        } else {
            z10 = false;
        }
        f<?> fVar = map.get(aVar);
        if (fVar != null) {
            return fVar;
        }
        try {
            f<?> fVar2 = new f<>();
            map.put(aVar, fVar2);
            Iterator<TypeAdapterFactory> it2 = this.f23743e.iterator();
            while (it2.hasNext()) {
                h<T> hVarCreate = it2.next().create(this, aVar);
                if (hVarCreate != null) {
                    fVar2.a((h<?>) hVarCreate);
                    this.f23740b.put(aVar, hVarCreate);
                    map.remove(aVar);
                    if (z10) {
                        this.f23739a.remove();
                    }
                    return hVarCreate;
                }
            }
            throw new IllegalArgumentException("GSON () cannot handle " + aVar);
        } catch (Throwable th) {
            map.remove(aVar);
            if (z10) {
                this.f23739a.remove();
            }
            throw th;
        }
    }

    public <T> h<T> a(TypeAdapterFactory typeAdapterFactory, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
        if (!this.f23743e.contains(typeAdapterFactory)) {
            typeAdapterFactory = this.f23742d;
        }
        boolean z10 = false;
        for (TypeAdapterFactory typeAdapterFactory2 : this.f23743e) {
            if (z10) {
                h<T> hVarCreate = typeAdapterFactory2.create(this, aVar);
                if (hVarCreate != null) {
                    return hVarCreate;
                }
            } else if (typeAdapterFactory2 == typeAdapterFactory) {
                z10 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public <T> h<T> a(Class<T> cls) {
        return a((com.cloudplay.messagesdk.gson.j.a) com.cloudplay.messagesdk.gson.j.a.a((Class) cls));
    }

    public String a(Object obj) {
        if (obj == null) {
            return a((com.cloudplay.messagesdk.gson.d) com.cloudplay.messagesdk.gson.e.f23753a);
        }
        return a(obj, obj.getClass());
    }

    public String a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void a(Object obj, Type type, Appendable appendable) throws JsonIOException {
        try {
            a(obj, type, a(com.cloudplay.messagesdk.gson.internal.h.a(appendable)));
        } catch (IOException e10) {
            throw new JsonIOException(e10);
        }
    }

    public void a(Object obj, Type type, com.cloudplay.messagesdk.gson.stream.b bVar) throws JsonIOException {
        h hVarA = a((com.cloudplay.messagesdk.gson.j.a) com.cloudplay.messagesdk.gson.j.a.a(type));
        boolean zG = bVar.g();
        bVar.b(true);
        boolean zF = bVar.f();
        bVar.a(this.f23746h);
        boolean zE = bVar.e();
        bVar.c(this.f23744f);
        try {
            try {
                hVarA.a(bVar, obj);
                bVar.b(zG);
                bVar.a(zF);
                bVar.c(zE);
            } catch (IOException e10) {
                throw new JsonIOException(e10);
            } catch (AssertionError e11) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON ): " + e11.getMessage());
                assertionError.initCause(e11);
                throw assertionError;
            }
        } catch (Throwable th) {
            bVar.b(zG);
            bVar.a(zF);
            bVar.c(zE);
            throw th;
        }
    }

    public String a(com.cloudplay.messagesdk.gson.d dVar) {
        StringWriter stringWriter = new StringWriter();
        a(dVar, stringWriter);
        return stringWriter.toString();
    }

    public void a(com.cloudplay.messagesdk.gson.d dVar, Appendable appendable) throws JsonIOException {
        try {
            a(dVar, a(com.cloudplay.messagesdk.gson.internal.h.a(appendable)));
        } catch (IOException e10) {
            throw new JsonIOException(e10);
        }
    }

    public com.cloudplay.messagesdk.gson.stream.b a(Writer writer) throws IOException {
        if (this.f23745g) {
            writer.write(")]}'\n");
        }
        com.cloudplay.messagesdk.gson.stream.b bVar = new com.cloudplay.messagesdk.gson.stream.b(writer);
        if (this.f23747i) {
            bVar.b("  ");
        }
        bVar.c(this.f23744f);
        return bVar;
    }

    public com.cloudplay.messagesdk.gson.stream.a a(Reader reader) {
        com.cloudplay.messagesdk.gson.stream.a aVar = new com.cloudplay.messagesdk.gson.stream.a(reader);
        aVar.a(this.f23748j);
        return aVar;
    }

    public void a(com.cloudplay.messagesdk.gson.d dVar, com.cloudplay.messagesdk.gson.stream.b bVar) throws JsonIOException {
        boolean zG = bVar.g();
        bVar.b(true);
        boolean zF = bVar.f();
        bVar.a(this.f23746h);
        boolean zE = bVar.e();
        bVar.c(this.f23744f);
        try {
            try {
                com.cloudplay.messagesdk.gson.internal.h.a(dVar, bVar);
                bVar.b(zG);
                bVar.a(zF);
                bVar.c(zE);
            } catch (IOException e10) {
                throw new JsonIOException(e10);
            } catch (AssertionError e11) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON ): " + e11.getMessage());
                assertionError.initCause(e11);
                throw assertionError;
            }
        } catch (Throwable th) {
            bVar.b(zG);
            bVar.a(zF);
            bVar.c(zE);
            throw th;
        }
    }

    public <T> T a(String str, Class<T> cls) throws JsonSyntaxException {
        return (T) com.cloudplay.messagesdk.gson.internal.g.a((Class) cls).cast(a(str, (Type) cls));
    }

    public <T> T a(String str, Type type) throws JsonSyntaxException {
        if (str == null) {
            return null;
        }
        return (T) a((Reader) new StringReader(str), type);
    }

    public <T> T a(Reader reader, Type type) throws JsonSyntaxException, JsonIOException {
        com.cloudplay.messagesdk.gson.stream.a aVarA = a(reader);
        T t10 = (T) a(aVarA, type);
        a(t10, aVarA);
        return t10;
    }

    private static void a(Object obj, com.cloudplay.messagesdk.gson.stream.a aVar) {
        if (obj != null) {
            try {
                if (aVar.q() == JsonToken.END_DOCUMENT) {
                } else {
                    throw new JsonIOException("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e10) {
                throw new JsonSyntaxException(e10);
            } catch (IOException e11) {
                throw new JsonIOException(e11);
            }
        }
    }

    public <T> T a(com.cloudplay.messagesdk.gson.stream.a aVar, Type type) throws JsonSyntaxException, JsonIOException {
        boolean zH = aVar.h();
        boolean z10 = true;
        aVar.a(true);
        try {
            try {
                try {
                    aVar.q();
                    z10 = false;
                    T tA2 = a((com.cloudplay.messagesdk.gson.j.a) com.cloudplay.messagesdk.gson.j.a.a(type)).a2(aVar);
                    aVar.a(zH);
                    return tA2;
                } catch (AssertionError e10) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON ): " + e10.getMessage());
                    assertionError.initCause(e10);
                    throw assertionError;
                } catch (IllegalStateException e11) {
                    throw new JsonSyntaxException(e11);
                }
            } catch (EOFException e12) {
                if (z10) {
                    aVar.a(zH);
                    return null;
                }
                throw new JsonSyntaxException(e12);
            } catch (IOException e13) {
                throw new JsonSyntaxException(e13);
            }
        } catch (Throwable th) {
            aVar.a(zH);
            throw th;
        }
    }

    public <T> T a(com.cloudplay.messagesdk.gson.d dVar, Type type) throws JsonSyntaxException {
        if (dVar == null) {
            return null;
        }
        return (T) a((com.cloudplay.messagesdk.gson.stream.a) new com.cloudplay.messagesdk.gson.internal.j.f(dVar), type);
    }
}

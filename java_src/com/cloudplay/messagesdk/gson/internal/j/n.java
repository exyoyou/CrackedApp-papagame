package com.cloudplay.messagesdk.gson.internal.j;

import com.cloudplay.messagesdk.gson.JsonIOException;
import com.cloudplay.messagesdk.gson.JsonSyntaxException;
import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import com.cloudplay.messagesdk.gson.internal.LazilyParsedNumber;
import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX INFO: loaded from: classes9.dex */
public final class n {
    public static final com.cloudplay.messagesdk.gson.h<BigInteger> A;
    public static final TypeAdapterFactory B;
    public static final com.cloudplay.messagesdk.gson.h<StringBuilder> C;
    public static final TypeAdapterFactory D;
    public static final com.cloudplay.messagesdk.gson.h<StringBuffer> E;
    public static final TypeAdapterFactory F;
    public static final com.cloudplay.messagesdk.gson.h<URL> G;
    public static final TypeAdapterFactory H;
    public static final com.cloudplay.messagesdk.gson.h<URI> I;
    public static final TypeAdapterFactory J;
    public static final com.cloudplay.messagesdk.gson.h<InetAddress> K;
    public static final TypeAdapterFactory L;
    public static final com.cloudplay.messagesdk.gson.h<UUID> M;
    public static final TypeAdapterFactory N;
    public static final com.cloudplay.messagesdk.gson.h<Currency> O;
    public static final TypeAdapterFactory P;
    public static final com.cloudplay.messagesdk.gson.h<Calendar> Q;
    public static final TypeAdapterFactory R;
    public static final com.cloudplay.messagesdk.gson.h<Locale> S;
    public static final TypeAdapterFactory T;
    public static final com.cloudplay.messagesdk.gson.h<com.cloudplay.messagesdk.gson.d> U;
    public static final TypeAdapterFactory V;
    public static final TypeAdapterFactory W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<Class> f23870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TypeAdapterFactory f23871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<BitSet> f23872c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final TypeAdapterFactory f23873d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<Boolean> f23874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<Boolean> f23875f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final TypeAdapterFactory f23876g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<Number> f23877h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final TypeAdapterFactory f23878i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<Number> f23879j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final TypeAdapterFactory f23880k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<Number> f23881l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final TypeAdapterFactory f23882m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<AtomicInteger> f23883n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final TypeAdapterFactory f23884o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<AtomicBoolean> f23885p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final TypeAdapterFactory f23886q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<AtomicIntegerArray> f23887r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final TypeAdapterFactory f23888s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<Number> f23889t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<Number> f23890u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<Number> f23891v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<Character> f23892w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final TypeAdapterFactory f23893x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<String> f23894y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final com.cloudplay.messagesdk.gson.h<BigDecimal> f23895z;

    static class k extends com.cloudplay.messagesdk.gson.h<Class> {
        k() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public /* bridge */ /* synthetic */ Class a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            a2(aVar);
            throw null;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public /* bridge */ /* synthetic */ void a(com.cloudplay.messagesdk.gson.stream.b bVar, Class cls) throws IOException {
            a2(bVar, cls);
            throw null;
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public void a2(com.cloudplay.messagesdk.gson.stream.b bVar, Class cls) throws IOException {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Class a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }
    }

    static class t implements TypeAdapterFactory {
        t() {
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
            Class<? super T> clsA = aVar.a();
            if (!Enum.class.isAssignableFrom(clsA) || clsA == Enum.class) {
                return null;
            }
            if (!clsA.isEnum()) {
                clsA = clsA.getSuperclass();
            }
            return new h0(clsA);
        }
    }

    static class v implements TypeAdapterFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Class f23899a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.cloudplay.messagesdk.gson.h f23900b;

        v(Class cls, com.cloudplay.messagesdk.gson.h hVar) {
            this.f23899a = cls;
            this.f23900b = hVar;
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
            if (aVar.a() == this.f23899a) {
                return this.f23900b;
            }
            return null;
        }

        public String toString() {
            return "Factory[type=" + this.f23899a.getName() + ",adapter=" + this.f23900b + "]";
        }
    }

    static class w implements TypeAdapterFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Class f23901a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Class f23902b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.cloudplay.messagesdk.gson.h f23903c;

        w(Class cls, Class cls2, com.cloudplay.messagesdk.gson.h hVar) {
            this.f23901a = cls;
            this.f23902b = cls2;
            this.f23903c = hVar;
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
            Class<? super T> clsA = aVar.a();
            if (clsA == this.f23901a || clsA == this.f23902b) {
                return this.f23903c;
            }
            return null;
        }

        public String toString() {
            return "Factory[type=" + this.f23902b.getName() + "+" + this.f23901a.getName() + ",adapter=" + this.f23903c + "]";
        }
    }

    static class x implements TypeAdapterFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Class f23904a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Class f23905b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.cloudplay.messagesdk.gson.h f23906c;

        x(Class cls, Class cls2, com.cloudplay.messagesdk.gson.h hVar) {
            this.f23904a = cls;
            this.f23905b = cls2;
            this.f23906c = hVar;
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
            Class<? super T> clsA = aVar.a();
            if (clsA == this.f23904a || clsA == this.f23905b) {
                return this.f23906c;
            }
            return null;
        }

        public String toString() {
            return "Factory[type=" + this.f23904a.getName() + "+" + this.f23905b.getName() + ",adapter=" + this.f23906c + "]";
        }
    }

    static class y implements TypeAdapterFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Class f23907a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.cloudplay.messagesdk.gson.h f23908b;

        /* JADX INFO: Add missing generic type declarations: [T1] */
        class a<T1> extends com.cloudplay.messagesdk.gson.h<T1> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Class f23909a;

            a(Class cls) {
                this.f23909a = cls;
            }

            @Override // com.cloudplay.messagesdk.gson.h
            public void a(com.cloudplay.messagesdk.gson.stream.b bVar, T1 t10) throws IOException {
                y.this.f23908b.a(bVar, t10);
            }

            @Override // com.cloudplay.messagesdk.gson.h
            /* JADX INFO: renamed from: a */
            public T1 a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
                T1 t10 = (T1) y.this.f23908b.a2(aVar);
                if (t10 == null || this.f23909a.isInstance(t10)) {
                    return t10;
                }
                throw new JsonSyntaxException("Expected a " + this.f23909a.getName() + " but was " + t10.getClass().getName());
            }
        }

        y(Class cls, com.cloudplay.messagesdk.gson.h hVar) {
            this.f23907a = cls;
            this.f23908b = hVar;
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T2> com.cloudplay.messagesdk.gson.h<T2> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T2> aVar) {
            Class<? super T2> clsA = aVar.a();
            if (this.f23907a.isAssignableFrom(clsA)) {
                return new a(clsA);
            }
            return null;
        }

        public String toString() {
            return "Factory[typeHierarchy=" + this.f23907a.getName() + ",adapter=" + this.f23908b + "]";
        }
    }

    static /* synthetic */ class z {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23911a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f23911a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23911a[JsonToken.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23911a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23911a[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23911a[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f23911a[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f23911a[JsonToken.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f23911a[JsonToken.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f23911a[JsonToken.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f23911a[JsonToken.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    static {
        com.cloudplay.messagesdk.gson.h<Class> hVarA = new k().a();
        f23870a = hVarA;
        f23871b = a(Class.class, hVarA);
        com.cloudplay.messagesdk.gson.h<BitSet> hVarA2 = new u().a();
        f23872c = hVarA2;
        f23873d = a(BitSet.class, hVarA2);
        a0 a0Var = new a0();
        f23874e = a0Var;
        f23875f = new b0();
        f23876g = a(Boolean.TYPE, Boolean.class, a0Var);
        c0 c0Var = new c0();
        f23877h = c0Var;
        f23878i = a(Byte.TYPE, Byte.class, c0Var);
        d0 d0Var = new d0();
        f23879j = d0Var;
        f23880k = a(Short.TYPE, Short.class, d0Var);
        e0 e0Var = new e0();
        f23881l = e0Var;
        f23882m = a(Integer.TYPE, Integer.class, e0Var);
        com.cloudplay.messagesdk.gson.h<AtomicInteger> hVarA3 = new f0().a();
        f23883n = hVarA3;
        f23884o = a(AtomicInteger.class, hVarA3);
        com.cloudplay.messagesdk.gson.h<AtomicBoolean> hVarA4 = new g0().a();
        f23885p = hVarA4;
        f23886q = a(AtomicBoolean.class, hVarA4);
        com.cloudplay.messagesdk.gson.h<AtomicIntegerArray> hVarA5 = new a().a();
        f23887r = hVarA5;
        f23888s = a(AtomicIntegerArray.class, hVarA5);
        f23889t = new b();
        f23890u = new c();
        f23891v = new d();
        e eVar = new e();
        f23892w = eVar;
        f23893x = a(Character.TYPE, Character.class, eVar);
        f fVar = new f();
        f23894y = fVar;
        f23895z = new g();
        A = new h();
        B = a(String.class, fVar);
        i iVar = new i();
        C = iVar;
        D = a(StringBuilder.class, iVar);
        j jVar = new j();
        E = jVar;
        F = a(StringBuffer.class, jVar);
        l lVar = new l();
        G = lVar;
        H = a(URL.class, lVar);
        m mVar = new m();
        I = mVar;
        J = a(URI.class, mVar);
        C0523n c0523n = new C0523n();
        K = c0523n;
        L = b(InetAddress.class, c0523n);
        o oVar = new o();
        M = oVar;
        N = a(UUID.class, oVar);
        com.cloudplay.messagesdk.gson.h<Currency> hVarA6 = new p().a();
        O = hVarA6;
        P = a(Currency.class, hVarA6);
        q qVar = new q();
        Q = qVar;
        R = b(Calendar.class, GregorianCalendar.class, qVar);
        r rVar = new r();
        S = rVar;
        T = a(Locale.class, rVar);
        s sVar = new s();
        U = sVar;
        V = b(com.cloudplay.messagesdk.gson.d.class, sVar);
        W = new t();
    }

    public static <TT> TypeAdapterFactory a(Class<TT> cls, com.cloudplay.messagesdk.gson.h<TT> hVar) {
        return new v(cls, hVar);
    }

    public static <TT> TypeAdapterFactory b(Class<TT> cls, Class<? extends TT> cls2, com.cloudplay.messagesdk.gson.h<? super TT> hVar) {
        return new x(cls, cls2, hVar);
    }

    static class a extends com.cloudplay.messagesdk.gson.h<AtomicIntegerArray> {
        a() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public AtomicIntegerArray a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.a();
            while (aVar.g()) {
                try {
                    arrayList.add(Integer.valueOf(aVar.l()));
                } catch (NumberFormatException e10) {
                    throw new JsonSyntaxException(e10);
                }
            }
            aVar.d();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i10 = 0; i10 < size; i10++) {
                atomicIntegerArray.set(i10, ((Integer) arrayList.get(i10)).intValue());
            }
            return atomicIntegerArray;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
            bVar.a();
            int length = atomicIntegerArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                bVar.a(atomicIntegerArray.get(i10));
            }
            bVar.c();
        }
    }

    static class a0 extends com.cloudplay.messagesdk.gson.h<Boolean> {
        a0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Boolean a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            JsonToken jsonTokenQ = aVar.q();
            if (jsonTokenQ == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            if (jsonTokenQ == JsonToken.STRING) {
                return Boolean.valueOf(Boolean.parseBoolean(aVar.p()));
            }
            return Boolean.valueOf(aVar.j());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Boolean bool) throws IOException {
            bVar.a(bool);
        }
    }

    static class b extends com.cloudplay.messagesdk.gson.h<Number> {
        b() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Number a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            try {
                return Long.valueOf(aVar.m());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    }

    static class b0 extends com.cloudplay.messagesdk.gson.h<Boolean> {
        b0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Boolean a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            return Boolean.valueOf(aVar.p());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Boolean bool) throws IOException {
            bVar.c(bool == null ? "null" : bool.toString());
        }
    }

    static class c extends com.cloudplay.messagesdk.gson.h<Number> {
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
            return Float.valueOf((float) aVar.k());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    }

    static class c0 extends com.cloudplay.messagesdk.gson.h<Number> {
        c0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Number a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            try {
                return Byte.valueOf((byte) aVar.l());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    }

    static class d extends com.cloudplay.messagesdk.gson.h<Number> {
        d() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Number a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            return Double.valueOf(aVar.k());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    }

    static class d0 extends com.cloudplay.messagesdk.gson.h<Number> {
        d0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Number a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            try {
                return Short.valueOf((short) aVar.l());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    }

    static class e extends com.cloudplay.messagesdk.gson.h<Character> {
        e() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Character a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            String strP = aVar.p();
            if (strP.length() == 1) {
                return Character.valueOf(strP.charAt(0));
            }
            throw new JsonSyntaxException("Expecting character, got: " + strP);
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Character ch) throws IOException {
            bVar.c(ch == null ? null : String.valueOf(ch));
        }
    }

    static class e0 extends com.cloudplay.messagesdk.gson.h<Number> {
        e0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public Number a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            try {
                return Integer.valueOf(aVar.l());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    }

    static class f extends com.cloudplay.messagesdk.gson.h<String> {
        f() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public String a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            JsonToken jsonTokenQ = aVar.q();
            if (jsonTokenQ == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            if (jsonTokenQ == JsonToken.BOOLEAN) {
                return Boolean.toString(aVar.j());
            }
            return aVar.p();
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, String str) throws IOException {
            bVar.c(str);
        }
    }

    static class f0 extends com.cloudplay.messagesdk.gson.h<AtomicInteger> {
        f0() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public AtomicInteger a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            try {
                return new AtomicInteger(aVar.l());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, AtomicInteger atomicInteger) throws IOException {
            bVar.a(atomicInteger.get());
        }
    }

    static class g extends com.cloudplay.messagesdk.gson.h<BigDecimal> {
        g() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public BigDecimal a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            try {
                return new BigDecimal(aVar.p());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, BigDecimal bigDecimal) throws IOException {
            bVar.a(bigDecimal);
        }
    }

    static class g0 extends com.cloudplay.messagesdk.gson.h<AtomicBoolean> {
        g0() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public AtomicBoolean a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            return new AtomicBoolean(aVar.j());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, AtomicBoolean atomicBoolean) throws IOException {
            bVar.d(atomicBoolean.get());
        }
    }

    static class h extends com.cloudplay.messagesdk.gson.h<BigInteger> {
        h() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public BigInteger a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            try {
                return new BigInteger(aVar.p());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, BigInteger bigInteger) throws IOException {
            bVar.a(bigInteger);
        }
    }

    private static final class h0<T extends Enum<T>> extends com.cloudplay.messagesdk.gson.h<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<String, T> f23896a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<T, String> f23897b = new HashMap();

        class a implements PrivilegedAction<Void> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Field f23898a;

            a(h0 h0Var, Field field) {
                this.f23898a = field;
            }

            @Override // java.security.PrivilegedAction
            public Void run() {
                this.f23898a.setAccessible(true);
                return null;
            }
        }

        public h0(Class<T> cls) {
            try {
                for (Field field : cls.getDeclaredFields()) {
                    if (field.isEnumConstant()) {
                        AccessController.doPrivileged(new a(this, field));
                        Enum r10 = (Enum) field.get(null);
                        String strName = r10.name();
                        com.cloudplay.messagesdk.gson.i.c cVar = (com.cloudplay.messagesdk.gson.i.c) field.getAnnotation(com.cloudplay.messagesdk.gson.i.c.class);
                        if (cVar != null) {
                            strName = cVar.value();
                            for (String str : cVar.alternate()) {
                                this.f23896a.put(str, (T) r10);
                            }
                        }
                        this.f23896a.put(strName, (T) r10);
                        this.f23897b.put((T) r10, strName);
                    }
                }
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public T a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            return this.f23896a.get(aVar.p());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, T t10) throws IOException {
            bVar.c(t10 == null ? null : this.f23897b.get(t10));
        }
    }

    static class i extends com.cloudplay.messagesdk.gson.h<StringBuilder> {
        i() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public StringBuilder a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            return new StringBuilder(aVar.p());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, StringBuilder sb2) throws IOException {
            bVar.c(sb2 == null ? null : sb2.toString());
        }
    }

    static class j extends com.cloudplay.messagesdk.gson.h<StringBuffer> {
        j() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public StringBuffer a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            return new StringBuffer(aVar.p());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, StringBuffer stringBuffer) throws IOException {
            bVar.c(stringBuffer == null ? null : stringBuffer.toString());
        }
    }

    static class l extends com.cloudplay.messagesdk.gson.h<URL> {
        l() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public URL a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            String strP = aVar.p();
            if ("null".equals(strP)) {
                return null;
            }
            return new URL(strP);
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, URL url) throws IOException {
            bVar.c(url == null ? null : url.toExternalForm());
        }
    }

    static class m extends com.cloudplay.messagesdk.gson.h<URI> {
        m() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public URI a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            try {
                String strP = aVar.p();
                if ("null".equals(strP)) {
                    return null;
                }
                return new URI(strP);
            } catch (URISyntaxException e10) {
                throw new JsonIOException(e10);
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, URI uri) throws IOException {
            bVar.c(uri == null ? null : uri.toASCIIString());
        }
    }

    /* JADX INFO: renamed from: com.cloudplay.messagesdk.gson.internal.j.n$n, reason: collision with other inner class name */
    static class C0523n extends com.cloudplay.messagesdk.gson.h<InetAddress> {
        C0523n() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public InetAddress a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            return InetAddress.getByName(aVar.p());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, InetAddress inetAddress) throws IOException {
            bVar.c(inetAddress == null ? null : inetAddress.getHostAddress());
        }
    }

    static class o extends com.cloudplay.messagesdk.gson.h<UUID> {
        o() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public UUID a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            return UUID.fromString(aVar.p());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, UUID uuid) throws IOException {
            bVar.c(uuid == null ? null : uuid.toString());
        }
    }

    static class p extends com.cloudplay.messagesdk.gson.h<Currency> {
        p() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public Currency a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            return Currency.getInstance(aVar.p());
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Currency currency) throws IOException {
            bVar.c(currency.getCurrencyCode());
        }
    }

    static class q extends com.cloudplay.messagesdk.gson.h<Calendar> {
        q() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public Calendar a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            aVar.b();
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            while (aVar.q() != JsonToken.END_OBJECT) {
                String strN = aVar.n();
                int iL = aVar.l();
                if ("year".equals(strN)) {
                    i10 = iL;
                } else if (com.windmill.sdk.strategy.m.a.f87212d.equals(strN)) {
                    i11 = iL;
                } else if ("dayOfMonth".equals(strN)) {
                    i12 = iL;
                } else if ("hourOfDay".equals(strN)) {
                    i13 = iL;
                } else if ("minute".equals(strN)) {
                    i14 = iL;
                } else if ("second".equals(strN)) {
                    i15 = iL;
                }
            }
            aVar.e();
            return new GregorianCalendar(i10, i11, i12, i13, i14, i15);
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Calendar calendar) throws IOException {
            if (calendar == null) {
                bVar.h();
                return;
            }
            bVar.b();
            bVar.a("year");
            bVar.a(calendar.get(1));
            bVar.a(com.windmill.sdk.strategy.m.a.f87212d);
            bVar.a(calendar.get(2));
            bVar.a("dayOfMonth");
            bVar.a(calendar.get(5));
            bVar.a("hourOfDay");
            bVar.a(calendar.get(11));
            bVar.a("minute");
            bVar.a(calendar.get(12));
            bVar.a("second");
            bVar.a(calendar.get(13));
            bVar.d();
        }
    }

    static class r extends com.cloudplay.messagesdk.gson.h<Locale> {
        r() {
        }

        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public Locale a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar.q() == JsonToken.NULL) {
                aVar.o();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(aVar.p(), "_");
            String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (strNextToken2 == null && strNextToken3 == null) {
                return new Locale(strNextToken);
            }
            if (strNextToken3 == null) {
                return new Locale(strNextToken, strNextToken2);
            }
            return new Locale(strNextToken, strNextToken2, strNextToken3);
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, Locale locale) throws IOException {
            bVar.c(locale == null ? null : locale.toString());
        }
    }

    static class s extends com.cloudplay.messagesdk.gson.h<com.cloudplay.messagesdk.gson.d> {
        s() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a */
        public com.cloudplay.messagesdk.gson.d a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            if (aVar instanceof com.cloudplay.messagesdk.gson.internal.j.f) {
                return ((com.cloudplay.messagesdk.gson.internal.j.f) aVar).s();
            }
            switch (z.f23911a[aVar.q().ordinal()]) {
                case 1:
                    return new com.cloudplay.messagesdk.gson.g(new LazilyParsedNumber(aVar.p()));
                case 2:
                    return new com.cloudplay.messagesdk.gson.g(Boolean.valueOf(aVar.j()));
                case 3:
                    return new com.cloudplay.messagesdk.gson.g(aVar.p());
                case 4:
                    aVar.o();
                    return com.cloudplay.messagesdk.gson.e.f23753a;
                case 5:
                    com.cloudplay.messagesdk.gson.c cVar = new com.cloudplay.messagesdk.gson.c();
                    aVar.a();
                    while (aVar.g()) {
                        cVar.a(a2(aVar));
                    }
                    aVar.d();
                    return cVar;
                case 6:
                    com.cloudplay.messagesdk.gson.f fVar = new com.cloudplay.messagesdk.gson.f();
                    aVar.b();
                    while (aVar.g()) {
                        fVar.a(aVar.n(), a2(aVar));
                    }
                    aVar.e();
                    return fVar;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, com.cloudplay.messagesdk.gson.d dVar) throws IOException {
            if (dVar != null && !dVar.e()) {
                if (dVar.g()) {
                    com.cloudplay.messagesdk.gson.g gVarC = dVar.c();
                    if (gVarC.o()) {
                        bVar.a(gVarC.l());
                        return;
                    } else if (gVarC.n()) {
                        bVar.d(gVarC.h());
                        return;
                    } else {
                        bVar.c(gVarC.m());
                        return;
                    }
                }
                if (dVar.d()) {
                    bVar.a();
                    Iterator<com.cloudplay.messagesdk.gson.d> it2 = dVar.a().iterator();
                    while (it2.hasNext()) {
                        a(bVar, it2.next());
                    }
                    bVar.c();
                    return;
                }
                if (dVar.f()) {
                    bVar.b();
                    for (Map.Entry<String, com.cloudplay.messagesdk.gson.d> entry : dVar.b().h()) {
                        bVar.a(entry.getKey());
                        a(bVar, entry.getValue());
                    }
                    bVar.d();
                    return;
                }
                throw new IllegalArgumentException("Couldn't write " + dVar.getClass());
            }
            bVar.h();
        }
    }

    static class u extends com.cloudplay.messagesdk.gson.h<BitSet> {
        u() {
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0068  */
        @Override // com.cloudplay.messagesdk.gson.h
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public BitSet a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
            BitSet bitSet = new BitSet();
            aVar.a();
            JsonToken jsonTokenQ = aVar.q();
            int i10 = 0;
            while (jsonTokenQ != JsonToken.END_ARRAY) {
                int i11 = z.f23911a[jsonTokenQ.ordinal()];
                boolean zJ = true;
                if (i11 != 1) {
                    if (i11 == 2) {
                        zJ = aVar.j();
                    } else if (i11 == 3) {
                        String strP = aVar.p();
                        try {
                            if (Integer.parseInt(strP) == 0) {
                                zJ = false;
                            }
                        } catch (NumberFormatException unused) {
                            throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + strP);
                        }
                    } else {
                        throw new JsonSyntaxException("Invalid bitset value type: " + jsonTokenQ);
                    }
                } else if (aVar.l() == 0) {
                    zJ = false;
                }
                if (zJ) {
                    bitSet.set(i10);
                }
                i10++;
                jsonTokenQ = aVar.q();
            }
            aVar.d();
            return bitSet;
        }

        @Override // com.cloudplay.messagesdk.gson.h
        public void a(com.cloudplay.messagesdk.gson.stream.b bVar, BitSet bitSet) throws IOException {
            bVar.a();
            int length = bitSet.length();
            for (int i10 = 0; i10 < length; i10++) {
                bVar.a(bitSet.get(i10) ? 1L : 0L);
            }
            bVar.c();
        }
    }

    public static <TT> TypeAdapterFactory a(Class<TT> cls, Class<TT> cls2, com.cloudplay.messagesdk.gson.h<? super TT> hVar) {
        return new w(cls, cls2, hVar);
    }

    public static <T1> TypeAdapterFactory b(Class<T1> cls, com.cloudplay.messagesdk.gson.h<T1> hVar) {
        return new y(cls, hVar);
    }
}

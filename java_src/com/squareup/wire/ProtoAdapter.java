package com.squareup.wire;

import com.haima.hmcp.beans.HmInputMappingContent;
import com.squareup.wire.internal.ReflectionKt;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.time.Duration;
import java.time.Instant;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt__StringsKt;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapter\n+ 2 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt\n*L\n1#1,412:1\n395#2,4:413\n458#2:417\n287#2,6:418\n300#2,4:424\n311#2,7:428\n325#2,10:435\n338#2,4:445\n345#2,3:449\n352#2,3:452\n359#2:455\n364#2:456\n369#2:457\n377#2,4:458\n383#2:462\n387#2,4:463\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapter\n*L\n43#1:413,4\n47#1:417\n101#1:418,6\n109#1:424,4\n114#1:428,7\n119#1:435,10\n124#1:445,4\n128#1:449,3\n132#1:452,3\n147#1:455\n152#1:456\n157#1:457\n162#1:458,4\n169#1:462\n173#1:463,4\n*E\n"})
public abstract class ProtoAdapter<E> {

    @JvmField
    @NotNull
    public static final ProtoAdapter<Long> A;

    @JvmField
    @NotNull
    public static final ProtoAdapter<long[]> B;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Long> C;

    @JvmField
    @NotNull
    public static final ProtoAdapter<long[]> D;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Float> E;

    @JvmField
    @NotNull
    public static final ProtoAdapter<float[]> F;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Double> G;

    @JvmField
    @NotNull
    public static final ProtoAdapter<double[]> H;

    @JvmField
    @NotNull
    public static final ProtoAdapter<ByteString> I;

    @JvmField
    @NotNull
    public static final ProtoAdapter<String> J;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Unit> K;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Map<String, ?>> L;

    @JvmField
    @NotNull
    public static final ProtoAdapter<List<?>> M;

    @JvmField
    @NotNull
    public static final ProtoAdapter N;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Object> O;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Double> P;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Float> Q;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Long> R;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Long> S;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Integer> T;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Integer> U;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Boolean> V;

    @JvmField
    @NotNull
    public static final ProtoAdapter<String> W;

    @JvmField
    @NotNull
    public static final ProtoAdapter<ByteString> X;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Duration> Y;

    @JvmField
    @NotNull
    public static final ProtoAdapter<Instant> Z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    public static final a f82266i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<Boolean> f82267j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<Integer> f82268k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<int[]> f82269l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<Integer> f82270m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<int[]> f82271n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<Integer> f82272o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<int[]> f82273p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<Integer> f82274q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<int[]> f82275r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<Integer> f82276s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<int[]> f82277t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<Long> f82278u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<long[]> f82279v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<Long> f82280w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<long[]> f82281x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<Long> f82282y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final ProtoAdapter<long[]> f82283z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final FieldEncoding f82284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final KClass<?> f82285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final String f82286c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final Syntax f82287d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final E f82288e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final String f82289f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final ProtoAdapter<List<E>> f82290g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final ProtoAdapter<List<E>> f82291h;

    @SourceDebugExtension({"SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapter$Companion\n+ 2 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt\n*L\n1#1,412:1\n854#2:413\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapter$Companion\n*L\n206#1:413\n*E\n"})
    public static final class a {

        /* JADX INFO: renamed from: com.squareup.wire.ProtoAdapter$a$a, reason: collision with other inner class name */
        public static final class C1039a extends ProtoAdapter {
            public C1039a() {
                super(FieldEncoding.LENGTH_DELIMITED, (KClass<?>) Reflection.getOrCreateKotlinClass(Void.class));
            }

            @Override // com.squareup.wire.ProtoAdapter
            @NotNull
            /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
            public Void c(@NotNull b0 reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            @NotNull
            /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
            public Void h(@NotNull c0 writer, @NotNull Void value) {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            @NotNull
            /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
            public Void i(@NotNull ReverseProtoWriter writer, @NotNull Void value) {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                throw new IllegalStateException("Operation not supported.");
            }

            @NotNull
            public Void Q(@NotNull Void value) {
                Intrinsics.checkNotNullParameter(value, "value");
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            @NotNull
            /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
            public Void J(@NotNull Void value) {
                Intrinsics.checkNotNullParameter(value, "value");
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public /* bridge */ /* synthetic */ int p(Object obj) {
                return ((Number) Q((Void) obj)).intValue();
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final <M extends Message<?, ?>> ProtoAdapter<M> a(@NotNull M message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return b(message.getClass());
        }

        @JvmStatic
        @NotNull
        public final <M> ProtoAdapter<M> b(@NotNull Class<M> type) {
            Intrinsics.checkNotNullParameter(type, "type");
            try {
                Object obj = type.getField("ADAPTER").get(null);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<M of com.squareup.wire.ProtoAdapter.Companion.get>");
                return (ProtoAdapter) obj;
            } catch (IllegalAccessException e10) {
                throw new IllegalArgumentException("failed to access " + type.getName() + "#ADAPTER", e10);
            } catch (NoSuchFieldException e11) {
                throw new IllegalArgumentException("failed to access " + type.getName() + "#ADAPTER", e11);
            }
        }

        @JvmStatic
        @NotNull
        public final ProtoAdapter<?> c(@NotNull String adapterString) {
            Intrinsics.checkNotNullParameter(adapterString, "adapterString");
            return d(adapterString, ProtoAdapter.class.getClassLoader());
        }

        @JvmStatic
        @NotNull
        public final ProtoAdapter<?> d(@NotNull String adapterString, @Nullable ClassLoader classLoader) {
            Intrinsics.checkNotNullParameter(adapterString, "adapterString");
            try {
                int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) adapterString, '#', 0, false, 6, (Object) null);
                String strSubstring = adapterString.substring(0, iIndexOf$default);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                String strSubstring2 = adapterString.substring(iIndexOf$default + 1);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                Object obj = Class.forName(strSubstring, true, classLoader).getField(strSubstring2).get(null);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
                return (ProtoAdapter) obj;
            } catch (ClassNotFoundException e10) {
                throw new IllegalArgumentException("failed to access " + adapterString, e10);
            } catch (IllegalAccessException e11) {
                throw new IllegalArgumentException("failed to access " + adapterString, e11);
            } catch (NoSuchFieldException e12) {
                throw new IllegalArgumentException("failed to access " + adapterString, e12);
            }
        }

        @JvmStatic
        @NotNull
        public final <E extends h0> f<E> e(@NotNull Class<E> type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return new e0(type);
        }

        @JvmStatic
        @NotNull
        public final <K, V> ProtoAdapter<Map<K, V>> f(@NotNull ProtoAdapter<K> keyAdapter, @NotNull ProtoAdapter<V> valueAdapter) {
            Intrinsics.checkNotNullParameter(keyAdapter, "keyAdapter");
            Intrinsics.checkNotNullParameter(valueAdapter, "valueAdapter");
            return new q(keyAdapter, valueAdapter);
        }

        @JvmStatic
        @NotNull
        public final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> g(@NotNull Class<M> type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return ReflectionKt.c(type, null, Syntax.PROTO_2, null, false, 24, null);
        }

        @JvmStatic
        @NotNull
        public final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> h(@NotNull Class<M> type, @NotNull String typeUrl) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(typeUrl, "typeUrl");
            return ReflectionKt.c(type, typeUrl, Syntax.PROTO_2, null, false, 24, null);
        }

        @JvmStatic
        @NotNull
        public final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> i(@NotNull Class<M> type, @NotNull String typeUrl, @NotNull Syntax syntax) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(typeUrl, "typeUrl");
            Intrinsics.checkNotNullParameter(syntax, "syntax");
            return ReflectionKt.c(type, typeUrl, syntax, null, false, 24, null);
        }

        @JvmStatic
        @NotNull
        public final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> j(@NotNull Class<M> type, @NotNull String typeUrl, @NotNull Syntax syntax, @Nullable ClassLoader classLoader) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(typeUrl, "typeUrl");
            Intrinsics.checkNotNullParameter(syntax, "syntax");
            return ReflectionKt.c(type, typeUrl, syntax, classLoader, false, 16, null);
        }

        private a() {
        }
    }

    static {
        ProtoAdapter<Duration> c1039a;
        ProtoAdapter<Instant> c1039a2;
        ProtoAdapter<Boolean> protoAdapterA = ProtoAdapterKt.a();
        f82267j = protoAdapterA;
        ProtoAdapter<Integer> protoAdapterU = ProtoAdapterKt.u();
        f82268k = protoAdapterU;
        f82269l = new l(protoAdapterU);
        ProtoAdapter<Integer> protoAdapterI = ProtoAdapterKt.I();
        f82270m = protoAdapterI;
        f82271n = new l(protoAdapterI);
        ProtoAdapter<Integer> protoAdapterZ = ProtoAdapterKt.z();
        f82272o = protoAdapterZ;
        f82273p = new l(protoAdapterZ);
        ProtoAdapter<Integer> protoAdapterQ = ProtoAdapterKt.q();
        f82274q = protoAdapterQ;
        f82275r = new l(protoAdapterQ);
        ProtoAdapter<Integer> protoAdapterX = ProtoAdapterKt.x();
        f82276s = protoAdapterX;
        f82277t = new l(protoAdapterX);
        ProtoAdapter<Long> protoAdapterV = ProtoAdapterKt.v();
        f82278u = protoAdapterV;
        f82279v = new o(protoAdapterV);
        ProtoAdapter<Long> protoAdapterJ = ProtoAdapterKt.J();
        f82280w = protoAdapterJ;
        f82281x = new o(protoAdapterJ);
        ProtoAdapter<Long> protoAdapterA2 = ProtoAdapterKt.A();
        f82282y = protoAdapterA2;
        f82283z = new o(protoAdapterA2);
        ProtoAdapter<Long> protoAdapterR = ProtoAdapterKt.r();
        A = protoAdapterR;
        B = new o(protoAdapterR);
        ProtoAdapter<Long> protoAdapterY = ProtoAdapterKt.y();
        C = protoAdapterY;
        D = new o(protoAdapterY);
        i iVarS = ProtoAdapterKt.s();
        E = iVarS;
        F = new h(iVarS);
        c cVarH = ProtoAdapterKt.h();
        G = cVarH;
        H = new b(cVarH);
        ProtoAdapter<ByteString> protoAdapterB = ProtoAdapterKt.b();
        I = protoAdapterB;
        ProtoAdapter<String> protoAdapterB2 = ProtoAdapterKt.B();
        J = protoAdapterB2;
        K = ProtoAdapterKt.j();
        L = ProtoAdapterKt.D();
        M = ProtoAdapterKt.C();
        N = ProtoAdapterKt.E();
        O = ProtoAdapterKt.F();
        P = ProtoAdapterKt.L(cVarH, "type.googleapis.com/google.protobuf.DoubleValue");
        Q = ProtoAdapterKt.L(iVarS, "type.googleapis.com/google.protobuf.FloatValue");
        R = ProtoAdapterKt.L(protoAdapterV, "type.googleapis.com/google.protobuf.Int64Value");
        S = ProtoAdapterKt.L(protoAdapterJ, "type.googleapis.com/google.protobuf.UInt64Value");
        T = ProtoAdapterKt.L(protoAdapterU, "type.googleapis.com/google.protobuf.Int32Value");
        U = ProtoAdapterKt.L(protoAdapterI, "type.googleapis.com/google.protobuf.UInt32Value");
        V = ProtoAdapterKt.L(protoAdapterA, "type.googleapis.com/google.protobuf.BoolValue");
        W = ProtoAdapterKt.L(protoAdapterB2, "type.googleapis.com/google.protobuf.StringValue");
        X = ProtoAdapterKt.L(protoAdapterB, "type.googleapis.com/google.protobuf.BytesValue");
        try {
            c1039a = ProtoAdapterKt.i();
        } catch (NoClassDefFoundError unused) {
            c1039a = new a.C1039a();
        }
        Y = c1039a;
        try {
            c1039a2 = ProtoAdapterKt.t();
        } catch (NoClassDefFoundError unused2) {
            c1039a2 = new a.C1039a();
        }
        Z = c1039a2;
    }

    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @Nullable KClass<?> kClass, @Nullable String str, @NotNull Syntax syntax, @Nullable E e10, @Nullable String str2) {
        u uVar;
        FieldEncoding fieldEncoding2;
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
        this.f82284a = fieldEncoding;
        this.f82285b = kClass;
        this.f82286c = str;
        this.f82287d = syntax;
        this.f82288e = e10;
        this.f82289f = str2;
        boolean z10 = this instanceof u;
        d0 d0Var = null;
        if (z10 || (this instanceof d0) || fieldEncoding == (fieldEncoding2 = FieldEncoding.LENGTH_DELIMITED)) {
            uVar = null;
        } else {
            if (!(v() != fieldEncoding2)) {
                throw new IllegalArgumentException("Unable to pack a length-delimited type.".toString());
            }
            uVar = new u(this);
        }
        this.f82290g = uVar;
        if (!(this instanceof d0) && !z10) {
            d0Var = new d0(this);
        }
        this.f82291h = d0Var;
    }

    @JvmStatic
    @NotNull
    public static final <E extends h0> f<E> D(@NotNull Class<E> cls) {
        return f82266i.e(cls);
    }

    @JvmStatic
    @NotNull
    public static final <K, V> ProtoAdapter<Map<K, V>> E(@NotNull ProtoAdapter<K> protoAdapter, @NotNull ProtoAdapter<V> protoAdapter2) {
        return f82266i.f(protoAdapter, protoAdapter2);
    }

    @JvmStatic
    @NotNull
    public static final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> F(@NotNull Class<M> cls) {
        return f82266i.g(cls);
    }

    @JvmStatic
    @NotNull
    public static final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> G(@NotNull Class<M> cls, @NotNull String str) {
        return f82266i.h(cls, str);
    }

    @JvmStatic
    @NotNull
    public static final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> H(@NotNull Class<M> cls, @NotNull String str, @NotNull Syntax syntax) {
        return f82266i.i(cls, str, syntax);
    }

    @JvmStatic
    @NotNull
    public static final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> I(@NotNull Class<M> cls, @NotNull String str, @NotNull Syntax syntax, @Nullable ClassLoader classLoader) {
        return f82266i.j(cls, str, syntax, classLoader);
    }

    @JvmStatic
    @NotNull
    public static final <M extends Message<?, ?>> ProtoAdapter<M> r(@NotNull M m10) {
        return f82266i.a(m10);
    }

    @JvmStatic
    @NotNull
    public static final <M> ProtoAdapter<M> s(@NotNull Class<M> cls) {
        return f82266i.b(cls);
    }

    @JvmStatic
    @NotNull
    public static final ProtoAdapter<?> t(@NotNull String str) {
        return f82266i.c(str);
    }

    @JvmStatic
    @NotNull
    public static final ProtoAdapter<?> u(@NotNull String str, @Nullable ClassLoader classLoader) {
        return f82266i.d(str, classLoader);
    }

    @NotNull
    public final Syntax A() {
        return this.f82287d;
    }

    @Nullable
    public final String B() {
        return this.f82286c;
    }

    public final boolean C() {
        return Intrinsics.areEqual(this, L) || Intrinsics.areEqual(this, M) || Intrinsics.areEqual(this, O) || Intrinsics.areEqual(this, N);
    }

    public abstract E J(E e10);

    @NotNull
    public String K(E e10) {
        return String.valueOf(e10);
    }

    public final void L(@NotNull b0 reader, @NotNull List<E> destination) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (reader.e()) {
            destination.add(c(reader));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final ProtoAdapter<?> M(@NotNull WireField.Label label) {
        Intrinsics.checkNotNullParameter(label, "label");
        if (label.isRepeated()) {
            return label.isPacked() ? a() : b();
        }
        return this;
    }

    @NotNull
    public final ProtoAdapter<List<E>> a() {
        if (!(this.f82284a != FieldEncoding.LENGTH_DELIMITED)) {
            throw new IllegalArgumentException("Unable to pack a length-delimited type.".toString());
        }
        ProtoAdapter<List<E>> protoAdapter = this.f82290g;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        throw new UnsupportedOperationException("Can't create a packed adapter from a packed or repeated adapter.");
    }

    @NotNull
    public final ProtoAdapter<List<E>> b() {
        ProtoAdapter<List<E>> protoAdapter = this.f82291h;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        throw new UnsupportedOperationException("Can't create a repeated adapter from a repeated or packed adapter.");
    }

    public abstract E c(@NotNull b0 b0Var) throws IOException;

    public final E d(@NotNull InputStream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        return e(Okio.buffer(Okio.source(stream)));
    }

    public final E e(@NotNull BufferedSource source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        return c(new b0(source));
    }

    public final E f(@NotNull ByteString bytes) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return e(new Buffer().write(bytes));
    }

    public final E g(@NotNull byte[] bytes) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return e(new Buffer().write(bytes));
    }

    @Nullable
    public final KClass<?> getType() {
        return this.f82285b;
    }

    public abstract void h(@NotNull c0 c0Var, E e10) throws IOException;

    public void i(@NotNull ReverseProtoWriter writer, E e10) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        writer.j(new ProtoAdapterKt$delegateEncode$1(this, e10));
    }

    public final void j(@NotNull OutputStream stream, E e10) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        BufferedSink bufferedSinkBuffer = Okio.buffer(Okio.sink(stream));
        k(bufferedSinkBuffer, e10);
        bufferedSinkBuffer.emit();
    }

    public final void k(@NotNull BufferedSink sink, E e10) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        ReverseProtoWriter reverseProtoWriter = new ReverseProtoWriter();
        i(reverseProtoWriter, e10);
        reverseProtoWriter.n(sink);
    }

    @NotNull
    public final byte[] l(E e10) throws IOException {
        Buffer buffer = new Buffer();
        k(buffer, e10);
        return buffer.readByteArray();
    }

    @NotNull
    public final ByteString m(E e10) throws IOException {
        Buffer buffer = new Buffer();
        k(buffer, e10);
        return buffer.readByteString();
    }

    public void n(@NotNull c0 writer, int i10, @Nullable E e10) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (e10 != null) {
            writer.f(i10, v());
            if (v() == FieldEncoding.LENGTH_DELIMITED) {
                writer.g(p(e10));
            }
            h(writer, e10);
        }
    }

    public void o(@NotNull ReverseProtoWriter writer, int i10, @Nullable E e10) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (e10 != null) {
            if (v() == FieldEncoding.LENGTH_DELIMITED) {
                int iC = writer.c();
                i(writer, e10);
                writer.o(writer.c() - iC);
            } else {
                i(writer, e10);
            }
            writer.m(i10, v());
        }
    }

    public abstract int p(E e10);

    public int q(int i10, @Nullable E e10) {
        if (e10 == null) {
            return 0;
        }
        int iP = p(e10);
        if (v() == FieldEncoding.LENGTH_DELIMITED) {
            iP += c0.f82330b.h(iP);
        }
        return c0.f82330b.g(i10) + iP;
    }

    @NotNull
    public final FieldEncoding v() {
        return this.f82284a;
    }

    @Nullable
    public final E w() {
        return this.f82288e;
    }

    @Nullable
    public final ProtoAdapter<List<E>> x() {
        return this.f82290g;
    }

    @Nullable
    public final ProtoAdapter<List<E>> y() {
        return this.f82291h;
    }

    @Nullable
    public final String z() {
        return this.f82289f;
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006¢\u0006\u0002\u0010\u0007B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\b¢\u0006\u0002\u0010\tR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;", "Ljava/lang/IllegalArgumentException;", "Lkotlin/IllegalArgumentException;", HmInputMappingContent.FIELD_VALUE, "", "type", "Ljava/lang/Class;", "(ILjava/lang/Class;)V", "Lkotlin/reflect/KClass;", "(ILkotlin/reflect/KClass;)V", "wire-runtime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class EnumConstantNotFoundException extends IllegalArgumentException {

        @JvmField
        public final int value;

        public EnumConstantNotFoundException(int i10, @Nullable KClass<?> kClass) {
            Class javaClass;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unknown enum tag ");
            sb2.append(i10);
            sb2.append(" for ");
            sb2.append((kClass == null || (javaClass = JvmClassMappingKt.getJavaClass((KClass) kClass)) == null) ? null : javaClass.getName());
            super(sb2.toString());
            this.value = i10;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public EnumConstantNotFoundException(int i10, @NotNull Class<?> type) {
            this(i10, (KClass<?>) JvmClassMappingKt.getKotlinClass(type));
            Intrinsics.checkNotNullParameter(type, "type");
        }
    }

    public /* synthetic */ ProtoAdapter(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(fieldEncoding, (KClass<?>) kClass, str, syntax, (i10 & 16) != 0 ? null : obj, (i10 & 32) != 0 ? null : str2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @NotNull Class<?> type) {
        this(fieldEncoding, (KClass<?>) JvmClassMappingKt.getKotlinClass(type));
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(type, "type");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @NotNull Class<?> type, @Nullable String str) {
        this(fieldEncoding, (KClass<?>) JvmClassMappingKt.getKotlinClass(type), str, Syntax.PROTO_2);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(type, "type");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @NotNull Class<?> type, @Nullable String str, @NotNull Syntax syntax) {
        this(fieldEncoding, (KClass<?>) JvmClassMappingKt.getKotlinClass(type), str, syntax);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @NotNull Class<?> type, @Nullable String str, @NotNull Syntax syntax, @Nullable E e10) {
        this(fieldEncoding, (KClass<?>) JvmClassMappingKt.getKotlinClass(type), str, syntax, e10, (String) null);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @Nullable KClass<?> kClass) {
        this(fieldEncoding, kClass, (String) null, Syntax.PROTO_2);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @Nullable KClass<?> kClass, @Nullable String str) {
        this(fieldEncoding, kClass, str, Syntax.PROTO_2);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @Nullable KClass<?> kClass, @Nullable String str, @NotNull Syntax syntax) {
        this(fieldEncoding, kClass, str, syntax, (Object) null);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @Nullable KClass<?> kClass, @Nullable String str, @NotNull Syntax syntax, @Nullable E e10) {
        this(fieldEncoding, kClass, str, syntax, e10, (String) null);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @NotNull Class<?> type, @Nullable String str, @NotNull Syntax syntax, @Nullable E e10, @Nullable String str2) {
        this(fieldEncoding, (KClass<?>) JvmClassMappingKt.getKotlinClass(type), str, syntax, e10, str2);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }
}

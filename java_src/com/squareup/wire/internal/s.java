package com.squareup.wire.internal;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nJsonIntegration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonIntegration.kt\ncom/squareup/wire/internal/JsonIntegration\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,248:1\n37#2,2:249\n11065#3:251\n11400#3,3:252\n*S KotlinDebug\n*F\n+ 1 JsonIntegration.kt\ncom/squareup/wire/internal/JsonIntegration\n*L\n59#1:249,2\n60#1:251\n60#1:252,3\n*E\n"})
public abstract class s<F, A> {

    private static final class a implements r<ByteString> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        public static final a f82379a = new a();

        private a() {
        }

        @Override // com.squareup.wire.internal.r
        @Nullable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public ByteString a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return ByteString.INSTANCE.decodeBase64(value);
        }

        @Override // com.squareup.wire.internal.r
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public String b(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value.base64();
        }
    }

    private static final class b implements r<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        public static final b f82380a = new b();

        private b() {
        }

        @Override // com.squareup.wire.internal.r
        public /* bridge */ /* synthetic */ Object b(Integer num) {
            return d(num.intValue());
        }

        @Override // com.squareup.wire.internal.r
        @NotNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Integer a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return Integer.valueOf(Integer.parseInt(value));
        }

        @NotNull
        public String d(int i10) {
            return String.valueOf(i10);
        }
    }

    private static final class c implements r<Long> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        public static final c f82381a = new c();

        private c() {
        }

        @Override // com.squareup.wire.internal.r
        public /* bridge */ /* synthetic */ Object b(Long l10) {
            return d(l10.longValue());
        }

        @Override // com.squareup.wire.internal.r
        @NotNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Long a(@NotNull String value) {
            long jLongValueExact;
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                jLongValueExact = Long.parseLong(value);
            } catch (Exception unused) {
                jLongValueExact = new BigDecimal(value).longValueExact();
            }
            return Long.valueOf(jLongValueExact);
        }

        @NotNull
        public String d(long j10) {
            return String.valueOf(j10);
        }
    }

    private static final class d implements r<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        public static final d f82382a = new d();

        private d() {
        }

        @Override // com.squareup.wire.internal.r
        @NotNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public String a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value;
        }

        @Override // com.squareup.wire.internal.r
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public String b(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value;
        }
    }

    private static final class e implements r<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        public static final e f82383a = new e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final long f82384b = 4294967296L;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final long f82385c = 2147483647L;

        private e() {
        }

        @Override // com.squareup.wire.internal.r
        public /* bridge */ /* synthetic */ Object b(Integer num) {
            return d(num.intValue());
        }

        @Override // com.squareup.wire.internal.r
        @NotNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Integer a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            long j10 = (long) Double.parseDouble(value);
            if (j10 >= f82385c) {
                j10 -= 4294967296L;
            }
            return Integer.valueOf((int) j10);
        }

        @NotNull
        public Object d(int i10) {
            return i10 < 0 ? Long.valueOf(((long) i10) + 4294967296L) : Integer.valueOf(i10);
        }
    }

    private static final class f implements r<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        public static final f f82386a = new f();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final long f82387b = 4294967296L;

        private f() {
        }

        @Override // com.squareup.wire.internal.r
        public /* bridge */ /* synthetic */ Object b(Integer num) {
            return d(num.intValue());
        }

        @Override // com.squareup.wire.internal.r
        @NotNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Integer a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return Integer.valueOf((int) Long.parseLong(value));
        }

        @NotNull
        public Object d(int i10) {
            return i10 < 0 ? String.valueOf(((long) i10) + 4294967296L) : String.valueOf(i10);
        }
    }

    private static final class g implements r<Long> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        public static final g f82388a = new g();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private static final BigInteger f82389b = new BigInteger("18446744073709551616");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final BigInteger f82390c = BigInteger.valueOf(Long.MAX_VALUE);

        private g() {
        }

        @Override // com.squareup.wire.internal.r
        public /* bridge */ /* synthetic */ Object b(Long l10) {
            return d(l10.longValue());
        }

        @Override // com.squareup.wire.internal.r
        @NotNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Long a(@NotNull String value) {
            BigInteger bigInteger;
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                bigInteger = new BigInteger(value);
            } catch (Exception unused) {
                bigInteger = new BigDecimal(value).toBigInteger();
            }
            return Long.valueOf(bigInteger.compareTo(f82390c) > 0 ? bigInteger.subtract(f82389b).longValue() : bigInteger.longValue());
        }

        @NotNull
        public Object d(long j10) {
            Object objAdd = j10 < 0 ? f82389b.add(BigInteger.valueOf(j10)) : Long.valueOf(j10);
            Intrinsics.checkNotNull(objAdd);
            return objAdd;
        }
    }

    private static final class h implements r<Long> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        public static final h f82391a = new h();

        private h() {
        }

        @Override // com.squareup.wire.internal.r
        public /* bridge */ /* synthetic */ Object b(Long l10) {
            return d(l10.longValue());
        }

        @Override // com.squareup.wire.internal.r
        @NotNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Long a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return g.f82388a.a(value);
        }

        @NotNull
        public String d(long j10) {
            return g.f82388a.d(j10).toString();
        }
    }

    private final <M, B> A c(F f10, Syntax syntax, FieldOrOneOfBinding<M, B> fieldOrOneOfBinding) {
        A aB;
        if (fieldOrOneOfBinding.j().C()) {
            return i(f10);
        }
        r<?> rVarE = e(syntax, fieldOrOneOfBinding.j());
        if (rVarE != null) {
            aB = a(rVarE);
        } else {
            KClass<?> type = fieldOrOneOfBinding.j().getType();
            Class javaObjectType = type != null ? JvmClassMappingKt.getJavaObjectType(type) : null;
            Intrinsics.checkNotNull(javaObjectType, "null cannot be cast to non-null type java.lang.reflect.Type");
            aB = b(f10, javaObjectType);
        }
        if (fieldOrOneOfBinding.g().isRepeated()) {
            return f(aB);
        }
        return fieldOrOneOfBinding.n() ? g(f10, h(fieldOrOneOfBinding.f()), aB) : aB;
    }

    private final r<?> e(Syntax syntax, ProtoAdapter<?> protoAdapter) {
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.I) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.X)) {
            return a.f82379a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.Y)) {
            return com.squareup.wire.internal.c.f82369a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.Z)) {
            return l.f82375a;
        }
        if (protoAdapter instanceof com.squareup.wire.f) {
            return new com.squareup.wire.internal.d((com.squareup.wire.f) protoAdapter);
        }
        if (syntax == Syntax.PROTO_2) {
            if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82280w) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.S)) {
                return g.f82388a;
            }
            return null;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82270m) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82274q) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.U)) {
            return e.f82383a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82278u) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.C) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82282y) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.R)) {
            return c.f82381a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.A) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82280w) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.S)) {
            return h.f82391a;
        }
        return null;
    }

    private final r<?> h(ProtoAdapter<?> protoAdapter) {
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.J)) {
            return d.f82382a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82268k) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82272o) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82276s)) {
            return b.f82380a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82274q) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82270m)) {
            return f.f82386a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82278u) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.C) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82282y)) {
            return c.f82381a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.A) ? true : Intrinsics.areEqual(protoAdapter, ProtoAdapter.f82280w)) {
            return h.f82391a;
        }
        throw new IllegalStateException(("Unexpected map key type: " + protoAdapter.getType()).toString());
    }

    public abstract A a(@NotNull r<?> rVar);

    public abstract A b(F f10, @NotNull Type type);

    @NotNull
    public final <M, B> List<A> d(@NotNull x<M, B> adapter, F f10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        FieldOrOneOfBinding<M, B>[] fieldOrOneOfBindingArr = (FieldOrOneOfBinding[]) adapter.O().values().toArray(new FieldOrOneOfBinding[0]);
        ArrayList arrayList = new ArrayList(fieldOrOneOfBindingArr.length);
        for (FieldOrOneOfBinding<M, B> fieldOrOneOfBinding : fieldOrOneOfBindingArr) {
            arrayList.add(c(f10, adapter.A(), fieldOrOneOfBinding));
        }
        return arrayList;
    }

    public abstract A f(A a10);

    public abstract A g(F f10, @NotNull r<?> rVar, A a10);

    public abstract A i(F f10);
}

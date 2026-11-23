package com.squareup.wire.internal;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.b0;
import com.squareup.wire.h0;
import java.time.Duration;
import java.time.Instant;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class n {
    public static final int A(@NotNull b0 b0Var) {
        return Internal__InternalKt.A(b0Var);
    }

    public static final long B(@NotNull b0 b0Var) {
        return Internal__InternalKt.B(b0Var);
    }

    public static final int C(@NotNull b0 b0Var) {
        return Internal__InternalKt.C(b0Var);
    }

    public static final long D(@NotNull b0 b0Var) {
        return Internal__InternalKt.D(b0Var);
    }

    public static final void E(@NotNull double[] dArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.E(dArr, reverseProtoWriter, i10);
    }

    public static final void F(@NotNull int[] iArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.F(iArr, reverseProtoWriter, i10);
    }

    public static final void G(@NotNull long[] jArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.G(jArr, reverseProtoWriter, i10);
    }

    public static final void H(@NotNull float[] fArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.H(fArr, reverseProtoWriter, i10);
    }

    public static final void I(@NotNull int[] iArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.I(iArr, reverseProtoWriter, i10);
    }

    public static final void J(@NotNull long[] jArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.J(jArr, reverseProtoWriter, i10);
    }

    public static final void K(@NotNull int[] iArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.K(iArr, reverseProtoWriter, i10);
    }

    public static final void L(@NotNull long[] jArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.L(jArr, reverseProtoWriter, i10);
    }

    public static final void M(@NotNull int[] iArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.M(iArr, reverseProtoWriter, i10);
    }

    public static final void N(@NotNull long[] jArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.N(jArr, reverseProtoWriter, i10);
    }

    public static final void O(@NotNull int[] iArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.O(iArr, reverseProtoWriter, i10);
    }

    public static final void P(@NotNull long[] jArr, @NotNull ReverseProtoWriter reverseProtoWriter, int i10) {
        Internal__InternalKt.P(jArr, reverseProtoWriter, i10);
    }

    public static final boolean Q(@Nullable Object obj, @Nullable Object obj2) {
        return Internal__InternalKt.Q(obj, obj2);
    }

    @Nullable
    public static final <E extends h0> E R(@NotNull Class<E> cls) {
        return (E) o.a(cls);
    }

    @NotNull
    public static final <T> List<T> S(@NotNull String str, @NotNull List<? extends T> list) {
        return Internal__InternalKt.S(str, list);
    }

    @NotNull
    public static final <K, V> Map<K, V> T(@NotNull String str, @NotNull Map<K, ? extends V> map) {
        return Internal__InternalKt.T(str, map);
    }

    @NotNull
    public static final <K, V> Map<K, V> U(@NotNull String str, @NotNull Map<K, ? extends V> map) {
        return Internal__InternalKt.U(str, map);
    }

    public static final <T> T V(@NotNull String str, T t10) {
        return (T) Internal__InternalKt.V(str, t10);
    }

    @NotNull
    public static final IllegalStateException W(@NotNull Object... objArr) {
        return Internal__InternalKt.W(objArr);
    }

    @NotNull
    public static final <T> List<T> X() {
        return Internal__InternalKt.X();
    }

    @NotNull
    public static final <K, V> Map<K, V> Y() {
        return Internal__InternalKt.Y();
    }

    public static final <T> void Z(@NotNull List<T> list, @NotNull ProtoAdapter<T> protoAdapter) {
        o.b(list, protoAdapter);
    }

    @JvmName(name = "-redactElements")
    @NotNull
    public static final <T> List<T> a(@NotNull List<? extends T> list, @NotNull ProtoAdapter<T> protoAdapter) {
        return Internal__InternalKt.a(list, protoAdapter);
    }

    public static final <T> void a0(@NotNull Map<?, T> map, @NotNull ProtoAdapter<T> protoAdapter) {
        o.c(map, protoAdapter);
    }

    @JvmName(name = "-redactElements")
    @NotNull
    public static final <K, V> Map<K, V> b(@NotNull Map<K, ? extends V> map, @NotNull ProtoAdapter<V> protoAdapter) {
        return Internal__InternalKt.b(map, protoAdapter);
    }

    @NotNull
    public static final String b0(@NotNull String str) {
        return Internal__InternalKt.Z(str);
    }

    @NotNull
    public static final String c(@NotNull String str) {
        return Internal__InternalKt.c(str);
    }

    @NotNull
    public static final String c0(@NotNull List<String> list) {
        return Internal__InternalKt.a0(list);
    }

    @NotNull
    public static final String d(@NotNull String str, @NotNull String str2) {
        return Internal__InternalKt.d(str, str2);
    }

    @NotNull
    public static final String e(@NotNull String str) {
        return Internal__InternalKt.e(str);
    }

    public static final void f(@NotNull List<?> list) {
        Internal__InternalKt.f(list);
    }

    public static final void g(@NotNull Map<?, ?> map) {
        Internal__InternalKt.g(map);
    }

    public static final boolean h(@NotNull Duration duration, @Nullable Object obj) {
        return Internal__InternalKt.h(duration, obj);
    }

    public static final boolean i(@NotNull Instant instant, @Nullable Object obj) {
        return Internal__InternalKt.i(instant, obj);
    }

    public static final int j(@NotNull Duration duration) {
        return Internal__InternalKt.j(duration);
    }

    public static final int k(@NotNull Instant instant) {
        return Internal__InternalKt.k(instant);
    }

    @Deprecated(message = "Please regenerate code using wire-compiler version 3.0.0 or higher.", replaceWith = @ReplaceWith(expression = "com.squareup.internal.Internal.copyOf(list)", imports = {}))
    @NotNull
    public static final <T> List<T> l(@NotNull String str, @Nullable List<? extends T> list) {
        return Internal__InternalKt.l(str, list);
    }

    @NotNull
    public static final <T> List<T> m(@NotNull List<? extends T> list) {
        return Internal__InternalKt.m(list);
    }

    @Deprecated(message = "Please regenerate code using wire-compiler version 3.0.0 or higher.", replaceWith = @ReplaceWith(expression = "com.squareup.internal.Internal.copyOf(map)", imports = {}))
    @NotNull
    public static final <K, V> Map<K, V> n(@NotNull String str, @Nullable Map<K, ? extends V> map) {
        return Internal__InternalKt.n(str, map);
    }

    @NotNull
    public static final <K, V> Map<K, V> o(@NotNull Map<K, ? extends V> map) {
        return Internal__InternalKt.o(map);
    }

    public static final int p(@Nullable Object obj, @Nullable Object obj2) {
        return Internal__InternalKt.p(obj, obj2);
    }

    public static final int q(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3) {
        return Internal__InternalKt.q(obj, obj2, obj3);
    }

    public static final int r(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @NotNull Object... objArr) {
        return Internal__InternalKt.r(obj, obj2, obj3, obj4, objArr);
    }

    public static final double s(@NotNull b0 b0Var) {
        return Internal__InternalKt.s(b0Var);
    }

    public static final int t(@NotNull b0 b0Var) {
        return Internal__InternalKt.t(b0Var);
    }

    public static final long u(@NotNull b0 b0Var) {
        return Internal__InternalKt.u(b0Var);
    }

    public static final float v(@NotNull b0 b0Var) {
        return Internal__InternalKt.v(b0Var);
    }

    public static final int w(@NotNull b0 b0Var) {
        return Internal__InternalKt.w(b0Var);
    }

    public static final long x(@NotNull b0 b0Var) {
        return Internal__InternalKt.x(b0Var);
    }

    public static final int y(@NotNull b0 b0Var) {
        return Internal__InternalKt.y(b0Var);
    }

    public static final long z(@NotNull b0 b0Var) {
        return Internal__InternalKt.z(b0Var);
    }
}

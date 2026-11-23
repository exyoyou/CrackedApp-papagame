package com.squareup.wire;

import com.squareup.wire.h0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class e0<E extends h0> extends f<E> {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    @NotNull
    public static final a f82333c0 = new a(null);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    @NotNull
    private final Class<E> f82334a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    @Nullable
    private Method f82335b0;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final <E extends h0> e0<E> a(@NotNull Class<E> enumType) {
            Intrinsics.checkNotNullParameter(enumType, "enumType");
            return new e0<>(enumType, ProtoAdapter.f82266i.b(enumType).A());
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(@NotNull Class<E> javaType, @NotNull Syntax syntax) {
        super((KClass<h0>) JvmClassMappingKt.getKotlinClass(javaType), syntax, com.squareup.wire.internal.n.R(javaType));
        Intrinsics.checkNotNullParameter(javaType, "javaType");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
        this.f82334a0 = javaType;
    }

    @JvmStatic
    @NotNull
    public static final <E extends h0> e0<E> T(@NotNull Class<E> cls) {
        return f82333c0.a(cls);
    }

    private final Method U() throws NoSuchMethodException {
        Method method = this.f82335b0;
        if (method != null) {
            return method;
        }
        Method method2 = this.f82334a0.getMethod("fromValue", Integer.TYPE);
        this.f82335b0 = method2;
        Intrinsics.checkNotNullExpressionValue(method2, "also(...)");
        return method2;
    }

    @Override // com.squareup.wire.f
    @NotNull
    protected E R(int i10) throws IllegalAccessException, InvocationTargetException {
        Object objInvoke = U().invoke(null, Integer.valueOf(i10));
        Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type E of com.squareup.wire.RuntimeEnumAdapter");
        return (E) objInvoke;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof e0) && Intrinsics.areEqual(((e0) obj).getType(), getType());
    }

    public int hashCode() {
        KClass<?> type = getType();
        if (type != null) {
            return type.hashCode();
        }
        return 0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e0(@NotNull Class<E> javaType) {
        this(javaType, Syntax.PROTO_2);
        Intrinsics.checkNotNullParameter(javaType, "javaType");
    }
}

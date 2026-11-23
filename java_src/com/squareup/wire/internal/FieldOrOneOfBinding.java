package com.squareup.wire.internal;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FieldOrOneOfBinding<M, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final Lazy f82360a = LazyKt__LazyJVMKt.lazy(new Function0<ProtoAdapter<Object>>(this) { // from class: com.squareup.wire.internal.FieldOrOneOfBinding$adapter$2

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FieldOrOneOfBinding<M, B> f82361b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        {
            super(0);
            this.f82361b = this;
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ProtoAdapter<Object> invoke() {
            if (!this.f82361b.n()) {
                ProtoAdapter<?> protoAdapterM = this.f82361b.j().M(this.f82361b.g());
                Intrinsics.checkNotNull(protoAdapterM, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
                return protoAdapterM;
            }
            ProtoAdapter.a aVar = ProtoAdapter.f82266i;
            ProtoAdapter<?> protoAdapterF = this.f82361b.f();
            Intrinsics.checkNotNull(protoAdapterF, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
            ProtoAdapter<?> protoAdapterJ = this.f82361b.j();
            Intrinsics.checkNotNull(protoAdapterJ, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
            ProtoAdapter<Object> protoAdapterF2 = aVar.f(protoAdapterF, protoAdapterJ);
            Intrinsics.checkNotNull(protoAdapterF2, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
            return protoAdapterF2;
        }
    });

    public static /* synthetic */ void c() {
    }

    private final boolean q(Syntax syntax) {
        if (m()) {
            return false;
        }
        if (g() == WireField.Label.OMIT_IDENTITY) {
            return true;
        }
        if (g().isRepeated() && syntax == Syntax.PROTO_3) {
            return true;
        }
        return n() && syntax == Syntax.PROTO_3;
    }

    @Nullable
    public abstract Object a(M m10);

    @NotNull
    public final ProtoAdapter<Object> b() {
        return (ProtoAdapter) this.f82360a.getValue();
    }

    @NotNull
    public abstract String d();

    @Nullable
    public abstract Object e(B b10);

    @NotNull
    public abstract ProtoAdapter<?> f();

    @NotNull
    public abstract WireField.Label g();

    @NotNull
    public abstract String h();

    public abstract boolean i();

    @NotNull
    public abstract ProtoAdapter<?> j();

    public abstract int k();

    @NotNull
    public abstract String l();

    public abstract boolean m();

    public abstract boolean n();

    public abstract boolean o();

    public final boolean p(@NotNull Syntax syntax, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(syntax, "syntax");
        if (obj == null) {
            return true;
        }
        return q(syntax) && Intrinsics.areEqual(obj, b().w());
    }

    public abstract void r(B b10, @Nullable Object obj);

    public abstract void s(B b10, @NotNull Object obj);
}

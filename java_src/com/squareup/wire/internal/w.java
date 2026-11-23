package com.squareup.wire.internal;

import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireField;
import java.lang.reflect.Field;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class w<M extends Message<M, B>, B extends Message.a<M, B>> extends FieldOrOneOfBinding<M, B> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Field f82396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final com.squareup.wire.t.a<?> f82397c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f82398d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final Field f82399e;

    public w(@NotNull Field messageField, @NotNull Class<B> builderType, @NotNull com.squareup.wire.t.a<?> key, boolean z10) throws NoSuchFieldException {
        Intrinsics.checkNotNullParameter(messageField, "messageField");
        Intrinsics.checkNotNullParameter(builderType, "builderType");
        Intrinsics.checkNotNullParameter(key, "key");
        this.f82396b = messageField;
        this.f82397c = key;
        this.f82398d = z10;
        Field declaredField = builderType.getDeclaredField(messageField.getName());
        Intrinsics.checkNotNullExpressionValue(declaredField, "getDeclaredField(...)");
        this.f82399e = declaredField;
    }

    public static /* synthetic */ void w() {
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @NotNull
    public String d() {
        return this.f82397c.b();
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    public /* bridge */ /* synthetic */ ProtoAdapter f() {
        return (ProtoAdapter) v();
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @NotNull
    public WireField.Label g() {
        return WireField.Label.OPTIONAL;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @NotNull
    public String h() {
        return this.f82397c.b();
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    public boolean i() {
        return this.f82397c.d();
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @NotNull
    public ProtoAdapter<Object> j() {
        ProtoAdapter<?> protoAdapterA = this.f82397c.a();
        Intrinsics.checkNotNull(protoAdapterA, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
        return protoAdapterA;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    public int k() {
        return this.f82397c.e();
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @NotNull
    public String l() {
        return this.f82397c.c();
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    public boolean m() {
        return this.f82398d;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    public boolean n() {
        return false;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    public boolean o() {
        KClass<?> type = j().getType();
        return Message.class.isAssignableFrom(type != null ? JvmClassMappingKt.getJavaObjectType(type) : null);
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @Nullable
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public Object a(@NotNull M message) {
        Intrinsics.checkNotNullParameter(message, "message");
        com.squareup.wire.t tVar = (com.squareup.wire.t) this.f82396b.get(message);
        if (tVar != null) {
            return tVar.i(this.f82397c);
        }
        return null;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @Nullable
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public Object e(@NotNull B builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        com.squareup.wire.t tVar = (com.squareup.wire.t) this.f82399e.get(builder);
        if (tVar != null) {
            return tVar.i(this.f82397c);
        }
        return null;
    }

    @NotNull
    public Void v() {
        throw new IllegalStateException("not a map".toString());
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void r(@NotNull B builder, @Nullable Object obj) throws IllegalAccessException {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Field field = this.f82399e;
        com.squareup.wire.t.a<?> aVar = this.f82397c;
        Intrinsics.checkNotNull(aVar, "null cannot be cast to non-null type com.squareup.wire.OneOf.Key<kotlin.Any>");
        Intrinsics.checkNotNull(obj);
        field.set(builder, new com.squareup.wire.t(aVar, obj));
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void s(@NotNull B builder, @NotNull Object value) throws IllegalAccessException {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(value, "value");
        r(builder, value);
    }
}

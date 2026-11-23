package com.squareup.wire.internal;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import com.squareup.wire.Syntax;
import java.io.EOFException;
import java.io.IOException;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class y<M extends Message<M, B>, B extends Message.a<M, B>> implements v<M, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final KClass<M> f82408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Class<B> f82409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final Function0<B> f82410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final Map<Integer, FieldOrOneOfBinding<M, B>> f82411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final String f82412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final Syntax f82413f;

    /* JADX WARN: Multi-variable type inference failed */
    public y(@NotNull KClass<M> messageType, @NotNull Class<B> builderType, @NotNull Function0<? extends B> createBuilder, @NotNull Map<Integer, ? extends FieldOrOneOfBinding<M, B>> fields, @Nullable String str, @NotNull Syntax syntax) {
        Intrinsics.checkNotNullParameter(messageType, "messageType");
        Intrinsics.checkNotNullParameter(builderType, "builderType");
        Intrinsics.checkNotNullParameter(createBuilder, "createBuilder");
        Intrinsics.checkNotNullParameter(fields, "fields");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
        this.f82408a = messageType;
        this.f82409b = builderType;
        this.f82410c = createBuilder;
        this.f82411d = fields;
        this.f82412e = str;
        this.f82413f = syntax;
    }

    @Override // com.squareup.wire.internal.v
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void b(@NotNull B builder, int i10, @NotNull FieldEncoding fieldEncoding, @Nullable Object obj) throws IOException {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        builder.a(i10, fieldEncoding, obj);
    }

    @Override // com.squareup.wire.internal.v
    @NotNull
    public Map<Integer, FieldOrOneOfBinding<M, B>> getFields() {
        return this.f82411d;
    }

    @Override // com.squareup.wire.internal.v
    @NotNull
    public KClass<M> getMessageType() {
        return this.f82408a;
    }

    @Override // com.squareup.wire.internal.v
    @NotNull
    public Syntax getSyntax() {
        return this.f82413f;
    }

    @Override // com.squareup.wire.internal.v
    @Nullable
    public String getTypeUrl() {
        return this.f82412e;
    }

    @Override // com.squareup.wire.internal.v
    @NotNull
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public M f(@NotNull B builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return (M) builder.c();
    }

    @Override // com.squareup.wire.internal.v
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void a(@NotNull B builder) throws EOFException {
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.e();
    }

    @Override // com.squareup.wire.internal.v
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public int c(@NotNull M message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return message.getCachedSerializedSize();
    }

    @Override // com.squareup.wire.internal.v
    @NotNull
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public B newBuilder() {
        return this.f82410c.invoke();
    }

    @Override // com.squareup.wire.internal.v
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public void e(@NotNull M message, int i10) {
        Intrinsics.checkNotNullParameter(message, "message");
        message.setCachedSerializedSize$wire_runtime(i10);
    }

    @Override // com.squareup.wire.internal.v
    @NotNull
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public ByteString d(@NotNull M message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return message.unknownFields();
    }
}

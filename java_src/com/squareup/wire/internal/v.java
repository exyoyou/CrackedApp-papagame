package com.squareup.wire.internal;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Syntax;
import java.util.Map;
import kotlin.reflect.KClass;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public interface v<M, B> {
    void a(@NotNull B b10);

    void b(@NotNull B b10, int i10, @NotNull FieldEncoding fieldEncoding, @Nullable Object obj);

    int c(@NotNull M m10);

    @NotNull
    ByteString d(@NotNull M m10);

    void e(@NotNull M m10, int i10);

    @NotNull
    M f(@NotNull B b10);

    @NotNull
    Map<Integer, FieldOrOneOfBinding<M, B>> getFields();

    @NotNull
    KClass<? super M> getMessageType();

    @NotNull
    Syntax getSyntax();

    @Nullable
    String getTypeUrl();

    @NotNull
    B newBuilder();
}

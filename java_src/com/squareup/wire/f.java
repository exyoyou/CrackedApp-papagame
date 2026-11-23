package com.squareup.wire;

import com.squareup.wire.h0;
import java.io.IOException;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nEnumAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnumAdapter.kt\ncom/squareup/wire/EnumAdapter\n+ 2 EnumAdapter.kt\ncom/squareup/wire/EnumAdapterKt\n*L\n1#1,66:1\n52#2:67\n57#2,2:68\n62#2,2:70\n70#2,2:72\n76#2:74\n*S KotlinDebug\n*F\n+ 1 EnumAdapter.kt\ncom/squareup/wire/EnumAdapter\n*L\n44#1:67\n48#1:68,2\n52#1:70,2\n56#1:72,2\n58#1:74\n*E\n"})
public abstract class f<E extends h0> extends ProtoAdapter<E> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected f(@NotNull KClass<E> type, @NotNull Syntax syntax, @Nullable E e10) {
        super(FieldEncoding.VARINT, (KClass<?>) type, (String) null, syntax, e10);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public E c(@NotNull b0 reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        int iT = reader.t();
        E e10 = (E) R(iT);
        if (e10 != null) {
            return e10;
        }
        throw new ProtoAdapter.EnumConstantNotFoundException(iT, getType());
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull c0 writer, @NotNull E value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.g(value.getValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void i(@NotNull ReverseProtoWriter writer, @NotNull E value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.o(value.getValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public int p(@NotNull E value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return c0.f82330b.h(value.getValue());
    }

    @Nullable
    protected abstract E R(int i10);

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public E J(@NotNull E value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(@NotNull Class<E> type, @NotNull Syntax syntax, @Nullable E e10) {
        this(JvmClassMappingKt.getKotlinClass(type), syntax, e10);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(@NotNull Class<E> type) {
        this((KClass<h0>) JvmClassMappingKt.getKotlinClass(type), Syntax.PROTO_2, com.squareup.wire.internal.n.R(type));
        Intrinsics.checkNotNullParameter(type, "type");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(@NotNull Class<E> type, @NotNull Syntax syntax) {
        this((KClass<h0>) JvmClassMappingKt.getKotlinClass(type), syntax, com.squareup.wire.internal.n.R(type));
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(@NotNull KClass<E> type) {
        this(type, Syntax.PROTO_2, com.squareup.wire.internal.n.R(JvmClassMappingKt.getJavaClass((KClass) type)));
        Intrinsics.checkNotNullParameter(type, "type");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(@NotNull KClass<E> type, @NotNull Syntax syntax) {
        this(type, syntax, com.squareup.wire.internal.n.R(JvmClassMappingKt.getJavaClass((KClass) type)));
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }
}

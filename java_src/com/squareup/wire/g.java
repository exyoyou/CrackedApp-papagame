package com.squareup.wire;

import java.io.IOException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class g {
    @NotNull
    public static final <E extends h0> E a(@NotNull f<E> fVar, @NotNull b0 reader, @NotNull Function1<? super Integer, ? extends E> fromValue) throws IOException {
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(fromValue, "fromValue");
        int iT = reader.t();
        E eInvoke = fromValue.invoke(Integer.valueOf(iT));
        if (eInvoke != null) {
            return eInvoke;
        }
        throw new ProtoAdapter.EnumConstantNotFoundException(iT, fVar.getType());
    }

    public static final <E extends h0> void b(@NotNull c0 writer, @NotNull E value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.g(value.getValue());
    }

    public static final <E extends h0> void c(@NotNull ReverseProtoWriter writer, @NotNull E value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.o(value.getValue());
    }

    public static final <E extends h0> int d(@NotNull E value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return c0.f82330b.h(value.getValue());
    }

    @NotNull
    public static final <E extends h0> E e(@NotNull E value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new UnsupportedOperationException();
    }
}

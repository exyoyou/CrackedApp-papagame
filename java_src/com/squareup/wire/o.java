package com.squareup.wire;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class o extends ProtoAdapter<long[]> {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    @NotNull
    private final ProtoAdapter<Long> f82421a0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(@NotNull ProtoAdapter<Long> originalAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, (KClass<?>) Reflection.getOrCreateKotlinClass(long[].class), (String) null, originalAdapter.A(), new long[0]);
        Intrinsics.checkNotNullParameter(originalAdapter, "originalAdapter");
        this.f82421a0 = originalAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public long[] c(@NotNull b0 reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new long[]{this.f82421a0.c(reader).longValue()};
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull c0 writer, @NotNull long[] value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        for (long j10 : value) {
            this.f82421a0.h(writer, Long.valueOf(j10));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void i(@NotNull ReverseProtoWriter writer, @NotNull long[] value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        int length = value.length;
        while (true) {
            length--;
            if (-1 >= length) {
                return;
            } else {
                this.f82421a0.i(writer, Long.valueOf(value[length]));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void n(@NotNull c0 writer, int i10, @Nullable long[] jArr) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (jArr != null) {
            if (!(jArr.length == 0)) {
                super.n(writer, i10, jArr);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public void o(@NotNull ReverseProtoWriter writer, int i10, @Nullable long[] jArr) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (jArr != null) {
            if (!(jArr.length == 0)) {
                super.o(writer, i10, jArr);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public int p(@NotNull long[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int iP = 0;
        for (long j10 : value) {
            iP += this.f82421a0.p(Long.valueOf(j10));
        }
        return iP;
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public int q(int i10, @Nullable long[] jArr) {
        if (jArr == null) {
            return 0;
        }
        if (jArr.length == 0) {
            return 0;
        }
        return super.q(i10, jArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public long[] J(@NotNull long[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return new long[0];
    }
}

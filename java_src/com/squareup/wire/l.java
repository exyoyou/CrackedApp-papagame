package com.squareup.wire;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class l extends ProtoAdapter<int[]> {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    @NotNull
    private final ProtoAdapter<Integer> f82414a0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(@NotNull ProtoAdapter<Integer> originalAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, (KClass<?>) Reflection.getOrCreateKotlinClass(int[].class), (String) null, originalAdapter.A(), new int[0]);
        Intrinsics.checkNotNullParameter(originalAdapter, "originalAdapter");
        this.f82414a0 = originalAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public int[] c(@NotNull b0 reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new int[]{this.f82414a0.c(reader).intValue()};
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull c0 writer, @NotNull int[] value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        for (int i10 : value) {
            this.f82414a0.h(writer, Integer.valueOf(i10));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void i(@NotNull ReverseProtoWriter writer, @NotNull int[] value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        int length = value.length;
        while (true) {
            length--;
            if (-1 >= length) {
                return;
            } else {
                this.f82414a0.i(writer, Integer.valueOf(value[length]));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void n(@NotNull c0 writer, int i10, @Nullable int[] iArr) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (iArr != null) {
            if (!(iArr.length == 0)) {
                super.n(writer, i10, iArr);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public void o(@NotNull ReverseProtoWriter writer, int i10, @Nullable int[] iArr) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (iArr != null) {
            if (!(iArr.length == 0)) {
                super.o(writer, i10, iArr);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public int p(@NotNull int[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int iP = 0;
        for (int i10 : value) {
            iP += this.f82414a0.p(Integer.valueOf(i10));
        }
        return iP;
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public int q(int i10, @Nullable int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        if (iArr.length == 0) {
            return 0;
        }
        return super.q(i10, iArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public int[] J(@NotNull int[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return new int[0];
    }
}

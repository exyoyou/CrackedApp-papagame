package com.squareup.wire;

import java.io.IOException;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends ProtoAdapter<double[]> {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    @NotNull
    private final ProtoAdapter<Double> f82308a0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull ProtoAdapter<Double> originalAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, (KClass<?>) Reflection.getOrCreateKotlinClass(double[].class), (String) null, originalAdapter.A(), new double[0]);
        Intrinsics.checkNotNullParameter(originalAdapter, "originalAdapter");
        this.f82308a0 = originalAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public double[] c(@NotNull b0 reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        DoubleCompanionObject doubleCompanionObject = DoubleCompanionObject.INSTANCE;
        return new double[]{Double.longBitsToDouble(reader.q())};
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull c0 writer, @NotNull double[] value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        for (double d10 : value) {
            this.f82308a0.h(writer, Double.valueOf(d10));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void i(@NotNull ReverseProtoWriter writer, @NotNull double[] value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        int length = value.length;
        while (true) {
            length--;
            if (-1 >= length) {
                return;
            } else {
                writer.i(Double.doubleToLongBits(value[length]));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void n(@NotNull c0 writer, int i10, @Nullable double[] dArr) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (dArr != null) {
            if (!(dArr.length == 0)) {
                super.n(writer, i10, dArr);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public void o(@NotNull ReverseProtoWriter writer, int i10, @Nullable double[] dArr) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (dArr != null) {
            if (!(dArr.length == 0)) {
                super.o(writer, i10, dArr);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public int p(@NotNull double[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int iP = 0;
        for (double d10 : value) {
            iP += this.f82308a0.p(Double.valueOf(d10));
        }
        return iP;
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public int q(int i10, @Nullable double[] dArr) {
        if (dArr == null) {
            return 0;
        }
        if (dArr.length == 0) {
            return 0;
        }
        return super.q(i10, dArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public double[] J(@NotNull double[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return new double[0];
    }
}

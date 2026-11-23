package com.squareup.wire;

import java.io.IOException;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class h extends ProtoAdapter<float[]> {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    @NotNull
    private final ProtoAdapter<Float> f82336a0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(@NotNull ProtoAdapter<Float> originalAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, (KClass<?>) Reflection.getOrCreateKotlinClass(float[].class), (String) null, originalAdapter.A(), new float[0]);
        Intrinsics.checkNotNullParameter(originalAdapter, "originalAdapter");
        this.f82336a0 = originalAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public float[] c(@NotNull b0 reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return new float[]{Float.intBitsToFloat(reader.p())};
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull c0 writer, @NotNull float[] value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        for (float f10 : value) {
            this.f82336a0.h(writer, Float.valueOf(f10));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void i(@NotNull ReverseProtoWriter writer, @NotNull float[] value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        int length = value.length;
        while (true) {
            length--;
            if (-1 >= length) {
                return;
            } else {
                writer.h(Float.floatToIntBits(value[length]));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void n(@NotNull c0 writer, int i10, @Nullable float[] fArr) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (fArr != null) {
            if (!(fArr.length == 0)) {
                super.n(writer, i10, fArr);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public void o(@NotNull ReverseProtoWriter writer, int i10, @Nullable float[] fArr) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (fArr != null) {
            if (!(fArr.length == 0)) {
                super.o(writer, i10, fArr);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public int p(@NotNull float[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int iP = 0;
        for (float f10 : value) {
            iP += this.f82336a0.p(Float.valueOf(f10));
        }
        return iP;
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public int q(int i10, @Nullable float[] fArr) {
        if (fArr == null) {
            return 0;
        }
        if (fArr.length == 0) {
            return 0;
        }
        return super.q(i10, fArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public float[] J(@NotNull float[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return new float[0];
    }
}

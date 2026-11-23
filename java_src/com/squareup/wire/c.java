package com.squareup.wire;

import java.io.IOException;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class c extends ProtoAdapter<Double> {
    public c() {
        super(FieldEncoding.FIXED64, (KClass<?>) Reflection.getOrCreateKotlinClass(Double.TYPE), (String) null, Syntax.PROTO_2, Double.valueOf(0.0d));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ Double J(Double d10) {
        return R(d10.doubleValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public Double c(@NotNull b0 reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        DoubleCompanionObject doubleCompanionObject = DoubleCompanionObject.INSTANCE;
        return Double.valueOf(Double.longBitsToDouble(reader.q()));
    }

    public void O(@NotNull c0 writer, double d10) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        writer.c(Double.doubleToLongBits(d10));
    }

    public void P(@NotNull ReverseProtoWriter writer, double d10) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        writer.i(Double.doubleToLongBits(d10));
    }

    public int Q(double d10) {
        return 8;
    }

    @NotNull
    public Double R(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ void h(c0 c0Var, Double d10) throws IOException {
        O(c0Var, d10.doubleValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Double d10) throws IOException {
        P(reverseProtoWriter, d10.doubleValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ int p(Double d10) {
        return Q(d10.doubleValue());
    }
}

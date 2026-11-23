package com.squareup.wire;

import java.io.IOException;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class i extends ProtoAdapter<Float> {
    public i() {
        super(FieldEncoding.FIXED32, (KClass<?>) Reflection.getOrCreateKotlinClass(Float.TYPE), (String) null, Syntax.PROTO_2, Float.valueOf(0.0f));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ Float J(Float f10) {
        return R(f10.floatValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public Float c(@NotNull b0 reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.valueOf(Float.intBitsToFloat(reader.p()));
    }

    public void O(@NotNull c0 writer, float f10) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        writer.b(Float.floatToIntBits(f10));
    }

    public void P(@NotNull ReverseProtoWriter writer, float f10) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        writer.h(Float.floatToIntBits(f10));
    }

    public int Q(float f10) {
        return 4;
    }

    @NotNull
    public Float R(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ void h(c0 c0Var, Float f10) throws IOException {
        O(c0Var, f10.floatValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Float f10) throws IOException {
        P(reverseProtoWriter, f10.floatValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ int p(Float f10) {
        return Q(f10.floatValue());
    }
}

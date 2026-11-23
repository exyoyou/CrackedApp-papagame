package com.squareup.wire;

import java.io.IOException;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class p<K, V> extends ProtoAdapter<Map.Entry<? extends K, ? extends V>> {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    @NotNull
    private final ProtoAdapter<K> f82422a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    @NotNull
    private final ProtoAdapter<V> f82423b0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(@NotNull ProtoAdapter<K> keyAdapter, @NotNull ProtoAdapter<V> valueAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, (KClass<?>) Reflection.getOrCreateKotlinClass(Map.Entry.class), (String) null, valueAdapter.A());
        Intrinsics.checkNotNullParameter(keyAdapter, "keyAdapter");
        Intrinsics.checkNotNullParameter(valueAdapter, "valueAdapter");
        this.f82422a0 = keyAdapter;
        this.f82423b0 = valueAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public Map.Entry<K, V> c(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        throw new UnsupportedOperationException();
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull c0 writer, @NotNull Map.Entry<? extends K, ? extends V> value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f82422a0.n(writer, 1, value.getKey());
        this.f82423b0.n(writer, 2, value.getValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void i(@NotNull ReverseProtoWriter writer, @NotNull Map.Entry<? extends K, ? extends V> value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f82423b0.o(writer, 2, value.getValue());
        this.f82422a0.o(writer, 1, value.getKey());
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public int p(@NotNull Map.Entry<? extends K, ? extends V> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return this.f82422a0.q(1, value.getKey()) + this.f82423b0.q(2, value.getValue());
    }

    @NotNull
    public final ProtoAdapter<K> R() {
        return this.f82422a0;
    }

    @NotNull
    public final ProtoAdapter<V> S() {
        return this.f82423b0;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public Map.Entry<K, V> J(@NotNull Map.Entry<? extends K, ? extends V> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new UnsupportedOperationException();
    }
}

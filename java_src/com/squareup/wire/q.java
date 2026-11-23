package com.squareup.wire;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/MapProtoAdapter\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1632:1\n37#2,2:1633\n1#3:1635\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/MapProtoAdapter\n*L\n779#1:1633,2\n*E\n"})
public final class q<K, V> extends ProtoAdapter<Map<K, ? extends V>> {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    @NotNull
    private final p<K, V> f82424a0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(@NotNull ProtoAdapter<K> keyAdapter, @NotNull ProtoAdapter<V> valueAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, (KClass<?>) Reflection.getOrCreateKotlinClass(Map.class), (String) null, valueAdapter.A(), MapsKt__MapsKt.emptyMap());
        Intrinsics.checkNotNullParameter(keyAdapter, "keyAdapter");
        Intrinsics.checkNotNullParameter(valueAdapter, "valueAdapter");
        this.f82424a0 = new p<>(keyAdapter, valueAdapter);
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public Map<K, V> c(@NotNull b0 reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        K kW = this.f82424a0.R().w();
        V vW = this.f82424a0.S().w();
        long jF = reader.f();
        while (true) {
            int iM = reader.m();
            if (iM == -1) {
                break;
            }
            if (iM == 1) {
                kW = this.f82424a0.R().c(reader);
            } else if (iM == 2) {
                vW = this.f82424a0.S().c(reader);
            }
        }
        reader.h(jF);
        if (!(kW != null)) {
            throw new IllegalStateException("Map entry with null key".toString());
        }
        if (vW != null) {
            return MapsKt__MapsJVMKt.mapOf(TuplesKt.to(kW, vW));
        }
        throw new IllegalStateException("Map entry with null value".toString());
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull c0 writer, @NotNull Map<K, ? extends V> value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void i(@NotNull ReverseProtoWriter writer, @NotNull Map<K, ? extends V> value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void n(@NotNull c0 writer, int i10, @Nullable Map<K, ? extends V> map) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (map == null) {
            return;
        }
        Iterator<Map.Entry<K, ? extends V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            this.f82424a0.n(writer, i10, it2.next());
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public void o(@NotNull ReverseProtoWriter writer, int i10, @Nullable Map<K, ? extends V> map) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (map == null) {
            return;
        }
        Map.Entry[] entryArr = (Map.Entry[]) map.entrySet().toArray(new Map.Entry[0]);
        ArraysKt___ArraysKt.reverse(entryArr);
        for (Map.Entry entry : entryArr) {
            this.f82424a0.o(writer, i10, entry);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public int p(@NotNull Map<K, ? extends V> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new UnsupportedOperationException("Repeated values can only be sized with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public int q(int i10, @Nullable Map<K, ? extends V> map) {
        int iQ = 0;
        if (map == null) {
            return 0;
        }
        Iterator<Map.Entry<K, ? extends V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            iQ += this.f82424a0.q(i10, it2.next());
        }
        return iQ;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public Map<K, V> J(@NotNull Map<K, ? extends V> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return MapsKt__MapsKt.emptyMap();
    }
}

package com.squareup.wire;

import java.io.IOException;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class u<E> extends ProtoAdapter<List<? extends E>> {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    @NotNull
    private final ProtoAdapter<E> f82432a0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(@NotNull ProtoAdapter<E> originalAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, (KClass<?>) Reflection.getOrCreateKotlinClass(List.class), (String) null, originalAdapter.A(), CollectionsKt__CollectionsKt.emptyList());
        Intrinsics.checkNotNullParameter(originalAdapter, "originalAdapter");
        this.f82432a0 = originalAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public List<E> c(@NotNull b0 reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return CollectionsKt__CollectionsJVMKt.listOf(this.f82432a0.c(reader));
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void h(@NotNull c0 writer, @NotNull List<? extends E> value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        int size = value.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f82432a0.h(writer, value.get(i10));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void i(@NotNull ReverseProtoWriter writer, @NotNull List<? extends E> value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        int size = value.size();
        while (true) {
            size--;
            if (-1 >= size) {
                return;
            } else {
                this.f82432a0.i(writer, value.get(size));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void n(@NotNull c0 writer, int i10, @Nullable List<? extends E> list) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (list == 0 || !(!list.isEmpty())) {
            return;
        }
        super.n(writer, i10, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public void o(@NotNull ReverseProtoWriter writer, int i10, @Nullable List<? extends E> list) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (list == 0 || !(!list.isEmpty())) {
            return;
        }
        super.o(writer, i10, list);
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public int p(@NotNull List<? extends E> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int size = value.size();
        int iP = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iP += this.f82432a0.p(value.get(i10));
        }
        return iP;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.wire.ProtoAdapter
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public int q(int i10, @Nullable List<? extends E> list) {
        if (list == 0 || list.isEmpty()) {
            return 0;
        }
        return super.q(i10, list);
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public List<E> J(@NotNull List<? extends E> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return CollectionsKt__CollectionsKt.emptyList();
    }
}

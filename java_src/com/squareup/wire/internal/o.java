package com.squareup.wire.internal;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.h0;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nInternalJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InternalJvm.kt\ncom/squareup/wire/internal/Internal__InternalJvmKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,41:1\n1282#2,2:42\n*S KotlinDebug\n*F\n+ 1 InternalJvm.kt\ncom/squareup/wire/internal/Internal__InternalJvmKt\n*L\n40#1:42,2\n*E\n"})
final /* synthetic */ class o {
    @Nullable
    public static final <E extends h0> E a(@NotNull Class<E> cls) {
        E e10;
        Intrinsics.checkNotNullParameter(cls, "<this>");
        E[] enumConstants = cls.getEnumConstants();
        Intrinsics.checkNotNullExpressionValue(enumConstants, "getEnumConstants(...)");
        int length = enumConstants.length;
        for (int i10 = 0; i10 < length; i10++) {
            e10 = enumConstants[i10];
            E e11 = e10;
            Intrinsics.checkNotNull(e11, "null cannot be cast to non-null type com.squareup.wire.WireEnum");
            if (e11.getValue() == 0) {
                return e10;
            }
        }
        e10 = null;
        return e10;
    }

    public static final <T> void b(@NotNull List<T> list, @NotNull ProtoAdapter<T> adapter) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.set(i10, adapter.J(list.get(i10)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void c(@NotNull Map<?, T> map, @NotNull ProtoAdapter<T> adapter) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        for (Map.Entry entry : map.entrySet()) {
            entry.setValue(adapter.J(entry.getValue()));
        }
    }
}

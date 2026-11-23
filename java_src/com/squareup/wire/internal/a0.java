package com.squareup.wire.internal;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class a0 {
    @NotNull
    public static final String a(@NotNull String string, boolean z10) {
        Intrinsics.checkNotNullParameter(string, "string");
        StringBuilder sb2 = new StringBuilder(string.length());
        int iCharCount = 0;
        while (iCharCount < string.length()) {
            int iCodePointAt = string.codePointAt(iCharCount);
            iCharCount += Character.charCount(iCodePointAt);
            if (iCodePointAt == 95) {
                z10 = true;
            } else {
                if (z10) {
                    if (97 <= iCodePointAt && iCodePointAt < 123) {
                        iCodePointAt -= 32;
                    }
                }
                sb2.appendCodePoint(iCodePointAt);
                z10 = false;
            }
        }
        String string2 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return string2;
    }

    public static /* synthetic */ String b(String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return a(str, z10);
    }

    @NotNull
    public static final <T> List<T> c(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<T> listUnmodifiableList = Collections.unmodifiableList(list);
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        return listUnmodifiableList;
    }

    @NotNull
    public static final <K, V> Map<K, V> d(@NotNull Map<K, V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Map<K, V> mapUnmodifiableMap = Collections.unmodifiableMap(map);
        Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap, "unmodifiableMap(...)");
        return mapUnmodifiableMap;
    }
}

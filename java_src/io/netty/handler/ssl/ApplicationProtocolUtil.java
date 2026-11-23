package io.netty.handler.ssl;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class ApplicationProtocolUtil {
    private static final int DEFAULT_LIST_SIZE = 2;

    private ApplicationProtocolUtil() {
    }

    static List<String> toList(Iterable<String> iterable) {
        return toList(2, iterable);
    }

    static List<String> toList(int i10, Iterable<String> iterable) {
        if (iterable == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(i10);
        for (String str : iterable) {
            if (str == null || str.isEmpty()) {
                throw new IllegalArgumentException("protocol cannot be null or empty");
            }
            arrayList.add(str);
        }
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("protocols cannot empty");
        }
        return arrayList;
    }

    static List<String> toList(String... strArr) {
        return toList(2, strArr);
    }

    static List<String> toList(int i10, String... strArr) {
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(i10);
        for (String str : strArr) {
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            } else {
                throw new IllegalArgumentException("protocol cannot be null or empty");
            }
        }
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("protocols cannot empty");
        }
        return arrayList;
    }
}

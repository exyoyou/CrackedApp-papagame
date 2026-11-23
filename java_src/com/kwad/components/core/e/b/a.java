package com.kwad.components.core.e.b;

import com.j256.ormlite.stmt.query.SimpleComparison;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: com.kwad.components.core.e.b.a$a, reason: collision with other inner class name */
    static class C0849a {
        private static final c Qs = c.a(new int[]{7, 8, 4, 2, 0, 3, 6, 9, 1, 8});
    }

    public static String B(long j10) {
        String strC = pC().C(j10);
        return strC.endsWith(SimpleComparison.EQUAL_TO_OPERATION) ? strC.replace(SimpleComparison.EQUAL_TO_OPERATION, "") : strC;
    }

    public static long am(String str) {
        return pC().an(str);
    }

    private static c pC() {
        return C0849a.Qs;
    }
}

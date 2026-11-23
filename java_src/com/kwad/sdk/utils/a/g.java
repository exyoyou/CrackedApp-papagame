package com.kwad.sdk.utils.a;

import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class g implements c.b<Set<String>> {
    static final g bsE = new g();

    private g() {
    }

    private static byte[] e(Set<String> set) {
        if (set.isEmpty()) {
            return new byte[0];
        }
        int size = set.size();
        int[] iArr = new int[size];
        String[] strArr = new String[size];
        int iGh = 0;
        int i10 = 0;
        for (String str : set) {
            if (str == null) {
                iGh += 5;
                iArr[i10] = -1;
            } else {
                int iIu = b.iu(str);
                strArr[i10] = str;
                iArr[i10] = iIu;
                iGh += b.gh(iIu) + iIu;
            }
            i10++;
        }
        b bVar = new b(iGh);
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = iArr[i11];
            bVar.gg(i12);
            if (i12 >= 0) {
                bVar.it(strArr[i11]);
            }
        }
        return bVar.brM;
    }

    private static Set<String> g(byte[] bArr, int i10, int i11) {
        int i12;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (i11 > 0) {
            b bVar = new b(bArr, i10);
            int i13 = i10 + i11;
            while (true) {
                i12 = bVar.position;
                if (i12 >= i13) {
                    break;
                }
                linkedHashSet.add(bVar.getString(bVar.Xj()));
            }
            if (i12 != i13) {
                throw new IllegalArgumentException("Invalid String set");
            }
        }
        return linkedHashSet;
    }

    @Override // com.kwad.sdk.utils.a.c.b
    public final String XD() {
        return "StringSet";
    }

    @Override // com.kwad.sdk.utils.a.c.b
    public final /* synthetic */ Set<String> f(byte[] bArr, int i10, int i11) {
        return g(bArr, i10, i11);
    }

    @Override // com.kwad.sdk.utils.a.c.b
    public final /* synthetic */ byte[] u(Set<String> set) {
        return e(set);
    }
}

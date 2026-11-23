package com.byazt.gy;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2085, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f14795c;
    public int[] tt;

    private a() {
    }

    public static a c(tt ttVar) throws IOException {
        ttVar.tt(1835009);
        int iTt = ttVar.tt();
        int iTt2 = ttVar.tt();
        int iTt3 = ttVar.tt();
        ttVar.tt();
        int iTt4 = ttVar.tt();
        int iTt5 = ttVar.tt();
        a aVar = new a();
        aVar.f14795c = ttVar.c(iTt2);
        if (iTt3 != 0) {
            ttVar.c(iTt3);
        }
        int i10 = (iTt5 == 0 ? iTt : iTt5) - iTt4;
        if (i10 % 4 != 0) {
            throw new IOException();
        }
        aVar.tt = ttVar.c(i10 / 4);
        if (iTt5 != 0) {
            int i11 = iTt - iTt5;
            if (i11 % 4 != 0) {
                throw new IOException();
            }
            ttVar.c(i11 / 4);
        }
        return aVar;
    }

    public String c(int i10) {
        int[] iArr;
        if (i10 < 0 || (iArr = this.f14795c) == null || i10 >= iArr.length) {
            return null;
        }
        int i11 = iArr[i10];
        int iC = c(this.tt, i11);
        StringBuilder sb2 = new StringBuilder(iC);
        while (iC != 0) {
            i11 += 2;
            sb2.append((char) c(this.tt, i11));
            iC--;
        }
        return sb2.toString();
    }

    private static final int c(int[] iArr, int i10) {
        int i11 = iArr[i10 / 4];
        return (i10 % 4) / 2 == 0 ? i11 & 65535 : i11 >>> 16;
    }
}

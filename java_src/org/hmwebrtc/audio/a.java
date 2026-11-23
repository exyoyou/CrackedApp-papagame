package org.hmwebrtc.audio;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class a {
    public static int a(int i10) {
        int i11 = 1;
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                i11 = 4;
                if (i10 != 4) {
                    if (i10 != 13) {
                        throw new IllegalArgumentException("Bad audio format " + i10);
                    }
                }
            }
            return i11;
        }
        return 2;
    }

    public static long b(int i10, int i11, int i12) {
        return a(i11) * i10 * i12;
    }

    public static int c(int i10) {
        if (i10 == 12) {
            return 2;
        }
        if (i10 == 16) {
            return 1;
        }
        throw new IllegalArgumentException("Bad audio channel config: " + i10);
    }
}

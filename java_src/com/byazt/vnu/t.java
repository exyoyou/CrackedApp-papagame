package com.byazt.vnu;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 699, 66})
public class t {
    public static void c(sp spVar) throws IOException {
        spVar.tt(1835009, 0);
        int i10 = spVar.readInt();
        int i11 = spVar.readInt();
        int i12 = spVar.readInt();
        spVar.c();
        int i13 = spVar.readInt();
        int i14 = spVar.readInt();
        spVar.skipBytes(i11 * 4);
        if (i12 != 0) {
            spVar.skipBytes(i12 * 4);
        }
        spVar.skipBytes((i14 == 0 ? i10 : i14) - i13);
        if (i14 == 0) {
            return;
        }
        int i15 = i10 - i14;
        spVar.skipBytes(i15);
        int i16 = i15 % 4;
        if (i16 <= 0) {
            return;
        }
        while (true) {
            int i17 = i16 - 1;
            if (i16 <= 0) {
                return;
            }
            spVar.readByte();
            i16 = i17;
        }
    }
}

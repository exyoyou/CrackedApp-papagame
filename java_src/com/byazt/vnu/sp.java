package com.byazt.vnu;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 699, 91})
public class sp extends a {
    public sp(i iVar) {
        super(iVar);
    }

    public int[] c(int i10) throws IOException {
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = readInt();
        }
        return iArr;
    }

    @Override // com.byazt.vnu.a, java.io.DataInput
    public final int skipBytes(int i10) throws IOException {
        int i11 = 0;
        while (i11 < i10) {
            int iSkipBytes = super.skipBytes(i10 - i11);
            if (iSkipBytes <= 0) {
                break;
            }
            i11 += iSkipBytes;
        }
        return i11;
    }

    public void tt(int i10, int i11) throws IOException {
        int i12 = readInt();
        if (i12 == i11 || i12 < i10) {
            tt(i10, -1);
        } else if (i12 != i10) {
            throw new IOException(String.format("Expected: 0x%08x, got: 0x%08x", Integer.valueOf(i10), Integer.valueOf(i12)));
        }
    }

    public void c() throws IOException {
        skipBytes(4);
    }

    public void c(int i10, int i11) throws IOException {
        int i12 = readInt();
        if (i12 != i10 && i12 != i11) {
            throw new IOException(String.format("Expected: 0x%08x or 0x%08x, got: 0x%08x", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12)));
        }
    }

    public void c(short s10) throws IOException {
        short s11 = readShort();
        if (s11 != s10) {
            throw new IOException(String.format("Expected: 0x%08x, got: 0x%08x", Short.valueOf(s10), Short.valueOf(s11)));
        }
    }

    public void c(byte b10) throws IOException {
        byte b11 = readByte();
        if (b11 != b10) {
            throw new IOException(String.format("Expected: 0x%08x, got: 0x%08x", Byte.valueOf(b10), Byte.valueOf(b11)));
        }
    }
}

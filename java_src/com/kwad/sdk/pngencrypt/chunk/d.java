package com.kwad.sdk.pngencrypt.chunk;

import com.kwad.sdk.pngencrypt.PngjException;
import java.io.ByteArrayInputStream;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public final byte[] blB;
    private CRC32 blE;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public final String f75331id;
    public final int len;
    public byte[] data = null;
    private long blC = 0;
    public byte[] blD = new byte[4];

    public d(int i10, String str, boolean z10) {
        this.len = i10;
        this.f75331id = str;
        this.blB = b.hp(str);
        for (int i11 = 0; i11 < 4; i11++) {
            byte b10 = this.blB[i11];
            if (b10 < 65 || b10 > 122 || (b10 > 90 && b10 < 97)) {
                new PngjException("Bad id chunk: must be ascii letters " + str);
            }
        }
        if (z10) {
            Tn();
        }
    }

    private void Tn() {
        byte[] bArr = this.data;
        if (bArr == null || bArr.length < this.len) {
            this.data = new byte[this.len];
        }
    }

    final ByteArrayInputStream To() {
        return new ByteArrayInputStream(this.data);
    }

    public final long Tp() {
        return this.blC;
    }

    public final void aZ(long j10) {
        this.blC = j10;
    }

    public final void ck(boolean z10) {
        int value = (int) this.blE.getValue();
        int iG = com.kwad.sdk.pngencrypt.n.g(this.blD, 0);
        if (value != iG) {
            String str = String.format("Bad CRC in chunk: %s (offset:%d). Expected:%x Got:%x", this.f75331id, Long.valueOf(this.blC), Integer.valueOf(iG), Integer.valueOf(value));
            if (z10) {
                new PngjException(str);
            }
        }
    }

    public final void e(byte[] bArr, int i10, int i11) {
        if (this.blE == null) {
            this.blE = new CRC32();
        }
        this.blE.update(bArr, i10, i11);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f75331id;
        if (str == null) {
            if (dVar.f75331id != null) {
                return false;
            }
        } else if (!str.equals(dVar.f75331id)) {
            return false;
        }
        return this.blC == dVar.blC;
    }

    public final int hashCode() {
        String str = this.f75331id;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j10 = this.blC;
        return ((iHashCode + 31) * 31) + ((int) (j10 ^ (j10 >>> 32)));
    }

    public final String toString() {
        return "chunkid=" + b.m(this.blB) + " len=" + this.len;
    }
}

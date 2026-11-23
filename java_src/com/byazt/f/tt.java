package com.byazt.f;

import com.join.mgps.Util.o0;
import java.net.DatagramPacket;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 953, 13})
public class tt implements ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f14058c = new byte[48];
    public volatile DatagramPacket tt;

    public static final int c(byte b10) {
        return b10 & 255;
    }

    private String m() {
        char c10;
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 <= 3 && (c10 = (char) this.f14058c[i10 + 12]) != 0; i10++) {
            sb2.append(c10);
        }
        return sb2.toString();
    }

    private String nu() {
        return Integer.toHexString(i());
    }

    public static final long tt(byte b10) {
        return b10 & 255;
    }

    private String z() {
        return c(this.f14058c[12]) + o0.f49827a + c(this.f14058c[13]) + o0.f49827a + c(this.f14058c[14]) + o0.f49827a + c(this.f14058c[15]);
    }

    public int a() {
        return ve(4);
    }

    public String da() {
        int iUj = uj();
        int iN = n();
        if (iUj == 3 || iUj == 4) {
            if (iN == 0 || iN == 1) {
                return m();
            }
            if (iUj == 4) {
                return nu();
            }
        }
        return iN >= 2 ? z() : nu();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f14058c, ((tt) obj).f14058c);
    }

    @Override // com.byazt.f.ve
    public String getType() {
        return "NTP";
    }

    public int hashCode() {
        return Arrays.hashCode(this.f14058c);
    }

    public int i() {
        return ve(12);
    }

    public int n() {
        return c(this.f14058c[1]);
    }

    @Override // com.byazt.f.ve
    public n sl() {
        return uj(40);
    }

    public int sp() {
        return ve(8);
    }

    @Override // com.byazt.f.ve
    public n t() {
        return uj(24);
    }

    public String toString() {
        return "[version:" + uj() + ", mode:" + c() + ", poll:" + tt() + ", precision:" + ve() + ", delay:" + a() + ", dispersion(ms):" + x() + ", id:" + da() + ", xmitTime:" + sl().n() + " ]";
    }

    @Override // com.byazt.f.ve
    public n u() {
        return uj(32);
    }

    public int uj() {
        return (c(this.f14058c[0]) >> 3) & 7;
    }

    public int ve() {
        return this.f14058c[3];
    }

    public double x() {
        return ((double) sp()) / 65.536d;
    }

    @Override // com.byazt.f.ve
    public synchronized DatagramPacket yp() {
        if (this.tt == null) {
            byte[] bArr = this.f14058c;
            this.tt = new DatagramPacket(bArr, bArr.length);
            this.tt.setPort(123);
        }
        return this.tt;
    }

    private long n(int i10) {
        return (tt(this.f14058c[i10]) << 56) | (tt(this.f14058c[i10 + 1]) << 48) | (tt(this.f14058c[i10 + 2]) << 40) | (tt(this.f14058c[i10 + 3]) << 32) | (tt(this.f14058c[i10 + 4]) << 24) | (tt(this.f14058c[i10 + 5]) << 16) | (tt(this.f14058c[i10 + 6]) << 8) | tt(this.f14058c[i10 + 7]);
    }

    private n uj(int i10) {
        return new n(n(i10));
    }

    private int ve(int i10) {
        return c(this.f14058c[i10 + 3]) | (c(this.f14058c[i10]) << 24) | (c(this.f14058c[i10 + 1]) << 16) | (c(this.f14058c[i10 + 2]) << 8);
    }

    public int c() {
        return (c(this.f14058c[0]) >> 0) & 7;
    }

    public int tt() {
        return this.f14058c[2];
    }

    @Override // com.byazt.f.ve
    public void c(int i10) {
        byte[] bArr = this.f14058c;
        bArr[0] = (byte) ((i10 & 7) | (bArr[0] & 248));
    }

    @Override // com.byazt.f.ve
    public void tt(int i10) {
        byte[] bArr = this.f14058c;
        bArr[0] = (byte) (((i10 & 7) << 3) | (bArr[0] & 199));
    }

    @Override // com.byazt.f.ve
    public void c(n nVar) {
        c(40, nVar);
    }

    private void c(int i10, n nVar) {
        long jC = nVar == null ? 0L : nVar.c();
        for (int i11 = 7; i11 >= 0; i11--) {
            this.f14058c[i10 + i11] = (byte) (255 & jC);
            jC >>>= 8;
        }
    }
}

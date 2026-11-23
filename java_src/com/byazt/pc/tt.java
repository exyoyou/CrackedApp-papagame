package com.byazt.pc;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 695, 13})
public class tt implements i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f18618c;
    public com.byazt.yj.sp tt;

    public tt(byte[] bArr, com.byazt.yj.sp spVar) {
        this.f18618c = bArr;
        this.tt = spVar;
    }

    @Override // com.byazt.pc.i
    public String c() {
        return "image_type";
    }

    @Override // com.byazt.pc.i
    public void c(com.byazt.oz.ve veVar) {
        i xVar;
        int iN = veVar.n();
        veVar.c(this.f18618c.length);
        if (iN != 2) {
            if (iN != 3) {
                boolean zTt = com.byazt.as.c.tt(this.f18618c);
                if (zTt) {
                    byte[] bArr = this.f18618c;
                    xVar = new yp(bArr, bArr, this.tt, zTt);
                } else if (com.byazt.as.c.c(this.f18618c)) {
                    xVar = new n(this.f18618c, this.tt);
                } else {
                    byte[] bArr2 = this.f18618c;
                    xVar = new yp(bArr2, bArr2, this.tt, zTt);
                }
            } else {
                byte[] bArr3 = this.f18618c;
                xVar = new yp(bArr3, bArr3, this.tt, com.byazt.as.c.tt(bArr3));
            }
        } else if (com.byazt.as.c.c(this.f18618c)) {
            xVar = new n(this.f18618c, this.tt);
        } else {
            xVar = (this.tt != null || veVar.i()) ? new x(1001, "not image format", null) : new sl();
        }
        veVar.c(xVar);
    }
}

package com.byazt.bl;

import com.byazt.yj.zb;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 177, 54})
public class ve implements zb {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11970c;
    public int tt;
    public com.byazt.ep.ve<String, byte[]> ve;

    public ve(int i10, int i11) {
        this.tt = i10;
        this.f11970c = i11;
        this.ve = new com.byazt.ep.ve<String, byte[]>(i10) { // from class: com.byazt.bl.ve.1
            @Override // com.byazt.ep.ve
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public int tt(String str, byte[] bArr) {
                if (bArr == null) {
                    return 0;
                }
                return bArr.length;
            }
        };
    }

    @Override // com.byazt.yj.c
    public boolean tt(String str) {
        return this.ve.c(str) != null;
    }

    @Override // com.byazt.yj.c
    public boolean c(String str, byte[] bArr) {
        if (str == null || bArr == null) {
            return false;
        }
        this.ve.c(str, bArr);
        return true;
    }

    @Override // com.byazt.yj.c
    public byte[] c(String str) {
        return this.ve.c(str);
    }

    @Override // com.byazt.yj.c
    public void c() {
        c(0.0d);
    }

    @Override // com.byazt.yj.c
    public void c(double d10) {
        this.ve.c((int) (((double) this.tt) * d10));
    }
}

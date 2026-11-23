package com.byazt.jl;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 157, 66})
public class t extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f15884c = n.c("IHDR");
    public int tt;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public byte[] f15885x = new byte[5];

    @Override // com.byazt.jl.n
    public void c(com.byazt.on.c cVar) throws IOException {
        this.tt = cVar.tt();
        this.ve = cVar.tt();
        byte[] bArr = this.f15885x;
        cVar.c(bArr, 0, bArr.length);
    }
}

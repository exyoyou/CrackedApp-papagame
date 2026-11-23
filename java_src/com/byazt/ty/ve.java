package com.byazt.ty;

import com.byazt.w.a;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TTVideoEngine.PLAYER_OPTION_OUTPUT_LOG, 54})
public class ve implements tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InputStream f20493c;
    public final com.byazt.h.c tt;

    public ve(InputStream inputStream, int i10) {
        this.f20493c = inputStream;
        this.tt = new com.byazt.h.c(i10);
    }

    @Override // com.byazt.ty.tt
    public void c(com.byazt.h.c cVar) {
    }

    @Override // com.byazt.ty.tt
    public void tt() {
        a.c(this.f20493c);
    }

    @Override // com.byazt.ty.tt
    public com.byazt.h.c c() throws IOException {
        com.byazt.h.c cVar = this.tt;
        cVar.ve = this.f20493c.read(cVar.f14806c);
        return this.tt;
    }
}

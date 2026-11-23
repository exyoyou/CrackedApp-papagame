package com.byazt.hc;

import android.app.Activity;
import com.byazt.ete.g;
import com.byazt.ete.ic;
import com.byazt.qq.da;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsIsChecksumLevel, 20})
public abstract class c extends com.byazt.qq.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f14881c;

    public c(Activity activity, ic icVar) {
        super(activity, icVar);
    }

    public void c(String str) {
        this.f14881c = str;
    }

    public c(Activity activity, ic icVar, g gVar) {
        super(activity, icVar, gVar);
    }

    @Override // com.byazt.qq.tt
    public com.byazt.qq.tt.c c(da daVar) {
        uj ujVar = new uj(this.f19223x, this.sp);
        ujVar.uj(this.sl);
        ujVar.ve(this.f19221t);
        ujVar.tt(this.f19224z);
        ujVar.c(this.f14881c);
        return ujVar.c(daVar);
    }
}

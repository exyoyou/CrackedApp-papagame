package com.byazt.ih;

import android.util.SparseArray;
import com.byazt.yxi.uj;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1573, 54})
public final class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15339c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f15340n;
    public final String tt;
    public final int uj;
    public final int ve;

    public ve(String str, String str2, int i10, int i11, String str3) {
        this.f15339c = str;
        this.tt = str2;
        this.ve = i10;
        this.uj = i11;
        this.f15340n = str3;
    }

    public SparseArray<Object> c() {
        uj ujVarC = uj.c();
        ujVarC.c(8003, this.f15339c);
        ujVarC.c(2, this.tt);
        ujVarC.c(AVMDLDataLoader.KeyIsLiveMaxTrySwitchP2pTimes, Integer.valueOf(this.ve));
        ujVarC.c(8094, Integer.valueOf(this.uj));
        ujVarC.c(8547, this.f15340n);
        if (com.byazt.bp.c.t().nb() != null) {
            HashMap map = new HashMap();
            map.put("live_ad_custom_config", com.byazt.bp.c.t().nb());
            ujVarC.c(8075, map);
        }
        return ujVarC.tt();
    }

    public int tt() {
        return this.ve;
    }
}

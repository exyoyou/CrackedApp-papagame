package com.bytedance.sdk.openadsdk.mediation;

import com.byazt.zqa.c;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.join.mgps.base.BaseQuickAdapter;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, BaseQuickAdapter.EMPTY_VIEW})
public class MediationPreloadRequestInfo implements IMediationPreloadRequestInfo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f23498c;
    private AdSlot tt;
    private List<String> ve;

    public MediationPreloadRequestInfo(int i10, AdSlot adSlot, List<String> list) {
        this.f23498c = i10;
        this.tt = adSlot;
        this.ve = list;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo
    public AdSlot getAdSlot() {
        return this.tt;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo
    public int getAdType() {
        return this.f23498c;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo
    public List<String> getPrimeRitList() {
        return this.ve;
    }
}

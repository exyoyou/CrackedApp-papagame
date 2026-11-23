package com.byazt.uj;

import android.util.SparseArray;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 15, 54})
public abstract class ve extends com.byazt.yl.ve {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f20593i;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.wn.tt f20594x;

    public ve(com.byazt.wn.tt ttVar, Function<SparseArray<Object>, Object> function) {
        this.f20594x = ttVar;
        this.f20593i = function;
    }

    @Override // com.byazt.yl.ve
    public void bidLoseNotify(Map<String, Object> map) {
        int i10;
        if (map == null) {
            return;
        }
        try {
            Object obj = map.get("bidding_lose_reason_NUM");
            int iIntValue = obj instanceof Integer ? ((Integer) obj).intValue() : 0;
            i10 = iIntValue > 0 ? iIntValue : 10001;
        } catch (Exception unused) {
            i10 = 10001;
        }
        receiveBidResult(false, -1.0d, i10, null);
    }

    @Override // com.byazt.yl.ve
    public void bidWinNotify(Map<String, Object> map) {
        receiveBidResult(true, getCpm(), -1, null);
    }

    @Override // com.byazt.yl.ve
    public boolean hasDestroyed() {
        return false;
    }

    @Override // com.byazt.yl.ve
    public Integer isReadyStatus() {
        com.byazt.wn.tt ttVar = this.f20594x;
        return ttVar != null ? ttVar.isReadyStatus() : super.isReadyStatus();
    }

    @Override // com.byazt.yl.ve
    public void onDestroy() {
        super.onDestroy();
        com.byazt.wn.tt ttVar = this.f20594x;
        if (ttVar != null) {
            ttVar.onDestroy();
        }
    }

    @Override // com.byazt.yl.ve
    public void onPause() {
        super.onPause();
        com.byazt.wn.tt ttVar = this.f20594x;
        if (ttVar != null) {
            ttVar.onPause();
        }
    }

    @Override // com.byazt.yl.ve
    public void onResume() {
        super.onResume();
        com.byazt.wn.tt ttVar = this.f20594x;
        if (ttVar != null) {
            ttVar.onResume();
        }
    }

    public void receiveBidResult(boolean z10, double d10, int i10, Map<String, Object> map) {
        com.byazt.wn.tt ttVar = this.f20594x;
        if (ttVar != null) {
            ttVar.receiveBidResult(z10, d10, i10, map);
        }
    }
}

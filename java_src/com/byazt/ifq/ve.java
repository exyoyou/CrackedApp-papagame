package com.byazt.ifq;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.mediation.IMediationNativeTokenInfo;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_XINPUT_END_VALUE, 54})
public class ve implements IMediationNativeTokenInfo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function<SparseArray<Object>, Object> f15329c;

    public ve(Function<SparseArray<Object>, Object> function) {
        this.f15329c = function == null ? com.byazt.rl.ve.ve : function;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationNativeTokenInfo
    public void loadNativeAdByAdm(String str, TTAdNative.FeedAdListener feedAdListener) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, str);
        sparseArray.put(1, new com.byazt.sh.tt(feedAdListener));
        sparseArray.put(-99999987, 270028);
        sparseArray.put(-99999985, Void.class);
        this.f15329c.apply(sparseArray);
    }
}

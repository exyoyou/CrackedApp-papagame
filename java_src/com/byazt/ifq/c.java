package com.byazt.ifq;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.mediation.IMediationDrawTokenInfo;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_XINPUT_END_VALUE, 20})
public class c implements IMediationDrawTokenInfo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function<SparseArray<Object>, Object> f15327c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f15327c = function == null ? com.byazt.rl.ve.ve : function;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationDrawTokenInfo
    public void loadDrawAdByAdm(String str, TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 270031);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, str);
        sparseArray.put(1, new com.byazt.sh.c(drawFeedAdListener));
        this.f15327c.apply(sparseArray);
    }
}

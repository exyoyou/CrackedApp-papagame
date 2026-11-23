package com.byazt.dp;

import android.util.SparseArray;
import com.byazt.rl.ve;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1687, 13})
public class tt implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTFeedAd.VideoRewardListener f13050c;

    public tt(TTFeedAd.VideoRewardListener videoRewardListener) {
        this.f13050c = videoRewardListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f13050c == null) {
            return null;
        }
        ValueSet valueSetTt = ve.c(sparseArray).tt();
        if (valueSetTt.intValue(-99999987) == 163101) {
            this.f13050c.onFeedRewardCountDown(valueSetTt.intValue(0));
        }
        return null;
    }
}

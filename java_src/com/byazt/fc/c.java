package com.byazt.fc;

import android.os.Bundle;
import android.util.SparseArray;
import com.byazt.rl.ve;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1372, 20})
public class c implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTRewardVideoAd.RewardAdInteractionListener f14063c;

    public c(TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener) {
        this.f14063c = rewardAdInteractionListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f14063c == null) {
            return null;
        }
        ValueSet valueSetTt = ve.c(sparseArray).tt();
        switch (valueSetTt.intValue(-99999987)) {
            case 121101:
                this.f14063c.onAdShow();
                return null;
            case 121102:
                this.f14063c.onAdVideoBarClick();
                return null;
            case 121103:
                this.f14063c.onAdClose();
                return null;
            case 121104:
                this.f14063c.onVideoComplete();
                return null;
            case 121105:
                this.f14063c.onVideoError();
                return null;
            case 121106:
                this.f14063c.onRewardVerify(valueSetTt.booleanValue(0), valueSetTt.intValue(1), valueSetTt.stringValue(2), valueSetTt.intValue(3), valueSetTt.stringValue(4));
                return null;
            case 121107:
                this.f14063c.onRewardArrived(valueSetTt.booleanValue(0), valueSetTt.intValue(1), (Bundle) valueSetTt.objectValue(2, Bundle.class));
                return null;
            case 121108:
                this.f14063c.onSkippedVideo();
                return null;
            default:
                return null;
        }
    }
}

package com.byazt.kb;

import android.os.Bundle;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.IMediationInterstitialFullAdListener;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 688, 13})
public class tt implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IMediationInterstitialFullAdListener f16104c;

    public tt(IMediationInterstitialFullAdListener iMediationInterstitialFullAdListener) {
        this.f16104c = iMediationInterstitialFullAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f16104c == null) {
            return null;
        }
        ValueSet valueSetTt = com.byazt.rl.ve.c(sparseArray).tt();
        switch (valueSetTt.intValue(-99999987)) {
            case 131101:
                this.f16104c.onAdShow();
                return null;
            case 131102:
                this.f16104c.onAdVideoBarClick();
                return null;
            case 131103:
                this.f16104c.onAdClose();
                return null;
            case 131104:
                this.f16104c.onVideoComplete();
                return null;
            case 131105:
                this.f16104c.onSkippedVideo();
                return null;
            case 131106:
                this.f16104c.onInterstitialFullShowFail(valueSetTt.intValue(0), valueSetTt.stringValue(1));
                return null;
            case 131107:
                this.f16104c.onVideoError();
                return null;
            case 131108:
                this.f16104c.onAdOpened();
                return null;
            case 131109:
                this.f16104c.onAdLeftApplication();
                return null;
            case 131110:
                this.f16104c.onRewardVerify((Bundle) valueSetTt.objectValue(0, Bundle.class));
                return null;
            default:
                return null;
        }
    }
}

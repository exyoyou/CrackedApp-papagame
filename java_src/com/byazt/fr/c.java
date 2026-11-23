package com.byazt.fr;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2053, 20})
public class c implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IMediationAdSlot f14257c;

    public c(IMediationAdSlot iMediationAdSlot) {
        this.f14257c = iMediationAdSlot;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f14257c == null) {
            return null;
        }
        int iIntValue = com.byazt.rl.ve.c(sparseArray).tt().intValue(-99999987);
        if (iIntValue == 8260031) {
            return this.f14257c;
        }
        switch (iIntValue) {
            case 266001:
                return Boolean.class.cast(Boolean.valueOf(this.f14257c.isSplashShakeButton()));
            case 266002:
                return Boolean.class.cast(Boolean.valueOf(this.f14257c.isSplashPreLoad()));
            case 266003:
                return Boolean.class.cast(Boolean.valueOf(this.f14257c.isMuted()));
            case 266004:
                return Float.class.cast(Float.valueOf(this.f14257c.getVolume()));
            case 266005:
                return Boolean.class.cast(Boolean.valueOf(this.f14257c.isUseSurfaceView()));
            case 266006:
                return this.f14257c.getExtraObject();
            case 266007:
                return Boolean.class.cast(Boolean.valueOf(this.f14257c.isBidNotify()));
            case 266008:
                return this.f14257c.getScenarioId();
            case 266009:
                return Boolean.class.cast(Boolean.valueOf(this.f14257c.isAllowShowCloseBtn()));
            case 266010:
                return Float.class.cast(Float.valueOf(this.f14257c.getShakeViewWidth()));
            case 266011:
                return Float.class.cast(Float.valueOf(this.f14257c.getShakeViewHeight()));
            case 266012:
                return this.f14257c.getWxAppId();
            default:
                switch (iIntValue) {
                    case 266101:
                        return new ve(this.f14257c.getMediationNativeToBannerListener());
                    case 266102:
                        return new uj(this.f14257c.getMediationSplashRequestInfo());
                    case 266103:
                        return this.f14257c.getRewardName();
                    case 266104:
                        return Integer.class.cast(Integer.valueOf(this.f14257c.getRewardAmount()));
                    default:
                        return null;
                }
        }
    }
}

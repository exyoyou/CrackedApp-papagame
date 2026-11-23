package com.byazt.fr;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2053, 15})
public class uj implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IMediationSplashRequestInfo f14261c;

    public uj(IMediationSplashRequestInfo iMediationSplashRequestInfo) {
        this.f14261c = iMediationSplashRequestInfo;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        String adnName = "";
        switch (com.byazt.rl.ve.c(sparseArray).tt().intValue(-99999987)) {
            case 267001:
                IMediationSplashRequestInfo iMediationSplashRequestInfo = this.f14261c;
                if (iMediationSplashRequestInfo != null && iMediationSplashRequestInfo.getAdnName() != null) {
                    adnName = this.f14261c.getAdnName();
                }
                return String.valueOf(adnName);
            case 267002:
                IMediationSplashRequestInfo iMediationSplashRequestInfo2 = this.f14261c;
                if (iMediationSplashRequestInfo2 != null && iMediationSplashRequestInfo2.getAdnSlotId() != null) {
                    adnName = this.f14261c.getAdnSlotId();
                }
                return String.valueOf(adnName);
            case 267003:
                IMediationSplashRequestInfo iMediationSplashRequestInfo3 = this.f14261c;
                if (iMediationSplashRequestInfo3 != null && iMediationSplashRequestInfo3.getAppId() != null) {
                    adnName = this.f14261c.getAppId();
                }
                return String.valueOf(adnName);
            case 267004:
                IMediationSplashRequestInfo iMediationSplashRequestInfo4 = this.f14261c;
                if (iMediationSplashRequestInfo4 != null && iMediationSplashRequestInfo4.getAppkey() != null) {
                    adnName = this.f14261c.getAppkey();
                }
                return String.valueOf(adnName);
            default:
                return null;
        }
    }
}

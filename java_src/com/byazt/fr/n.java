package com.byazt.fr;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2053, 46})
public class n implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IMediationViewBinder f14258c;

    public n(IMediationViewBinder iMediationViewBinder) {
        this.f14258c = iMediationViewBinder;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f14258c == null) {
            return null;
        }
        switch (com.byazt.rl.ve.c(sparseArray).tt().intValue(-99999987)) {
            case 271021:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getLayoutId()));
            case 271022:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getTitleId()));
            case 271023:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getDecriptionTextId()));
            case 271024:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getCallToActionId()));
            case 271025:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getIconImageId()));
            case 271026:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getMainImageId()));
            case 271027:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getMediaViewId()));
            case 271028:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getSourceId()));
            case 271029:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getGroupImage1Id()));
            case 271030:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getGroupImage2Id()));
            case 271031:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getGroupImage3Id()));
            case 271032:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getLogoLayoutId()));
            case 271033:
                return Integer.class.cast(Integer.valueOf(this.f14258c.getShakeViewContainerId()));
            case 271034:
                return this.f14258c.getExtras();
            default:
                return com.byazt.rl.ve.ve.apply(sparseArray);
        }
    }
}

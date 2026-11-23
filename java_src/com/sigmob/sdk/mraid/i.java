package com.sigmob.sdk.mraid;

import android.os.Bundle;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i extends com.sigmob.sdk.base.common.y {
    protected i(com.sigmob.sdk.base.common.p customEventInterstitialListener) {
        super(customEventInterstitialListener);
    }

    public static boolean c(BaseAdUnit adUnit) {
        if (adUnit == null) {
            return false;
        }
        return com.sigmob.sdk.base.utils.w.b(adUnit.getMaterial()) && com.sigmob.sdk.base.utils.t.b(adUnit.getCrid());
    }

    @Override // com.sigmob.sdk.base.common.y
    protected void a(com.sigmob.sdk.base.common.p customEventInterstitialListener) {
        this.f79298a = customEventInterstitialListener;
    }

    @Override // com.sigmob.sdk.base.common.y
    public void a(BaseAdUnit adUnit, Bundle option) {
        List<BaseAdUnit> listE;
        String uuid = adUnit.getUuid();
        if (adUnit.getCreativeType() == com.sigmob.sdk.base.common.n.CreativeTypeMRAIDTWO.a() && (listE = com.sigmob.sdk.base.common.h.e(uuid)) == null) {
            com.sigmob.sdk.mraid2.b.a().a(uuid, new com.sigmob.sdk.mraid2.e(com.sigmob.sdk.b.e(), listE));
        }
        super.a(adUnit, option);
    }

    @Override // com.sigmob.sdk.base.common.y
    public boolean a(BaseAdUnit adUnit) {
        return c(adUnit);
    }

    protected static boolean a(MaterialMeta material) {
        return material.creative_type.intValue() == com.sigmob.sdk.base.common.n.CreativeTypeMRAID.a() && (com.sigmob.sdk.base.utils.t.b(material.html_url) || (com.sigmob.sdk.base.utils.w.b(material.html_snippet) && material.html_snippet.size() > 10));
    }
}

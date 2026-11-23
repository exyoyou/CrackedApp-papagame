package com.sigmob.sdk.base.common;

import android.text.TextUtils;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class e implements h.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<BaseAdUnit> f79057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h.b f79058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LoadAdRequest f79059d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f79056a = "AdListCacheManger";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<BaseAdUnit> f79060e = new ArrayList();

    public e(List<BaseAdUnit> adUnits, h.b listener, LoadAdRequest loadAdRequest) {
        this.f79057b = adUnits;
        this.f79058c = listener;
        this.f79059d = loadAdRequest;
    }

    @Override // com.sigmob.sdk.base.common.h.b
    public void a(BaseAdUnit adUnit) {
        if (com.sigmob.sdk.base.utils.w.b(this.f79058c)) {
            this.f79058c.a(adUnit);
        }
    }

    @Override // com.sigmob.sdk.base.common.h.b
    public void a(BaseAdUnit adUnit, String message) {
        if (com.sigmob.sdk.base.utils.e.a(this.f79057b)) {
            return;
        }
        BaseAdUnit baseAdUnit = this.f79057b.get(0);
        if (adUnit != baseAdUnit) {
            com.sigmob.sdk.base.network.h.a(adUnit, TextUtils.isEmpty(message) ? a.f78890x : a.f78891y);
            ad.a(PointCategory.LOADEND, TextUtils.isEmpty(message) ? "1" : "0", adUnit, null, this.f79059d, null);
            return;
        }
        if (com.sigmob.sdk.base.utils.w.b(this.f79058c)) {
            this.f79058c.a(baseAdUnit, message);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("loadEnd: size = ");
        sb2.append(this.f79060e.size());
    }

    public boolean a(boolean showAd) {
        if (com.sigmob.sdk.base.utils.e.b(this.f79057b)) {
            if (showAd) {
                BaseAdUnit baseAdUnit = this.f79057b.get(0);
                if (baseAdUnit.getPlayMode() == 2) {
                    this.f79060e.add(baseAdUnit);
                    h.g().a(baseAdUnit, this);
                }
            } else {
                for (int i10 = 0; i10 < this.f79057b.size(); i10++) {
                    BaseAdUnit baseAdUnit2 = this.f79057b.get(i10);
                    if (baseAdUnit2.getPlayMode() != 2) {
                        this.f79060e.add(baseAdUnit2);
                        baseAdUnit2.setCatchVideo(true);
                        h.g().a(baseAdUnit2, this);
                    }
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("cacheList: size = ");
            sb2.append(this.f79060e.size());
        }
        return com.sigmob.sdk.base.utils.e.b(this.f79060e);
    }
}

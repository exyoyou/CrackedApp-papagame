package com.sigmob.sdk.base.common;

import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.mta.PointFiveEntity;
import com.sigmob.windad.WindAdRequest;

/* JADX INFO: loaded from: classes5.dex */
public class ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f78937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f78938b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f78939c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f78940d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WindAdRequest f78941e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LoadAdRequest f78942f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ad.a f78943g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private BaseAdUnit f78944h;

    private ak() {
    }

    public ak a(ad.a extraInfo) {
        this.f78943g = extraInfo;
        return this;
    }

    public ak b(String ad_type) {
        this.f78939c = ad_type;
        return this;
    }

    public ak c(String subCategory) {
        this.f78938b = subCategory;
        return this;
    }

    public ak d(String placementId) {
        this.f78940d = placementId;
        return this;
    }

    public ak a(BaseAdUnit adUnit) {
        this.f78944h = adUnit;
        return this;
    }

    public ak a(LoadAdRequest loadAdRequest) {
        this.f78942f = loadAdRequest;
        return this;
    }

    public ak a(WindAdRequest windAdRequest) {
        this.f78941e = windAdRequest;
        return this;
    }

    public static ak a(String category) {
        ak akVar = new ak();
        akVar.f78937a = category;
        return akVar;
    }

    public void a() {
        PointFiveEntity pointFiveEntity = new PointFiveEntity();
        pointFiveEntity.setAc_type("5");
        pointFiveEntity.setCategory(this.f78937a);
        pointFiveEntity.setSub_category(this.f78938b);
        if (com.sigmob.sdk.base.utils.t.b(this.f78939c)) {
            pointFiveEntity.setAdtype(this.f78939c);
        }
        ad.a(this.f78937a, this.f78938b, pointFiveEntity, this.f78941e);
        ad.a(this.f78937a, this.f78938b, pointFiveEntity, this.f78942f);
        ad.a(this.f78937a, this.f78938b, this.f78944h, pointFiveEntity);
        if (com.sigmob.sdk.base.utils.w.b(this.f78943g)) {
            this.f78943g.onAddExtra(pointFiveEntity);
        }
        ad.a(pointFiveEntity);
        pointFiveEntity.commit();
    }
}

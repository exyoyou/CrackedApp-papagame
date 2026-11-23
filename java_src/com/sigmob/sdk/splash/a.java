package com.sigmob.sdk.splash;

import android.content.Context;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.common.utils.TouchLocation;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.SplashAdSetting;

/* JADX INFO: loaded from: classes3.dex */
public class a extends com.sigmob.sdk.base.common.i {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f81677l = 3;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f81678m;

    public static a d(BaseAdUnit adUnit) {
        a aVar = new a();
        aVar.b(adUnit);
        return aVar;
    }

    @Override // com.sigmob.sdk.base.common.i
    public void a(Context context, TouchLocation down, TouchLocation up, com.sigmob.sdk.base.a clickUIType, BaseAdUnit adUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
        com.sigmob.sdk.base.network.h.a(adUnit, "click");
    }

    @Override // com.sigmob.sdk.base.common.i
    public void b(Context context, int contentPlayHead, BaseAdUnit adUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null.");
        ad.a("close", (String) null, adUnit, (ad.a) null);
        com.sigmob.sdk.base.network.h.a(adUnit, com.sigmob.sdk.base.common.a.f78887u);
    }

    @Override // com.sigmob.sdk.base.common.i
    public void c(Context context, int contentPlayHead, BaseAdUnit adUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null.");
        ad.a("skip", (String) null, adUnit, (ad.a) null);
        com.sigmob.sdk.base.network.h.a(adUnit, "skip");
    }

    public int l() {
        return this.f81677l;
    }

    public boolean m() {
        return this.f81678m;
    }

    @Override // com.sigmob.sdk.base.common.i
    public void b(BaseAdUnit adUnit) {
        super.b(adUnit);
        SplashAdSetting splashAdSetting = adUnit.getSplashAdSetting();
        if (splashAdSetting == null) {
            return;
        }
        this.f81677l = splashAdSetting.show_duration.intValue();
        Boolean bool = splashAdSetting.enable_close_on_click;
        this.f81678m = com.sigmob.sdk.base.utils.w.b((Object) bool) && bool.booleanValue();
    }
}

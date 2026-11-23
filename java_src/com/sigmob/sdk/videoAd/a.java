package com.sigmob.sdk.videoAd;

import android.content.Context;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.wire.Wire;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.config.SigmobDialogSetting;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.RvAdSetting;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class a extends com.sigmob.sdk.base.common.i implements Serializable {
    private static final long serialVersionUID = 2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f81784r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private c f81786t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f81787u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f81788v;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected float f81779m = 1.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected int f81780n = -1000;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f81781o = 100;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f81782p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f81783q = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f81785s = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f81778l = false;

    private a() {
    }

    public static a d(BaseAdUnit adUnit) {
        a aVar = new a();
        aVar.c(adUnit.getAd_type() == 1);
        aVar.d(adUnit.getMaterial().video_reciprocal_millisecond.intValue());
        aVar.b(adUnit.getMaterial().creative_type.intValue() != com.sigmob.sdk.base.common.n.CreativeTypeVideo_transparent_html.a());
        RvAdSetting rvAdSetting = adUnit.getRvAdSetting();
        SigmobDialogSetting sigmobDialogSettingY = com.sigmob.sdk.base.o.a().y();
        aVar.a(sigmobDialogSettingY != null ? new c((String) Wire.get(sigmobDialogSettingY.title, ""), (String) Wire.get(sigmobDialogSettingY.body_text, ""), (String) Wire.get(sigmobDialogSettingY.cancel_button_text, ""), (String) Wire.get(sigmobDialogSettingY.close_button_text, "")) : new c(com.sigmob.sdk.base.k.l(), com.sigmob.sdk.base.k.k(), com.sigmob.sdk.base.k.n(), com.sigmob.sdk.base.k.m()));
        if (rvAdSetting != null) {
            aVar.a(rvAdSetting.enable_exit_on_video_close.booleanValue());
            aVar.a(rvAdSetting.finished.floatValue());
            aVar.c(rvAdSetting.end_time.intValue());
        }
        aVar.b(adUnit);
        return aVar;
    }

    public void a(float videoFinish) {
        this.f81779m = videoFinish;
    }

    public int b(int duration) {
        int i10 = this.f81787u;
        return (i10 == 0 || i10 * 1000 > duration) ? duration : i10 * 1000;
    }

    public void c(int end_time) {
        this.f81787u = end_time;
    }

    public int e(final int videoDuration) {
        return (int) (videoDuration * (this.f81781o / 100.0f));
    }

    @Override // com.sigmob.sdk.base.common.i
    public String f() {
        return this.f79127h;
    }

    public int l() {
        return this.f81787u;
    }

    public boolean m() {
        return this.f81785s;
    }

    public float n() {
        return this.f81779m;
    }

    public int o() {
        return this.f81780n;
    }

    public boolean p() {
        return this.f81782p;
    }

    public c q() {
        return this.f81786t;
    }

    public int r() {
        return 0;
    }

    public boolean s() {
        return this.f81778l;
    }

    public int t() {
        return this.f81783q;
    }

    public static f e(final BaseAdUnit adUnit) {
        if (adUnit == null) {
            return null;
        }
        MaterialMeta material = adUnit.getMaterial();
        com.sigmob.sdk.base.views.l.a aVar = material.click_type.intValue() == 2 ? com.sigmob.sdk.base.views.l.a.IMAGE : com.sigmob.sdk.base.views.l.a.JAVASCRIPT;
        return new f(768, 1024, adUnit.getInteractionType(), material.landing_page, material.deeplink_url, new com.sigmob.sdk.base.views.l(adUnit.resourcePath(), adUnit.getCreativeResourceType(), aVar, 720, 1024));
    }

    public void a(final Context context, int contentPlayHead) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    @Override // com.sigmob.sdk.base.common.i
    public String b() {
        return this.f79128i;
    }

    public void c(Context context, int currentPostion, int duration, final BaseAdUnit adUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    @Override // com.sigmob.sdk.base.common.i
    public String d() {
        return this.f79125f;
    }

    public void f(int mSkipSeconds) {
        this.f81783q = mSkipSeconds;
    }

    public void a(Context context, int currentPostion, int duration, final BaseAdUnit adUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    public void b(final Context context, int contentPlayHead) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    @Override // com.sigmob.sdk.base.common.i
    public void c(final String customCtaText) {
        if (customCtaText == null) {
            return;
        }
        this.f79125f = customCtaText;
    }

    public void d(int seekPostion) {
        if (seekPostion == 0) {
            return;
        }
        this.f81780n = seekPostion;
    }

    @Override // com.sigmob.sdk.base.common.i
    public String e() {
        return this.f79126g;
    }

    private void c(final boolean isRewardedVideo) {
        this.f81778l = isRewardedVideo;
    }

    public void a(c mDialogConfig) {
        this.f81786t = mDialogConfig;
    }

    public void b(Context context, int currentPostion, int duration, final BaseAdUnit adUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    @Override // com.sigmob.sdk.base.common.i
    public void d(final String customSkipText) {
        if (customSkipText == null) {
            return;
        }
        this.f79126g = customSkipText;
    }

    @Override // com.sigmob.sdk.base.common.i
    public void e(final String customCloseIconUrl) {
        if (customCloseIconUrl == null) {
            return;
        }
        this.f79127h = customCloseIconUrl;
    }

    @Override // com.sigmob.sdk.base.common.i
    public void a(final String dspCreativeId) {
        this.f79128i = dspCreativeId;
    }

    @Override // com.sigmob.sdk.base.common.i
    public void b(final Context context, final int contentPlayHead, final BaseAdUnit adUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
    }

    public void a(boolean enableExitOnVideoClose) {
        this.f81785s = enableExitOnVideoClose;
    }

    public void b(boolean mIsAutoRemoveVideoView) {
        this.f81782p = mIsAutoRemoveVideoView;
    }

    public void a(boolean isShowForce, int currentPosition, int duration, BaseAdUnit adUnit) {
    }
}

package com.bytedance.sdk.openadsdk.mediation.ad;

import com.byazt.zqa.c;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, 686, 1444})
public class MediationViewBinder implements IMediationViewBinder {
    public final int callToActionId;
    public final int decriptionTextId;
    public final Map<String, Integer> extras;
    public final int groupImage1Id;
    public final int groupImage2Id;
    public final int groupImage3Id;
    public final int iconImageId;
    public final int layoutId;
    public final int logoLayoutId;
    public final int mainImageId;
    public final int mediaViewId;
    public final int shakeViewContainerId;
    public final int sourceId;
    public final int titleId;

    @c(c = {0, 80, 81, 82, 83, 686, 1563})
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected int f23527a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected int f23528c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        protected int f23529da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        protected int f23530i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        protected int f23531n;
        protected int sl;
        protected int sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        protected int f23532t;
        protected int tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        protected int f23533u;
        protected int uj;
        protected int ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        protected int f23534x;
        protected Map<String, Integer> yp;

        public Builder(int i10) {
            this.yp = Collections.emptyMap();
            this.f23528c = i10;
            this.yp = new HashMap();
        }

        public Builder addExtra(String str, int i10) {
            this.yp.put(str, Integer.valueOf(i10));
            return this;
        }

        public Builder addExtras(Map<String, Integer> map) {
            this.yp = new HashMap(map);
            return this;
        }

        public MediationViewBinder build() {
            return new MediationViewBinder(this);
        }

        public Builder callToActionId(int i10) {
            this.uj = i10;
            return this;
        }

        public Builder descriptionTextId(int i10) {
            this.ve = i10;
            return this;
        }

        public Builder groupImage1Id(int i10) {
            this.f23529da = i10;
            return this;
        }

        public Builder groupImage2Id(int i10) {
            this.sl = i10;
            return this;
        }

        public Builder groupImage3Id(int i10) {
            this.f23532t = i10;
            return this;
        }

        public Builder iconImageId(int i10) {
            this.f23531n = i10;
            return this;
        }

        public Builder logoLayoutId(int i10) {
            this.f23530i = i10;
            return this;
        }

        public Builder mainImageId(int i10) {
            this.f23527a = i10;
            return this;
        }

        public Builder mediaViewIdId(int i10) {
            this.sp = i10;
            return this;
        }

        public Builder shakeViewContainerId(int i10) {
            this.f23533u = i10;
            return this;
        }

        public Builder sourceId(int i10) {
            this.f23534x = i10;
            return this;
        }

        public Builder titleId(int i10) {
            this.tt = i10;
            return this;
        }
    }

    protected MediationViewBinder(Builder builder) {
        this.layoutId = builder.f23528c;
        this.titleId = builder.tt;
        this.decriptionTextId = builder.ve;
        this.callToActionId = builder.uj;
        this.iconImageId = builder.f23531n;
        this.mainImageId = builder.f23527a;
        this.mediaViewId = builder.sp;
        this.sourceId = builder.f23534x;
        this.extras = builder.yp;
        this.groupImage1Id = builder.f23529da;
        this.groupImage2Id = builder.sl;
        this.groupImage3Id = builder.f23532t;
        this.logoLayoutId = builder.f23530i;
        this.shakeViewContainerId = builder.f23533u;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getCallToActionId() {
        return this.callToActionId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getDecriptionTextId() {
        return this.decriptionTextId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public Map<String, Integer> getExtras() {
        return this.extras;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getGroupImage1Id() {
        return this.groupImage1Id;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getGroupImage2Id() {
        return this.groupImage2Id;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getGroupImage3Id() {
        return this.groupImage3Id;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getIconImageId() {
        return this.iconImageId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getLogoLayoutId() {
        return this.logoLayoutId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getMainImageId() {
        return this.mainImageId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getMediaViewId() {
        return this.mediaViewId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getShakeViewContainerId() {
        return this.shakeViewContainerId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getSourceId() {
        return this.sourceId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getTitleId() {
        return this.titleId;
    }
}

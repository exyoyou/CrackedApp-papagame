package com.windmill.sdk.natives;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WMViewBinder implements IWMViewBinder {
    public final int callToActionId;
    public final int descriptionTextId;
    public final Map<String, Integer> extras;
    public final int groupImage1Id;
    public final int groupImage2Id;
    public final int groupImage3Id;
    public final int iconImageId;
    public final int layoutId;
    public final int mainImageId;
    public final int mediaViewId;
    public final int shakeViewContainerId;
    public final int titleId;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected int f87069a;
        protected int dz;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected int f87070e;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        protected int f87071k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        protected int f87072l;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        protected Map<String, Integer> f87073p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        protected int f87074q;
        protected int qp;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        protected int f87075r;

        /* JADX INFO: renamed from: rb, reason: collision with root package name */
        protected int f87076rb;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        protected int f87077s;

        /* JADX INFO: renamed from: vc, reason: collision with root package name */
        protected int f87078vc;

        public Builder(int var1) {
            this.f87073p = Collections.emptyMap();
            this.f87077s = var1;
            this.f87073p = new HashMap();
        }

        public Builder addExtra(String var1, int var2) {
            this.f87073p.put(var1, Integer.valueOf(var2));
            return this;
        }

        public Builder addExtras(Map<String, Integer> var1) {
            this.f87073p = new HashMap(var1);
            return this;
        }

        public WMViewBinder build() {
            return new WMViewBinder(this);
        }

        public Builder callToActionId(int var1) {
            this.f87075r = var1;
            return this;
        }

        public Builder descriptionTextId(int var1) {
            this.qp = var1;
            return this;
        }

        public Builder groupImage1Id(int var1) {
            this.f87072l = var1;
            return this;
        }

        public Builder groupImage2Id(int var1) {
            this.f87070e = var1;
            return this;
        }

        public Builder groupImage3Id(int var1) {
            this.dz = var1;
            return this;
        }

        public Builder iconImageId(int var1) {
            this.f87074q = var1;
            return this;
        }

        public Builder mainImageId(int var1) {
            this.f87078vc = var1;
            return this;
        }

        public Builder mediaViewIdId(int var1) {
            this.f87071k = var1;
            return this;
        }

        public Builder shakeViewContainerId(int var1) {
            this.f87076rb = var1;
            return this;
        }

        public Builder titleId(int var1) {
            this.f87069a = var1;
            return this;
        }
    }

    protected WMViewBinder(Builder var1) {
        this.layoutId = var1.f87077s;
        this.titleId = var1.f87069a;
        this.descriptionTextId = var1.qp;
        this.callToActionId = var1.f87075r;
        this.iconImageId = var1.f87074q;
        this.mainImageId = var1.f87078vc;
        this.mediaViewId = var1.f87071k;
        this.extras = var1.f87073p;
        this.groupImage1Id = var1.f87072l;
        this.groupImage2Id = var1.f87070e;
        this.groupImage3Id = var1.dz;
        this.shakeViewContainerId = var1.f87076rb;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public int getCallToActionId() {
        return this.callToActionId;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public int getDescriptionTextId() {
        return this.descriptionTextId;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public Map<String, Integer> getExtras() {
        return this.extras;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public int getGroupImage1Id() {
        return this.groupImage1Id;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public int getGroupImage2Id() {
        return this.groupImage2Id;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public int getGroupImage3Id() {
        return this.groupImage3Id;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public int getIconImageId() {
        return this.iconImageId;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public int getMainImageId() {
        return this.mainImageId;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public int getMediaViewId() {
        return this.mediaViewId;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public int getShakeViewContainerId() {
        return this.shakeViewContainerId;
    }

    @Override // com.windmill.sdk.natives.IWMViewBinder
    public int getTitleId() {
        return this.titleId;
    }
}

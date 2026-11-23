package com.windmill.sdk.natives;

/* JADX INFO: loaded from: classes8.dex */
public class WMVideoOption {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f87061c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f87062d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f87063e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f87064f;

    public static final class Builder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f87065c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f87066d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f87067e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f87068f = false;

        public WMVideoOption build() {
            return new WMVideoOption(this);
        }

        public Builder setEnableDetailPage(boolean enableDetailPage) {
            this.f87067e = enableDetailPage;
            return this;
        }

        public Builder setEnableUserControl(boolean enableUserControl) {
            this.f87068f = enableUserControl;
            return this;
        }

        public Builder setNeedCoverImage(boolean needCoverImage) {
            this.f87066d = needCoverImage;
            return this;
        }

        public Builder setNeedProgressBar(boolean needProgressBar) {
            this.f87065c = needProgressBar;
            return this;
        }
    }

    public boolean isEnableDetailPage() {
        return this.f87063e;
    }

    public boolean isEnableUserControl() {
        return this.f87064f;
    }

    public boolean isNeedCoverImage() {
        return this.f87062d;
    }

    public boolean isNeedProgressBar() {
        return this.f87061c;
    }

    private WMVideoOption(Builder builder) {
        this.f87061c = builder.f87065c;
        this.f87062d = builder.f87066d;
        this.f87063e = builder.f87067e;
        this.f87064f = builder.f87068f;
    }
}

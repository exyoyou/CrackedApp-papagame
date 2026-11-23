package com.qq.e.ads.cfg;

import com.qq.e.comm.util.GDTLogger;
import com.windmill.sdk.WMConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class VideoOption {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f78139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f78140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f78141c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f78142d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f78143e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f78144f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f78145g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f78146h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f78147i;

    public static final class AutoPlayPolicy {
        public static final int ALWAYS = 1;
        public static final int NEVER = 2;
        public static final int WIFI = 0;
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f78148a = true;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f78149b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f78150c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f78151d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f78152e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f78153f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f78154g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f78155h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f78156i;

        public VideoOption build() {
            return new VideoOption(this);
        }

        public Builder setAutoPlayMuted(boolean z10) {
            this.f78148a = z10;
            return this;
        }

        public Builder setAutoPlayPolicy(int i10) {
            if (i10 < 0 || i10 > 2) {
                GDTLogger.e("setAutoPlayPolicy 设置失败，值只能为0到2之间的数值, 重置为 : 1");
                i10 = 1;
            }
            this.f78149b = i10;
            return this;
        }

        @Deprecated
        public Builder setDetailPageMuted(boolean z10) {
            this.f78154g = z10;
            return this;
        }

        @Deprecated
        public Builder setEnableDetailPage(boolean z10) {
            this.f78152e = z10;
            return this;
        }

        public Builder setEnableUserControl(boolean z10) {
            this.f78153f = z10;
            return this;
        }

        public Builder setMaxVideoDuration(int i10) {
            this.f78155h = i10;
            return this;
        }

        public Builder setMinVideoDuration(int i10) {
            this.f78156i = i10;
            return this;
        }

        public Builder setNeedCoverImage(boolean z10) {
            this.f78151d = z10;
            return this;
        }

        public Builder setNeedProgressBar(boolean z10) {
            this.f78150c = z10;
            return this;
        }
    }

    private VideoOption(Builder builder) {
        this.f78139a = builder.f78148a;
        this.f78140b = builder.f78149b;
        this.f78141c = builder.f78150c;
        this.f78142d = builder.f78151d;
        this.f78143e = builder.f78152e;
        this.f78144f = builder.f78153f;
        this.f78145g = builder.f78154g;
        this.f78146h = builder.f78155h;
        this.f78147i = builder.f78156i;
    }

    public boolean getAutoPlayMuted() {
        return this.f78139a;
    }

    public int getAutoPlayPolicy() {
        return this.f78140b;
    }

    public int getMaxVideoDuration() {
        return this.f78146h;
    }

    public int getMinVideoDuration() {
        return this.f78147i;
    }

    public JSONObject getOptions() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(WMConstants.AUTO_PLAY_MUTED, Boolean.valueOf(this.f78139a));
            jSONObject.putOpt(WMConstants.AUTO_PLAY_POLICY, Integer.valueOf(this.f78140b));
            jSONObject.putOpt(WMConstants.DETAIL_PAGE_MUTED, Boolean.valueOf(this.f78145g));
        } catch (Exception e10) {
            e10.getMessage();
        }
        return jSONObject;
    }

    @Deprecated
    public boolean isDetailPageMuted() {
        return this.f78145g;
    }

    @Deprecated
    public boolean isEnableDetailPage() {
        return this.f78143e;
    }

    public boolean isEnableUserControl() {
        return this.f78144f;
    }

    public boolean isNeedCoverImage() {
        return this.f78142d;
    }

    public boolean isNeedProgressBar() {
        return this.f78141c;
    }
}

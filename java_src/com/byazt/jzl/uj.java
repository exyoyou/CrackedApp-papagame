package com.byazt.jzl;

import android.text.TextUtils;
import com.umeng.analytics.pro.bm;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1574, 15})
public class uj implements com.byazt.fk.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f16076a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16077c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f16078da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f16079i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f16081n;
    public double sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f16082t;
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f16083u;
    public double uj;
    public long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f16084x;
    public float yp = -1.0f;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16085z = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f16080m = 0;
    public int nu = 0;
    public int rh = 0;
    public int my = 307200;
    public int gt = 1;

    @Override // com.byazt.fk.n
    public int getCover_height() {
        return this.f16077c;
    }

    @Override // com.byazt.fk.n
    public String getCover_url() {
        return this.f16076a;
    }

    @Override // com.byazt.fk.n
    public int getCover_width() {
        return this.tt;
    }

    @Override // com.byazt.fk.n
    public String getEndcard() {
        return this.f16084x;
    }

    @Override // com.byazt.fk.n
    public int getEndcardRender() {
        return this.f16083u;
    }

    @Override // com.byazt.fk.n
    public int getExecuteCachedType() {
        return this.rh;
    }

    @Override // com.byazt.fk.n
    public int getFallbackEndCardJudge() {
        return this.f16082t;
    }

    @Override // com.byazt.fk.n
    public String getFileHash() {
        if (TextUtils.isEmpty(this.f16078da)) {
            this.f16078da = com.byazt.lt.c.c(this.sp);
        }
        return this.f16078da;
    }

    @Override // com.byazt.fk.n
    public float getPlay_speed_ratio() {
        return this.yp;
    }

    @Override // com.byazt.fk.n
    public int getPlayableLoadingHide() {
        return this.f16080m;
    }

    @Override // com.byazt.fk.n
    public int getPlayableLoadingShow() {
        return this.f16085z;
    }

    @Override // com.byazt.fk.n
    public String getPlayableZipUrl() {
        return this.f16079i;
    }

    @Override // com.byazt.fk.n
    public int getReplayTime() {
        return this.gt;
    }

    @Override // com.byazt.fk.n
    public String getResolution() {
        return this.f16081n;
    }

    @Override // com.byazt.fk.n
    public int getRewardVideoCachedType() {
        return this.nu;
    }

    @Override // com.byazt.fk.n
    public long getSize() {
        return this.ve;
    }

    @Override // com.byazt.fk.n
    public double getStart() {
        return this.sl;
    }

    @Override // com.byazt.fk.n
    public int getVideoPreloadSize() {
        if (this.my < 0) {
            this.my = 307200;
        }
        long j10 = this.my;
        long j11 = this.ve;
        if (j10 > j11) {
            this.my = (int) j11;
        }
        return this.my;
    }

    @Override // com.byazt.fk.n
    public double getVideo_duration() {
        return this.uj;
    }

    @Override // com.byazt.fk.n
    public String getVideo_url() {
        return this.sp;
    }

    @Override // com.byazt.fk.n
    public int[] getWidthAndHeight() {
        try {
            int iIndexOf = this.f16081n.indexOf("x");
            return new int[]{Integer.parseInt(this.f16081n.substring(0, iIndexOf).trim()), Integer.parseInt(this.f16081n.substring(iIndexOf + 1).trim())};
        } catch (Throwable th) {
            com.byazt.lt.tt.ve("VideoInfo", "getWidthAndHeight error", th);
            return null;
        }
    }

    @Override // com.byazt.fk.n
    public boolean isCacheAllVideo() {
        return this.nu == 0;
    }

    @Override // com.byazt.fk.n
    public boolean isExecCallbackWhenFail() {
        return this.rh == 1;
    }

    @Override // com.byazt.fk.n
    public void setCover_height(int i10) {
        this.f16077c = i10;
    }

    @Override // com.byazt.fk.n
    public void setCover_url(String str) {
        this.f16076a = str;
    }

    @Override // com.byazt.fk.n
    public void setCover_width(int i10) {
        this.tt = i10;
    }

    @Override // com.byazt.fk.n
    public void setEndcard(String str) {
        this.f16084x = str;
    }

    @Override // com.byazt.fk.n
    public void setEndcardRender(int i10) {
        this.f16083u = i10;
    }

    @Override // com.byazt.fk.n
    public void setExecuteCachedType(int i10) {
        this.rh = i10;
    }

    @Override // com.byazt.fk.n
    public void setFallbackEndCardJudge(int i10) {
        this.f16082t = i10;
    }

    @Override // com.byazt.fk.n
    public void setFileHash(String str) {
        this.f16078da = str;
    }

    @Override // com.byazt.fk.n
    public void setPlay_speed_ratio(float f10) {
        this.yp = f10;
    }

    @Override // com.byazt.fk.n
    public void setPlayableLoadingHide(int i10) {
        this.f16080m = i10;
    }

    @Override // com.byazt.fk.n
    public void setPlayableLoadingShow(int i10) {
        this.f16085z = i10;
    }

    @Override // com.byazt.fk.n
    public void setPlayableZipUrl(String str) {
        this.f16079i = str;
    }

    @Override // com.byazt.fk.n
    public void setReplayTime(int i10) {
        this.gt = Math.min(4, Math.max(1, i10));
    }

    @Override // com.byazt.fk.n
    public void setResolution(String str) {
        this.f16081n = str;
    }

    @Override // com.byazt.fk.n
    public void setRewardVideoCachedType(int i10) {
        this.nu = i10;
    }

    @Override // com.byazt.fk.n
    public void setSize(long j10) {
        this.ve = j10;
    }

    @Override // com.byazt.fk.n
    public void setStart(double d10) {
        this.sl = d10;
    }

    @Override // com.byazt.fk.n
    public void setVideoPreloadSize(int i10) {
        this.my = i10;
    }

    @Override // com.byazt.fk.n
    public void setVideo_duration(double d10) {
        this.uj = d10;
    }

    @Override // com.byazt.fk.n
    public void setVideo_url(String str) {
        this.sp = str;
    }

    @Override // com.byazt.fk.n
    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cover_height", getCover_height());
            jSONObject.put("cover_url", getCover_url());
            jSONObject.put("cover_width", getCover_width());
            jSONObject.put("endcard", getEndcard());
            jSONObject.put("file_hash", getFileHash());
            jSONObject.put(bm.f84423z, getResolution());
            jSONObject.put("size", getSize());
            jSONObject.put("video_duration", getVideo_duration());
            jSONObject.put("video_url", getVideo_url());
            jSONObject.put("playable_download_url", getPlayableZipUrl());
            jSONObject.put("if_playable_loading_show", getPlayableLoadingShow());
            jSONObject.put("remove_loading_page_type", getPlayableLoadingHide());
            jSONObject.put("fallback_endcard_judge", getFallbackEndCardJudge());
            jSONObject.put("video_preload_size", getVideoPreloadSize());
            jSONObject.put("reward_video_cached_type", getRewardVideoCachedType());
            jSONObject.put("execute_cached_type", getExecuteCachedType());
            jSONObject.put("endcard_render", getEndcardRender());
            jSONObject.put("replay_time", getReplayTime());
            jSONObject.put("play_speed_ratio", getPlay_speed_ratio());
            if (getStart() > 0.0d) {
                jSONObject.put("start", getStart());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }
}

package com.byazt.afw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 54})
public class ve implements uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f11600a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11601c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f11602n;
    public int sp;
    public long tt;
    public int uj;
    public int ve;

    @Override // com.byazt.afw.uj
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.f11601c);
            jSONObject.put("total_duration", this.tt);
            jSONObject.put("vbtt_skip_type", this.ve);
            jSONObject.put("skip_reason", this.uj);
            jSONObject.put("video_cache_size", this.f11602n);
            jSONObject.put("current", this.f11600a);
            jSONObject.put("percent", this.sp);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public void c(long j10) {
        this.f11600a = j10;
    }

    public void tt(long j10) {
        this.f11602n = j10;
    }

    public void uj(long j10) {
        this.tt = j10;
    }

    public void ve(long j10) {
        this.f11601c = j10;
    }

    public void c(int i10) {
        this.sp = i10;
    }

    public void tt(int i10) {
        this.ve = i10;
    }

    public void ve(int i10) {
        this.uj = i10;
    }
}

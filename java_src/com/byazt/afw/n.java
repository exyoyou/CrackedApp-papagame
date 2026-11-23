package com.byazt.afw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 46})
public class n implements uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11579c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11580n;
    public long tt;
    public int uj = 0;
    public int ve;

    @Override // com.byazt.afw.uj
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("total_duration", this.f11579c);
            jSONObject.put("buffers_time", this.tt);
            jSONObject.put("break_reason", this.ve);
            jSONObject.put("video_backup", this.uj);
            jSONObject.put("vbtt_skip_type", this.f11580n);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public void c(int i10) {
        this.f11580n = i10;
    }

    public void tt(long j10) {
        this.tt = j10;
    }

    public void ve(int i10) {
        this.uj = i10;
    }

    public void c(long j10) {
        this.f11579c = j10;
    }

    public void tt(int i10) {
        this.ve = i10;
    }
}

package com.byazt.afw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 215})
public class yp implements uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11604c;
    public int tt;
    public long ve;

    @Override // com.byazt.afw.uj
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.f11604c);
            jSONObject.put("buffers_count", this.tt);
            jSONObject.put("total_duration", this.ve);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public void c(long j10) {
        this.f11604c = j10;
    }

    public void tt(long j10) {
        this.ve = j10;
    }

    public void c(int i10) {
        this.tt = i10;
    }
}

package com.byazt.afw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 34})
public class a implements uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11574c;
    public long tt;

    @Override // com.byazt.afw.uj
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.f11574c);
            jSONObject.put("total_duration", this.tt);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public void c(long j10) {
        this.f11574c = j10;
    }

    public void tt(long j10) {
        this.tt = j10;
    }
}

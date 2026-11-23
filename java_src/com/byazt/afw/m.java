package com.byazt.afw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 130})
public class m implements uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11578c;
    public boolean tt;

    @Override // com.byazt.afw.uj
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("video_cache_size", this.f11578c);
            jSONObject.put("is_auto_play", this.tt);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public void c(long j10) {
        this.f11578c = j10;
    }

    public void c(boolean z10) {
        this.tt = z10;
    }
}

package com.byazt.afw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 42})
public class i implements uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11577c;
    public long tt;
    public int uj;
    public int ve;

    @Override // com.byazt.afw.uj
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("video_start_duration", this.f11577c);
            jSONObject.put("video_cache_size", this.tt);
            jSONObject.put("is_auto_play", this.ve);
            jSONObject.put("is_supplement_replay", this.uj);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public void c(long j10) {
        this.f11577c = j10;
    }

    public void tt(long j10) {
        this.tt = j10;
    }

    public void c(int i10) {
        this.uj = i10;
    }

    public void tt(int i10) {
        this.ve = i10;
    }
}

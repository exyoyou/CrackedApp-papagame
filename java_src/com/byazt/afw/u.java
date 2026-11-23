package com.byazt.afw;

import com.baidu.mobads.sdk.internal.d;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 67})
public class u extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f11599c;
    public long tt;
    public long uj;
    public long ve;

    @Override // com.byazt.afw.uj
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.f11599c);
            jSONObject.put("preload_size", this.tt);
            jSONObject.put(d.f7829b, this.ve);
            jSONObject.put("local_cache", this.uj);
            c(jSONObject);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public void c(String str) {
        this.f11599c = str;
    }

    public void tt(long j10) {
        this.ve = j10;
    }

    public void ve(long j10) {
        this.uj = j10;
    }

    public void c(long j10) {
        this.tt = j10;
    }
}

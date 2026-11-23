package com.byazt.ua;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_METHOD, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f20526a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20527c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f20528n;
    public long sp;
    public boolean tt;
    public boolean uj;
    public boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f20529x;

    /* JADX INFO: renamed from: com.byazt.ua.c$c, reason: collision with other inner class name */
    public interface InterfaceC0445c {
        boolean getHasUseCustomizeVideo();

        c getVideoModel();
    }

    public void c(boolean z10) {
        this.f20529x = z10;
    }

    public c n(boolean z10) {
        this.ve = z10;
        return this;
    }

    public c tt(boolean z10) {
        this.uj = z10;
        return this;
    }

    public c uj(boolean z10) {
        this.tt = z10;
        return this;
    }

    public c ve(boolean z10) {
        this.f20527c = z10;
        return this;
    }

    public c c(long j10) {
        this.f20528n = j10;
        return this;
    }

    public c tt(long j10) {
        this.f20526a = j10;
        return this;
    }

    public c ve(long j10) {
        this.sp = j10;
        return this;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isCompleted", this.f20527c);
            jSONObject.put("isFromVideoDetailPage", this.tt);
            jSONObject.put("isFromDetailPage", this.ve);
            jSONObject.put("duration", this.f20528n);
            jSONObject.put("totalPlayDuration", this.f20526a);
            jSONObject.put("currentPlayPosition", this.sp);
            jSONObject.put("isAutoPlay", this.uj);
            jSONObject.put("isMute", this.f20529x);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static c c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        c cVar = new c();
        cVar.ve(jSONObject.optBoolean("isCompleted"));
        cVar.uj(jSONObject.optBoolean("isFromVideoDetailPage"));
        cVar.n(jSONObject.optBoolean("isFromDetailPage"));
        cVar.c(jSONObject.optLong("duration"));
        cVar.tt(jSONObject.optLong("totalPlayDuration"));
        cVar.ve(jSONObject.optLong("currentPlayPosition"));
        cVar.tt(jSONObject.optBoolean("isAutoPlay"));
        cVar.c(jSONObject.optBoolean("isMute"));
        return cVar;
    }
}

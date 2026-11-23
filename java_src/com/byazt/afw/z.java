package com.byazt.afw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 133})
public class z implements uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public JSONArray f11605a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11606c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f11607da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f11608i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f11609n;
    public boolean sl;
    public int sp;
    public long tt;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f11610x;

    @Override // com.byazt.afw.uj
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.f11606c);
            jSONObject.put("total_duration", this.tt);
            jSONObject.put("error_code", this.ve);
            jSONObject.put("extra_error_code", this.uj);
            jSONObject.put("error_message", this.f11609n);
            jSONObject.put("event_list", this.f11605a);
            jSONObject.put("vbtt_skip_type", this.sp);
            jSONObject.put("video_cache_size", this.f11610x);
            jSONObject.put("current", this.f11608i);
            jSONObject.put("percent", this.f11607da);
            jSONObject.put("has_endcard_skip", this.sl);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public void c(boolean z10) {
        this.sl = z10;
    }

    public void tt(long j10) {
        this.f11610x = j10;
    }

    public void uj(long j10) {
        this.tt = j10;
    }

    public void ve(long j10) {
        this.f11606c = j10;
    }

    public void c(long j10) {
        this.f11608i = j10;
    }

    public void tt(int i10) {
        this.sp = i10;
    }

    public void uj(int i10) {
        this.uj = i10;
    }

    public void ve(int i10) {
        this.ve = i10;
    }

    public void c(int i10) {
        this.f11607da = i10;
    }

    public void c(JSONArray jSONArray) {
        this.f11605a = jSONArray;
    }

    public void c(String str) {
        this.f11609n = str;
    }
}

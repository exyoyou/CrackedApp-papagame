package com.byazt.sz;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 130})
public class m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.xj.ve f20034c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public m f20035n;
    public int tt;
    public m uj;
    public JSONObject ve;

    public com.byazt.xj.ve c() {
        return this.f20034c;
    }

    public String toString() {
        return "UGenEvent{mWidget=" + this.f20034c + ", mEventType=" + this.tt + ", mEvent=" + this.ve + '}';
    }

    public int tt() {
        return this.tt;
    }

    public m uj() {
        return this.uj;
    }

    public JSONObject ve() {
        return this.ve;
    }

    public void c(com.byazt.xj.ve veVar) {
        this.f20034c = veVar;
    }

    public void tt(m mVar) {
        this.f20035n = mVar;
    }

    public void c(int i10) {
        this.tt = i10;
    }

    public void c(JSONObject jSONObject) {
        this.ve = jSONObject;
    }

    public void c(m mVar) {
        this.uj = mVar;
    }
}

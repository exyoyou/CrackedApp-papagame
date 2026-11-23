package com.byazt.dk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_OPEN_RESULT, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f12990c;
    public String tt;
    public JSONObject uj;
    public JSONObject ve;

    public static x c() {
        return new x();
    }

    public JSONObject n() {
        return this.uj;
    }

    public x tt(String str) {
        this.tt = str;
        return this;
    }

    public JSONObject uj() {
        return this.ve;
    }

    public String ve() {
        return this.tt;
    }

    public x c(JSONObject jSONObject) {
        this.uj = jSONObject;
        return this;
    }

    public x tt(JSONObject jSONObject) {
        this.ve = jSONObject;
        return this;
    }

    public x c(String str) {
        this.f12990c = str;
        return this;
    }

    public String tt() {
        return this.f12990c;
    }
}

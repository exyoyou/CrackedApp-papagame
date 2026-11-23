package com.byazt.sz;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 215})
public class yp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f20058c;
    public JSONObject tt;
    public Map<String, Object> uj;
    public JSONObject ve;

    public void c(Context context) {
        this.f20058c = context;
    }

    public Context getContext() {
        return this.f20058c;
    }

    public void tt(JSONObject jSONObject) {
        this.ve = jSONObject;
    }

    public void c(JSONObject jSONObject) {
        this.tt = jSONObject;
    }

    public Map<String, Object> tt() {
        return this.uj;
    }

    public JSONObject c() {
        return this.ve;
    }

    public void c(Map<String, Object> map) {
        this.uj = map;
    }
}

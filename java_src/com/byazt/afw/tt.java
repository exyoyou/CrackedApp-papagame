package com.byazt.afw;

import com.byazt.afw.uj;
import com.byazt.ete.ic;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 13})
public class tt<T extends uj> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ic f11597c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f11598n = false;
    public String tt;
    public T uj;
    public JSONObject ve;

    public tt(ic icVar, String str, JSONObject jSONObject, T t10) {
        this.f11597c = icVar;
        this.tt = str;
        this.ve = jSONObject;
        this.uj = t10;
    }

    public ic c() {
        return this.f11597c;
    }

    public boolean n() {
        return this.f11598n;
    }

    public String tt() {
        return this.tt;
    }

    public T uj() {
        return this.uj;
    }

    public JSONObject ve() {
        if (this.ve == null) {
            this.ve = new JSONObject();
        }
        return this.ve;
    }

    public void c(boolean z10) {
        this.f11598n = z10;
    }
}

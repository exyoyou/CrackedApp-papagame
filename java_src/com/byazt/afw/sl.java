package com.byazt.afw;

import com.baidu.mobads.sdk.internal.d;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 158})
public class sl extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f11592a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f11593c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f11594n;
    public long tt;
    public int uj;
    public long ve;

    @Override // com.byazt.afw.uj
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.f11593c);
            jSONObject.put("preload_size", this.tt);
            jSONObject.put(d.f7829b, this.ve);
            jSONObject.put("error_code", this.uj);
            jSONObject.put("error_message", this.f11594n);
            jSONObject.put("error_message_server", this.f11592a);
            c(jSONObject);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public void c(String str) {
        this.f11593c = str;
    }

    public void tt(long j10) {
        this.ve = j10;
    }

    public void ve(String str) {
        this.f11592a = str;
    }

    public void c(long j10) {
        this.tt = j10;
    }

    public void tt(String str) {
        this.f11594n = str;
    }

    public void c(int i10) {
        this.uj = i10;
    }
}

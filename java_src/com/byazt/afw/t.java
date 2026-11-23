package com.byazt.afw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 66})
public class t extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f11596c;
    public long tt;

    public t(String str, long j10) {
        this.f11596c = str;
        this.tt = j10;
    }

    @Override // com.byazt.afw.uj
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.f11596c);
            jSONObject.put("preload_size", this.tt);
            com.byazt.jzl.a aVarC = c();
            if (aVarC != null) {
                jSONObject.put("run_task_mills", aVarC.getPassThroughJson().optLong("run_task_mills"));
            }
            c(jSONObject);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }
}

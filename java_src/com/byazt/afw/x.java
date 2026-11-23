package com.byazt.afw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 71})
public class x implements uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11603c;
    public long tt;
    public Map<String, Object> uj;
    public int ve;

    @Override // com.byazt.afw.uj
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        Map<String, Object> map = this.uj;
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                try {
                    jSONObject.put(entry.getKey(), entry.getValue());
                } catch (Throwable th) {
                    com.byazt.nr.m.c(th);
                }
            }
        }
        try {
            jSONObject.put("buffers_time", this.f11603c);
            jSONObject.put("total_duration", this.tt);
            jSONObject.put("vbtt_skip_type", this.ve);
        } catch (Throwable th2) {
            com.byazt.nr.m.c(th2);
        }
    }

    public void c(int i10) {
        this.ve = i10;
    }

    public void tt(long j10) {
        this.tt = j10;
    }

    public void c(long j10) {
        this.f11603c = j10;
    }

    public void c(Map<String, Object> map) {
        this.uj = map;
    }
}

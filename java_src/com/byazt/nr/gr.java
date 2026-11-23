package com.byazt.nr;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bm;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 196})
public class gr {
    public static volatile gr tt;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f17573c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Map<Integer, Map<String, Object>> f17574n;
    public Map<Integer, JSONObject> ve = new ConcurrentHashMap(1);
    public boolean uj = false;

    public interface c {
        void c(int i10, Map<String, Object> map);
    }

    public static gr c() {
        if (tt == null) {
            synchronized (gr.class) {
                if (tt == null) {
                    tt = new gr();
                }
            }
        }
        return tt;
    }

    public void tt(int i10) {
        if (i10 == 0) {
            return;
        }
        try {
            Map<Integer, JSONObject> map = this.ve;
            if (map != null) {
                if (map.size() > 20) {
                    this.ve.clear();
                } else {
                    this.ve.remove(Integer.valueOf(i10));
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void ve(int i10) {
        if (this.uj && i10 != 0) {
            try {
                this.f17574n.remove(Integer.valueOf(i10));
            } catch (Throwable unused) {
            }
        }
    }

    public void c(int i10, int i11) {
        if (i10 == 0) {
            return;
        }
        try {
            JSONObject jSONObject = this.ve.get(Integer.valueOf(i10));
            if (jSONObject == null) {
                jSONObject = new JSONObject();
                this.ve.put(Integer.valueOf(i10), jSONObject);
            }
            jSONObject.put("click_calculation_type", i11);
            jSONObject.put("click_calculation_time", System.currentTimeMillis());
        } catch (Exception unused) {
        }
    }

    public JSONObject c(int i10) {
        Map<Integer, JSONObject> map;
        if (i10 == 0 || (map = this.ve) == null) {
            return null;
        }
        return map.get(Integer.valueOf(i10));
    }

    public void c(boolean z10) {
        this.uj = z10;
        if (z10 && this.f17574n == null) {
            this.f17574n = new ConcurrentHashMap();
        }
    }

    public void c(int i10, int i11, float[] fArr) {
        if (!this.uj || i10 == 0 || this.f17573c == null) {
            return;
        }
        try {
            Map<String, Object> map = this.f17574n.get(Integer.valueOf(i10));
            if (map == null) {
                return;
            }
            HashMap map2 = new HashMap(map);
            map2.put("hashcode", Integer.valueOf(i10));
            map2.put("type", Integer.valueOf(i11));
            if (i11 == 1) {
                map2.put("x", Float.valueOf(fArr[0]));
                map2.put("y", Float.valueOf(fArr[1]));
                map2.put(bm.aH, Float.valueOf(fArr[2]));
            } else {
                map2.put("x", Double.valueOf(Math.toDegrees(fArr[0])));
                map2.put("y", Double.valueOf(Math.toDegrees(fArr[1])));
                map2.put(bm.aH, Double.valueOf(Math.toDegrees(fArr[2])));
            }
            this.f17573c.c(i10, map2);
        } catch (Exception unused) {
        }
    }

    public void c(int i10, String str, Object obj) {
        if (!this.uj || i10 == 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Map<String, Object> concurrentHashMap = this.f17574n.get(Integer.valueOf(i10));
            if (concurrentHashMap == null) {
                concurrentHashMap = new ConcurrentHashMap<>();
                this.f17574n.put(Integer.valueOf(i10), concurrentHashMap);
            }
            concurrentHashMap.put(str, obj);
        } catch (Throwable unused) {
        }
    }

    public void c(c cVar) {
        this.f17573c = cVar;
    }
}

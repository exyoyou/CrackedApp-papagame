package com.bykv.vk.component.ttvideo.log;

import android.text.TextUtils;
import com.kuaishou.weapon.p0.t;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f23264a = -2147483648L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f23265b = -2147483648L;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f23266c = -2147483648L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f23267d = -2147483648L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f23268e = -2147483648L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f23269f = -2147483648L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f23270g = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f23271h = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f23272i = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f23273j = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f23274k = "";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f23275l = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f23276m = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f23277n = "";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f23278o = "";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f23279p = "";

    public JSONObject a(c cVar) {
        if (cVar == null) {
            return null;
        }
        HashMap map = new HashMap();
        a(map, "player_sessionid", this.f23277n);
        a(map, "log_type", "video_playq");
        a(map, "sdk_version", cVar.f23241e);
        a(map, x.a.f97582j, cVar.f23240d);
        a(map, t.f74899x, cVar.f23239c);
        a(map, "pt", this.f23266c);
        a(map, "vt", this.f23267d);
        a(map, "et", this.f23268e);
        a(map, "lt", this.f23269f);
        a((Map) map, "bc", this.f23270g);
        a((Map) map, "br", this.f23271h);
        a((Map) map, "vd", cVar.f23244h);
        a(map, "initial_url", this.f23274k);
        a(map, "init_audio_url", this.f23275l);
        a((Map) map, "watch_dur", this.f23276m);
        a((Map) map, "errt", this.f23272i);
        a((Map) map, "errc", this.f23273j);
        a(map, "ps_t", this.f23264a);
        a(map, "pt_new", this.f23265b);
        a(map, "play_log_id", this.f23278o);
        a(map, "last_sessionid", this.f23279p);
        return new JSONObject(map);
    }

    public static void a(Map map, String str, int i10) {
        if (i10 != Integer.MIN_VALUE) {
            map.put(str, Integer.valueOf(i10));
        }
    }

    public static void a(Map map, String str, long j10) {
        if (j10 != -2147483648L) {
            map.put(str, Long.valueOf(j10));
        }
    }

    public static void a(Map map, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }
}

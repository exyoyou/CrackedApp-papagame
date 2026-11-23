package com.byazt.iyp;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 20})
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile long f15620c;
    public static volatile long tt;
    public static final Map<String, tt<JSONArray>> uj;
    public static final Map<String, tt<C0347c>> ve;

    /* JADX INFO: renamed from: com.byazt.iyp.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 44})
    public static final class C0347c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f15621a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f15622c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public JSONArray f15623n;
        public final String sp;
        public final String tt;
        public final Boolean uj;
        public final String ve;

        public C0347c(String str, String str2, String str3, Boolean bool, JSONArray jSONArray, String str4, String str5) {
            this.f15622c = TextUtils.isEmpty(str) ? " " : str;
            this.tt = TextUtils.isEmpty(str2) ? " " : str2;
            this.ve = TextUtils.isEmpty(str3) ? " " : str3;
            this.uj = bool;
            this.f15623n = jSONArray;
            this.f15621a = TextUtils.isEmpty(str4) ? " " : str4;
            this.sp = TextUtils.isEmpty(str5) ? " " : str5;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 175})
    private static final class tt<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final T f15624c;
        public final long tt;

        public tt(T t10, long j10) {
            this.f15624c = t10;
            this.tt = j10;
        }
    }

    static {
        int i10 = 16;
        float f10 = 0.75f;
        boolean z10 = false;
        ve = Collections.synchronizedMap(new LinkedHashMap<String, tt<C0347c>>(i10, f10, z10) { // from class: com.byazt.iyp.c.1
            @Override // java.util.LinkedHashMap
            public boolean removeEldestEntry(Map.Entry<String, tt<C0347c>> entry) {
                return size() > 256;
            }
        });
        uj = Collections.synchronizedMap(new LinkedHashMap<String, tt<JSONArray>>(i10, f10, z10) { // from class: com.byazt.iyp.c.2
            @Override // java.util.LinkedHashMap
            public boolean removeEldestEntry(Map.Entry<String, tt<JSONArray>> entry) {
                return size() > 256;
            }
        });
    }

    public static void c(String str, C0347c c0347c) {
        if (str == null || c0347c == null) {
            return;
        }
        ve.put(str, new tt<>(c0347c, c()));
        tt();
    }

    public static C0347c tt(String str) {
        Map<String, tt<C0347c>> map;
        tt<C0347c> ttVar;
        if (str == null || (ttVar = (map = ve).get(str)) == null) {
            return null;
        }
        if (!c(ttVar.tt, e0.a.f90863b)) {
            return ttVar.f15624c;
        }
        map.remove(str);
        return null;
    }

    public static JSONArray ve(String str) {
        tt<JSONArray> ttVarRemove;
        if (str == null || (ttVarRemove = uj.remove(str)) == null || c(ttVarRemove.tt, 600000L)) {
            return null;
        }
        return ttVarRemove.f15624c;
    }

    public static C0347c c(String str) {
        tt<C0347c> ttVarRemove;
        if (str == null || (ttVarRemove = ve.remove(str)) == null || c(ttVarRemove.tt, e0.a.f90863b)) {
            return null;
        }
        return ttVarRemove.f15624c;
    }

    private static void ve() {
        long jC = c();
        if (jC - tt < 30000) {
            return;
        }
        tt = jC;
        c(uj, 600000L, jC);
    }

    private static void tt() {
        long jC = c();
        if (jC - f15620c < 30000) {
            return;
        }
        f15620c = jC;
        c(ve, e0.a.f90863b, jC);
    }

    public static void c(String str, JSONArray jSONArray, String str2) {
        if (str == null) {
            return;
        }
        Map<String, tt<C0347c>> map = ve;
        synchronized (map) {
            tt<C0347c> ttVar = map.get(str);
            if (ttVar == null) {
                return;
            }
            if (c(ttVar.tt, e0.a.f90863b)) {
                map.remove(str);
                return;
            }
            C0347c c0347c = ttVar.f15624c;
            if (c0347c == null) {
                return;
            }
            c0347c.f15623n = jSONArray;
            if (TextUtils.isEmpty(str2)) {
                str2 = " ";
            }
            c0347c.f15621a = str2;
        }
    }

    public static void c(String str, JSONArray jSONArray) {
        if (str == null || jSONArray == null) {
            return;
        }
        uj.put(str, new tt<>(jSONArray, c()));
        ve();
    }

    private static long c() {
        return System.currentTimeMillis();
    }

    private static boolean c(long j10, long j11) {
        return j11 > 0 && c() - j10 >= j11;
    }

    private static <T> void c(Map<String, tt<T>> map, long j10, long j11) {
        if (j10 <= 0) {
            return;
        }
        synchronized (map) {
            Iterator<Map.Entry<String, tt<T>>> it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                tt<T> value = it2.next().getValue();
                if (value == null || j11 - value.tt >= j10) {
                    it2.remove();
                }
            }
        }
    }
}

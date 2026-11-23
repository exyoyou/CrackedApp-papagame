package com.byazt.vvt;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.LruCache;
import com.byazt.aas.nb;
import com.byazt.bwm.sp;
import com.byazt.ete.ic;
import com.byazt.ete.x;
import com.byazt.omf.gt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 210, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LruCache<String, Integer> f21389c = new LruCache<>(20);
    public static final Map<Integer, tt> tt = new ConcurrentHashMap();

    @com.byazt.zqa.c(c = {0, 1, 210, 24})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public com.byazt.dj.tt f21392a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f21393c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f21394n = 0;
        public String tt;
        public int uj;
        public long ve;

        public c(int i10, String str, int i11, long j10, com.byazt.dj.tt ttVar) {
            this.f21393c = i10;
            this.tt = str;
            this.uj = i11;
            this.ve = j10;
            this.f21392a = ttVar;
        }

        public void c(int i10) {
            this.f21394n = i10;
        }
    }

    public static JSONObject c(int i10, String str) {
        Map<Integer, tt> map = tt;
        if (map.get(Integer.valueOf(i10)) == null) {
            map.put(Integer.valueOf(i10), new tt());
        }
        tt ttVar = map.get(Integer.valueOf(i10));
        if (ttVar != null) {
            return ttVar.c(i10, str);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.String] */
    public static JSONObject tt(int i10, String str) {
        long jTt;
        JSONObject jSONObject = new JSONObject();
        boolean zC = 3;
        try {
            try {
                if (i10 != 3 && i10 != 4) {
                    com.byazt.eti.n nVarC = com.byazt.eti.n.c(i10);
                    zC = nVarC.uj(str);
                    jTt = nVarC.n(str);
                } else if ((com.byazt.by.n.c().sl() & 16) == 16) {
                    com.byazt.eti.n nVarC2 = com.byazt.eti.n.c(3);
                    zC = nVarC2.uj(str);
                    jTt = nVarC2.n(str);
                } else {
                    com.byazt.tdq.uj ujVar = new com.byazt.tdq.uj();
                    zC = ujVar.c(str);
                    jTt = ujVar.tt(str);
                }
            } catch (Throwable unused) {
                zC = 0;
                jTt = 0;
            }
        } catch (Throwable unused2) {
            jTt = 0;
        }
        try {
            jSONObject.put("has_cache", zC);
            zC = "cache_exp_ts";
            jSONObject.put("cache_exp_ts", Math.max(0L, jTt));
        } catch (Throwable unused3) {
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject uj(int i10, String str) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int iYp = x.c(i10).yp();
        if (iYp <= 0) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - (((long) iYp) * 60000);
        Cursor cursorQuery = com.byazt.pe.c.query(gt.getContext(), "meta_req_record_v1", null, "slot_type = ? and create_time >= ? and event_type = 1 and appid = ?", new String[]{String.valueOf(i10), String.valueOf(jCurrentTimeMillis), str}, null, null, null);
        int i18 = 2;
        if (cursorQuery == null || !cursorQuery.moveToFirst()) {
            i11 = 0;
            i12 = 0;
            i13 = 0;
            i14 = 0;
        } else {
            int i19 = 0;
            int i20 = 0;
            i13 = 0;
            int i21 = 0;
            i14 = 0;
            while (true) {
                int i22 = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                if (i22 == 1) {
                    i19 += cursorQuery.getInt(cursorQuery.getColumnIndex("request_count"));
                } else if (i22 == i18) {
                    i20 += cursorQuery.getInt(cursorQuery.getColumnIndex("request_count"));
                    i13 += cursorQuery.getInt(cursorQuery.getColumnIndex("response_count"));
                } else if (i22 == 3) {
                    i21 += cursorQuery.getInt(cursorQuery.getColumnIndex("request_count"));
                    i14 += cursorQuery.getInt(cursorQuery.getColumnIndex("response_count"));
                }
                if (!cursorQuery.moveToNext()) {
                    break;
                }
                i18 = 2;
            }
            i12 = i19 + i20 + i21;
            i11 = i13 + i14;
        }
        Cursor cursorQuery2 = com.byazt.pe.c.query(gt.getContext(), "meta_req_record_v1", null, "slot_type = ? and create_time >= ? and event_type = 2 and appid = ?", new String[]{String.valueOf(i10), String.valueOf(jCurrentTimeMillis), str}, null, null, null);
        if (cursorQuery2 == null || !cursorQuery2.moveToFirst()) {
            i15 = 0;
            i16 = 0;
            i17 = 0;
        } else {
            int i23 = 0;
            int i24 = 0;
            do {
                int i25 = Integer.parseInt(cursorQuery2.getString(cursorQuery2.getColumnIndex("status")));
                if (i25 == 1) {
                    i23++;
                } else if (i25 == 2) {
                    i24++;
                }
            } while (cursorQuery2.moveToNext());
            i16 = i23;
            i17 = i23 + i24;
            i15 = i24;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        if (cursorQuery2 != null) {
            cursorQuery2.close();
        }
        int i26 = i12 <= 0 ? -1 : (int) ((i11 * 100.0f) / i12);
        int i27 = i11 <= 0 ? -1 : (int) ((i13 * 100.0f) / i11);
        int i28 = i11 <= 0 ? -1 : (int) ((i14 * 100.0f) / i11);
        int i29 = (i17 <= 0 || i11 <= 0) ? -1 : (int) ((i17 * 100.0f) / i11);
        int i30 = i17 <= 0 ? -1 : (int) ((i15 * 100.0f) / i17);
        int i31 = i17 > 0 ? (int) ((i16 * 100.0f) / i17) : -1;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("send_request_sum", i12);
            jSONObject.put("send_response_sum", i11);
            jSONObject.put("send_fill_rate", i26);
            jSONObject.put("send_net_rate", i27);
            jSONObject.put("send_cache_rate", i28);
            jSONObject.put("show_sum", i17);
            jSONObject.put("show_rate", i29);
            jSONObject.put("show_cache_rate", i30);
            jSONObject.put("show_net_rate", i31);
            jSONObject.put("interval_minute", iYp);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 210, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD})
    public static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f21395c;
        public JSONObject tt;

        public JSONObject c(int i10, String str) {
            if (!c(i10)) {
                this.tt = ve.uj(i10, str);
                this.f21395c = System.currentTimeMillis();
            }
            return this.tt;
        }

        private boolean c(int i10) {
            return System.currentTimeMillis() - this.f21395c <= ((long) ((Math.max(0, x.c(i10).z()) * 60) * 1000)) && this.tt != null;
        }
    }

    public static void c(final c cVar, final int i10) {
        if (cVar != null && x.c(cVar.f21393c).yp() > 0) {
            com.byazt.bzd.x.c(new sp("cacheDataCenter-recordSend") { // from class: com.byazt.vvt.ve.1
                @Override // java.lang.Runnable
                public void run() {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("rit", cVar.tt);
                    contentValues.put("appid", cVar.f21392a == null ? "" : cVar.f21392a.or());
                    contentValues.put("slot_type", Integer.valueOf(cVar.f21393c));
                    contentValues.put("create_time", Long.valueOf(cVar.ve));
                    contentValues.put("status", Integer.valueOf(i10));
                    contentValues.put("request_count", Integer.valueOf(cVar.uj));
                    contentValues.put("response_count", Integer.valueOf(cVar.f21394n));
                    contentValues.put("event_type", (Integer) 1);
                    com.byazt.pe.c.insert(gt.getContext(), "meta_req_record_v1", contentValues);
                }
            });
        }
    }

    public static void c(final ic icVar) {
        LruCache<String, Integer> lruCache = f21389c;
        if (lruCache.get(icVar.sf()) != null) {
            return;
        }
        lruCache.put(icVar.sf(), 1);
        final int iSl = nb.sl(icVar);
        if (x.c(iSl).yp() <= 0) {
            return;
        }
        com.byazt.bzd.x.c(new sp("cacheDataCenter-recordShow") { // from class: com.byazt.vvt.ve.2
            @Override // java.lang.Runnable
            public void run() {
                String strC = nb.c(icVar, "");
                ContentValues contentValues = new ContentValues();
                contentValues.put("rit", strC);
                contentValues.put("appid", icVar.jl());
                contentValues.put("slot_type", Integer.valueOf(iSl));
                contentValues.put("create_time", Long.valueOf(System.currentTimeMillis()));
                contentValues.put("status", Integer.valueOf(icVar.up() ? 2 : 1));
                contentValues.put("event_type", (Integer) 2);
                com.byazt.pe.c.insert(gt.getContext(), "meta_req_record_v1", contentValues);
            }
        });
    }

    public static void c() {
        com.byazt.bzd.x.c(new sp("cacheDataCenter-clearOldData") { // from class: com.byazt.vvt.ve.3
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.pe.c.delete(gt.getContext(), "meta_req_record_v1", "create_time < ?", new String[]{String.valueOf(System.currentTimeMillis() - 86400000)});
            }
        });
    }
}

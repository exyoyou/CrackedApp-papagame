package com.byazt.jzl;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.byazt.dna.z;
import com.byazt.fk.u;
import com.haima.hmcp.ConstantsInternal;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1574, 46})
public class n implements tt {
    public static final AtomicInteger rl = new AtomicInteger();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16059a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public StringBuilder f16060c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public double f16061da;
    public int gr;
    public int gt;
    public String gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f16062i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f16063m;
    public String my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f16064n;
    public int nu;
    public int qy;
    public boolean rh;
    public double sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f16065t;
    public JSONArray tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f16066u;
    public String uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public StringBuilder f16067x;
    public long yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16068z;
    public JSONObject zm;

    @com.byazt.zqa.c(c = {0, 1, 1574, 151})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f16069a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f16070c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public double f16071da;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f16073n;
        public int sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public JSONObject f16074t;
        public String tt;
        public String uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f16075x;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f16072i = -1;
        public String sl = "";

        public c c(String str) {
            this.f16070c = str;
            return this;
        }

        public c tt(String str) {
            this.ve = str;
            return this;
        }

        public c uj(String str) {
            this.uj = str;
            return this;
        }

        public c ve(String str) {
            this.tt = str;
            return this;
        }

        public c c(double d10) {
            this.f16071da = d10;
            return this;
        }

        public c tt(int i10) {
            this.sp = i10;
            return this;
        }

        public c uj(int i10) {
            this.f16072i = i10;
            return this;
        }

        public c ve(int i10) {
            this.f16075x = i10;
            return this;
        }

        public c c(int i10) {
            this.f16073n = i10;
            return this;
        }

        public c c(long j10) {
            this.f16069a = j10;
            return this;
        }

        public c c(JSONObject jSONObject) {
            this.f16074t = jSONObject;
            return this;
        }

        public n c() {
            return new n(this);
        }
    }

    @Override // com.byazt.jzl.tt
    public void c(int i10, int i11, String str) {
        this.nu = i10;
        this.gt = i11;
        this.my = str;
    }

    @Override // com.byazt.jzl.tt
    public void tt(String str) {
        int iIndexOf = this.f16067x.indexOf(str);
        if (TextUtils.isEmpty(this.f16067x)) {
            this.f16067x.append(str);
        } else if (iIndexOf == -1) {
            StringBuilder sb2 = this.f16067x;
            sb2.append(",");
            sb2.append(str);
        }
    }

    public String ve(String str) {
        if (TextUtils.isEmpty(str)) {
            return "unknown";
        }
        str.hashCode();
        switch (str) {
            case "0501":
                return "created";
            case "0502":
                return "bindview";
            case "0503":
                return "initialized";
            case "0504":
                return "prepared";
            case "0505":
                return "started";
            case "0506":
                return "played";
            case "0507":
                return "paused";
            case "0508":
                return "stopped";
            case "0509":
                return "completed";
            case "0510":
                return "error";
            default:
                return "unknown";
        }
    }

    private n() {
        this.f16060c = new StringBuilder();
        this.tt = new JSONArray();
        this.nu = -8888;
        this.rh = false;
        this.gt = -8888;
        this.qy = 0;
        this.gr = -1;
        this.qy = rl.addAndGet(1);
    }

    @Override // com.byazt.jzl.tt
    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("rit", this.f16064n);
            jSONObject.put("cid", this.uj);
            jSONObject.put("adtype", this.f16059a);
            jSONObject.put("req_id", this.ve);
            jSONObject.put("duration", this.sp);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private JSONObject tt() {
        JSONObject jSONObject = this.zm;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("session_id", this.f16067x.toString());
            jSONObject.put("node_line", this.f16060c.toString());
            jSONObject.put("node_line_detail", this.tt.toString());
            jSONObject.put("video_url", this.f16062i);
            jSONObject.put("video_duration", this.f16061da);
            jSONObject.put("video_size", this.sl);
            jSONObject.put("start_duration", this.f16066u - this.f16065t);
            jSONObject.put("play_duration", SystemClock.elapsedRealtime() - this.f16065t);
            jSONObject.put("play_cache_size", this.yp);
            jSONObject.put("play_type", this.f16068z);
            jSONObject.put("player_type", this.f16063m);
            jSONObject.put("video_index", this.qy);
            jSONObject.put("is_audio", this.rh ? 1 : 0);
            jSONObject.put("dynamic_join_type", this.gr);
            int i10 = this.nu;
            if (i10 != -8888) {
                jSONObject.put("error_code", i10);
            }
            jSONObject.put(ConstantsInternal.KEY_ERROR_MSG, this.my);
            int i11 = this.gt;
            if (i11 != -8888) {
                jSONObject.put("extra_error_code", i11);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    @Override // com.byazt.jzl.tt
    public void c(String str) {
        this.f16060c.append(str);
        String strVe = ve(str);
        JSONObject jSONObject = new JSONObject();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (TextUtils.equals("0505", str)) {
            this.f16065t = jElapsedRealtime;
        } else if (TextUtils.equals("0506", str)) {
            this.f16066u = jElapsedRealtime;
        }
        try {
            jSONObject.putOpt("type", strVe);
            jSONObject.putOpt("ts", Long.valueOf(System.currentTimeMillis()));
        } catch (Exception unused) {
        }
        this.tt.put(jSONObject);
    }

    private n(c cVar) {
        this.f16060c = new StringBuilder();
        this.tt = new JSONArray();
        this.nu = -8888;
        this.rh = false;
        this.gt = -8888;
        this.qy = 0;
        this.gr = -1;
        this.ve = cVar.tt;
        this.uj = cVar.ve;
        this.f16064n = cVar.uj;
        this.f16059a = cVar.f16073n;
        this.f16068z = cVar.f16075x;
        this.gr = cVar.f16072i;
        this.yp = cVar.f16069a;
        this.f16063m = cVar.sp;
        this.f16061da = cVar.f16071da;
        this.gu = cVar.f16070c;
        this.zm = cVar.f16074t;
        String str = cVar.sl;
        this.f16067x = new StringBuilder(TextUtils.isEmpty(str) ? "" : str);
        this.qy = rl.addAndGet(1);
    }

    @Override // com.byazt.jzl.tt
    public void c(long j10, u uVar) {
        z zVar = (z) com.byazt.ut.uj.getService(NotificationCompat.CATEGORY_EVENT);
        if (zVar == null || uVar == null) {
            return;
        }
        this.sl = uVar.getVideoSize();
        this.rh = uVar.isAudio();
        this.sp = String.valueOf(j10);
        this.f16062i = uVar.getUrl();
        zVar.onStatsEvent(this.gu, c(), tt());
    }
}

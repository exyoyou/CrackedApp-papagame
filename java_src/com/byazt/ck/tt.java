package com.byazt.ck;

import android.text.TextUtils;
import com.byazt.it.n;
import com.byazt.nr.m;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import e0.a;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 603, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile tt f12529c;
    public int ve = -1;
    public long uj = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12533n = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12530a = -1;
    public int sp = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f12534x = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12532i = -1;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f12531da = -1;
    public n tt = com.byazt.rq.c.tt();

    private tt() {
    }

    private synchronized JSONObject i() {
        try {
            n nVar = this.tt;
            if (nVar == null) {
                return null;
            }
            String string = nVar.getString("app_common_config", null);
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            if (!string.startsWith("[") && !string.startsWith("{")) {
                string = com.byazt.vx.c.tt(string, com.byazt.vx.tt.c());
            }
            if (!TextUtils.isEmpty(string)) {
                try {
                    return new JSONObject(string);
                } catch (Throwable th) {
                    m.c(th);
                }
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized void tt(JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt("event_batch_size", 100);
        this.ve = iOptInt;
        if (iOptInt <= 0 || iOptInt > 1000) {
            this.ve = 100;
        }
        long jOptLong = jSONObject.optLong("event_routine_interval", BaseCloudFileManager.STOKEN_VALID_TIME);
        this.uj = jOptLong;
        if (jOptLong < 10000 || jOptLong > a.f90863b) {
            this.uj = BaseCloudFileManager.STOKEN_VALID_TIME;
        }
        int iOptInt2 = jSONObject.optInt("dynamic_adapter_type", 0);
        this.f12533n = iOptInt2;
        if (iOptInt2 != 0 && iOptInt2 != 1) {
            this.f12533n = 0;
        }
        this.sp = jSONObject.optInt("rv_start_time", 5000);
        int iOptInt3 = jSONObject.optInt("wf_dynamic_adapter_type", 0);
        this.f12530a = iOptInt3;
        if (iOptInt3 != 0 && iOptInt3 != 1) {
            this.f12530a = 0;
        }
        com.byazt.ix.uj.c().c(jSONObject.optInt("pre_fetch_count", 20));
        this.f12534x = jSONObject.optInt("adapter_plugin_loader_gdt", -1);
        this.f12532i = jSONObject.optInt("can_log", -1);
        this.f12531da = jSONObject.optInt("enable_abtest_id", 0);
    }

    public int a() {
        int i10 = this.sp;
        if (i10 != -1) {
            return i10;
        }
        JSONObject jSONObjectI = i();
        if (jSONObjectI == null) {
            return 5000;
        }
        tt(jSONObjectI);
        return this.sp;
    }

    public int n() {
        int i10 = this.f12530a;
        if (i10 != -1) {
            return i10;
        }
        JSONObject jSONObjectI = i();
        if (jSONObjectI == null) {
            return 0;
        }
        tt(jSONObjectI);
        return this.f12530a;
    }

    public boolean sp() {
        int i10 = this.f12532i;
        if (i10 != -1) {
            return i10 == 1;
        }
        JSONObject jSONObjectI = i();
        if (jSONObjectI != null) {
            tt(jSONObjectI);
            if (this.f12532i == 1) {
                return true;
            }
        }
        return false;
    }

    public int uj() {
        int i10 = this.f12533n;
        if (i10 != -1) {
            return i10;
        }
        JSONObject jSONObjectI = i();
        if (jSONObjectI == null) {
            return 0;
        }
        tt(jSONObjectI);
        return this.f12533n;
    }

    public synchronized long ve() {
        long j10 = this.uj;
        if (j10 != -1) {
            return j10;
        }
        JSONObject jSONObjectI = i();
        if (jSONObjectI == null) {
            return BaseCloudFileManager.STOKEN_VALID_TIME;
        }
        tt(jSONObjectI);
        return this.uj;
    }

    public int x() {
        int i10 = this.f12531da;
        if (i10 != -1) {
            return i10;
        }
        JSONObject jSONObjectI = i();
        if (jSONObjectI == null) {
            return 0;
        }
        tt(jSONObjectI);
        return this.f12531da;
    }

    public static tt c() {
        if (f12529c == null) {
            synchronized (tt.class) {
                if (f12529c == null) {
                    f12529c = new tt();
                }
            }
        }
        return f12529c;
    }

    public synchronized void c(final JSONObject jSONObject) {
        if (jSONObject != null) {
            tt(jSONObject);
            if (com.byazt.bp.tt.tt().ve()) {
                com.byazt.eu.n.uj(new Runnable() { // from class: com.byazt.ck.tt.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String string = jSONObject.toString();
                        if (TextUtils.isEmpty(string)) {
                            return;
                        }
                        tt.this.tt.put("app_common_config", string);
                    }
                });
            } else {
                String string = jSONObject.toString();
                if (!TextUtils.isEmpty(string)) {
                    this.tt.put("app_common_config", string);
                }
            }
        }
    }

    public synchronized int tt() {
        int i10 = this.ve;
        if (i10 != -1) {
            return i10;
        }
        JSONObject jSONObjectI = i();
        if (jSONObjectI == null) {
            return 100;
        }
        tt(jSONObjectI);
        return this.ve;
    }
}

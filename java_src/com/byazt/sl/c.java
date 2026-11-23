package com.byazt.sl;

import com.byazt.nr.m;
import com.byazt.vb.n;
import com.byazt.vb.tt;
import com.byazt.vb.uj;
import com.byazt.vb.x;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 158, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public StringBuffer f19821c = new StringBuffer();
    public StringBuffer tt = new StringBuffer();
    public AtomicLong ve = new AtomicLong(0);
    public AtomicLong uj = new AtomicLong(0);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AtomicLong f19827n = new AtomicLong(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AtomicLong f19820a = new AtomicLong(0);
    public AtomicLong sp = new AtomicLong(0);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public AtomicLong f19832x = new AtomicLong(0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AtomicLong f19825i = new AtomicLong(0);

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public AtomicLong f19823da = new AtomicLong(0);
    public AtomicLong sl = new AtomicLong(0);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public AtomicLong f19830t = new AtomicLong(0);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public AtomicLong f19831u = new AtomicLong(0);
    public AtomicLong yp = new AtomicLong(0);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public AtomicLong f19833z = new AtomicLong(0);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public AtomicLong f19826m = new AtomicLong(0);
    public AtomicLong nu = new AtomicLong(0);
    public AtomicLong rh = new AtomicLong(0);
    public AtomicLong my = new AtomicLong(0);
    public AtomicLong gt = new AtomicLong(0);
    public AtomicLong rl = new AtomicLong(0);
    public AtomicLong qy = new AtomicLong(0);
    public AtomicLong gu = new AtomicLong(0);
    public AtomicLong gr = new AtomicLong(0);
    public AtomicLong zm = new AtomicLong(0);
    public AtomicLong yv = new AtomicLong(0);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AtomicLong f19829p = new AtomicLong(0);
    public AtomicLong md = new AtomicLong(0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AtomicLong f19824h = new AtomicLong(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public AtomicLong f19822d = new AtomicLong(0);
    public AtomicLong eo = new AtomicLong(0);

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public AtomicLong f19834zb = new AtomicLong(0);
    public AtomicLong or = new AtomicLong(0);
    public AtomicLong cu = new AtomicLong(0);
    public AtomicLong qp = new AtomicLong(0);

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public AtomicLong f19828nb = new AtomicLong(0);
    public AtomicLong pf = new AtomicLong(0);
    public AtomicLong bx = new AtomicLong(0);

    public synchronized void a() {
        u().set(0L);
        cu().set(0L);
        qp().set(0L);
        or().set(0L);
        pf().set(0L);
        nb().set(0L);
        zb().set(0L);
        qy().set(0L);
        gu().set(0L);
        gr().set(0L);
        zm().set(0L);
        yv().set(0L);
        d().set(0L);
        p().set(0L);
        md().set(0L);
        h().set(0L);
        eo().set(0L);
        m().set(0L);
        t().set(0L);
        yp().set(0L);
        nu().set(0L);
        rh().set(0L);
        my().set(0L);
        gt().set(0L);
        rl().set(0L);
        z().set(0L);
        da().set(0L);
        x().set(0L);
        i().set(0L);
        sp().set(0L);
        sl().set(0L);
        uj().set(0L);
        ve().set(0L);
        tt().set(0L);
        c().set(0L);
        try {
            if (this.f19821c.length() != 0) {
                this.f19821c.setLength(0);
            }
        } catch (Exception unused) {
        }
        try {
            if (this.tt.length() != 0) {
                this.tt.setLength(0);
            }
        } catch (Exception unused2) {
        }
    }

    public StringBuffer bx() {
        return this.f19821c;
    }

    public AtomicLong c() {
        return this.bx;
    }

    public AtomicLong cu() {
        return this.f19822d;
    }

    public AtomicLong d() {
        return this.rl;
    }

    public AtomicLong da() {
        return this.f19826m;
    }

    public AtomicLong eo() {
        return this.zm;
    }

    public AtomicLong gr() {
        return this.rh;
    }

    public AtomicLong gt() {
        return this.yp;
    }

    public AtomicLong gu() {
        return this.nu;
    }

    public AtomicLong h() {
        return this.gr;
    }

    public AtomicLong i() {
        return this.uj;
    }

    public AtomicLong m() {
        return this.f19825i;
    }

    public AtomicLong md() {
        return this.gu;
    }

    public AtomicLong my() {
        return this.f19831u;
    }

    public AtomicLong n() {
        return this.f19829p;
    }

    public AtomicLong nb() {
        return this.f19834zb;
    }

    public AtomicLong nu() {
        return this.sl;
    }

    public AtomicLong or() {
        return this.f19824h;
    }

    public AtomicLong p() {
        return this.qy;
    }

    public AtomicLong pf() {
        return this.or;
    }

    public AtomicLong qp() {
        return this.eo;
    }

    public AtomicLong qy() {
        return this.yv;
    }

    public AtomicLong rh() {
        return this.f19830t;
    }

    public AtomicLong rl() {
        return this.f19833z;
    }

    public AtomicLong sl() {
        return this.cu;
    }

    public AtomicLong sp() {
        return this.f19823da;
    }

    public StringBuffer sv() {
        return this.tt;
    }

    public AtomicLong t() {
        return this.ve;
    }

    public AtomicLong tt() {
        return this.pf;
    }

    public AtomicLong u() {
        return this.f19827n;
    }

    public AtomicLong uj() {
        return this.qp;
    }

    public AtomicLong ve() {
        return this.f19828nb;
    }

    public AtomicLong x() {
        return this.f19820a;
    }

    public AtomicLong yp() {
        return this.sp;
    }

    public AtomicLong yv() {
        return this.gt;
    }

    public AtomicLong z() {
        return this.f19832x;
    }

    public AtomicLong zb() {
        return this.md;
    }

    public AtomicLong zm() {
        return this.my;
    }

    public synchronized void c(long j10, tt ttVar) {
        this.ve.getAndAdd(j10);
        this.uj.incrementAndGet();
        if (com.byazt.ml.c.c(ttVar)) {
            this.f19831u.incrementAndGet();
        } else {
            if (com.byazt.ml.c.tt(ttVar)) {
                this.f19833z.incrementAndGet();
            }
        }
    }

    public JSONObject c(long j10, n nVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            long j11 = i().get();
            long j12 = 1;
            jSONObject.put("create_save_cost_ts_avg", (t().get() * 1.0f) / (j11 == 0 ? 1L : j11));
            jSONObject.put("save_success_count", j11);
            long j13 = x().get();
            jSONObject.put("save_upload_cost_ts_avg", (u().get() * 1.0f) / (j13 == 0 ? 1L : j13));
            jSONObject.put("will_send_count", j13);
            jSONObject.put("sdk_event_index", j10);
            jSONObject.put("sdk_send_success_count", this.f19829p.get());
            jSONObject.put("all_delete_count", yp().get());
            jSONObject.put("success_delete_count", z().get());
            jSONObject.put("invalid_delete_count", m().get());
            jSONObject.put("will_save_count", nu().get());
            jSONObject.put("will_save_show_count", rh().get());
            jSONObject.put("save_success_show_count", my().get());
            jSONObject.put("will_save_click_count", gt().get());
            jSONObject.put("save_success_click_count", rl().get());
            jSONObject.put("did_send_count", da().get());
            jSONObject.put("did_send_distinct_count", gu().get());
            jSONObject.put("did_send_show_count", gr().get());
            jSONObject.put("did_send_show_distinct_count", zm().get());
            jSONObject.put("send_show_success_valid_count", yv().get());
            jSONObject.put("send_show_success_invalid_count", d().get());
            jSONObject.put("did_send_click_count", p().get());
            jSONObject.put("did_send_click_distinct_count", md().get());
            jSONObject.put("send_click_success_valid_count", h().get());
            jSONObject.put("send_click_success_invalid_count", eo().get());
            jSONObject.put("send_success_valid_count", qy().get());
            long j14 = sp().get();
            jSONObject.put("send_success_invalid_count", zb().get());
            jSONObject.put("send_fail_count", j14);
            jSONObject.put("before_save_count", sl().get());
            jSONObject.put("success_tm", uj().get());
            jSONObject.put("queue_timeout_tm", ve().get());
            jSONObject.put("after_upload_tm", tt().get());
            jSONObject.put("quit_tm", c().get());
            long j15 = cu().get();
            long j16 = qp().get();
            jSONObject.put("success_request_cost_ts_avg", (nb().get() * 1.0f) / (j15 == 0 ? 1L : j15));
            float f10 = pf().get() * 1.0f;
            if (j16 != 0) {
                j12 = j16;
            }
            jSONObject.put("fail_request_cost_ts_avg", f10 / j12);
            jSONObject.put("request_count", or().get());
            jSONObject.put("request_success_count", j15);
            jSONObject.put("request_fail_count", j16);
            jSONObject.put("is_multi_process", nVar.sl());
            jSONObject.put("app_start_time", com.byazt.mv.tt.ve);
            jSONObject.put("app_first_time", com.byazt.mv.tt.uj);
            jSONObject.put("fail_code_list", this.f19821c.toString());
            jSONObject.put("delete_msg", this.tt.toString());
            uj ujVarUj = nVar.uj();
            if (ujVarUj != null) {
                jSONObject.put("is_debug", ujVarUj.c());
                x xVarT = ujVarUj.t();
                if (xVarT != null) {
                    jSONObject.put("is_plugin", xVarT.x());
                }
            }
        } catch (Exception e10) {
            m.c(e10);
        }
        return jSONObject;
    }
}

package com.byazt.mc;

import androidx.core.app.NotificationCompat;
import com.byazt.bwm.i;
import com.byazt.dna.z;
import com.byazt.nr.m;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1001, 54})
public class ve implements Comparable<ve>, Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicInteger f16858c = new AtomicInteger(0);
    public static boolean tt = false;
    public a uj;
    public final Runnable ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f16863x;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f16862n = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f16859a = true;
    public final long sp = System.currentTimeMillis();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16861i = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f16860da = 0;

    public ve(Runnable runnable) {
        this.ve = runnable;
    }

    private void ve(boolean z10) {
        a aVar = this.uj;
        if (aVar != null) {
            aVar.c(this, z10);
        }
    }

    public void c(a aVar) {
        this.uj = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        long j10;
        long j11;
        int i10;
        int i11;
        i iVar = i.tt;
        boolean zGt = iVar.gt();
        if (zGt) {
            int activeCount = iVar.i().getActiveCount();
            int activeCount2 = iVar.da().getActiveCount();
            long jCurrentTimeMillis = System.currentTimeMillis();
            i10 = activeCount;
            i11 = activeCount2;
            j11 = jCurrentTimeMillis;
            j10 = (jCurrentTimeMillis - this.f16863x) - this.sp;
        } else {
            j10 = 0;
            j11 = 0;
            i10 = 0;
            i11 = 0;
        }
        this.ve.run();
        long jCurrentTimeMillis2 = System.currentTimeMillis() - j11;
        if (!this.f16862n && this.f16861i == 2) {
            f16858c.decrementAndGet();
        }
        ve(false);
        if (zGt) {
            if (c(j10) || jCurrentTimeMillis2 > iVar.my()) {
                z zVar = (z) com.byazt.ut.uj.getService(NotificationCompat.CATEGORY_EVENT);
                if (zVar == null) {
                    m.tt("BizRunnable", "IEvent service is null");
                } else {
                    c(j10, jCurrentTimeMillis2, "", 0, i10, i11, zVar);
                }
            }
        }
    }

    public void tt() {
        this.f16863x = System.currentTimeMillis() - this.sp;
    }

    public int uj() {
        return this.f16861i;
    }

    public Runnable c() {
        return this.ve;
    }

    public void tt(boolean z10) {
        this.f16859a = z10;
    }

    private boolean c(long j10) {
        if (this.f16860da == 1) {
            return j10 > i.tt.nu();
        }
        return j10 > i.tt.rh();
    }

    public boolean ve() {
        return this.f16859a;
    }

    private void c(long j10, long j11, String str, int i10, int i11, int i12, z zVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("create_time", this.sp);
            jSONObject.put("is_wrap", this.ve instanceof ve);
            jSONObject.put("is_oom", tt);
            jSONObject.put("pool_wait_time", j10);
            jSONObject.put("priority", i10);
            jSONObject.put("wait_in_queue", this.f16863x);
            jSONObject.put("pool_type", this.f16861i);
            jSONObject.put("origin_pool_type", this.f16860da);
            jSONObject.put("run_cost", j11);
            jSONObject.put("task_name", str);
            jSONObject.put("thread_name", Thread.currentThread().getName());
            i iVar = i.tt;
            jSONObject.put("little_active_count", i11);
            jSONObject.put("big_active_count", i12);
            jSONObject.put("is_crash", iVar.yp());
            jSONObject.put("auto_size", i.uj);
            jSONObject.put("pri_task_in_little", f16858c.get());
            jSONObject.put("core_count", iVar.x());
            jSONObject.put("max_pool_size", iVar.sl());
            jSONObject.put("use_little_pool", iVar.m());
        } catch (Exception unused) {
        }
        zVar.onStatsEvent("task_run_cost", jSONObject);
    }

    public ve(Runnable runnable, a aVar) {
        this.ve = runnable;
        this.uj = aVar;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(ve veVar) {
        Class<?> cls = this.ve.getClass();
        Class<?> cls2 = veVar.ve.getClass();
        if (!cls.isAssignableFrom(cls2) && !cls2.isAssignableFrom(cls)) {
            return 0;
        }
        Runnable runnable = this.ve;
        if (!(runnable instanceof Comparable)) {
            return 0;
        }
        Runnable runnable2 = veVar.ve;
        if (runnable2 instanceof Comparable) {
            return ((Comparable) runnable).compareTo(runnable2);
        }
        return 0;
    }

    public void c(boolean z10) {
        this.f16862n = z10;
    }

    public void c(int i10) {
        int i11 = this.f16861i;
        if (i11 == 0) {
            this.f16860da = i10;
        } else {
            this.f16860da = i11;
        }
        this.f16861i = i10;
    }
}

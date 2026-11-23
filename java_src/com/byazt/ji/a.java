package com.byazt.ji;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 222, 34})
public class a extends tt implements com.byazt.cd.i.c {
    public boolean gr;
    public boolean gt;
    public int gu;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f15823m;
    public boolean my;
    public Handler nu;
    public long qy;
    public int rh;
    public boolean rl;
    public int sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f15824t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f15825u;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f15826z;
    public final List<sp> zm;

    public a(Context context) {
        super(context);
        this.f15824t = 0;
        this.f15825u = "";
        this.yp = 0;
        this.f15826z = 0;
        this.f15823m = 0;
        this.nu = new com.byazt.cd.i(Looper.getMainLooper(), this);
        this.rh = 0;
        this.my = false;
        this.gt = false;
        this.rl = false;
        this.qy = 0L;
        this.gu = 0;
        this.gr = false;
        this.zm = new ArrayList();
    }

    private void n() {
        if (this.rl) {
            return;
        }
        this.gu = (int) Math.max(0L, this.qy - SystemClock.uptimeMillis());
        this.nu.removeMessages(1001);
        this.rl = true;
    }

    private void sl() {
        if (this.rl) {
            this.rl = false;
            int i10 = this.gu;
            this.gu = 0;
            tt(i10);
        }
    }

    private void t() {
        if (this.zm.isEmpty()) {
            return;
        }
        Iterator it2 = new ArrayList(this.zm).iterator();
        while (it2.hasNext()) {
            ((sp) it2.next()).c(this.f15825u);
        }
    }

    private void tt(int i10) {
        this.nu.removeMessages(1001);
        long jMax = Math.max(0, i10);
        this.qy = SystemClock.uptimeMillis() + jMax;
        this.nu.sendEmptyMessageDelayed(1001, jMax);
    }

    private void u() {
        if (this.zm.isEmpty()) {
            return;
        }
        Iterator it2 = new ArrayList(this.zm).iterator();
        while (it2.hasNext()) {
            ((sp) it2.next()).tt(this.f15825u);
        }
    }

    private void uj() {
        if (this.gt) {
            com.byazt.xj.ve veVar = this.tt;
            View viewI = veVar != null ? veVar.i() : null;
            if ((this.f15826z & 2) != 0 && viewI != null && viewI.getVisibility() != 0) {
                this.f15823m |= 2;
            }
            if ((this.f15826z & 1) != 0 && viewI != null && !viewI.hasWindowFocus()) {
                this.f15823m |= 1;
            }
            if (this.f15823m != 0) {
                n();
            } else {
                sl();
            }
        }
    }

    private void ve() {
        if (this.gt) {
            return;
        }
        this.gt = true;
        this.my = false;
        this.rl = false;
        this.gu = 0;
        this.gr = false;
        this.f15823m = 0;
        t();
        tt(this.f15824t);
        uj();
    }

    @Override // com.byazt.ji.tt
    public void a() {
        super.a();
        Map<String, Object> map = this.f15836n;
        if (map == null) {
            this.f15825u = "";
            return;
        }
        Object obj = map.get("name");
        if (obj != null) {
            this.f15825u = String.valueOf(obj);
        } else {
            this.f15825u = "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a4  */
    @Override // com.byazt.ji.tt
    public boolean c(Object... objArr) {
        Map<String, Object> map = this.f15836n;
        if (map != null) {
            Object obj = map.get("name");
            if (obj != null) {
                this.f15825u = String.valueOf(obj);
            } else {
                this.f15825u = "";
            }
            Object obj2 = this.f15836n.get("condition");
            if (obj2 != null) {
                this.yp = com.byazt.cd.ve.c(String.valueOf(obj2), 0);
            } else {
                this.yp = 0;
            }
            Object obj3 = this.f15836n.get("pauseMode");
            if (obj3 != null) {
                this.f15826z = com.byazt.cd.ve.c(String.valueOf(obj3), 0);
            } else {
                this.f15826z = 0;
            }
            Object obj4 = this.f15836n.get("loop");
            if (obj4 != null) {
                this.sl = com.byazt.cd.ve.c(String.valueOf(obj4), 1);
            } else {
                this.sl = 1;
            }
            int i10 = this.sl;
            if (i10 <= 0) {
                this.rh = -1;
            } else {
                this.rh = i10;
            }
            Object obj5 = this.f15836n.get("duration");
            if (obj5 == null) {
                this.f15824t = 0;
            } else {
                this.f15824t = com.byazt.cd.ve.c(String.valueOf(obj5), 0);
            }
        }
        int i11 = this.yp;
        if (i11 == 0) {
            ve();
        } else if (i11 == 1) {
            com.byazt.xj.ve veVar = this.tt;
            if (veVar == null || veVar.i() == null || this.tt.i().getVisibility() != 0) {
                this.my = true;
            } else {
                ve();
            }
        } else if (i11 == 2) {
            this.my = true;
        } else {
            ve();
        }
        return true;
    }

    public String tt() {
        return this.f15825u;
    }

    public void c(int i10) {
        if (this.yp == 1 && this.my && i10 == 0) {
            ve();
        }
        if (!this.gt || (this.f15826z & 2) == 0) {
            return;
        }
        if (i10 == 0) {
            this.f15823m &= -3;
        } else {
            this.f15823m |= 2;
        }
        uj();
    }

    public void c() {
        if (this.yp == 2 && this.my) {
            ve();
        }
    }

    public void c(boolean z10) {
        if (!this.gt || (this.f15826z & 1) == 0) {
            return;
        }
        if (z10) {
            this.f15823m &= -2;
        } else {
            this.f15823m |= 1;
        }
        uj();
    }

    @Override // com.byazt.cd.i.c
    public void c(Message message) {
        int i10;
        int i11;
        if (message.what != 1001) {
            return;
        }
        this.f15833c.c(this.tt, this.f15832a, this.ve.tt(), this.ve);
        int i12 = this.rh - 1;
        this.rh = i12;
        if (i12 < 0 && (i11 = this.f15824t) != 0) {
            tt(i11);
            return;
        }
        if (i12 > 0 && (i10 = this.f15824t) != 0) {
            tt(i10);
            return;
        }
        this.nu.removeMessages(1001);
        this.qy = 0L;
        if (this.gr) {
            return;
        }
        this.gr = true;
        u();
    }

    public void c(sp spVar) {
        if (spVar == null || this.zm.contains(spVar)) {
            return;
        }
        this.zm.add(spVar);
    }
}

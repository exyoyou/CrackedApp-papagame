package com.byazt.lu;

import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.ds.i;
import com.byazt.ds.x;
import com.byazt.tv.da;
import com.byazt.yv.u;
import com.haima.hmcp.proto.GSSDK;
import com.umeng.analytics.pro.w;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_L1_VALUE, 91})
public class sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicLong f16776a = new AtomicLong(1000);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static c f16777z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final x f16778c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile boolean f16779da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f16780i = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f16781n;
    public long sl;
    public long sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f16782t;
    public final i tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f16783u;
    public com.byazt.tv.i uj;
    public com.byazt.tv.i ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f16784x;
    public com.byazt.tv.a yp;

    /* JADX INFO: Access modifiers changed from: private */
    @com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_L1_VALUE, 180})
    static class c extends da {
        private c() {
        }
    }

    public sp(i iVar, x xVar) {
        this.tt = iVar;
        this.f16778c = xVar;
    }

    public static c n() {
        if (f16777z == null) {
            f16777z = new c();
        }
        f16777z.tt = System.currentTimeMillis();
        return f16777z;
    }

    public static long uj() {
        return f16776a.incrementAndGet();
    }

    public String c() {
        return this.f16781n;
    }

    public boolean tt() {
        return this.f16779da;
    }

    public boolean ve() {
        return tt() && this.sl == 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x004e  */
    public synchronized Bundle c(long j10, long j11) {
        Bundle bundle;
        if (this.f16778c.a() && ve()) {
            long j12 = this.sp;
            if (j12 <= 0 || j10 - j12 <= j11) {
                bundle = null;
            } else {
                bundle = new Bundle();
                bundle.putInt("session_no", this.f16782t);
                int i10 = this.f16784x + 1;
                this.f16784x = i10;
                bundle.putInt("send_times", i10);
                bundle.putLong("current_duration", (j10 - this.sp) / 1000);
                bundle.putString(w.f84908a, com.byazt.tv.c.tt(this.f16780i));
                this.sp = j10;
            }
        } else {
            bundle = null;
        }
        return bundle;
    }

    public void tt(com.byazt.tv.c cVar) {
        if (cVar != null) {
            if (this.f16778c.rl()) {
                cVar.f20438x = com.byazt.gj.c.n();
            }
            cVar.f20433a = com.byazt.gj.c.sl();
            cVar.sp = com.byazt.gj.c.da();
            cVar.uj = this.f16781n;
            cVar.ve = uj();
        }
    }

    private synchronized void c(com.byazt.tv.c cVar, ArrayList<com.byazt.tv.c> arrayList, boolean z10) {
        long j10 = cVar instanceof c ? -1L : cVar.tt;
        this.f16781n = UUID.randomUUID().toString();
        f16776a.set(1000L);
        this.f16780i = j10;
        this.f16779da = z10;
        this.sl = 0L;
        this.sp = 0L;
        if (com.byazt.yv.da.tt) {
            com.byazt.yv.da.c("startSession, " + this.f16781n + ", hadUi:" + z10 + " data:" + cVar, null);
        }
        if (z10) {
            Calendar calendar = Calendar.getInstance();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(calendar.get(1));
            sb2.append(calendar.get(2));
            sb2.append(calendar.get(5));
            String string = sb2.toString();
            if (TextUtils.isEmpty(this.f16783u)) {
                this.f16783u = this.f16778c.ve();
                this.f16782t = this.f16778c.uj();
            }
            if (!string.equals(this.f16783u)) {
                this.f16783u = string;
                this.f16782t = 1;
            } else {
                this.f16782t++;
            }
            this.f16778c.c(string, this.f16782t);
            this.f16784x = 0;
            this.sp = cVar.tt;
        }
        if (j10 != -1) {
            com.byazt.tv.a aVar = new com.byazt.tv.a(false);
            aVar.uj = this.f16781n;
            aVar.ve = uj();
            aVar.tt = this.f16780i;
            aVar.yp = this.f16779da ? false : true;
            aVar.f20430u = this.tt.ve();
            aVar.f20429t = this.tt.tt();
            aVar.f20433a = com.byazt.gj.c.sl();
            aVar.sp = com.byazt.gj.c.da();
            if (this.f16778c.rl()) {
                aVar.f20438x = com.byazt.gj.c.n();
            }
            arrayList.add(aVar);
            this.yp = aVar;
            if (com.byazt.yv.da.tt) {
                com.byazt.yv.da.c("gen launch, " + aVar.uj + ", hadUi:" + z10, null);
            }
        }
    }

    public static boolean c(com.byazt.tv.c cVar) {
        if (cVar instanceof com.byazt.tv.i) {
            return ((com.byazt.tv.i) cVar).da();
        }
        return false;
    }

    public boolean c(com.byazt.tv.c cVar, ArrayList<com.byazt.tv.c> arrayList) {
        boolean z10 = cVar instanceof com.byazt.tv.i;
        boolean zC = c(cVar);
        boolean z11 = true;
        if (this.f16780i == -1) {
            c(cVar, arrayList, c(cVar));
        } else if (!this.f16779da && zC) {
            c(cVar, arrayList, true);
        } else {
            long j10 = this.sl;
            if (j10 == 0 || cVar.tt <= j10 + this.f16778c.gu()) {
                if (this.f16780i > cVar.tt + 7200000) {
                    c(cVar, arrayList, zC);
                } else {
                    z11 = false;
                }
            } else if (!u.tt() && u.c()) {
                c(cVar, arrayList, zC);
            }
        }
        if (z10) {
            com.byazt.tv.i iVar = (com.byazt.tv.i) cVar;
            if (iVar.da()) {
                this.sl = 0L;
                arrayList.add(cVar);
                if (TextUtils.isEmpty(iVar.f20444u)) {
                    com.byazt.tv.i iVar2 = this.uj;
                    if (iVar2 != null && (iVar.tt - iVar2.tt) - iVar2.f20443t < 500) {
                        iVar.f20444u = iVar2.yp;
                    } else {
                        com.byazt.tv.i iVar3 = this.ve;
                        if (iVar3 != null && (iVar.tt - iVar3.tt) - iVar3.f20443t < 500) {
                            iVar.f20444u = iVar3.yp;
                        }
                    }
                }
            } else {
                Bundle bundleC = c(cVar.tt, 0L);
                if (bundleC != null) {
                    com.byazt.gj.c.c("play_session", bundleC);
                }
                this.sl = iVar.tt;
                arrayList.add(cVar);
                if (iVar.sl()) {
                    this.ve = iVar;
                } else {
                    this.uj = iVar;
                    this.ve = null;
                }
            }
        } else if (!(cVar instanceof c)) {
            arrayList.add(cVar);
        }
        tt(cVar);
        return z11;
    }
}

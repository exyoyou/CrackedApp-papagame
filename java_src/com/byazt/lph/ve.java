package com.byazt.lph;

import android.os.Handler;
import android.os.Message;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_ACK_DELAY, 54})
public class ve extends n implements Handler.Callback {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f16709m = 200;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f16710z = 10;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16711a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.uf.n f16712c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final long f16713da;
    public volatile String gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f16714i;
    public volatile int my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a f16715n;
    public final String nu;
    public final String rh;
    public final HashMap<String, List<com.byazt.vb.tt>> rl;
    public volatile Handler sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final List<com.byazt.vb.tt> f16716t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final List<com.byazt.vb.tt> f16717u;
    public final Object uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final AtomicInteger f16718x;
    public volatile boolean yp;

    public ve(com.byazt.vb.n nVar, com.byazt.mv.tt ttVar) {
        super(nVar, ttVar);
        this.uj = new Object();
        this.f16711a = 0;
        this.sp = 0;
        this.f16718x = new AtomicInteger(0);
        this.f16714i = 5000L;
        this.f16713da = 5000000000L;
        this.f16716t = new ArrayList();
        this.f16717u = new CopyOnWriteArrayList();
        this.yp = false;
        this.nu = "after_upload";
        this.rh = "prepare_upload";
        this.my = 0;
        this.gt = "DEFAULT";
        this.rl = new HashMap<>();
        this.f16712c = new com.byazt.uf.ve(nVar, this);
        this.f16715n = new a(this.tt, this.ve);
    }

    private void i() {
        synchronized (this.uj) {
            try {
                try {
                    if (this.f16711a == 0 && com.byazt.ml.c.c(this.tt)) {
                        int iTt = this.f16712c.tt() + this.f16712c.c();
                        int iTt2 = this.tt.x().tt();
                        if (iTt != 0 && iTt2 != 0) {
                            this.f16711a = (iTt / iTt2) + 4;
                        }
                    }
                    long jNanoTime = System.nanoTime();
                    this.uj.wait(5000L);
                    long jNanoTime2 = System.nanoTime() - jNanoTime;
                    if (jNanoTime2 < 5000000000L && 5000000000L - jNanoTime2 >= 50000000) {
                        if (uj()) {
                            com.byazt.ml.ve.ve("_error", "return wait serverBusy", this.tt);
                            return;
                        }
                        if (this.ve.ve()) {
                            com.byazt.ml.ve.ve("_error", "return wait otherError", this.tt);
                            return;
                        }
                        com.byazt.ml.tt.c(com.byazt.mv.tt.f17020c.tt(), 1, this.tt);
                        int i10 = this.sp;
                        if (i10 < this.f16711a) {
                            this.sp = i10 + 1;
                            com.byazt.ml.ve.tt("_flush", "afterUpload send flush again:" + this.sp, this.tt);
                            c(72, "continue");
                        } else {
                            this.sp = 0;
                            this.f16711a = 0;
                            if (this.sl.hasMessages(72)) {
                                this.sl.removeMessages(72);
                            }
                            com.byazt.ml.ve.ve("_flush", "afterUpload send flush end", this.tt);
                        }
                        return;
                    }
                    com.byazt.ml.ve.ve("_error", "return wait timeout", this.tt);
                } catch (InterruptedException e10) {
                    com.byazt.ml.ve.ve("_error", "wait exception:" + e10.getMessage(), this.tt);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean x() {
        return com.byazt.ml.c.c(this.tt) && this.tt.ve();
    }

    public com.byazt.uf.n c() {
        return this.f16712c;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i10 = message.what;
        try {
            boolean zC = this.tt.uj().c(this.tt.getContext());
            if (i10 == 1) {
                synchronized (ve.class) {
                    if (!this.f16717u.isEmpty()) {
                        int size = this.f16717u.size();
                        for (int i11 = 0; i11 < size; i11++) {
                            c(this.f16717u.get(i11), 1, zC);
                        }
                    }
                    this.yp = true;
                    this.f16717u.clear();
                }
            } else if (i10 == 3) {
                ve((com.byazt.vb.tt) null, 3, zC);
            } else if (i10 == 5) {
                ArrayList arrayList = new ArrayList(this.f16716t);
                this.f16716t.clear();
                ve(arrayList, "timeout_dispatch", 5);
            } else if (i10 == 74) {
                c((com.byazt.vb.tt) message.obj, 74, zC);
            } else if (i10 == 71) {
                ve((com.byazt.vb.tt) null, 71, zC);
            } else if (i10 == 72) {
                ve((com.byazt.vb.tt) null, 72, zC);
            }
        } catch (Throwable th) {
            com.byazt.ml.ve.ve("_ms", "error:" + th.getMessage(), this.tt);
        }
        return true;
    }

    public Handler tt() {
        return this.sl;
    }

    public boolean uj() {
        return com.byazt.ml.c.c(this.tt) && this.ve.tt();
    }

    @Override // com.byazt.lph.n
    public void ve() {
        super.ve();
        this.sl = new Handler(sp(), this);
        this.ve.c(this.sl);
        this.sl.sendEmptyMessage(1);
    }

    private void tt(com.byazt.vb.tt ttVar, int i10, boolean z10) {
        this.f16718x.set(0);
        com.byazt.ml.tt.c(com.byazt.mv.tt.f17020c.sl(), 1, this.tt);
        this.f16712c.c(ttVar, i10, z10);
        com.byazt.ml.c.c(ttVar, this.tt, "_ad");
        com.byazt.ml.c.x(ttVar, this.tt);
    }

    public boolean c(int i10, String str, com.byazt.vb.tt ttVar) {
        if (this.tt == null) {
            return false;
        }
        return this.f16712c.c(i10, str, ttVar);
    }

    public void c(com.byazt.vb.tt ttVar, boolean z10) {
        if (ttVar == null) {
            return;
        }
        if (z10) {
            if (this.sl != null) {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(ttVar);
                ve(arrayList, "ignore_result_dispatch", 78);
                return;
            }
            com.byazt.ml.ve.ve("_error", "other thread handler is null，ignore is true", this.tt);
            return;
        }
        if (this.yp) {
            Message messageObtain = Message.obtain();
            messageObtain.obj = ttVar;
            messageObtain.what = 74;
            this.sl.sendMessage(messageObtain);
            return;
        }
        this.f16717u.add(ttVar);
    }

    private void ve(com.byazt.vb.tt ttVar, int i10, boolean z10) {
        if (x()) {
            com.byazt.ml.ve.c("_error", " upload cancel cause config " + com.byazt.ml.c.ve(ttVar, this.tt), this.tt);
            return;
        }
        boolean zUj = uj();
        boolean z11 = false;
        boolean z12 = com.byazt.ml.c.i(ttVar, this.tt) || i10 == 3;
        boolean zC = com.byazt.ml.c.c(i10);
        com.byazt.ml.ve.ve("_error", "serbusy:" + zUj + " isCsjBusy:" + z12 + " flush:" + zC, this.tt);
        if (zUj && !zC && z12) {
            if (i10 == 3) {
                com.byazt.ml.ve.ve("_error", "start do flush", this.tt);
                ve((com.byazt.vb.tt) null, 72, z10);
                return;
            } else {
                if (i10 != 74 && i10 != 1) {
                    com.byazt.ml.ve.ve("_error", "server busy", this.tt);
                    return;
                }
                boolean zHasMessages = this.sl.hasMessages(3);
                com.byazt.ml.ve.ve("_error", "server busy return : hasBusyMsg:".concat(String.valueOf(zHasMessages)), this.tt);
                if (zHasMessages) {
                    return;
                }
                this.f16715n.c(3, 15000L, this.sl);
                return;
            }
        }
        if (!z10) {
            com.byazt.ml.ve.ve("_error", "AdThread NET IS NOT AVAILABLE!!!", this.tt);
            return;
        }
        boolean zC2 = c(i10, "needUpload check", ttVar);
        if (zC2) {
            List<com.byazt.vb.tt> listC = this.f16712c.c(i10, ttVar, zUj, this.my + "_" + this.gt);
            if (listC != null && !listC.isEmpty()) {
                com.byazt.ml.ve.tt("_ms", "prepare get size =" + listC.size(), this.tt);
                c(listC, i10);
            } else {
                com.byazt.ml.ve.tt("_ms", "prepare get no event need upload", this.tt);
                c("prepare_upload");
            }
            com.byazt.ml.ve.c("_ms", "prepare upload end needUpload:".concat(String.valueOf(z11)), this.tt);
        }
        com.byazt.ml.ve.tt("_ms", "prepare upload no need", this.tt);
        this.rl.clear();
        c("prepare_upload");
        z11 = zC2;
        com.byazt.ml.ve.c("_ms", "prepare upload end needUpload:".concat(String.valueOf(z11)), this.tt);
    }

    private void tt(List<com.byazt.vb.tt> list, String str, int i10) {
        this.f16716t.addAll(list);
        com.byazt.vb.uj ujVarUj = this.tt.uj();
        if (ujVarUj != null && ujVarUj.t() != null) {
            f16710z = ujVarUj.t().uj();
        }
        if (this.f16716t.size() >= f16710z) {
            if (this.sl.hasMessages(5)) {
                this.sl.removeMessages(5);
            }
            ArrayList arrayList = new ArrayList(this.f16716t);
            this.f16716t.clear();
            ve(arrayList, "max_size_dispatch", i10);
            return;
        }
        c(str);
    }

    public void c(int i10, String str) {
        try {
            if (!this.tt.uj().c(this.tt.getContext())) {
                com.byazt.ml.ve.ve("_error", "AdThread NET IS NOT AVAILABLE", this.tt);
                return;
            }
            boolean zC = c(i10, str + " check", (com.byazt.vb.tt) null);
            com.byazt.ml.ve.tt("_flush", "notify runOnce check: " + zC + " " + str, this.tt);
            if (zC) {
                Message messageObtain = Message.obtain();
                messageObtain.what = i10;
                this.sl.sendMessage(messageObtain);
            }
        } catch (Throwable th) {
            com.byazt.ml.ve.ve(th.getMessage(), this.tt);
        }
    }

    private void c(com.byazt.vb.tt ttVar, int i10, boolean z10) {
        try {
            tt(ttVar, i10, z10);
            ve(ttVar, i10, z10);
        } catch (Throwable th) {
            com.byazt.ml.ve.ve("_error", "run exception:" + th.getMessage(), this.tt);
            com.byazt.ml.tt.c(com.byazt.mv.tt.f17020c.ve(), 1, this.tt);
        }
    }

    private void c(String str) {
        if (!this.f16716t.isEmpty()) {
            com.byazt.vb.uj ujVarUj = this.tt.uj();
            if (this.sl.hasMessages(5)) {
                this.sl.removeMessages(5);
            }
            long jVe = f16709m;
            if (ujVarUj != null && ujVarUj.t() != null) {
                jVe = ujVarUj.t().ve();
            }
            this.sl.sendEmptyMessageDelayed(5, jVe);
            this.f16716t.size();
            return;
        }
        com.byazt.ml.ve.c("_ms", "do nothing", this.tt);
    }

    private void ve(List<com.byazt.vb.tt> list, String str, int i10) {
        this.f16715n.c(list, str, i10, this.uj);
        if (i10 != 78) {
            c(i10);
        }
    }

    private void c(List<com.byazt.vb.tt> list, String str, int i10) {
        ve(list, str, i10);
    }

    private void c(List<com.byazt.vb.tt> list, int i10) {
        com.byazt.ml.c.c(list, this.tt);
        com.byazt.vb.tt ttVar = list.get(0);
        if (ttVar == null) {
            com.byazt.ml.ve.ve("_error", "adLogEvent is null", this.tt);
            return;
        }
        if (list.size() <= 1 && !com.byazt.ml.c.tt(this.tt) && !com.byazt.ml.c.uj(this.tt)) {
            if (ttVar.n() == 1) {
                c(list, "highPriority", i10);
                return;
            }
            if (ttVar.uj() == 0 && ttVar.n() == 2) {
                if (ttVar.tt() == 3) {
                    c(list, "version_v3_single_directly", i10);
                    return;
                } else {
                    tt(list, "singleOptimize", i10);
                    return;
                }
            }
            if (ttVar.uj() == 1) {
                c(list, "stats_directly", i10);
                return;
            }
            if (ttVar.uj() == 3) {
                c(list, "adType_v3_directly", i10);
                return;
            } else if (ttVar.uj() == 2) {
                c(list, "other_directly", i10);
                return;
            } else {
                com.byazt.ml.ve.ve("_error", "adLogEvent adType error", this.tt);
                return;
            }
        }
        if (ttVar.uj() == 0 && ttVar.n() == 2 && i10 == 74) {
            if (ttVar.tt() == 3) {
                c(list, "version_v3_batch", i10);
                return;
            } else {
                tt(list, "batchOptimize", i10);
                return;
            }
        }
        c(list, "batchRead", i10);
    }

    private void c(int i10) {
        c("after_upload");
        if (i10 != 72) {
            this.sp = 0;
            this.f16711a = 0;
            if (this.sl.hasMessages(72)) {
                this.sl.removeMessages(72);
                return;
            }
            return;
        }
        i();
    }
}

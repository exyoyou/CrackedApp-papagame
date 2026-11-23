package com.byazt.lph;

import android.os.Handler;
import com.byazt.nr.m;
import com.byazt.vb.da;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_ACK_DELAY, 34})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.mv.tt f16698a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.vb.n f16700n;
    public ve ve;
    public volatile long uj = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f16699c = new AtomicInteger(0);
    public final AtomicInteger tt = new AtomicInteger(0);

    public a(com.byazt.vb.n nVar, com.byazt.mv.tt ttVar) {
        this.f16700n = nVar;
        this.f16698a = ttVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(List<com.byazt.vb.tt> list, long j10, int i10, Object obj) {
        tt ttVarC;
        try {
            com.byazt.vb.tt ttVar = list.get(0);
            com.byazt.ml.tt.c(com.byazt.mv.tt.f17020c.or(), 1, this.f16700n);
            if (ttVar.uj() == 0) {
                ttVarC = com.byazt.epi.tt.n().c(list);
                c(ttVarC, list);
                if (ttVarC != null) {
                    com.byazt.ml.c.c(list, ttVarC.uj, this.f16700n);
                }
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<com.byazt.vb.tt> it2 = list.iterator();
                    while (it2.hasNext()) {
                        jSONArray.put(it2.next().sp());
                    }
                    jSONObject.put("stats_list", jSONArray);
                } catch (Exception e10) {
                    com.byazt.ml.ve.ve("_error", "json exception:" + e10.getMessage(), this.f16700n);
                }
                ttVarC = com.byazt.epi.tt.n().c(jSONObject);
            }
            tt ttVar2 = ttVarC;
            this.tt.decrementAndGet();
            c(ttVar2, list, j10, obj, i10);
        } catch (Throwable th) {
            com.byazt.ml.ve.ve("_error", "inner exception:" + th.getMessage(), this.f16700n);
            com.byazt.ml.tt.c(com.byazt.mv.tt.f17020c.ve(), 1, this.f16700n);
            this.tt.decrementAndGet();
        }
    }

    public void c(List<com.byazt.vb.tt> list, String str, int i10, Object obj) {
        this.ve = this.f16698a.uj();
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.byazt.ml.c.c(list, i10, str, this.f16700n);
        if (this.f16700n.da() != null) {
            c(list, jCurrentTimeMillis, obj, i10);
        } else {
            com.byazt.ml.c.c(list, str);
            c(list, jCurrentTimeMillis, i10, obj);
        }
    }

    private void c(final List<com.byazt.vb.tt> list, final long j10, final int i10, final Object obj) {
        com.byazt.vb.uj ujVarUj = this.f16700n.uj();
        if (ujVarUj != null) {
            Executor executorI = ujVarUj.i();
            if (list.get(0).n() == 1) {
                executorI = ujVarUj.x();
            }
            if (executorI == null) {
                return;
            }
            this.tt.incrementAndGet();
            executorI.execute(new com.byazt.ke.tt("csj_log_upload") { // from class: com.byazt.lph.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.tt(list, j10, i10, obj);
                }
            });
        }
    }

    private void c(tt ttVar, List<com.byazt.vb.tt> list) {
        if (ttVar == null || !ttVar.f16706c) {
            return;
        }
        List<com.byazt.vb.ve> listC = com.byazt.epi.c.c();
        if (list == null || listC == null || listC.size() == 0) {
            return;
        }
        for (com.byazt.vb.tt ttVar2 : list) {
            if (ttVar2.n() == 1) {
                String strC = com.byazt.ml.c.c(ttVar2, this.f16700n);
                String strA = com.byazt.ml.c.a(ttVar2, this.f16700n);
                for (com.byazt.vb.ve veVar : listC) {
                    if (veVar != null) {
                        veVar.c(strC, strA);
                    }
                }
            }
        }
    }

    private void c(List<com.byazt.vb.tt> list, final long j10, final Object obj, final int i10) {
        this.tt.incrementAndGet();
        com.byazt.ml.tt.c(com.byazt.mv.tt.f17020c.or(), 1, this.f16700n);
        try {
            this.f16700n.da().c(list, new da() { // from class: com.byazt.lph.a.2
                @Override // com.byazt.vb.da
                public void c(List<c> list2) {
                    try {
                        a.this.tt.decrementAndGet();
                        if (list2 == null || list2.size() == 0) {
                            return;
                        }
                        int size = list2.size();
                        for (int i11 = 0; i11 < size; i11++) {
                            c cVar = list2.get(i11);
                            if (cVar != null) {
                                a.this.c(cVar.c(), cVar.tt(), j10, obj, i10);
                            }
                        }
                    } catch (Exception e10) {
                        m.c(e10);
                    }
                }
            });
        } catch (Exception e10) {
            com.byazt.ml.ve.ve("_error", "outer exception：" + e10.getMessage(), this.f16700n);
            com.byazt.ml.tt.c(com.byazt.mv.tt.f17020c.ve(), 1, this.f16700n);
            this.tt.decrementAndGet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(tt ttVar, List<com.byazt.vb.tt> list, long j10, Object obj, int i10) {
        if (i10 == 78) {
            return;
        }
        if (ttVar != null) {
            int i11 = ttVar.tt;
            if (ttVar.f16707n) {
                i11 = -1;
            } else if (i11 < 0) {
                i11 = -2;
            }
            if (i11 == 510 || i11 == 511) {
                i11 = -2;
            }
            int i12 = (ttVar.f16706c || ((i11 < 500 || i11 >= 509) && i11 <= 513)) ? i11 : -2;
            if (list != null) {
                list.size();
                this.tt.get();
            }
            c(i12, list, j10, obj, i10, ttVar);
            return;
        }
        c(-1, list, j10, obj, i10, (tt) null);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0070 A[Catch: all -> 0x00cc, TryCatch #0 {all -> 0x00cc, blocks: (B:7:0x000e, B:9:0x002d, B:35:0x00c5, B:36:0x00c8, B:20:0x0044, B:22:0x004c, B:24:0x0059, B:26:0x0066, B:27:0x0070, B:29:0x0078, B:30:0x0087, B:32:0x0093, B:33:0x00ba, B:38:0x00ca), top: B:43:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0078 A[Catch: all -> 0x00cc, TryCatch #0 {all -> 0x00cc, blocks: (B:7:0x000e, B:9:0x002d, B:35:0x00c5, B:36:0x00c8, B:20:0x0044, B:22:0x004c, B:24:0x0059, B:26:0x0066, B:27:0x0070, B:29:0x0078, B:30:0x0087, B:32:0x0093, B:33:0x00ba, B:38:0x00ca), top: B:43:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0087 A[Catch: all -> 0x00cc, TryCatch #0 {all -> 0x00cc, blocks: (B:7:0x000e, B:9:0x002d, B:35:0x00c5, B:36:0x00c8, B:20:0x0044, B:22:0x004c, B:24:0x0059, B:26:0x0066, B:27:0x0070, B:29:0x0078, B:30:0x0087, B:32:0x0093, B:33:0x00ba, B:38:0x00ca), top: B:43:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0091 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0093 A[Catch: all -> 0x00cc, TryCatch #0 {all -> 0x00cc, blocks: (B:7:0x000e, B:9:0x002d, B:35:0x00c5, B:36:0x00c8, B:20:0x0044, B:22:0x004c, B:24:0x0059, B:26:0x0066, B:27:0x0070, B:29:0x0078, B:30:0x0087, B:32:0x0093, B:33:0x00ba, B:38:0x00ca), top: B:43:0x0008 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x0093, please report this as an issue */
    private void c(int i10, List<com.byazt.vb.tt> list, long j10, Object obj, int i11, tt ttVar) {
        ve veVar = this.ve;
        synchronized (obj) {
            try {
                if (list == null || veVar == null) {
                    return;
                }
                Handler handlerTt = veVar.tt();
                com.byazt.ml.c.c(i10, list, j10, this.f16700n, ttVar, veVar.c().c(i10, list, i11));
                com.byazt.vb.uj ujVarUj = this.f16700n.uj();
                if (ujVarUj != null) {
                    ujVarUj.t();
                }
                if (i10 == -2) {
                    if (ujVarUj != null) {
                        com.byazt.ml.ve.ve("_error", "net is available:" + ujVarUj.c(this.f16700n.getContext()) + " code:" + i10, this.f16700n);
                    }
                    this.f16698a.c(2);
                    c(handlerTt, list, veVar);
                } else if (i10 == -1) {
                    if (this.f16698a.ve()) {
                        com.byazt.ml.ve.ve("_flush", "send reset error", this.f16700n);
                        veVar.c(72, "handle_result");
                    } else {
                        this.f16698a.c(0);
                        c(handlerTt, list, veVar);
                    }
                } else if (i10 == 0) {
                    if (ujVarUj != null) {
                        com.byazt.ml.ve.ve("_error", "net is available:" + ujVarUj.c(this.f16700n.getContext()) + " code:" + i10, this.f16700n);
                    }
                    this.f16698a.c(2);
                    c(handlerTt, list, veVar);
                } else if (i10 != 200) {
                    if (i10 == 509 && com.byazt.ml.c.tt(list, this.f16700n)) {
                        this.f16698a.c(1);
                        if (!handlerTt.hasMessages(3) && System.currentTimeMillis() - this.uj >= 15000) {
                            this.uj = System.currentTimeMillis();
                            c(3, 15000L, handlerTt);
                        }
                    }
                } else if (this.f16698a.ve()) {
                    com.byazt.ml.ve.ve("_flush", "send reset error", this.f16700n);
                    veVar.c(72, "handle_result");
                } else {
                    this.f16698a.c(0);
                    c(handlerTt, list, veVar);
                }
                if (i11 == 72) {
                    obj.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void c(Handler handler, List<com.byazt.vb.tt> list, ve veVar) {
        boolean zUj = veVar.uj();
        boolean zTt = com.byazt.ml.c.tt(list, this.f16700n);
        if (zUj && zTt) {
            if (handler.hasMessages(3)) {
                handler.removeMessages(3);
            }
            this.f16699c.set(0);
            this.uj = 0L;
            com.byazt.ml.ve.ve("_flush", "send reset busy", this.f16700n);
            com.byazt.ml.tt.c(com.byazt.mv.tt.f17020c.uj(), 1, this.f16700n);
            veVar.c(72, "handle_result");
        }
    }

    public void c(int i10, long j10, Handler handler) {
        if (handler == null) {
            com.byazt.ml.ve.ve("_error", "mHandler == null", this.f16700n);
            return;
        }
        if (i10 == 3) {
            if (handler.hasMessages(i10)) {
                handler.removeMessages(i10);
            }
            int iIncrementAndGet = this.f16699c.incrementAndGet();
            long j11 = ((long) (((iIncrementAndGet - 1) % 4) + 1)) * j10;
            com.byazt.ml.ve.ve("_error", "sendBusyMsg:" + i10 + "  retryCount:" + iIncrementAndGet + " delayTime:" + (j11 / 1000), this.f16700n);
            handler.sendEmptyMessageDelayed(i10, j11);
            return;
        }
        com.byazt.ml.ve.ve("_error", "sendBusyMsg error state", this.f16700n);
    }
}

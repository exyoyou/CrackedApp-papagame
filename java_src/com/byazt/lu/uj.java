package com.byazt.lu;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.byazt.ds.i;
import com.byazt.ds.x;
import com.byazt.yv.da;
import com.byazt.yv.sl;
import com.byazt.yv.t;
import com.byazt.yv.u;
import com.byazt.za.Collector;
import com.haima.hmcp.proto.GSSDK;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_L1_VALUE, 15})
public class uj implements Handler.Callback, Comparator<com.byazt.tv.c> {
    public static uj tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static long f16786u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.tv.tt f16787a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Application f16788c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public sl f16789da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public sp f16790i;
    public Handler sl;
    public i sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public a f16792t;
    public x uj;
    public c ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Handler f16793x;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList<com.byazt.tv.c> f16791n = new ArrayList<>(32);
    public CopyOnWriteArrayList<Message> yp = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public CopyOnWriteArrayList<com.byazt.tv.sp> f16794z = new CopyOnWriteArrayList<>();

    private uj() {
    }

    public static void c() {
        if (tt != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (Math.abs(jCurrentTimeMillis - f16786u) > 10000) {
                f16786u = jCurrentTimeMillis;
                tt.c((String[]) null, true);
            }
        }
    }

    public static uj n() {
        if (tt == null) {
            synchronized (uj.class) {
                if (tt == null) {
                    tt = new uj();
                }
            }
        }
        return tt;
    }

    private void sl() {
        if (!this.uj.rl()) {
            c cVar = this.ve;
            if (cVar != null) {
                cVar.n();
                this.ve = null;
                return;
            }
            return;
        }
        if (this.ve == null) {
            c cVar2 = new c(this);
            this.ve = cVar2;
            Message messageObtainMessage = this.f16793x.obtainMessage(6, cVar2);
            this.yp.add(messageObtainMessage);
            messageObtainMessage.sendToTarget();
        }
    }

    private void t() {
        if (da.tt) {
            da.c("packAndSend once, " + this.f16790i.c() + ", hadUI:" + this.f16790i.tt(), null);
        }
        a aVar = this.f16792t;
        if (aVar != null) {
            aVar.x();
        }
        if (this.f16793x != null) {
            this.f16792t.c(u.c());
            Message messageObtainMessage = this.sl.obtainMessage(6, this.f16792t);
            this.yp.add(messageObtainMessage);
            this.f16793x.sendMessage(messageObtainMessage);
        }
    }

    public sp a() {
        return this.f16790i;
    }

    public void da() {
        if (this.f16793x == null || this.f16794z.isEmpty()) {
            return;
        }
        int size = this.f16794z.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                com.byazt.tv.sp spVar = this.f16794z.get(i10);
                Message messageC = com.byazt.tv.sp.c(this.f16793x, spVar);
                long jC = com.byazt.tv.sp.c(spVar);
                if (messageC.what == 6) {
                    this.yp.add(messageC);
                    this.f16793x.sendMessageDelayed(messageC, jC);
                }
            } catch (Exception unused) {
            }
        }
        this.f16794z.clear();
    }

    public Context getContext() {
        return this.f16788c;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            int i10 = message.what;
            if (i10 == 1) {
                da.f22446c = this.uj.qy();
                if (!this.sp.a()) {
                    this.sl.removeMessages(1);
                    this.sl.sendEmptyMessageDelayed(1, 1000L);
                } else if (this.uj.nu()) {
                    Looper looperTt = u.tt(this.uj);
                    if (looperTt == null) {
                        HandlerThread handlerThread = new HandlerThread("bd_tracker_n");
                        handlerThread.start();
                        looperTt = handlerThread.getLooper();
                    }
                    Handler handler = new Handler(looperTt, this);
                    this.f16793x = handler;
                    handler.sendEmptyMessage(2);
                    if (this.f16791n.size() > 0) {
                        this.sl.removeMessages(4);
                        this.sl.sendEmptyMessageDelayed(4, 1000L);
                    }
                    da.uj("net|worker start", null);
                }
                com.byazt.ds.tt.c();
            } else if (i10 == 2) {
                ArrayList<tt> arrayList = new ArrayList(4);
                arrayList.add(new n(this));
                arrayList.add(new ve(this));
                a aVar = new a(this);
                this.f16792t = aVar;
                arrayList.add(aVar);
                for (tt ttVar : arrayList) {
                    if (ttVar instanceof a) {
                        this.f16792t.c(u.c());
                    }
                    long jSp = ttVar.sp();
                    if (jSp < 864000000) {
                        int i11 = (int) jSp;
                        Message messageObtainMessage = this.sl.obtainMessage(6, i11, i11, ttVar);
                        this.yp.add(messageObtainMessage);
                        this.f16793x.sendMessageDelayed(messageObtainMessage, jSp);
                    }
                }
                this.f16792t.c(true);
                sl();
            } else if (i10 == 4) {
                c((String[]) null, false);
            } else if (i10 == 5) {
                c((String[]) message.obj, false);
            } else if (i10 == 6) {
                tt ttVar2 = (tt) message.obj;
                try {
                    this.yp.remove(message);
                } catch (Exception unused) {
                }
                if (!ttVar2.a()) {
                    long jSp2 = ttVar2.sp();
                    if (jSp2 < 864000000 && !c(this.yp, ttVar2)) {
                        int i12 = (int) jSp2;
                        Message messageObtainMessage2 = this.sl.obtainMessage(6, i12, i12, ttVar2);
                        this.yp.add(messageObtainMessage2);
                        this.f16793x.sendMessageDelayed(messageObtainMessage2, jSp2);
                    }
                    sl();
                }
                this.f16792t.c(true);
            } else if (i10 == 7) {
                synchronized (this.f16791n) {
                    this.f16791n.add(sp.n());
                }
                c((String[]) null, false);
            } else if (i10 != 89) {
                da.tt((Throwable) null);
            } else {
                i iVar = this.sp;
                if (iVar != null) {
                    iVar.n();
                }
            }
        } catch (Throwable th) {
            da.c("engine:" + th.getMessage());
        }
        return true;
    }

    public void i() {
        if (this.f16793x.hasMessages(6)) {
            int size = this.yp.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f16794z.add(com.byazt.tv.sp.c(this.yp.get(i10)));
            }
            this.yp.clear();
            this.f16793x.removeMessages(6);
        }
    }

    public sl sp() {
        if (this.f16789da == null) {
            sl slVarDa = this.uj.bm().da();
            this.f16789da = slVarDa;
            if (slVarDa == null) {
                this.f16789da = t.c(0);
            }
        }
        return this.f16789da;
    }

    public com.byazt.tv.tt tt() {
        return this.f16787a;
    }

    public i uj() {
        return this.sp;
    }

    public x ve() {
        return this.uj;
    }

    public void x() {
        Handler handler = this.sl;
        if (handler == null || handler.hasMessages(89)) {
            return;
        }
        this.sl.sendEmptyMessage(89);
    }

    public void c(Application application, x xVar, i iVar, com.byazt.za.c cVar) {
        this.f16788c = application;
        this.f16787a = new com.byazt.tv.tt(this);
        this.uj = xVar;
        this.sp = iVar;
        this.f16790i = new sp(this.sp, this.uj);
        this.f16788c.registerActivityLifecycleCallbacks(cVar);
        Looper looperC = u.c(xVar);
        if (looperC == null) {
            HandlerThread handlerThread = new HandlerThread("bd_tracker_w");
            handlerThread.start();
            looperC = handlerThread.getLooper();
        }
        Handler handler = new Handler(looperC, this);
        this.sl = handler;
        handler.sendEmptyMessage(1);
        com.byazt.yv.sp.c(xVar.i() != 0);
    }

    private boolean c(List<Message> list, tt ttVar) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (list.get(i10).obj == ttVar) {
                return true;
            }
        }
        return false;
    }

    private void c(String[] strArr, boolean z10) {
        ArrayList<com.byazt.tv.c> arrayList;
        synchronized (this.f16791n) {
            arrayList = (ArrayList) this.f16791n.clone();
            this.f16791n.clear();
        }
        int i10 = 0;
        if (strArr != null) {
            arrayList.ensureCapacity(arrayList.size() + strArr.length);
            for (String str : strArr) {
                arrayList.add(com.byazt.tv.c.c(str));
            }
        }
        boolean zC = this.uj.c(arrayList);
        if (arrayList.size() > 0) {
            if (this.uj.nu()) {
                if (!zC && arrayList.size() <= 100) {
                    synchronized (this.f16791n) {
                        this.f16791n.addAll(arrayList);
                    }
                    return;
                }
                Collections.sort(arrayList, this);
                ArrayList<com.byazt.tv.c> arrayList2 = new ArrayList<>(arrayList.size());
                boolean zC2 = false;
                boolean zC3 = false;
                for (com.byazt.tv.c cVar : arrayList) {
                    zC2 |= this.f16790i.c(cVar, arrayList2);
                    if (cVar instanceof com.byazt.tv.i) {
                        zC3 = sp.c(cVar);
                        i10 = 1;
                    }
                }
                this.f16787a.c(arrayList2);
                if (i10 != 0) {
                    if (zC3) {
                        this.sl.removeMessages(7);
                    } else if (!u.tt() && u.c()) {
                        this.sl.sendEmptyMessageDelayed(7, this.uj.gu());
                    }
                }
                if (zC2 || z10) {
                    t();
                    return;
                }
                return;
            }
            Intent intent = new Intent(this.f16788c, (Class<?>) Collector.class);
            int size = arrayList.size();
            String[] strArr2 = new String[size];
            int length = 0;
            while (i10 < size) {
                String string = arrayList.get(i10).n().toString();
                strArr2[i10] = string;
                length += string.length();
                i10++;
            }
            if (length >= 307200) {
                da.tt((Throwable) null);
            }
            intent.putExtra("EMBED_K_DATA", strArr2);
            try {
                this.f16788c.sendBroadcast(intent);
            } catch (Exception e10) {
                da.tt(e10);
            }
        }
    }

    public static void c(com.byazt.tv.c cVar) {
        int size;
        Handler handler;
        uj ujVar = tt;
        if (ujVar == null) {
            da.tt("Init comes First!", null);
            com.byazt.ds.tt.c(cVar);
            return;
        }
        if (cVar.tt == 0) {
            da.tt((Throwable) null);
        }
        synchronized (ujVar.f16791n) {
            size = ujVar.f16791n.size();
            ujVar.f16791n.add(cVar);
        }
        if (size % 10 != 0 || (handler = ujVar.sl) == null) {
            return;
        }
        handler.removeMessages(4);
        ujVar.sl.sendEmptyMessageDelayed(4, size == 0 ? 500L : 250L);
    }

    public static void c(String[] strArr) {
        uj ujVar = tt;
        if (ujVar == null) {
            da.tt(new RuntimeException("Init comes First!"));
            return;
        }
        Handler handler = ujVar.sl;
        if (handler != null) {
            handler.removeMessages(4);
            ujVar.sl.obtainMessage(5, strArr).sendToTarget();
        }
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compare(com.byazt.tv.c cVar, com.byazt.tv.c cVar2) {
        long j10 = cVar.tt - cVar2.tt;
        if (j10 < 0) {
            return -1;
        }
        return j10 > 0 ? 1 : 0;
    }
}

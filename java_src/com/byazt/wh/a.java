package com.byazt.wh;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.byazt.h.i;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.zz.SqlDownloadCacheService;
import com.byazt.zz.gt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1172, 34})
public class a implements ServiceConnection, gt {
    public static boolean tt;
    public static long uj;
    public static int ve;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public ve f21525c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Future<?> f21527i;
    public com.byazt.zz.ve.c.InterfaceC0510c sp;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Handler f21528n = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public tt f21524a = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f21529x = new Runnable() { // from class: com.byazt.wh.a.1
        @Override // java.lang.Runnable
        public void run() {
            if (a.tt || a.this.sp == null) {
                return;
            }
            a.this.sp.c();
        }
    };

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public CountDownLatch f21526da = new CountDownLatch(1);

    public a() {
        SqlDownloadCacheService.c(com.byazt.zz.ve.ic(), this);
    }

    @Override // com.byazt.zz.da
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public ArrayList<i> yp(int i10) {
        return null;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo da(int i10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.da(i10);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public DownloadInfo i(int i10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.i(i10);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        tt = true;
        this.f21528n.removeCallbacks(this.f21529x);
        try {
            this.f21525c = ve.c.c(iBinder);
        } catch (Throwable th) {
            m.c(th);
        }
        this.f21527i = com.byazt.zz.ve.t().submit(new Runnable() { // from class: com.byazt.wh.a.2
            @Override // java.lang.Runnable
            public void run() {
                IBinder iBinder2;
                IBinder.DeathRecipient deathRecipient;
                synchronized (this) {
                    try {
                        try {
                            if (a.this.f21524a != null && a.this.f21525c != null) {
                                a.this.f21525c.c(a.this.f21524a);
                            }
                            a.this.f21526da.countDown();
                            iBinder2 = iBinder;
                            deathRecipient = new IBinder.DeathRecipient() { // from class: com.byazt.wh.a.2.1
                                @Override // android.os.IBinder.DeathRecipient
                                public void binderDied() {
                                    boolean unused = a.tt = false;
                                    if (a.this.sp() || a.this.sp == null) {
                                        return;
                                    }
                                    a.this.f21528n.postDelayed(a.this.f21529x, 2000L);
                                }
                            };
                        } catch (Throwable unused) {
                        }
                    } catch (Throwable th2) {
                        try {
                            com.byazt.x.c.tt("SqlDownloadCacheAidlWra", "onServiceConnected fail", th2);
                            if (a.this.sp != null) {
                                a.this.sp.c();
                            }
                            a.this.f21526da.countDown();
                            iBinder2 = iBinder;
                            deathRecipient = new IBinder.DeathRecipient() { // from class: com.byazt.wh.a.2.1
                                @Override // android.os.IBinder.DeathRecipient
                                public void binderDied() {
                                    boolean unused2 = a.tt = false;
                                    if (a.this.sp() || a.this.sp == null) {
                                        return;
                                    }
                                    a.this.f21528n.postDelayed(a.this.f21529x, 2000L);
                                }
                            };
                        } catch (Throwable th3) {
                            a.this.f21526da.countDown();
                            try {
                                iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.byazt.wh.a.2.1
                                    @Override // android.os.IBinder.DeathRecipient
                                    public void binderDied() {
                                        boolean unused2 = a.tt = false;
                                        if (a.this.sp() || a.this.sp == null) {
                                            return;
                                        }
                                        a.this.f21528n.postDelayed(a.this.f21529x, 2000L);
                                    }
                                }, 0);
                            } catch (Throwable unused2) {
                            }
                            throw th3;
                        }
                    }
                    iBinder2.linkToDeath(deathRecipient, 0);
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f21525c = null;
        tt = false;
    }

    @Override // com.byazt.zz.da
    public Map<Long, i> t(int i10) {
        return null;
    }

    @Override // com.byazt.zz.da
    public void u(int i10) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sp() {
        if (Build.VERSION.SDK_INT >= 26 || tt) {
            return false;
        }
        if (ve > 5) {
            com.byazt.x.c.uj("SqlDownloadCacheAidlWra", "bindMainProcess: bind too many times!!! ");
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - uj < 15000) {
            com.byazt.x.c.uj("SqlDownloadCacheAidlWra", "bindMainProcess: time too short since last bind!!! ");
            return false;
        }
        ve++;
        uj = jCurrentTimeMillis;
        this.f21528n.postDelayed(new Runnable() { // from class: com.byazt.wh.a.3
            @Override // java.lang.Runnable
            public void run() {
                SqlDownloadCacheService.c(com.byazt.zz.ve.ic(), a.this);
            }
        }, 1000L);
        return true;
    }

    @Override // com.byazt.zz.da
    public boolean c(int i10, Map<Long, i> map) {
        return false;
    }

    @Override // com.byazt.zz.da
    public boolean n(int i10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.n(i10);
            }
            return false;
        } catch (RemoteException e10) {
            m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.da
    public DownloadInfo tt(int i10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.tt(i10);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public List<DownloadInfo> uj(String str) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.uj(str);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public List<DownloadInfo> ve(String str) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.ve(str);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public DownloadInfo x(int i10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.x(i10);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public boolean a(int i10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.a(i10);
            }
            return false;
        } catch (RemoteException e10) {
            m.c(e10);
            return false;
        }
    }

    public void c(com.byazt.zz.ve.c.InterfaceC0510c interfaceC0510c) {
        this.sp = interfaceC0510c;
    }

    @Override // com.byazt.zz.da
    public boolean n() {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.n();
            }
            return false;
        } catch (RemoteException e10) {
            m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.da
    public List<DownloadInfo> tt(String str) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.tt(str);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public void uj(int i10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                veVar.uj(i10);
            }
        } catch (RemoteException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.zz.da
    public List<com.byazt.t.tt> ve(int i10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.ve(i10);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.gt
    public void c(final SparseArray<DownloadInfo> sparseArray, final SparseArray<List<com.byazt.t.tt>> sparseArray2, final uj ujVar) {
        com.byazt.zz.ve.t().submit(new Runnable() { // from class: com.byazt.wh.a.4
            @Override // java.lang.Runnable
            public void run() {
                boolean z10;
                uj ujVar2;
                Future future;
                a.this.c(new tt.c() { // from class: com.byazt.wh.a.4.1
                    @Override // com.byazt.wh.tt
                    public void c(Map map, Map map2) {
                        com.byazt.w.a.c(sparseArray, map);
                        com.byazt.w.a.c(sparseArray2, map2);
                        ujVar.c();
                        a.this.c((tt) null);
                    }
                });
                try {
                    z10 = !a.this.f21526da.await(5000L, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    m.c(th);
                    z10 = false;
                }
                if (z10 && (future = a.this.f21527i) != null) {
                    future.cancel(true);
                }
                a.this.c();
                if (!z10 || (ujVar2 = ujVar) == null) {
                    return;
                }
                ujVar2.c();
            }
        });
    }

    public void c(tt ttVar) {
        synchronized (this) {
            ve veVar = this.f21525c;
            if (veVar != null) {
                try {
                    veVar.c(ttVar);
                } catch (RemoteException e10) {
                    m.c(e10);
                }
            } else {
                this.f21524a = ttVar;
            }
        }
    }

    @Override // com.byazt.zz.da
    public List<DownloadInfo> tt() {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.tt();
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public DownloadInfo uj(int i10, long j10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.uj(i10, j10);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public void ve() {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                veVar.ve();
            }
        } catch (RemoteException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.zz.da
    public void tt(com.byazt.t.tt ttVar) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                veVar.tt(ttVar);
            }
        } catch (RemoteException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.zz.da
    public boolean uj() {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.uj();
            }
            return false;
        } catch (RemoteException e10) {
            m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.da
    public DownloadInfo ve(int i10, long j10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.ve(i10, j10);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public DownloadInfo sp(int i10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.sp(i10);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    public void c() {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                veVar.c();
            }
        } catch (RemoteException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.zz.da
    public DownloadInfo tt(int i10, long j10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.tt(i10, j10);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public List<DownloadInfo> c(String str) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.c(str);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public void tt(DownloadInfo downloadInfo) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                veVar.tt(downloadInfo);
            }
        } catch (RemoteException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.zz.da
    public void c(com.byazt.t.tt ttVar) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                veVar.c(ttVar);
            }
        } catch (RemoteException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.zz.da
    public void tt(int i10, List<com.byazt.t.tt> list) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                veVar.tt(i10, list);
            }
        } catch (RemoteException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.zz.da
    public void c(int i10, int i11, long j10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                veVar.c(i10, i11, j10);
            }
        } catch (RemoteException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.zz.da
    public void c(int i10, int i11, int i12, long j10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                veVar.c(i10, i11, i12, j10);
            }
        } catch (RemoteException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.zz.da
    public void c(int i10, int i11, int i12, int i13) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                veVar.c(i10, i11, i12, i13);
            }
        } catch (RemoteException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.zz.da
    public DownloadInfo c(int i10, int i11) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.c(i10, i11);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public boolean c(DownloadInfo downloadInfo) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.c(downloadInfo);
            }
            return false;
        } catch (RemoteException e10) {
            m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.da
    public DownloadInfo c(int i10, long j10, String str, String str2) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.c(i10, j10, str, str2);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public DownloadInfo c(int i10, long j10) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                return veVar.c(i10, j10);
            }
            return null;
        } catch (RemoteException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.da
    public void c(int i10, List<com.byazt.t.tt> list) {
        try {
            ve veVar = this.f21525c;
            if (veVar != null) {
                veVar.c(i10, list);
            }
        } catch (RemoteException e10) {
            m.c(e10);
        }
    }
}

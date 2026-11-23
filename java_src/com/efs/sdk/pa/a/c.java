package com.efs.sdk.pa.a;

import android.app.Application;
import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.efs.sdk.base.integrationtesting.IntegrationTestingUtil;
import com.efs.sdk.pa.PA;
import com.efs.sdk.pa.PAANRListener;
import com.efs.sdk.pa.PAMsgListener;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes9.dex */
public final class c implements PA {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f26625a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f26627c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f26628d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f26629e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f26632h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f26633i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Looper f26626b = Looper.myLooper();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f26630f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g f26631g = new g();

    public c(boolean z10) {
        this.f26633i = z10;
    }

    @Override // com.efs.sdk.pa.PA
    public final void enableDumpToFile(String str) {
        FileOutputStream fileOutputStream;
        f fVar = this.f26628d;
        if (fVar == null || str == null || str.trim().length() == 0) {
            return;
        }
        fVar.f26642c = str;
        if (fVar.f26643d != null) {
            return;
        }
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                fVar.f26643d = new BufferedOutputStream(fileOutputStream);
            } catch (Exception unused) {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception unused2) {
                    }
                }
            }
        } catch (Exception unused3) {
            fileOutputStream = null;
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void enableLog(boolean z10) {
        this.f26625a = z10;
        this.f26630f.f26619b = z10;
        this.f26631g.f26645b = z10;
        f fVar = this.f26628d;
        if (fVar != null) {
            fVar.f26641b = z10;
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final int endCalFPS(String str) {
        if (!this.f26632h) {
            return -1;
        }
        b bVar = this.f26630f;
        int i10 = 0;
        if (str != null && str.trim().length() != 0) {
            b.a aVar = bVar.f26618a.get(str);
            if (aVar == null) {
                return 0;
            }
            View view = aVar.f26623d;
            if (view != null && aVar.f26622c != null) {
                view.getViewTreeObserver().removeOnPreDrawListener(aVar.f26622c);
            }
            bVar.f26618a.remove(str);
            int iCurrentTimeMillis = (int) (aVar.f26621b / ((System.currentTimeMillis() - aVar.f26620a) / 1000.0f));
            i10 = iCurrentTimeMillis > 0 ? iCurrentTimeMillis : 0;
            if (bVar.f26619b) {
                StringBuilder sb2 = new StringBuilder("key=");
                sb2.append(str);
                sb2.append(",fps=");
                sb2.append(i10);
            }
        }
        return i10;
    }

    @Override // com.efs.sdk.pa.PA
    public final long endCalTime(String str) {
        if (!this.f26632h) {
            return -1L;
        }
        g gVar = this.f26631g;
        long jCurrentTimeMillis = 0;
        if (str != null && str.trim().length() != 0) {
            g.a aVar = gVar.f26644a.get(str);
            if (aVar == null) {
                return 0L;
            }
            gVar.f26644a.remove(str);
            jCurrentTimeMillis = System.currentTimeMillis() - aVar.f26646a;
            if (gVar.f26645b) {
                StringBuilder sb2 = new StringBuilder("key=");
                sb2.append(str);
                sb2.append(",consumeTime=");
                sb2.append(jCurrentTimeMillis);
            }
        }
        return jCurrentTimeMillis;
    }

    @Override // com.efs.sdk.pa.PA
    public final void registerPAANRListener(Context context, PAANRListener pAANRListener) {
        registerPAANRListener(context, pAANRListener, 2000L);
    }

    @Override // com.efs.sdk.pa.PA
    public final void registerPAMsgListener(PAMsgListener pAMsgListener) {
        if (this.f26627c == null) {
            this.f26627c = new e();
        }
        this.f26626b.setMessageLogging(this.f26627c);
        if (this.f26628d == null) {
            this.f26628d = new f();
        }
        f fVar = this.f26628d;
        fVar.f26641b = this.f26625a;
        fVar.f26640a = pAMsgListener;
        this.f26627c.f26634a.add(fVar);
    }

    @Override // com.efs.sdk.pa.PA
    public final void start() {
        if (this.f26633i || IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
            this.f26632h = true;
            e eVar = this.f26627c;
            if (eVar != null) {
                this.f26626b.setMessageLogging(eVar);
            }
            a aVar = this.f26629e;
            if (aVar == null || !aVar.f26605f) {
                return;
            }
            aVar.f26605f = false;
            aVar.f26606g.post(aVar.f26612m);
            aVar.f26609j = SystemClock.uptimeMillis();
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void startCalFPS(String str, View view) {
        if (this.f26632h) {
            b bVar = this.f26630f;
            if (str == null || str.trim().length() == 0 || view == null || bVar.f26618a.get(str) != null) {
                return;
            }
            b.a aVar = new b.a((byte) 0);
            aVar.f26623d = view;
            b.a.AnonymousClass1 anonymousClass1 = new ViewTreeObserver.OnPreDrawListener() { // from class: com.efs.sdk.pa.a.b.a.1
                AnonymousClass1() {
                }

                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    a.this.f26621b++;
                    return true;
                }
            };
            aVar.f26622c = anonymousClass1;
            aVar.f26623d.getViewTreeObserver().addOnPreDrawListener(anonymousClass1);
            aVar.f26620a = System.currentTimeMillis();
            bVar.f26618a.put(str, aVar);
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void startCalTime(String str) {
        if (this.f26632h) {
            g gVar = this.f26631g;
            if (str == null || str.trim().length() == 0 || gVar.f26644a.get(str) != null) {
                return;
            }
            g.a aVar = new g.a((byte) 0);
            aVar.f26646a = System.currentTimeMillis();
            gVar.f26644a.put(str, aVar);
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void stop() {
        this.f26632h = false;
        this.f26626b.setMessageLogging(null);
        a aVar = this.f26629e;
        if (aVar != null) {
            aVar.f26605f = true;
            aVar.f26606g.removeCallbacksAndMessages(null);
            aVar.f26600a = true;
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void unRegisterPAMsgListener() {
        f fVar = this.f26628d;
        if (fVar != null) {
            fVar.f26640a = null;
        }
        e eVar = this.f26627c;
        if (eVar != null) {
            eVar.f26634a.remove(fVar);
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void unregisterPAANRListener() {
    }

    @Override // com.efs.sdk.pa.PA
    public final void registerPAANRListener(Context context, PAANRListener pAANRListener, long j10) {
        registerPAANRListener(context, pAANRListener, j10, Looper.getMainLooper().getThread());
    }

    @Override // com.efs.sdk.pa.PA
    public final void registerPAANRListener(Context context, PAANRListener pAANRListener, long j10, Thread thread) {
        if (this.f26629e == null) {
            if (thread != null) {
                this.f26629e = new a((Application) context.getApplicationContext(), j10);
            } else {
                this.f26629e = new a((Application) context.getApplicationContext(), j10, false);
            }
        }
        this.f26629e.f26607h = pAANRListener;
    }
}

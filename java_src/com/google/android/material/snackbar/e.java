package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int f31949e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f31950f = 1500;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f31951g = 2750;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static e f31952h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final Object f31953a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final Handler f31954b = new Handler(Looper.getMainLooper(), new a());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private c f31955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private c f31956d;

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            if (message.what != 0) {
                return false;
            }
            e.this.d((c) message.obj);
            return true;
        }
    }

    interface b {
        void a(int i10);

        void show();
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NonNull
        final WeakReference<b> f31958a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f31959b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f31960c;

        c(int i10, b bVar) {
            this.f31958a = new WeakReference<>(bVar);
            this.f31959b = i10;
        }

        boolean a(@Nullable b bVar) {
            return bVar != null && this.f31958a.get() == bVar;
        }
    }

    private e() {
    }

    private boolean a(@NonNull c cVar, int i10) {
        b bVar = cVar.f31958a.get();
        if (bVar == null) {
            return false;
        }
        this.f31954b.removeCallbacksAndMessages(cVar);
        bVar.a(i10);
        return true;
    }

    static e c() {
        if (f31952h == null) {
            f31952h = new e();
        }
        return f31952h;
    }

    private boolean g(b bVar) {
        c cVar = this.f31955c;
        return cVar != null && cVar.a(bVar);
    }

    private boolean h(b bVar) {
        c cVar = this.f31956d;
        return cVar != null && cVar.a(bVar);
    }

    private void m(@NonNull c cVar) {
        int i10 = cVar.f31959b;
        if (i10 == -2) {
            return;
        }
        if (i10 <= 0) {
            i10 = i10 == -1 ? 1500 : f31951g;
        }
        this.f31954b.removeCallbacksAndMessages(cVar);
        Handler handler = this.f31954b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i10);
    }

    private void o() {
        c cVar = this.f31956d;
        if (cVar != null) {
            this.f31955c = cVar;
            this.f31956d = null;
            b bVar = cVar.f31958a.get();
            if (bVar != null) {
                bVar.show();
            } else {
                this.f31955c = null;
            }
        }
    }

    public void b(b bVar, int i10) {
        synchronized (this.f31953a) {
            if (g(bVar)) {
                a(this.f31955c, i10);
            } else if (h(bVar)) {
                a(this.f31956d, i10);
            }
        }
    }

    void d(@NonNull c cVar) {
        synchronized (this.f31953a) {
            if (this.f31955c == cVar || this.f31956d == cVar) {
                a(cVar, 2);
            }
        }
    }

    public boolean e(b bVar) {
        boolean zG;
        synchronized (this.f31953a) {
            zG = g(bVar);
        }
        return zG;
    }

    public boolean f(b bVar) {
        boolean z10;
        synchronized (this.f31953a) {
            z10 = g(bVar) || h(bVar);
        }
        return z10;
    }

    public void i(b bVar) {
        synchronized (this.f31953a) {
            if (g(bVar)) {
                this.f31955c = null;
                if (this.f31956d != null) {
                    o();
                }
            }
        }
    }

    public void j(b bVar) {
        synchronized (this.f31953a) {
            if (g(bVar)) {
                m(this.f31955c);
            }
        }
    }

    public void k(b bVar) {
        synchronized (this.f31953a) {
            if (g(bVar)) {
                c cVar = this.f31955c;
                if (!cVar.f31960c) {
                    cVar.f31960c = true;
                    this.f31954b.removeCallbacksAndMessages(cVar);
                }
            }
        }
    }

    public void l(b bVar) {
        synchronized (this.f31953a) {
            if (g(bVar)) {
                c cVar = this.f31955c;
                if (cVar.f31960c) {
                    cVar.f31960c = false;
                    m(cVar);
                }
            }
        }
    }

    public void n(int i10, b bVar) {
        synchronized (this.f31953a) {
            if (g(bVar)) {
                c cVar = this.f31955c;
                cVar.f31959b = i10;
                this.f31954b.removeCallbacksAndMessages(cVar);
                m(this.f31955c);
                return;
            }
            if (h(bVar)) {
                this.f31956d.f31959b = i10;
            } else {
                this.f31956d = new c(i10, bVar);
            }
            c cVar2 = this.f31955c;
            if (cVar2 == null || !a(cVar2, 4)) {
                this.f31955c = null;
                o();
            }
        }
    }
}

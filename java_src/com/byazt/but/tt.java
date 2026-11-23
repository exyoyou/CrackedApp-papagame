package com.byazt.but;

import android.os.Looper;
import android.os.Message;
import com.byazt.dna.qp;
import com.byazt.nr.d;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 672, 13})
public class tt implements qp.c {
    public c tt;
    public AtomicBoolean ve = new AtomicBoolean(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d f12112c = new d(Looper.getMainLooper(), this);
    public int uj = 5;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12113n = 1;

    public interface c {
        void c();

        void c(int i10);
    }

    private void a() {
        try {
            int i10 = this.f12113n;
            if (i10 >= this.uj + 1) {
                c cVar = this.tt;
                if (cVar != null) {
                    cVar.c();
                    return;
                }
                return;
            }
            int i11 = i10 + 1;
            this.f12113n = i11;
            c cVar2 = this.tt;
            if (cVar2 != null) {
                cVar2.c(i11);
            }
            this.f12112c.sendEmptyMessageDelayed(1, 1000L);
        } catch (Exception unused) {
        }
    }

    private void n() {
        try {
            this.f12112c.sendEmptyMessage(1);
        } catch (Throwable unused) {
        }
    }

    private void uj() {
        try {
            this.f12112c.removeMessages(1);
        } catch (Throwable unused) {
        }
    }

    private void ve() {
        this.f12112c.removeMessages(1);
        this.f12113n = 1;
    }

    public void c() {
        ve();
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (message.what == 1) {
            a();
        }
    }

    public void tt() {
        ve();
        this.f12112c.sendEmptyMessage(1);
    }

    public void c(boolean z10) {
        this.ve.set(z10);
        if (this.ve.get()) {
            n();
        } else {
            uj();
        }
    }

    public void c(c cVar) {
        this.tt = cVar;
    }

    public void c(int i10) {
        this.uj = i10;
        ve();
    }
}

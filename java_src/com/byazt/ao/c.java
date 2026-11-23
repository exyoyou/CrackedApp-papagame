package com.byazt.ao;

import com.byazt.th.n;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1532, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f11649c;
    public final CountDownLatch tt;

    /* JADX INFO: renamed from: com.byazt.ao.c$c, reason: collision with other inner class name */
    public interface InterfaceC0253c {
        void c() throws Throwable;
    }

    private c(boolean z10, InterfaceC0253c[] interfaceC0253cArr) {
        this.tt = new CountDownLatch(interfaceC0253cArr.length);
        for (final InterfaceC0253c interfaceC0253c : interfaceC0253cArr) {
            n.c(new Runnable() { // from class: com.byazt.ao.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        interfaceC0253c.c();
                    } catch (Throwable th) {
                        c.this.f11649c = th;
                    }
                    c.this.tt.countDown();
                }
            }, z10);
        }
    }

    public static void c(boolean z10, InterfaceC0253c... interfaceC0253cArr) throws Throwable {
        new c(z10, interfaceC0253cArr).c();
    }

    private void c() throws Throwable {
        try {
            this.tt.await();
            Throwable th = this.f11649c;
            if (th != null) {
                throw th;
            }
        } catch (InterruptedException e10) {
            throw new RuntimeException(e10);
        }
    }
}

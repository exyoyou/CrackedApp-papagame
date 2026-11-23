package cn.fly.tcp.e;

import cn.fly.mcl.TcpStatus;
import cn.fly.mcl.TcpStatusListener;

/* JADX INFO: loaded from: classes7.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f1649a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TcpStatusListener f1650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TcpStatus f1651c;

    d() {
    }

    void a(TcpStatusListener tcpStatusListener) {
        TcpStatus tcpStatus;
        synchronized (this.f1649a) {
            cn.fly.tcp.f.c.a().b("reg TpSt lis. prev: " + this.f1650b + ", curr: " + tcpStatusListener);
            this.f1650b = tcpStatusListener;
            tcpStatus = null;
            if (tcpStatusListener == null) {
                this.f1651c = null;
            } else {
                TcpStatus tcpStatus2 = this.f1651c;
                if (tcpStatus2 != null) {
                    this.f1651c = null;
                    tcpStatus = tcpStatus2;
                }
            }
        }
        if (tcpStatusListener == null || tcpStatus == null) {
            return;
        }
        a(tcpStatusListener, tcpStatus);
    }

    void b(TcpStatusListener tcpStatusListener) {
        synchronized (this.f1649a) {
            if (this.f1650b == tcpStatusListener) {
                this.f1650b = null;
                this.f1651c = null;
            }
        }
    }

    void a(TcpStatus tcpStatus) {
        TcpStatusListener tcpStatusListener;
        if (tcpStatus == null) {
            return;
        }
        synchronized (this.f1649a) {
            tcpStatusListener = this.f1650b;
            if (tcpStatusListener == null) {
                this.f1651c = tcpStatus;
                tcpStatusListener = null;
            }
        }
        if (tcpStatusListener != null) {
            a(tcpStatusListener, tcpStatus);
        }
    }

    private void a(TcpStatusListener tcpStatusListener, TcpStatus tcpStatus) {
        try {
            tcpStatusListener.onStatus(tcpStatus);
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a(th);
        }
    }
}

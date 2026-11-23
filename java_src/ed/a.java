package ed;

import org.jboss.netty.channel.w;

/* JADX INFO: loaded from: classes10.dex */
public class a extends w implements Runnable {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Runnable f90898m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f90899n;

    public a(org.jboss.netty.channel.e eVar, Runnable runnable) {
        super(eVar, true);
        this.f90898m = runnable;
    }

    @Override // org.jboss.netty.channel.w, org.jboss.netty.channel.j
    public synchronized boolean cancel() {
        if (this.f90899n) {
            return false;
        }
        return super.cancel();
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            if (isCancelled()) {
                return;
            }
            this.f90899n = true;
            try {
                this.f90898m.run();
                setSuccess();
            } catch (Throwable th) {
                setFailure(th);
            }
        }
    }
}

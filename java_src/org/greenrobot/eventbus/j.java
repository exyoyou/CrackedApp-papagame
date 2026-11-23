package org.greenrobot.eventbus;

/* JADX INFO: loaded from: classes10.dex */
final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i f95299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f95300b;

    j() {
    }

    synchronized void a(i iVar) {
        try {
            if (iVar == null) {
                throw new NullPointerException("null cannot be enqueued");
            }
            i iVar2 = this.f95300b;
            if (iVar2 != null) {
                iVar2.f95298c = iVar;
                this.f95300b = iVar;
            } else {
                if (this.f95299a != null) {
                    throw new IllegalStateException("Head present, but no tail");
                }
                this.f95300b = iVar;
                this.f95299a = iVar;
            }
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized i b() {
        i iVar;
        iVar = this.f95299a;
        if (iVar != null) {
            i iVar2 = iVar.f95298c;
            this.f95299a = iVar2;
            if (iVar2 == null) {
                this.f95300b = null;
            }
        }
        return iVar;
    }

    synchronized i c(int i10) throws InterruptedException {
        if (this.f95299a == null) {
            wait(i10);
        }
        return b();
    }
}

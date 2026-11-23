package org.greenrobot.eventbus;

/* JADX INFO: loaded from: classes10.dex */
final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f95337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final m f95338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile boolean f95339c = true;

    o(Object obj, m mVar) {
        this.f95337a = obj;
        this.f95338b = mVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f95337a == oVar.f95337a && this.f95338b.equals(oVar.f95338b);
    }

    public int hashCode() {
        return this.f95337a.hashCode() + this.f95338b.f95310f.hashCode();
    }
}

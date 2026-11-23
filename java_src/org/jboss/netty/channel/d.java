package org.jboss.netty.channel;

/* JADX INFO: loaded from: classes10.dex */
public class d implements k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f95532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f95533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f95534c;

    public d() {
        this(64, 1024, 65536);
    }

    @Override // org.jboss.netty.channel.k0
    public j0 a() throws Exception {
        return new c(this.f95532a, this.f95533b, this.f95534c);
    }

    public d(int i10, int i11, int i12) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("minimum: " + i10);
        }
        if (i11 < i10) {
            throw new IllegalArgumentException("initial: " + i11);
        }
        if (i12 >= i11) {
            this.f95532a = i10;
            this.f95533b = i11;
            this.f95534c = i12;
        } else {
            throw new IllegalArgumentException("maximum: " + i12);
        }
    }
}

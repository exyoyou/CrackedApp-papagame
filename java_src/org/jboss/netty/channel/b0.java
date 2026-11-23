package org.jboss.netty.channel;

/* JADX INFO: loaded from: classes10.dex */
public class b0 implements q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f95514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f95515b;

    public b0(e eVar, long j10) {
        if (eVar == null) {
            throw new NullPointerException("channel");
        }
        if (j10 > 0) {
            this.f95514a = eVar;
            this.f95515b = j10;
        } else {
            throw new IllegalArgumentException("writtenAmount must be a positive integer: " + j10);
        }
    }

    @Override // org.jboss.netty.channel.q0
    public long c() {
        return this.f95515b;
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return s.W(getChannel());
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f95514a;
    }

    public String toString() {
        String string = getChannel().toString();
        StringBuilder sb2 = new StringBuilder(string.length() + 32);
        sb2.append(string);
        sb2.append(" WRITTEN_AMOUNT: ");
        sb2.append(c());
        return sb2.toString();
    }
}

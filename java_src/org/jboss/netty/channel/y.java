package org.jboss.netty.channel;

/* JADX INFO: loaded from: classes10.dex */
public class y implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f95692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f95693b;

    public y(e eVar, e eVar2) {
        if (eVar == null) {
            throw new NullPointerException("parentChannel");
        }
        if (eVar2 == null) {
            throw new NullPointerException("childChannel");
        }
        this.f95692a = eVar;
        this.f95693b = eVar2;
    }

    @Override // org.jboss.netty.channel.t
    public e b() {
        return this.f95693b;
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return s.W(getChannel());
    }

    @Override // org.jboss.netty.channel.t, org.jboss.netty.channel.h
    public e getChannel() {
        return this.f95692a;
    }

    public String toString() {
        String string = getChannel().toString();
        StringBuilder sb2 = new StringBuilder(string.length() + 32);
        sb2.append(string);
        sb2.append(b().isOpen() ? " CHILD_OPEN: " : " CHILD_CLOSED: ");
        sb2.append(b().getId());
        return sb2.toString();
    }
}

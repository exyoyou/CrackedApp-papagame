package com.byazt.f;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 953, 20})
public final class c extends com.byazt.q.c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14056n;

    public uj c(InetAddress inetAddress, int i10) throws IOException {
        if (!tt()) {
            c();
        }
        tt ttVar = new tt();
        ttVar.c(3);
        ttVar.tt(this.f14056n);
        DatagramPacket datagramPacketYp = ttVar.yp();
        datagramPacketYp.setAddress(inetAddress);
        datagramPacketYp.setPort(i10);
        tt ttVar2 = new tt();
        DatagramPacket datagramPacketYp2 = ttVar2.yp();
        ttVar.c(n.uj());
        this.tt.send(datagramPacketYp);
        this.tt.receive(datagramPacketYp2);
        return new uj(ttVar2, System.currentTimeMillis(), false);
    }

    public uj c(InetAddress inetAddress) throws IOException {
        return c(inetAddress, 123);
    }
}

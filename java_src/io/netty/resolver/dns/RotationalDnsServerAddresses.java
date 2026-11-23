package io.netty.resolver.dns;

import java.net.InetSocketAddress;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
final class RotationalDnsServerAddresses extends DefaultDnsServerAddresses {
    private static final AtomicIntegerFieldUpdater<RotationalDnsServerAddresses> startIdxUpdater = AtomicIntegerFieldUpdater.newUpdater(RotationalDnsServerAddresses.class, "startIdx");
    private volatile int startIdx;

    RotationalDnsServerAddresses(List<InetSocketAddress> list) {
        super("rotational", list);
    }

    @Override // io.netty.resolver.dns.DnsServerAddresses
    public DnsServerAddressStream stream() {
        int i10;
        int i11;
        do {
            i10 = this.startIdx;
            i11 = i10 + 1;
            if (i11 >= this.addresses.size()) {
                i11 = 0;
            }
        } while (!startIdxUpdater.compareAndSet(this, i10, i11));
        return new SequentialDnsServerAddressStream(this.addresses, i10);
    }
}

package io.netty.resolver.dns;

import io.netty.util.internal.PlatformDependent;
import java.net.InetSocketAddress;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class ShuffledDnsServerAddressStream implements DnsServerAddressStream {
    private final List<InetSocketAddress> addresses;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f91663i;

    ShuffledDnsServerAddressStream(List<InetSocketAddress> list) {
        this.addresses = list;
        shuffle();
    }

    private void shuffle() {
        Collections.shuffle(this.addresses, PlatformDependent.threadLocalRandom());
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public InetSocketAddress next() {
        int i10 = this.f91663i;
        InetSocketAddress inetSocketAddress = this.addresses.get(i10);
        int i11 = i10 + 1;
        if (i11 < this.addresses.size()) {
            this.f91663i = i11;
        } else {
            this.f91663i = 0;
            shuffle();
        }
        return inetSocketAddress;
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public int size() {
        return this.addresses.size();
    }

    public String toString() {
        return SequentialDnsServerAddressStream.toString("shuffled", this.f91663i, this.addresses);
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public ShuffledDnsServerAddressStream duplicate() {
        return new ShuffledDnsServerAddressStream(this.addresses, this.f91663i);
    }

    private ShuffledDnsServerAddressStream(List<InetSocketAddress> list, int i10) {
        this.addresses = list;
        this.f91663i = i10;
    }
}

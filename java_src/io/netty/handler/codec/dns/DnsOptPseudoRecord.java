package io.netty.handler.codec.dns;

/* JADX INFO: loaded from: classes.dex */
public interface DnsOptPseudoRecord extends DnsRecord {
    int extendedRcode();

    int flags();

    int version();
}

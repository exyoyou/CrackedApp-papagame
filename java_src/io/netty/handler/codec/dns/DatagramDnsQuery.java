package io.netty.handler.codec.dns;

import io.netty.channel.AddressedEnvelope;
import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes.dex */
public class DatagramDnsQuery extends DefaultDnsQuery implements AddressedEnvelope<DatagramDnsQuery, InetSocketAddress> {
    private final InetSocketAddress recipient;
    private final InetSocketAddress sender;

    public DatagramDnsQuery(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, int i10) {
        this(inetSocketAddress, inetSocketAddress2, i10, DnsOpCode.QUERY);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.channel.AddressedEnvelope
    public DatagramDnsQuery content() {
        return this;
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof AddressedEnvelope)) {
            return false;
        }
        AddressedEnvelope addressedEnvelope = (AddressedEnvelope) obj;
        if (sender() == null) {
            if (addressedEnvelope.sender() != null) {
                return false;
            }
        } else if (!sender().equals(addressedEnvelope.sender())) {
            return false;
        }
        if (recipient() == null) {
            if (addressedEnvelope.recipient() != null) {
                return false;
            }
        } else if (!recipient().equals(addressedEnvelope.recipient())) {
            return false;
        }
        return true;
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsMessage
    public int hashCode() {
        int iHashCode = super.hashCode();
        if (sender() != null) {
            iHashCode = (iHashCode * 31) + sender().hashCode();
        }
        return recipient() != null ? (iHashCode * 31) + recipient().hashCode() : iHashCode;
    }

    public DatagramDnsQuery(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, int i10, DnsOpCode dnsOpCode) {
        super(i10, dnsOpCode);
        if (inetSocketAddress2 == null && inetSocketAddress == null) {
            throw new NullPointerException("recipient and sender");
        }
        this.sender = inetSocketAddress;
        this.recipient = inetSocketAddress2;
    }

    @Override // io.netty.channel.AddressedEnvelope
    public InetSocketAddress recipient() {
        return this.recipient;
    }

    @Override // io.netty.channel.AddressedEnvelope
    public InetSocketAddress sender() {
        return this.sender;
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsQuery setId(int i10) {
        return (DatagramDnsQuery) super.setId(i10);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsQuery setOpCode(DnsOpCode dnsOpCode) {
        return (DatagramDnsQuery) super.setOpCode(dnsOpCode);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsQuery setRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        return (DatagramDnsQuery) super.setRecord(dnsSection, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsQuery setRecursionDesired(boolean z10) {
        return (DatagramDnsQuery) super.setRecursionDesired(z10);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsQuery setZ(int i10) {
        return (DatagramDnsQuery) super.setZ(i10);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsQuery addRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        return (DatagramDnsQuery) super.addRecord(dnsSection, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsQuery clear(DnsSection dnsSection) {
        return (DatagramDnsQuery) super.clear(dnsSection);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsQuery addRecord(DnsSection dnsSection, int i10, DnsRecord dnsRecord) {
        return (DatagramDnsQuery) super.addRecord(dnsSection, i10, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsQuery clear() {
        return (DatagramDnsQuery) super.clear();
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DatagramDnsQuery retain() {
        return (DatagramDnsQuery) super.retain();
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DatagramDnsQuery touch() {
        return (DatagramDnsQuery) super.touch();
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DatagramDnsQuery retain(int i10) {
        return (DatagramDnsQuery) super.retain(i10);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsQuery, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.ReferenceCounted
    public DatagramDnsQuery touch(Object obj) {
        return (DatagramDnsQuery) super.touch(obj);
    }
}

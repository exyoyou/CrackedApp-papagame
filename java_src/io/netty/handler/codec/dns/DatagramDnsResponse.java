package io.netty.handler.codec.dns;

import io.netty.channel.AddressedEnvelope;
import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes.dex */
public class DatagramDnsResponse extends DefaultDnsResponse implements AddressedEnvelope<DatagramDnsResponse, InetSocketAddress> {
    private final InetSocketAddress recipient;
    private final InetSocketAddress sender;

    public DatagramDnsResponse(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, int i10) {
        this(inetSocketAddress, inetSocketAddress2, i10, DnsOpCode.QUERY, DnsResponseCode.NOERROR);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.channel.AddressedEnvelope
    public DatagramDnsResponse content() {
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

    public DatagramDnsResponse(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, int i10, DnsOpCode dnsOpCode) {
        this(inetSocketAddress, inetSocketAddress2, i10, dnsOpCode, DnsResponseCode.NOERROR);
    }

    @Override // io.netty.channel.AddressedEnvelope
    public InetSocketAddress recipient() {
        return this.recipient;
    }

    @Override // io.netty.channel.AddressedEnvelope
    public InetSocketAddress sender() {
        return this.sender;
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.DnsResponse
    public DatagramDnsResponse setAuthoritativeAnswer(boolean z10) {
        return (DatagramDnsResponse) super.setAuthoritativeAnswer(z10);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.DnsResponse
    public DatagramDnsResponse setCode(DnsResponseCode dnsResponseCode) {
        return (DatagramDnsResponse) super.setCode(dnsResponseCode);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.DnsResponse
    public DatagramDnsResponse setRecursionAvailable(boolean z10) {
        return (DatagramDnsResponse) super.setRecursionAvailable(z10);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.DnsResponse
    public DatagramDnsResponse setTruncated(boolean z10) {
        return (DatagramDnsResponse) super.setTruncated(z10);
    }

    public DatagramDnsResponse(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, int i10, DnsOpCode dnsOpCode, DnsResponseCode dnsResponseCode) {
        super(i10, dnsOpCode, dnsResponseCode);
        if (inetSocketAddress2 == null && inetSocketAddress == null) {
            throw new NullPointerException("recipient and sender");
        }
        this.sender = inetSocketAddress;
        this.recipient = inetSocketAddress2;
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse setId(int i10) {
        return (DatagramDnsResponse) super.setId(i10);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse setOpCode(DnsOpCode dnsOpCode) {
        return (DatagramDnsResponse) super.setOpCode(dnsOpCode);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse setRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        return (DatagramDnsResponse) super.setRecord(dnsSection, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse setRecursionDesired(boolean z10) {
        return (DatagramDnsResponse) super.setRecursionDesired(z10);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse setZ(int i10) {
        return (DatagramDnsResponse) super.setZ(i10);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse addRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        return (DatagramDnsResponse) super.addRecord(dnsSection, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse clear(DnsSection dnsSection) {
        return (DatagramDnsResponse) super.clear(dnsSection);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse addRecord(DnsSection dnsSection, int i10, DnsRecord dnsRecord) {
        return (DatagramDnsResponse) super.addRecord(dnsSection, i10, dnsRecord);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.handler.codec.dns.DnsMessage
    public DatagramDnsResponse clear() {
        return (DatagramDnsResponse) super.clear();
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DatagramDnsResponse retain() {
        return (DatagramDnsResponse) super.retain();
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DatagramDnsResponse touch() {
        return (DatagramDnsResponse) super.touch();
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DatagramDnsResponse retain(int i10) {
        return (DatagramDnsResponse) super.retain(i10);
    }

    @Override // io.netty.handler.codec.dns.DefaultDnsResponse, io.netty.handler.codec.dns.AbstractDnsMessage, io.netty.util.ReferenceCounted
    public DatagramDnsResponse touch(Object obj) {
        return (DatagramDnsResponse) super.touch(obj);
    }
}

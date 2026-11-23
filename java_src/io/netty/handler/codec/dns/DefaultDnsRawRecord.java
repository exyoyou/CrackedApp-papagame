package io.netty.handler.codec.dns;

import io.netty.buffer.ByteBuf;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public class DefaultDnsRawRecord extends AbstractDnsRecord implements DnsRawRecord {
    private final ByteBuf content;

    public DefaultDnsRawRecord(String str, DnsRecordType dnsRecordType, long j10, ByteBuf byteBuf) {
        this(str, dnsRecordType, 1, j10, byteBuf);
    }

    @Override // io.netty.buffer.ByteBufHolder
    public ByteBuf content() {
        return this.content;
    }

    @Override // io.netty.util.ReferenceCounted
    public int refCnt() {
        return content().refCnt();
    }

    @Override // io.netty.util.ReferenceCounted
    public boolean release() {
        return content().release();
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsRecord
    public String toString() {
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(StringUtil.simpleClassName(this));
        sb2.append('(');
        DnsRecordType dnsRecordTypeType = type();
        if (dnsRecordTypeType != DnsRecordType.OPT) {
            sb2.append(name().isEmpty() ? "<root>" : name());
            sb2.append(' ');
            sb2.append(timeToLive());
            sb2.append(' ');
            StringBuilder sbAppendRecordClass = DnsMessageUtil.appendRecordClass(sb2, dnsClass());
            sbAppendRecordClass.append(' ');
            sbAppendRecordClass.append(dnsRecordTypeType.name());
        } else {
            sb2.append("OPT flags:");
            sb2.append(timeToLive());
            sb2.append(" udp:");
            sb2.append(dnsClass());
        }
        sb2.append(' ');
        sb2.append(content().readableBytes());
        sb2.append("B)");
        return sb2.toString();
    }

    public DefaultDnsRawRecord(String str, DnsRecordType dnsRecordType, int i10, long j10, ByteBuf byteBuf) {
        super(str, dnsRecordType, i10, j10);
        this.content = (ByteBuf) ObjectUtil.checkNotNull(byteBuf, "content");
    }

    @Override // io.netty.buffer.ByteBufHolder
    public DnsRawRecord copy() {
        return replace(content().copy());
    }

    @Override // io.netty.buffer.ByteBufHolder
    public DnsRawRecord duplicate() {
        return replace(content().duplicate());
    }

    @Override // io.netty.util.ReferenceCounted
    public boolean release(int i10) {
        return content().release(i10);
    }

    @Override // io.netty.buffer.ByteBufHolder
    public DnsRawRecord replace(ByteBuf byteBuf) {
        return new DefaultDnsRawRecord(name(), type(), dnsClass(), timeToLive(), byteBuf);
    }

    @Override // io.netty.buffer.ByteBufHolder
    public DnsRawRecord retainedDuplicate() {
        return replace(content().retainedDuplicate());
    }

    @Override // io.netty.util.ReferenceCounted
    public DnsRawRecord retain() {
        content().retain();
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public DnsRawRecord touch() {
        content().touch();
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public DnsRawRecord retain(int i10) {
        content().retain(i10);
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public DnsRawRecord touch(Object obj) {
        content().touch(obj);
        return this;
    }
}

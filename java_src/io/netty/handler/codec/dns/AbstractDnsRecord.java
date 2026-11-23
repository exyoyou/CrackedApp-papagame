package io.netty.handler.codec.dns;

import com.join.mgps.Util.o0;
import external.org.apache.commons.lang3.d;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import java.net.IDN;
import kotlin.UShort;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDnsRecord implements DnsRecord {
    private final short dnsClass;
    private int hashCode;
    private final String name;
    private final long timeToLive;
    private final DnsRecordType type;

    protected AbstractDnsRecord(String str, DnsRecordType dnsRecordType, long j10) {
        this(str, dnsRecordType, 1, j10);
    }

    private static String IDNtoASCII(String str) {
        ObjectUtil.checkNotNull(str, "name");
        return (PlatformDependent.isAndroid() && o0.f49827a.equals(str)) ? str : IDN.toASCII(str);
    }

    private static String appendTrailingDot(String str) {
        if (str.length() <= 0 || str.charAt(str.length() - 1) == '.') {
            return str;
        }
        return str + d.f90941a;
    }

    @Override // io.netty.handler.codec.dns.DnsRecord
    public int dnsClass() {
        return this.dnsClass & UShort.MAX_VALUE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DnsRecord)) {
            return false;
        }
        DnsRecord dnsRecord = (DnsRecord) obj;
        int i10 = this.hashCode;
        return (i10 == 0 || i10 == dnsRecord.hashCode()) && type().intValue() == dnsRecord.type().intValue() && dnsClass() == dnsRecord.dnsClass() && name().equals(dnsRecord.name());
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = (this.name.hashCode() * 31) + (type().intValue() * 31) + dnsClass();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // io.netty.handler.codec.dns.DnsRecord
    public String name() {
        return this.name;
    }

    @Override // io.netty.handler.codec.dns.DnsRecord
    public long timeToLive() {
        return this.timeToLive;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(StringUtil.simpleClassName(this));
        sb2.append('(');
        sb2.append(name());
        sb2.append(' ');
        sb2.append(timeToLive());
        sb2.append(' ');
        StringBuilder sbAppendRecordClass = DnsMessageUtil.appendRecordClass(sb2, dnsClass());
        sbAppendRecordClass.append(' ');
        sbAppendRecordClass.append(type().name());
        sbAppendRecordClass.append(')');
        return sb2.toString();
    }

    @Override // io.netty.handler.codec.dns.DnsRecord
    public DnsRecordType type() {
        return this.type;
    }

    protected AbstractDnsRecord(String str, DnsRecordType dnsRecordType, int i10, long j10) {
        ObjectUtil.checkPositiveOrZero(j10, "timeToLive");
        this.name = appendTrailingDot(IDNtoASCII(str));
        this.type = (DnsRecordType) ObjectUtil.checkNotNull(dnsRecordType, "type");
        this.dnsClass = (short) i10;
        this.timeToLive = j10;
    }
}

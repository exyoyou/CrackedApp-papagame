package io.netty.handler.codec.dns;

import io.netty.util.internal.ObjectUtil;
import t7.a;

/* JADX INFO: loaded from: classes.dex */
public class DnsOpCode implements Comparable<DnsOpCode> {
    private final byte byteValue;
    private final String name;
    private String text;
    public static final DnsOpCode QUERY = new DnsOpCode(0, "QUERY");
    public static final DnsOpCode IQUERY = new DnsOpCode(1, "IQUERY");
    public static final DnsOpCode STATUS = new DnsOpCode(2, "STATUS");
    public static final DnsOpCode NOTIFY = new DnsOpCode(4, "NOTIFY");
    public static final DnsOpCode UPDATE = new DnsOpCode(5, "UPDATE");

    private DnsOpCode(int i10) {
        this(i10, a.f97139c);
    }

    public static DnsOpCode valueOf(int i10) {
        if (i10 == 0) {
            return QUERY;
        }
        if (i10 == 1) {
            return IQUERY;
        }
        if (i10 == 2) {
            return STATUS;
        }
        if (i10 != 4) {
            return i10 != 5 ? new DnsOpCode(i10) : UPDATE;
        }
        return NOTIFY;
    }

    public byte byteValue() {
        return this.byteValue;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DnsOpCode) && this.byteValue == ((DnsOpCode) obj).byteValue;
    }

    public int hashCode() {
        return this.byteValue;
    }

    public String toString() {
        String str = this.text;
        if (str != null) {
            return str;
        }
        String str2 = this.name + '(' + (this.byteValue & 255) + ')';
        this.text = str2;
        return str2;
    }

    public DnsOpCode(int i10, String str) {
        this.byteValue = (byte) i10;
        this.name = (String) ObjectUtil.checkNotNull(str, "name");
    }

    @Override // java.lang.Comparable
    public int compareTo(DnsOpCode dnsOpCode) {
        return this.byteValue - dnsOpCode.byteValue;
    }
}

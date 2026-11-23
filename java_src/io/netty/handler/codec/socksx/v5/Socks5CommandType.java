package io.netty.handler.codec.socksx.v5;

import io.netty.util.internal.ObjectUtil;
import t7.a;

/* JADX INFO: loaded from: classes.dex */
public class Socks5CommandType implements Comparable<Socks5CommandType> {
    private final byte byteValue;
    private final String name;
    private String text;
    public static final Socks5CommandType CONNECT = new Socks5CommandType(1, "CONNECT");
    public static final Socks5CommandType BIND = new Socks5CommandType(2, "BIND");
    public static final Socks5CommandType UDP_ASSOCIATE = new Socks5CommandType(3, "UDP_ASSOCIATE");

    public Socks5CommandType(int i10) {
        this(i10, a.f97139c);
    }

    public static Socks5CommandType valueOf(byte b10) {
        if (b10 == 1) {
            return CONNECT;
        }
        if (b10 != 2) {
            return b10 != 3 ? new Socks5CommandType(b10) : UDP_ASSOCIATE;
        }
        return BIND;
    }

    public byte byteValue() {
        return this.byteValue;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Socks5CommandType) && this.byteValue == ((Socks5CommandType) obj).byteValue;
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

    public Socks5CommandType(int i10, String str) {
        this.name = (String) ObjectUtil.checkNotNull(str, "name");
        this.byteValue = (byte) i10;
    }

    @Override // java.lang.Comparable
    public int compareTo(Socks5CommandType socks5CommandType) {
        return this.byteValue - socks5CommandType.byteValue;
    }
}

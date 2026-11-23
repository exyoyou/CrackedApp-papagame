package io.netty.handler.codec.haproxy;

import com.sigmob.sdk.archives.tar.e;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import t7.a;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'TCP4' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public final class HAProxyProxiedProtocol {
    private static final /* synthetic */ HAProxyProxiedProtocol[] $VALUES;
    public static final HAProxyProxiedProtocol TCP4;
    public static final HAProxyProxiedProtocol TCP6;
    public static final HAProxyProxiedProtocol UDP4;
    public static final HAProxyProxiedProtocol UDP6;
    public static final HAProxyProxiedProtocol UNIX_DGRAM;
    public static final HAProxyProxiedProtocol UNIX_STREAM;
    public static final HAProxyProxiedProtocol UNKNOWN;
    private final AddressFamily addressFamily;
    private final byte byteValue;
    private final TransportProtocol transportProtocol;

    public enum AddressFamily {
        AF_UNSPEC((byte) 0),
        AF_IPv4((byte) 16),
        AF_IPv6((byte) 32),
        AF_UNIX(e.H);

        private static final byte FAMILY_MASK = -16;
        private final byte byteValue;

        AddressFamily(byte b10) {
            this.byteValue = b10;
        }

        public byte byteValue() {
            return this.byteValue;
        }

        public static AddressFamily valueOf(byte b10) {
            int i10 = b10 & FAMILY_MASK;
            byte b11 = (byte) i10;
            if (b11 == 0) {
                return AF_UNSPEC;
            }
            if (b11 == 16) {
                return AF_IPv4;
            }
            if (b11 == 32) {
                return AF_IPv6;
            }
            if (b11 == 48) {
                return AF_UNIX;
            }
            throw new IllegalArgumentException("unknown address family: " + i10);
        }
    }

    public enum TransportProtocol {
        UNSPEC((byte) 0),
        STREAM((byte) 1),
        DGRAM((byte) 2);

        private static final byte TRANSPORT_MASK = 15;
        private final byte transportByte;

        TransportProtocol(byte b10) {
            this.transportByte = b10;
        }

        public byte byteValue() {
            return this.transportByte;
        }

        public static TransportProtocol valueOf(byte b10) {
            int i10 = b10 & 15;
            byte b11 = (byte) i10;
            if (b11 == 0) {
                return UNSPEC;
            }
            if (b11 == 1) {
                return STREAM;
            }
            if (b11 == 2) {
                return DGRAM;
            }
            throw new IllegalArgumentException("unknown transport protocol: " + i10);
        }
    }

    static {
        HAProxyProxiedProtocol hAProxyProxiedProtocol = new HAProxyProxiedProtocol(a.f97139c, 0, (byte) 0, AddressFamily.AF_UNSPEC, TransportProtocol.UNSPEC);
        UNKNOWN = hAProxyProxiedProtocol;
        AddressFamily addressFamily = AddressFamily.AF_IPv4;
        TransportProtocol transportProtocol = TransportProtocol.STREAM;
        HAProxyProxiedProtocol hAProxyProxiedProtocol2 = new HAProxyProxiedProtocol("TCP4", 1, BinaryMemcacheOpcodes.SETQ, addressFamily, transportProtocol);
        TCP4 = hAProxyProxiedProtocol2;
        AddressFamily addressFamily2 = AddressFamily.AF_IPv6;
        HAProxyProxiedProtocol hAProxyProxiedProtocol3 = new HAProxyProxiedProtocol("TCP6", 2, BinaryMemcacheOpcodes.SASL_AUTH, addressFamily2, transportProtocol);
        TCP6 = hAProxyProxiedProtocol3;
        TransportProtocol transportProtocol2 = TransportProtocol.DGRAM;
        HAProxyProxiedProtocol hAProxyProxiedProtocol4 = new HAProxyProxiedProtocol("UDP4", 3, BinaryMemcacheOpcodes.ADDQ, addressFamily, transportProtocol2);
        UDP4 = hAProxyProxiedProtocol4;
        HAProxyProxiedProtocol hAProxyProxiedProtocol5 = new HAProxyProxiedProtocol("UDP6", 4, (byte) 34, addressFamily2, transportProtocol2);
        UDP6 = hAProxyProxiedProtocol5;
        AddressFamily addressFamily3 = AddressFamily.AF_UNIX;
        HAProxyProxiedProtocol hAProxyProxiedProtocol6 = new HAProxyProxiedProtocol("UNIX_STREAM", 5, e.I, addressFamily3, transportProtocol);
        UNIX_STREAM = hAProxyProxiedProtocol6;
        HAProxyProxiedProtocol hAProxyProxiedProtocol7 = new HAProxyProxiedProtocol("UNIX_DGRAM", 6, e.J, addressFamily3, transportProtocol2);
        UNIX_DGRAM = hAProxyProxiedProtocol7;
        $VALUES = new HAProxyProxiedProtocol[]{hAProxyProxiedProtocol, hAProxyProxiedProtocol2, hAProxyProxiedProtocol3, hAProxyProxiedProtocol4, hAProxyProxiedProtocol5, hAProxyProxiedProtocol6, hAProxyProxiedProtocol7};
    }

    private HAProxyProxiedProtocol(String str, int i10, byte b10, AddressFamily addressFamily, TransportProtocol transportProtocol) {
        super(str, i10);
        this.byteValue = b10;
        this.addressFamily = addressFamily;
        this.transportProtocol = transportProtocol;
    }

    public static HAProxyProxiedProtocol valueOf(String str) {
        return (HAProxyProxiedProtocol) Enum.valueOf(HAProxyProxiedProtocol.class, str);
    }

    public static HAProxyProxiedProtocol[] values() {
        return (HAProxyProxiedProtocol[]) $VALUES.clone();
    }

    public AddressFamily addressFamily() {
        return this.addressFamily;
    }

    public byte byteValue() {
        return this.byteValue;
    }

    public TransportProtocol transportProtocol() {
        return this.transportProtocol;
    }

    public static HAProxyProxiedProtocol valueOf(byte b10) {
        if (b10 == 0) {
            return UNKNOWN;
        }
        if (b10 == 17) {
            return TCP4;
        }
        if (b10 == 18) {
            return UDP4;
        }
        if (b10 == 33) {
            return TCP6;
        }
        if (b10 == 34) {
            return UDP6;
        }
        if (b10 == 49) {
            return UNIX_STREAM;
        }
        if (b10 == 50) {
            return UNIX_DGRAM;
        }
        throw new IllegalArgumentException("unknown transport protocol + address family: " + (b10 & 255));
    }
}

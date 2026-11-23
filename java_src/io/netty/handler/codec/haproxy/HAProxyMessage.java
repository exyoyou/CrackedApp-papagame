package io.netty.handler.codec.haproxy;

import external.org.apache.commons.lang3.d;
import io.netty.buffer.ByteBuf;
import io.netty.util.AbstractReferenceCounted;
import io.netty.util.ByteProcessor;
import io.netty.util.CharsetUtil;
import io.netty.util.NetUtil;
import io.netty.util.ResourceLeakDetector;
import io.netty.util.ResourceLeakDetectorFactory;
import io.netty.util.ResourceLeakTracker;
import io.netty.util.internal.ObjectUtil;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class HAProxyMessage extends AbstractReferenceCounted {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final ResourceLeakDetector<HAProxyMessage> leakDetector = ResourceLeakDetectorFactory.instance().newResourceLeakDetector(HAProxyMessage.class);
    private final HAProxyCommand command;
    private final String destinationAddress;
    private final int destinationPort;
    private final ResourceLeakTracker<HAProxyMessage> leak;
    private final HAProxyProtocolVersion protocolVersion;
    private final HAProxyProxiedProtocol proxiedProtocol;
    private final String sourceAddress;
    private final int sourcePort;
    private final List<HAProxyTLV> tlvs;

    /* JADX INFO: renamed from: io.netty.handler.codec.haproxy.HAProxyMessage$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily;
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type;

        static {
            int[] iArr = new int[HAProxyProxiedProtocol.AddressFamily.values().length];
            $SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily = iArr;
            try {
                iArr[HAProxyProxiedProtocol.AddressFamily.AF_UNSPEC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily[HAProxyProxiedProtocol.AddressFamily.AF_UNIX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily[HAProxyProxiedProtocol.AddressFamily.AF_IPv4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily[HAProxyProxiedProtocol.AddressFamily.AF_IPv6.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[HAProxyTLV.Type.values().length];
            $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type = iArr2;
            try {
                iArr2[HAProxyTLV.Type.PP2_TYPE_SSL.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.PP2_TYPE_ALPN.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.PP2_TYPE_AUTHORITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.PP2_TYPE_SSL_VERSION.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.PP2_TYPE_SSL_CN.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.PP2_TYPE_NETNS.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[HAProxyTLV.Type.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    private HAProxyMessage(HAProxyProtocolVersion hAProxyProtocolVersion, HAProxyCommand hAProxyCommand, HAProxyProxiedProtocol hAProxyProxiedProtocol, String str, String str2, String str3, String str4) {
        this(hAProxyProtocolVersion, hAProxyCommand, hAProxyProxiedProtocol, str, str2, portStringToInt(str3), portStringToInt(str4));
    }

    private static void checkAddress(String str, HAProxyProxiedProtocol.AddressFamily addressFamily) {
        ObjectUtil.checkNotNull(addressFamily, "addrFamily");
        int[] iArr = AnonymousClass1.$SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily;
        int i10 = iArr[addressFamily.ordinal()];
        if (i10 == 1) {
            if (str == null) {
                return;
            }
            throw new HAProxyProtocolException("unable to validate an AF_UNSPEC address: " + str);
        }
        if (i10 != 2) {
            ObjectUtil.checkNotNull(str, "address");
            int i11 = iArr[addressFamily.ordinal()];
            if (i11 == 3) {
                if (NetUtil.isValidIpV4Address(str)) {
                    return;
                }
                throw new HAProxyProtocolException("invalid IPv4 address: " + str);
            }
            if (i11 != 4) {
                throw new Error();
            }
            if (NetUtil.isValidIpV6Address(str)) {
                return;
            }
            throw new HAProxyProtocolException("invalid IPv6 address: " + str);
        }
    }

    private static void checkPort(int i10) {
        if (i10 < 0 || i10 > 65535) {
            throw new HAProxyProtocolException("invalid port: " + i10 + " (expected: 1 ~ 65535)");
        }
    }

    static HAProxyMessage decodeHeader(ByteBuf byteBuf) {
        String strIpBytesToString;
        String strIpBytesToString2;
        int unsignedShort;
        int unsignedShort2;
        ObjectUtil.checkNotNull(byteBuf, "header");
        int i10 = 16;
        if (byteBuf.readableBytes() < 16) {
            throw new HAProxyProtocolException("incomplete header: " + byteBuf.readableBytes() + " bytes (expected: 16+ bytes)");
        }
        byteBuf.skipBytes(12);
        byte b10 = byteBuf.readByte();
        try {
            HAProxyProtocolVersion hAProxyProtocolVersionValueOf = HAProxyProtocolVersion.valueOf(b10);
            HAProxyProtocolVersion hAProxyProtocolVersion = HAProxyProtocolVersion.V2;
            if (hAProxyProtocolVersionValueOf != hAProxyProtocolVersion) {
                throw new HAProxyProtocolException("version 1 unsupported: 0x" + Integer.toHexString(b10));
            }
            try {
                HAProxyCommand hAProxyCommandValueOf = HAProxyCommand.valueOf(b10);
                HAProxyCommand hAProxyCommand = HAProxyCommand.LOCAL;
                if (hAProxyCommandValueOf == hAProxyCommand) {
                    return unknownMsg(hAProxyProtocolVersion, hAProxyCommand);
                }
                try {
                    HAProxyProxiedProtocol hAProxyProxiedProtocolValueOf = HAProxyProxiedProtocol.valueOf(byteBuf.readByte());
                    if (hAProxyProxiedProtocolValueOf == HAProxyProxiedProtocol.UNKNOWN) {
                        return unknownMsg(hAProxyProtocolVersion, HAProxyCommand.PROXY);
                    }
                    int unsignedShort3 = byteBuf.readUnsignedShort();
                    HAProxyProxiedProtocol.AddressFamily addressFamily = hAProxyProxiedProtocolValueOf.addressFamily();
                    if (addressFamily != HAProxyProxiedProtocol.AddressFamily.AF_UNIX) {
                        if (addressFamily == HAProxyProxiedProtocol.AddressFamily.AF_IPv4) {
                            if (unsignedShort3 < 12 || byteBuf.readableBytes() < 12) {
                                throw new HAProxyProtocolException("incomplete IPv4 address information: " + Math.min(unsignedShort3, byteBuf.readableBytes()) + " bytes (expected: 12+ bytes)");
                            }
                            i10 = 4;
                        } else {
                            if (addressFamily != HAProxyProxiedProtocol.AddressFamily.AF_IPv6) {
                                throw new HAProxyProtocolException("unable to parse address information (unknown address family: " + addressFamily + ')');
                            }
                            if (unsignedShort3 < 36 || byteBuf.readableBytes() < 36) {
                                throw new HAProxyProtocolException("incomplete IPv6 address information: " + Math.min(unsignedShort3, byteBuf.readableBytes()) + " bytes (expected: 36+ bytes)");
                            }
                        }
                        strIpBytesToString = ipBytesToString(byteBuf, i10);
                        strIpBytesToString2 = ipBytesToString(byteBuf, i10);
                        unsignedShort = byteBuf.readUnsignedShort();
                        unsignedShort2 = byteBuf.readUnsignedShort();
                    } else {
                        if (unsignedShort3 < 216 || byteBuf.readableBytes() < 216) {
                            throw new HAProxyProtocolException("incomplete UNIX socket address information: " + Math.min(unsignedShort3, byteBuf.readableBytes()) + " bytes (expected: 216+ bytes)");
                        }
                        int i11 = byteBuf.readerIndex();
                        ByteProcessor byteProcessor = ByteProcessor.FIND_NUL;
                        int iForEachByte = byteBuf.forEachByte(i11, 108, byteProcessor);
                        int i12 = iForEachByte == -1 ? 108 : iForEachByte - i11;
                        Charset charset = CharsetUtil.US_ASCII;
                        String string = byteBuf.toString(i11, i12, charset);
                        int i13 = i11 + 108;
                        int iForEachByte2 = byteBuf.forEachByte(i13, 108, byteProcessor);
                        String string2 = byteBuf.toString(i13, iForEachByte2 == -1 ? 108 : iForEachByte2 - i13, charset);
                        byteBuf.readerIndex(i13 + 108);
                        strIpBytesToString2 = string2;
                        strIpBytesToString = string;
                        unsignedShort = 0;
                        unsignedShort2 = 0;
                    }
                    return new HAProxyMessage(hAProxyProtocolVersionValueOf, hAProxyCommandValueOf, hAProxyProxiedProtocolValueOf, strIpBytesToString, strIpBytesToString2, unsignedShort, unsignedShort2, readTlvs(byteBuf));
                } catch (IllegalArgumentException e10) {
                    throw new HAProxyProtocolException(e10);
                }
            } catch (IllegalArgumentException e11) {
                throw new HAProxyProtocolException(e11);
            }
        } catch (IllegalArgumentException e12) {
            throw new HAProxyProtocolException(e12);
        }
    }

    private static String ipBytesToString(ByteBuf byteBuf, int i10) {
        StringBuilder sb2 = new StringBuilder();
        int i11 = 0;
        if (i10 == 4) {
            while (i11 < 4) {
                sb2.append(byteBuf.readByte() & 255);
                sb2.append(d.f90941a);
                i11++;
            }
        } else {
            while (i11 < 8) {
                sb2.append(Integer.toHexString(byteBuf.readUnsignedShort()));
                sb2.append(':');
                i11++;
            }
        }
        sb2.setLength(sb2.length() - 1);
        return sb2.toString();
    }

    private static int portStringToInt(String str) {
        try {
            int i10 = Integer.parseInt(str);
            if (i10 > 0 && i10 <= 65535) {
                return i10;
            }
            throw new HAProxyProtocolException("invalid port: " + str + " (expected: 1 ~ 65535)");
        } catch (NumberFormatException e10) {
            throw new HAProxyProtocolException("invalid port: " + str, e10);
        }
    }

    private static HAProxyTLV readNextTLV(ByteBuf byteBuf) {
        if (byteBuf.readableBytes() < 4) {
            return null;
        }
        byte b10 = byteBuf.readByte();
        HAProxyTLV.Type typeTypeForByteValue = HAProxyTLV.Type.typeForByteValue(b10);
        int unsignedShort = byteBuf.readUnsignedShort();
        switch (AnonymousClass1.$SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type[typeTypeForByteValue.ordinal()]) {
            case 1:
                ByteBuf byteBufRetainedSlice = byteBuf.retainedSlice(byteBuf.readerIndex(), unsignedShort);
                ByteBuf slice = byteBuf.readSlice(unsignedShort);
                byte b11 = slice.readByte();
                int i10 = slice.readInt();
                if (slice.readableBytes() < 4) {
                    return new HAProxySSLTLV(i10, b11, Collections.emptyList(), byteBufRetainedSlice);
                }
                ArrayList arrayList = new ArrayList(4);
                do {
                    HAProxyTLV nextTLV = readNextTLV(slice);
                    if (nextTLV != null) {
                        arrayList.add(nextTLV);
                    }
                    return new HAProxySSLTLV(i10, b11, arrayList, byteBufRetainedSlice);
                } while (slice.readableBytes() >= 4);
                return new HAProxySSLTLV(i10, b11, arrayList, byteBufRetainedSlice);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return new HAProxyTLV(typeTypeForByteValue, b10, byteBuf.readRetainedSlice(unsignedShort));
            default:
                return null;
        }
    }

    private static List<HAProxyTLV> readTlvs(ByteBuf byteBuf) {
        HAProxyTLV nextTLV = readNextTLV(byteBuf);
        if (nextTLV == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(4);
        do {
            arrayList.add(nextTLV);
            if (nextTLV instanceof HAProxySSLTLV) {
                arrayList.addAll(((HAProxySSLTLV) nextTLV).encapsulatedTLVs());
            }
            nextTLV = readNextTLV(byteBuf);
        } while (nextTLV != null);
        return arrayList;
    }

    private void tryRecord() {
        ResourceLeakTracker<HAProxyMessage> resourceLeakTracker = this.leak;
        if (resourceLeakTracker != null) {
            resourceLeakTracker.record();
        }
    }

    private static HAProxyMessage unknownMsg(HAProxyProtocolVersion hAProxyProtocolVersion, HAProxyCommand hAProxyCommand) {
        return new HAProxyMessage(hAProxyProtocolVersion, hAProxyCommand, HAProxyProxiedProtocol.UNKNOWN, (String) null, (String) null, 0, 0);
    }

    public HAProxyCommand command() {
        return this.command;
    }

    @Override // io.netty.util.AbstractReferenceCounted
    protected void deallocate() {
        try {
            Iterator<HAProxyTLV> it2 = this.tlvs.iterator();
            while (it2.hasNext()) {
                it2.next().release();
            }
            ResourceLeakTracker<HAProxyMessage> resourceLeakTracker = this.leak;
            if (resourceLeakTracker != null) {
                resourceLeakTracker.close(this);
            }
        } catch (Throwable th) {
            ResourceLeakTracker<HAProxyMessage> resourceLeakTracker2 = this.leak;
            if (resourceLeakTracker2 != null) {
                resourceLeakTracker2.close(this);
            }
            throw th;
        }
    }

    public String destinationAddress() {
        return this.destinationAddress;
    }

    public int destinationPort() {
        return this.destinationPort;
    }

    public HAProxyProtocolVersion protocolVersion() {
        return this.protocolVersion;
    }

    public HAProxyProxiedProtocol proxiedProtocol() {
        return this.proxiedProtocol;
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public boolean release() {
        tryRecord();
        return super.release();
    }

    public String sourceAddress() {
        return this.sourceAddress;
    }

    public int sourcePort() {
        return this.sourcePort;
    }

    public List<HAProxyTLV> tlvs() {
        return this.tlvs;
    }

    private HAProxyMessage(HAProxyProtocolVersion hAProxyProtocolVersion, HAProxyCommand hAProxyCommand, HAProxyProxiedProtocol hAProxyProxiedProtocol, String str, String str2, int i10, int i11) {
        this(hAProxyProtocolVersion, hAProxyCommand, hAProxyProxiedProtocol, str, str2, i10, i11, Collections.emptyList());
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public boolean release(int i10) {
        tryRecord();
        return super.release(i10);
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public HAProxyMessage retain() {
        tryRecord();
        return (HAProxyMessage) super.retain();
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public HAProxyMessage touch() {
        tryRecord();
        return (HAProxyMessage) super.touch();
    }

    private HAProxyMessage(HAProxyProtocolVersion hAProxyProtocolVersion, HAProxyCommand hAProxyCommand, HAProxyProxiedProtocol hAProxyProxiedProtocol, String str, String str2, int i10, int i11, List<HAProxyTLV> list) {
        ObjectUtil.checkNotNull(hAProxyProxiedProtocol, "proxiedProtocol");
        HAProxyProxiedProtocol.AddressFamily addressFamily = hAProxyProxiedProtocol.addressFamily();
        checkAddress(str, addressFamily);
        checkAddress(str2, addressFamily);
        checkPort(i10);
        checkPort(i11);
        this.protocolVersion = hAProxyProtocolVersion;
        this.command = hAProxyCommand;
        this.proxiedProtocol = hAProxyProxiedProtocol;
        this.sourceAddress = str;
        this.destinationAddress = str2;
        this.sourcePort = i10;
        this.destinationPort = i11;
        this.tlvs = Collections.unmodifiableList(list);
        this.leak = leakDetector.track(this);
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public HAProxyMessage retain(int i10) {
        tryRecord();
        return (HAProxyMessage) super.retain(i10);
    }

    @Override // io.netty.util.ReferenceCounted
    public HAProxyMessage touch(Object obj) {
        ResourceLeakTracker<HAProxyMessage> resourceLeakTracker = this.leak;
        if (resourceLeakTracker != null) {
            resourceLeakTracker.record(obj);
        }
        return this;
    }

    static HAProxyMessage decodeHeader(String str) {
        if (str != null) {
            String[] strArrSplit = str.split(" ");
            int length = strArrSplit.length;
            if (length >= 2) {
                if ("PROXY".equals(strArrSplit[0])) {
                    try {
                        HAProxyProxiedProtocol hAProxyProxiedProtocolValueOf = HAProxyProxiedProtocol.valueOf(strArrSplit[1]);
                        if (hAProxyProxiedProtocolValueOf != HAProxyProxiedProtocol.TCP4 && hAProxyProxiedProtocolValueOf != HAProxyProxiedProtocol.TCP6 && hAProxyProxiedProtocolValueOf != HAProxyProxiedProtocol.UNKNOWN) {
                            throw new HAProxyProtocolException("unsupported v1 proxied protocol: " + strArrSplit[1]);
                        }
                        if (hAProxyProxiedProtocolValueOf == HAProxyProxiedProtocol.UNKNOWN) {
                            return unknownMsg(HAProxyProtocolVersion.V1, HAProxyCommand.PROXY);
                        }
                        if (length == 6) {
                            return new HAProxyMessage(HAProxyProtocolVersion.V1, HAProxyCommand.PROXY, hAProxyProxiedProtocolValueOf, strArrSplit[2], strArrSplit[3], strArrSplit[4], strArrSplit[5]);
                        }
                        throw new HAProxyProtocolException("invalid TCP4/6 header: " + str + " (expected: 6 parts)");
                    } catch (IllegalArgumentException e10) {
                        throw new HAProxyProtocolException(e10);
                    }
                }
                throw new HAProxyProtocolException("unknown identifier: " + strArrSplit[0]);
            }
            throw new HAProxyProtocolException("invalid header: " + str + " (expected: 'PROXY' and proxied protocol values)");
        }
        throw new HAProxyProtocolException("header");
    }
}

package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.util.AsciiString;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.MathUtil;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class HpackEncoder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int HUFF_CODE_THRESHOLD = 512;
    private final byte hashMask;
    private final HeaderEntry head;
    private final HeaderEntry[] headerFields;
    private final HpackHuffmanEncoder hpackHuffmanEncoder;
    private final int huffCodeThreshold;
    private final boolean ignoreMaxHeaderListSize;
    private long maxHeaderListSize;
    private long maxHeaderTableSize;
    private long size;

    /* JADX INFO: renamed from: io.netty.handler.codec.http2.HpackEncoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType;

        static {
            int[] iArr = new int[HpackUtil.IndexType.values().length];
            $SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType = iArr;
            try {
                iArr[HpackUtil.IndexType.INCREMENTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType[HpackUtil.IndexType.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType[HpackUtil.IndexType.NEVER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static final class HeaderEntry extends HpackHeaderField {
        HeaderEntry after;
        HeaderEntry before;
        int hash;
        int index;
        HeaderEntry next;

        HeaderEntry(int i10, CharSequence charSequence, CharSequence charSequence2, int i11, HeaderEntry headerEntry) {
            super(charSequence, charSequence2);
            this.index = i11;
            this.hash = i10;
            this.next = headerEntry;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addBefore(HeaderEntry headerEntry) {
            this.after = headerEntry;
            HeaderEntry headerEntry2 = headerEntry.before;
            this.before = headerEntry2;
            headerEntry2.after = this;
            this.after.before = this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void remove() {
            HeaderEntry headerEntry = this.before;
            headerEntry.after = this.after;
            this.after.before = headerEntry;
            this.before = null;
            this.after = null;
            this.next = null;
        }
    }

    HpackEncoder() {
        this(false);
    }

    private void add(CharSequence charSequence, CharSequence charSequence2, long j10) {
        if (j10 > this.maxHeaderTableSize) {
            clear();
            return;
        }
        while (this.maxHeaderTableSize - this.size < j10) {
            remove();
        }
        int iHashCode = AsciiString.hashCode(charSequence);
        int iIndex = index(iHashCode);
        HeaderEntry headerEntry = new HeaderEntry(iHashCode, charSequence, charSequence2, this.head.before.index - 1, this.headerFields[iIndex]);
        this.headerFields[iIndex] = headerEntry;
        headerEntry.addBefore(this.head);
        this.size += j10;
    }

    private void clear() {
        Arrays.fill(this.headerFields, (Object) null);
        HeaderEntry headerEntry = this.head;
        headerEntry.after = headerEntry;
        headerEntry.before = headerEntry;
        this.size = 0L;
    }

    private void encodeHeader(ByteBuf byteBuf, CharSequence charSequence, CharSequence charSequence2, boolean z10, long j10) {
        if (z10) {
            encodeLiteral(byteBuf, charSequence, charSequence2, HpackUtil.IndexType.NEVER, getNameIndex(charSequence));
            return;
        }
        long j11 = this.maxHeaderTableSize;
        if (j11 == 0) {
            int indexInsensitive = HpackStaticTable.getIndexInsensitive(charSequence, charSequence2);
            if (indexInsensitive != -1) {
                encodeInteger(byteBuf, 128, 7, indexInsensitive);
                return;
            } else {
                encodeLiteral(byteBuf, charSequence, charSequence2, HpackUtil.IndexType.NONE, HpackStaticTable.getIndex(charSequence));
                return;
            }
        }
        if (j10 > j11) {
            encodeLiteral(byteBuf, charSequence, charSequence2, HpackUtil.IndexType.NONE, getNameIndex(charSequence));
            return;
        }
        HeaderEntry entryInsensitive = getEntryInsensitive(charSequence, charSequence2);
        if (entryInsensitive != null) {
            encodeInteger(byteBuf, 128, 7, getIndex(entryInsensitive.index) + HpackStaticTable.length);
            return;
        }
        int indexInsensitive2 = HpackStaticTable.getIndexInsensitive(charSequence, charSequence2);
        if (indexInsensitive2 != -1) {
            encodeInteger(byteBuf, 128, 7, indexInsensitive2);
            return;
        }
        ensureCapacity(j10);
        encodeLiteral(byteBuf, charSequence, charSequence2, HpackUtil.IndexType.INCREMENTAL, getNameIndex(charSequence));
        add(charSequence, charSequence2, j10);
    }

    private void encodeHeadersEnforceMaxHeaderListSize(int i10, ByteBuf byteBuf, Http2Headers http2Headers, Http2HeadersEncoder.SensitivityDetector sensitivityDetector) throws Http2Exception {
        long jSizeOf = 0;
        for (Map.Entry<CharSequence, CharSequence> entry : http2Headers) {
            jSizeOf += HpackHeaderField.sizeOf(entry.getKey(), entry.getValue());
            long j10 = this.maxHeaderListSize;
            if (jSizeOf > j10) {
                Http2CodecUtil.headerListSizeExceeded(i10, j10, false);
            }
        }
        encodeHeadersIgnoreMaxHeaderListSize(byteBuf, http2Headers, sensitivityDetector);
    }

    private void encodeHeadersIgnoreMaxHeaderListSize(ByteBuf byteBuf, Http2Headers http2Headers, Http2HeadersEncoder.SensitivityDetector sensitivityDetector) throws Http2Exception {
        for (Map.Entry<CharSequence, CharSequence> entry : http2Headers) {
            CharSequence key = entry.getKey();
            CharSequence value = entry.getValue();
            encodeHeader(byteBuf, key, value, sensitivityDetector.isSensitive(key, value), HpackHeaderField.sizeOf(key, value));
        }
    }

    private static void encodeInteger(ByteBuf byteBuf, int i10, int i11, int i12) {
        encodeInteger(byteBuf, i10, i11, i12);
    }

    private void encodeLiteral(ByteBuf byteBuf, CharSequence charSequence, CharSequence charSequence2, HpackUtil.IndexType indexType, int i10) {
        boolean z10 = i10 != -1;
        int i11 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType[indexType.ordinal()];
        if (i11 == 1) {
            if (!z10) {
                i10 = 0;
            }
            encodeInteger(byteBuf, 64, 6, i10);
        } else if (i11 == 2) {
            if (!z10) {
                i10 = 0;
            }
            encodeInteger(byteBuf, 0, 4, i10);
        } else {
            if (i11 != 3) {
                throw new Error("should not reach here");
            }
            if (!z10) {
                i10 = 0;
            }
            encodeInteger(byteBuf, 16, 4, i10);
        }
        if (!z10) {
            encodeStringLiteral(byteBuf, charSequence);
        }
        encodeStringLiteral(byteBuf, charSequence2);
    }

    private void encodeStringLiteral(ByteBuf byteBuf, CharSequence charSequence) {
        int encodedLength;
        if (charSequence.length() >= this.huffCodeThreshold && (encodedLength = this.hpackHuffmanEncoder.getEncodedLength(charSequence)) < charSequence.length()) {
            encodeInteger(byteBuf, 128, 7, encodedLength);
            this.hpackHuffmanEncoder.encode(byteBuf, charSequence);
            return;
        }
        encodeInteger(byteBuf, 0, 7, charSequence.length());
        if (!(charSequence instanceof AsciiString)) {
            byteBuf.writeCharSequence(charSequence, CharsetUtil.ISO_8859_1);
        } else {
            AsciiString asciiString = (AsciiString) charSequence;
            byteBuf.writeBytes(asciiString.array(), asciiString.arrayOffset(), asciiString.length());
        }
    }

    private void ensureCapacity(long j10) {
        while (this.maxHeaderTableSize - this.size < j10 && length() != 0) {
            remove();
        }
    }

    private HeaderEntry getEntryInsensitive(CharSequence charSequence, CharSequence charSequence2) {
        if (length() != 0 && charSequence != null && charSequence2 != null) {
            int iHashCode = AsciiString.hashCode(charSequence);
            for (HeaderEntry headerEntry = this.headerFields[index(iHashCode)]; headerEntry != null; headerEntry = headerEntry.next) {
                if (headerEntry.hash == iHashCode && HpackUtil.equalsVariableTime(charSequence2, headerEntry.value) && HpackUtil.equalsVariableTime(charSequence, headerEntry.name)) {
                    return headerEntry;
                }
            }
        }
        return null;
    }

    private int getIndex(CharSequence charSequence) {
        if (length() != 0 && charSequence != null) {
            int iHashCode = AsciiString.hashCode(charSequence);
            for (HeaderEntry headerEntry = this.headerFields[index(iHashCode)]; headerEntry != null; headerEntry = headerEntry.next) {
                if (headerEntry.hash == iHashCode && HpackUtil.equalsConstantTime(charSequence, headerEntry.name) != 0) {
                    return getIndex(headerEntry.index);
                }
            }
        }
        return -1;
    }

    private int getNameIndex(CharSequence charSequence) {
        int index = HpackStaticTable.getIndex(charSequence);
        if (index != -1) {
            return index;
        }
        int index2 = getIndex(charSequence);
        return index2 >= 0 ? index2 + HpackStaticTable.length : index2;
    }

    private int index(int i10) {
        return i10 & this.hashMask;
    }

    private HpackHeaderField remove() {
        if (this.size == 0) {
            return null;
        }
        HeaderEntry headerEntry = this.head.after;
        int iIndex = index(headerEntry.hash);
        HeaderEntry headerEntry2 = this.headerFields[iIndex];
        HeaderEntry headerEntry3 = headerEntry2;
        while (headerEntry2 != null) {
            HeaderEntry headerEntry4 = headerEntry2.next;
            if (headerEntry2 == headerEntry) {
                if (headerEntry3 == headerEntry) {
                    this.headerFields[iIndex] = headerEntry4;
                } else {
                    headerEntry3.next = headerEntry4;
                }
                headerEntry.remove();
                this.size -= (long) headerEntry.size();
                return headerEntry;
            }
            headerEntry3 = headerEntry2;
            headerEntry2 = headerEntry4;
        }
        return null;
    }

    public void encodeHeaders(int i10, ByteBuf byteBuf, Http2Headers http2Headers, Http2HeadersEncoder.SensitivityDetector sensitivityDetector) throws Http2Exception {
        if (this.ignoreMaxHeaderListSize) {
            encodeHeadersIgnoreMaxHeaderListSize(byteBuf, http2Headers, sensitivityDetector);
        } else {
            encodeHeadersEnforceMaxHeaderListSize(i10, byteBuf, http2Headers, sensitivityDetector);
        }
    }

    HpackHeaderField getHeaderField(int i10) {
        HeaderEntry headerEntry = this.head;
        while (true) {
            int i11 = i10 - 1;
            if (i10 < 0) {
                return headerEntry;
            }
            headerEntry = headerEntry.before;
            i10 = i11;
        }
    }

    public long getMaxHeaderListSize() {
        return this.maxHeaderListSize;
    }

    public long getMaxHeaderTableSize() {
        return this.maxHeaderTableSize;
    }

    int length() {
        if (this.size == 0) {
            return 0;
        }
        HeaderEntry headerEntry = this.head;
        return (headerEntry.after.index - headerEntry.before.index) + 1;
    }

    public void setMaxHeaderListSize(long j10) throws Http2Exception {
        if (j10 < 0 || j10 > 4294967295L) {
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Header List Size must be >= %d and <= %d but was %d", 0L, 4294967295L, Long.valueOf(j10));
        }
        this.maxHeaderListSize = j10;
    }

    public void setMaxHeaderTableSize(ByteBuf byteBuf, long j10) throws Http2Exception {
        if (j10 < 0 || j10 > 4294967295L) {
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Header Table Size must be >= %d and <= %d but was %d", 0L, 4294967295L, Long.valueOf(j10));
        }
        if (this.maxHeaderTableSize == j10) {
            return;
        }
        this.maxHeaderTableSize = j10;
        ensureCapacity(0L);
        encodeInteger(byteBuf, 32, 5, j10);
    }

    long size() {
        return this.size;
    }

    HpackEncoder(boolean z10) {
        this(z10, 16, 512);
    }

    private static void encodeInteger(ByteBuf byteBuf, int i10, int i11, long j10) {
        int i12 = 255 >>> (8 - i11);
        long j11 = i12;
        if (j10 < j11) {
            byteBuf.writeByte((int) (((long) i10) | j10));
            return;
        }
        byteBuf.writeByte(i10 | i12);
        long j12 = j10 - j11;
        while (((-128) & j12) != 0) {
            byteBuf.writeByte((int) ((127 & j12) | 128));
            j12 >>>= 7;
        }
        byteBuf.writeByte((int) j12);
    }

    HpackEncoder(boolean z10, int i10, int i11) {
        AsciiString asciiString = AsciiString.EMPTY_STRING;
        HeaderEntry headerEntry = new HeaderEntry(-1, asciiString, asciiString, Integer.MAX_VALUE, null);
        this.head = headerEntry;
        this.hpackHuffmanEncoder = new HpackHuffmanEncoder();
        this.ignoreMaxHeaderListSize = z10;
        this.maxHeaderTableSize = 4096L;
        this.maxHeaderListSize = 4294967295L;
        HeaderEntry[] headerEntryArr = new HeaderEntry[MathUtil.findNextPositivePowerOfTwo(Math.max(2, Math.min(i10, 128)))];
        this.headerFields = headerEntryArr;
        this.hashMask = (byte) (headerEntryArr.length - 1);
        headerEntry.after = headerEntry;
        headerEntry.before = headerEntry;
        this.huffCodeThreshold = i11;
    }

    private int getIndex(int i10) {
        if (i10 == -1) {
            return -1;
        }
        return (i10 - this.head.before.index) + 1;
    }
}

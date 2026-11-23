package com.czhj.wire;

import com.czhj.wire.okio.Buffer;
import com.czhj.wire.okio.BufferedSource;
import com.czhj.wire.okio.ByteString;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes9.dex */
public final class ProtoReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f25872a = 3;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f25873b = 65;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f25874c = 7;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f25875d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f25876e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f25877f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f25878g = 3;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f25879h = 4;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f25880i = 5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f25881j = 6;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f25882k = 7;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final BufferedSource f25883l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f25886o;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private FieldEncoding f25890s;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f25884m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f25885n = Long.MAX_VALUE;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f25887p = 2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f25888q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f25889r = -1;

    public ProtoReader(BufferedSource bufferedSource) {
        this.f25883l = bufferedSource;
    }

    private int a() throws IOException {
        int i10;
        this.f25883l.require(1L);
        this.f25884m++;
        byte b10 = this.f25883l.readByte();
        if (b10 >= 0) {
            return b10;
        }
        int i11 = b10 & ByteCompanionObject.MAX_VALUE;
        this.f25883l.require(1L);
        this.f25884m++;
        byte b11 = this.f25883l.readByte();
        if (b11 >= 0) {
            i10 = b11 << 7;
        } else {
            i11 |= (b11 & ByteCompanionObject.MAX_VALUE) << 7;
            this.f25883l.require(1L);
            this.f25884m++;
            byte b12 = this.f25883l.readByte();
            if (b12 >= 0) {
                i10 = b12 << 14;
            } else {
                i11 |= (b12 & ByteCompanionObject.MAX_VALUE) << 14;
                this.f25883l.require(1L);
                this.f25884m++;
                byte b13 = this.f25883l.readByte();
                if (b13 < 0) {
                    int i12 = i11 | ((b13 & ByteCompanionObject.MAX_VALUE) << 21);
                    this.f25883l.require(1L);
                    this.f25884m++;
                    byte b14 = this.f25883l.readByte();
                    int i13 = i12 | (b14 << BinaryMemcacheOpcodes.TOUCH);
                    if (b14 >= 0) {
                        return i13;
                    }
                    for (int i14 = 0; i14 < 5; i14++) {
                        this.f25883l.require(1L);
                        this.f25884m++;
                        if (this.f25883l.readByte() >= 0) {
                            return i13;
                        }
                    }
                    throw new ProtocolException("Malformed VARINT");
                }
                i10 = b13 << BinaryMemcacheOpcodes.INCREMENTQ;
            }
        }
        return i11 | i10;
    }

    private long b() throws IOException {
        if (this.f25887p != 2) {
            throw new ProtocolException("Expected LENGTH_DELIMITED but was " + this.f25887p);
        }
        long j10 = this.f25885n - this.f25884m;
        this.f25883l.require(j10);
        this.f25887p = 6;
        this.f25884m = this.f25885n;
        this.f25885n = this.f25889r;
        this.f25889r = -1L;
        return j10;
    }

    public long beginMessage() throws IOException {
        if (this.f25887p != 2) {
            throw new IllegalStateException("Unexpected call to beginMessage()");
        }
        int i10 = this.f25886o + 1;
        this.f25886o = i10;
        if (i10 > 65) {
            throw new IOException("Wire recursion limit exceeded");
        }
        long j10 = this.f25889r;
        this.f25889r = -1L;
        this.f25887p = 6;
        return j10;
    }

    public void endMessage(long j10) throws IOException {
        if (this.f25887p != 6) {
            throw new IllegalStateException("Unexpected call to endMessage()");
        }
        int i10 = this.f25886o - 1;
        this.f25886o = i10;
        if (i10 < 0 || this.f25889r != -1) {
            throw new IllegalStateException("No corresponding call to beginMessage()");
        }
        if (this.f25884m == this.f25885n || i10 == 0) {
            this.f25885n = j10;
            return;
        }
        throw new IOException("Expected to end at " + this.f25885n + " but was " + this.f25884m);
    }

    public ByteString forEachTag(TagHandler tagHandler) throws IOException {
        long jBeginMessage = beginMessage();
        Buffer buffer = null;
        ProtoWriter protoWriter = null;
        while (true) {
            int iNextTag = nextTag();
            if (iNextTag == -1) {
                break;
            }
            if (tagHandler.decodeMessage(iNextTag) == TagHandler.UNKNOWN_TAG) {
                if (buffer == null) {
                    buffer = new Buffer();
                    protoWriter = new ProtoWriter(buffer);
                }
                a(protoWriter, iNextTag);
            }
        }
        endMessage(jBeginMessage);
        return buffer != null ? buffer.readByteString() : ByteString.EMPTY;
    }

    public int nextTag() throws IOException {
        int i10 = this.f25887p;
        if (i10 == 7) {
            this.f25887p = 2;
            return this.f25888q;
        }
        if (i10 != 6) {
            throw new IllegalStateException("Unexpected call to nextTag()");
        }
        while (this.f25884m < this.f25885n && !this.f25883l.exhausted()) {
            int iA = a();
            if (iA == 0) {
                throw new ProtocolException("Unexpected tag 0");
            }
            int i11 = iA >> 3;
            this.f25888q = i11;
            int i12 = iA & 7;
            if (i12 == 0) {
                this.f25890s = FieldEncoding.VARINT;
                this.f25887p = 0;
                return i11;
            }
            if (i12 == 1) {
                this.f25890s = FieldEncoding.FIXED64;
                this.f25887p = 1;
                return i11;
            }
            if (i12 == 2) {
                this.f25890s = FieldEncoding.LENGTH_DELIMITED;
                this.f25887p = 2;
                int iA2 = a();
                if (iA2 < 0) {
                    throw new ProtocolException("Negative length: " + iA2);
                }
                if (this.f25889r != -1) {
                    throw new IllegalStateException();
                }
                long j10 = this.f25885n;
                this.f25889r = j10;
                long j11 = this.f25884m + ((long) iA2);
                this.f25885n = j11;
                if (j11 <= j10) {
                    return this.f25888q;
                }
                throw new EOFException();
            }
            if (i12 != 3) {
                if (i12 == 4) {
                    throw new ProtocolException("Unexpected end group");
                }
                if (i12 == 5) {
                    this.f25890s = FieldEncoding.FIXED32;
                    this.f25887p = 5;
                    return i11;
                }
                throw new ProtocolException("Unexpected field encoding: " + i12);
            }
            a(i11);
        }
        return -1;
    }

    public FieldEncoding peekFieldEncoding() {
        return this.f25890s;
    }

    public ByteString readBytes() throws IOException {
        long jB = b();
        this.f25883l.require(jB);
        return this.f25883l.readByteString(jB);
    }

    public int readFixed32() throws IOException {
        int i10 = this.f25887p;
        if (i10 != 5 && i10 != 2) {
            throw new ProtocolException("Expected FIXED32 or LENGTH_DELIMITED but was " + this.f25887p);
        }
        this.f25883l.require(4L);
        this.f25884m += 4;
        int intLe = this.f25883l.readIntLe();
        b(5);
        return intLe;
    }

    public long readFixed64() throws IOException {
        int i10 = this.f25887p;
        if (i10 != 1 && i10 != 2) {
            throw new ProtocolException("Expected FIXED64 or LENGTH_DELIMITED but was " + this.f25887p);
        }
        this.f25883l.require(8L);
        this.f25884m += 8;
        long longLe = this.f25883l.readLongLe();
        b(1);
        return longLe;
    }

    public String readString() throws IOException {
        long jB = b();
        this.f25883l.require(jB);
        return this.f25883l.readUtf8(jB);
    }

    public int readVarint32() throws IOException {
        int i10 = this.f25887p;
        if (i10 == 0 || i10 == 2) {
            int iA = a();
            b(0);
            return iA;
        }
        throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.f25887p);
    }

    public long readVarint64() throws IOException {
        int i10 = this.f25887p;
        if (i10 != 0 && i10 != 2) {
            throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.f25887p);
        }
        long j10 = 0;
        for (int i11 = 0; i11 < 64; i11 += 7) {
            this.f25883l.require(1L);
            this.f25884m++;
            byte b10 = this.f25883l.readByte();
            j10 |= ((long) (b10 & ByteCompanionObject.MAX_VALUE)) << i11;
            if ((b10 & 128) == 0) {
                b(0);
                return j10;
            }
        }
        throw new ProtocolException("WireInput encountered a malformed varint");
    }

    public void skip() throws IOException {
        int i10 = this.f25887p;
        if (i10 == 0) {
            readVarint64();
            return;
        }
        if (i10 == 1) {
            readFixed64();
            return;
        }
        if (i10 == 2) {
            this.f25883l.skip(b());
        } else {
            if (i10 != 5) {
                throw new IllegalStateException("Unexpected call to skip()");
            }
            readFixed32();
        }
    }

    private void a(int i10) throws IOException {
        while (this.f25884m < this.f25885n && !this.f25883l.exhausted()) {
            int iA = a();
            if (iA == 0) {
                throw new ProtocolException("Unexpected tag 0");
            }
            int i11 = iA >> 3;
            int i12 = iA & 7;
            if (i12 == 0) {
                this.f25887p = 0;
                readVarint64();
            } else if (i12 == 1) {
                this.f25887p = 1;
                readFixed64();
            } else if (i12 == 2) {
                long jA = a();
                this.f25884m += jA;
                this.f25883l.skip(jA);
            } else if (i12 == 3) {
                a(i11);
            } else if (i12 == 4) {
                if (i11 != i10) {
                    throw new ProtocolException("Unexpected end group");
                }
                return;
            } else {
                if (i12 != 5) {
                    throw new ProtocolException("Unexpected field encoding: " + i12);
                }
                this.f25887p = 5;
                readFixed32();
            }
        }
        throw new EOFException();
    }

    private void b(int i10) throws IOException {
        if (this.f25887p != i10) {
            long j10 = this.f25884m;
            long j11 = this.f25885n;
            if (j10 > j11) {
                throw new IOException("Expected to end at " + this.f25885n + " but was " + this.f25884m);
            }
            if (j10 != j11) {
                this.f25887p = 7;
                return;
            } else {
                this.f25885n = this.f25889r;
                this.f25889r = -1L;
            }
        }
        this.f25887p = 6;
    }

    private void a(ProtoWriter protoWriter, int i10) throws IOException {
        ProtoAdapter<?> protoAdapterRawProtoAdapter = peekFieldEncoding().rawProtoAdapter();
        try {
            protoAdapterRawProtoAdapter.encodeWithTag(protoWriter, i10, protoAdapterRawProtoAdapter.decode(this));
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}

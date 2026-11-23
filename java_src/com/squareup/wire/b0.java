package com.squareup.wire;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nProtoReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\ncom/squareup/wire/internal/RuntimeUtils\n*L\n1#1,531:1\n1#2:532\n23#3:533\n26#3:534\n23#3:535\n26#3:536\n23#3:537\n26#3:538\n23#3:539\n26#3:540\n23#3:541\n23#3:542\n*S KotlinDebug\n*F\n+ 1 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n336#1:533\n341#1:534\n343#1:535\n348#1:536\n350#1:537\n355#1:538\n357#1:539\n361#1:540\n391#1:541\n392#1:542\n*E\n"})
public final class b0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotNull
    public static final a f82309j = new a(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f82310k = 65;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f82311l = 7;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f82312m = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f82313n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f82314o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f82315p = 2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f82316q = 3;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f82317r = 4;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f82318s = 5;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f82319t = 6;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f82320u = 7;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final BufferedSource f82321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f82322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f82323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f82324d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f82325e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f82326f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f82327g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private FieldEncoding f82328h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private final List<Buffer> f82329i;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FieldEncoding.values().length];
            try {
                iArr[FieldEncoding.LENGTH_DELIMITED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FieldEncoding.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FieldEncoding.FIXED64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FieldEncoding.VARINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public b0(@NotNull BufferedSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f82321a = source;
        this.f82323c = Long.MAX_VALUE;
        this.f82325e = 2;
        this.f82326f = -1;
        this.f82327g = -1L;
        this.f82329i = new ArrayList();
    }

    private final void c(int i10) throws IOException {
        if (this.f82325e == i10) {
            this.f82325e = 6;
            return;
        }
        long j10 = this.f82322b;
        long j11 = this.f82323c;
        if (j10 > j11) {
            throw new IOException("Expected to end at " + this.f82323c + " but was " + this.f82322b);
        }
        if (j10 != j11) {
            this.f82325e = 7;
            return;
        }
        this.f82323c = this.f82327g;
        this.f82327g = -1L;
        this.f82325e = 6;
    }

    private final long d() throws IOException {
        if (this.f82325e != 2) {
            throw new ProtocolException("Expected LENGTH_DELIMITED but was " + this.f82325e);
        }
        long j10 = this.f82323c - this.f82322b;
        this.f82321a.require(j10);
        this.f82325e = 6;
        this.f82322b = this.f82323c;
        this.f82323c = this.f82327g;
        this.f82327g = -1L;
        return j10;
    }

    private final int i() throws IOException {
        this.f82328h = FieldEncoding.LENGTH_DELIMITED;
        this.f82325e = 2;
        int iJ = j();
        if (iJ < 0) {
            throw new ProtocolException("Negative length: " + iJ);
        }
        if (this.f82327g != -1) {
            throw new IllegalStateException();
        }
        long j10 = this.f82323c;
        this.f82327g = j10;
        long j11 = this.f82322b + ((long) iJ);
        this.f82323c = j11;
        if (j11 <= j10) {
            return iJ;
        }
        throw new EOFException();
    }

    private final int j() throws IOException {
        int i10;
        this.f82321a.require(1L);
        this.f82322b++;
        byte b10 = this.f82321a.readByte();
        if (b10 >= 0) {
            return b10;
        }
        int i11 = b10 & ByteCompanionObject.MAX_VALUE;
        this.f82321a.require(1L);
        this.f82322b++;
        byte b11 = this.f82321a.readByte();
        if (b11 >= 0) {
            i10 = b11 << 7;
        } else {
            i11 |= (b11 & ByteCompanionObject.MAX_VALUE) << 7;
            this.f82321a.require(1L);
            this.f82322b++;
            byte b12 = this.f82321a.readByte();
            if (b12 >= 0) {
                i10 = b12 << 14;
            } else {
                i11 |= (b12 & ByteCompanionObject.MAX_VALUE) << 14;
                this.f82321a.require(1L);
                this.f82322b++;
                byte b13 = this.f82321a.readByte();
                if (b13 < 0) {
                    int i12 = i11 | ((b13 & ByteCompanionObject.MAX_VALUE) << 21);
                    this.f82321a.require(1L);
                    this.f82322b++;
                    byte b14 = this.f82321a.readByte();
                    int i13 = i12 | (b14 << BinaryMemcacheOpcodes.TOUCH);
                    if (b14 >= 0) {
                        return i13;
                    }
                    for (int i14 = 0; i14 < 5; i14++) {
                        this.f82321a.require(1L);
                        this.f82322b++;
                        if (this.f82321a.readByte() >= 0) {
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

    private final void w(int i10) throws IOException {
        while (this.f82322b < this.f82323c && !this.f82321a.exhausted()) {
            int iJ = j();
            if (iJ == 0) {
                throw new ProtocolException("Unexpected tag 0");
            }
            int i11 = iJ >> 3;
            int i12 = iJ & 7;
            if (i12 == 0) {
                this.f82325e = 0;
                u();
            } else if (i12 == 1) {
                this.f82325e = 1;
                q();
            } else if (i12 == 2) {
                long j10 = j();
                this.f82322b += j10;
                this.f82321a.skip(j10);
            } else if (i12 == 3) {
                w(i11);
            } else if (i12 == 4) {
                if (i11 != i10) {
                    throw new ProtocolException("Unexpected end group");
                }
                return;
            } else {
                if (i12 != 5) {
                    throw new ProtocolException("Unexpected field encoding: " + i12);
                }
                this.f82325e = 5;
                p();
            }
        }
        throw new EOFException();
    }

    @JvmName(name = "-forEachTag")
    @NotNull
    public final ByteString a(@NotNull Function1<? super Integer, ? extends Object> tagHandler) throws IOException {
        Intrinsics.checkNotNullParameter(tagHandler, "tagHandler");
        long jF = f();
        while (true) {
            int iM = m();
            if (iM == -1) {
                return h(jF);
            }
            tagHandler.invoke(Integer.valueOf(iM));
        }
    }

    public final void b(int i10, @NotNull FieldEncoding fieldEncoding, @Nullable Object obj) throws IOException {
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        c0 c0Var = new c0(this.f82329i.get(this.f82324d - 1));
        ProtoAdapter<?> protoAdapterRawProtoAdapter = fieldEncoding.rawProtoAdapter();
        Intrinsics.checkNotNull(protoAdapterRawProtoAdapter, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
        protoAdapterRawProtoAdapter.n(c0Var, i10, obj);
    }

    public final boolean e() throws ProtocolException {
        int i10 = this.f82325e;
        if (i10 == 0 || i10 == 1) {
            return true;
        }
        if (i10 != 2) {
            if (i10 == 5) {
                return true;
            }
            throw new ProtocolException("unexpected state: " + this.f82325e);
        }
        if (this.f82322b < this.f82323c) {
            return true;
        }
        this.f82323c = this.f82327g;
        this.f82327g = -1L;
        this.f82325e = 6;
        return false;
    }

    public final long f() throws IOException {
        if (!(this.f82325e == 2)) {
            throw new IllegalStateException("Unexpected call to beginMessage()".toString());
        }
        int i10 = this.f82324d + 1;
        this.f82324d = i10;
        if (i10 > 65) {
            throw new IOException("Wire recursion limit exceeded");
        }
        if (i10 > this.f82329i.size()) {
            this.f82329i.add(new Buffer());
        }
        long j10 = this.f82327g;
        this.f82327g = -1L;
        this.f82325e = 6;
        return j10;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "prefer endMessageAndGetUnknownFields()", replaceWith = @ReplaceWith(expression = "endMessageAndGetUnknownFields(token)", imports = {}))
    public final void g(long j10) throws IOException {
        h(j10);
    }

    @NotNull
    public final ByteString h(long j10) throws IOException {
        if (!(this.f82325e == 6)) {
            throw new IllegalStateException("Unexpected call to endMessage()".toString());
        }
        int i10 = this.f82324d - 1;
        this.f82324d = i10;
        if (!(i10 >= 0 && this.f82327g == -1)) {
            throw new IllegalStateException("No corresponding call to beginMessage()".toString());
        }
        if (this.f82322b == this.f82323c || i10 == 0) {
            this.f82323c = j10;
            Buffer buffer = this.f82329i.get(i10);
            return buffer.size() > 0 ? buffer.readByteString() : ByteString.EMPTY;
        }
        throw new IOException("Expected to end at " + this.f82323c + " but was " + this.f82322b);
    }

    public final long k() {
        FieldEncoding fieldEncoding = this.f82328h;
        int i10 = fieldEncoding == null ? -1 : b.$EnumSwitchMapping$0[fieldEncoding.ordinal()];
        if (i10 == -1) {
            throw new IllegalStateException("nextFieldEncoding is not set");
        }
        if (i10 == 1) {
            return this.f82323c - this.f82322b;
        }
        if (i10 == 2) {
            return 4L;
        }
        if (i10 == 3) {
            return 8L;
        }
        if (i10 == 4) {
            return 1L;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final int l() throws IOException {
        int i10 = this.f82325e;
        if (i10 == 6 || i10 == 2) {
            return i();
        }
        throw new IllegalStateException("Unexpected call to nextDelimited()".toString());
    }

    public final int m() throws IOException {
        int i10 = this.f82325e;
        if (i10 == 7) {
            this.f82325e = 2;
            return this.f82326f;
        }
        if (i10 != 6) {
            throw new IllegalStateException("Unexpected call to nextTag()");
        }
        while (this.f82322b < this.f82323c && !this.f82321a.exhausted()) {
            int iJ = j();
            if (iJ == 0) {
                throw new ProtocolException("Unexpected tag 0");
            }
            int i11 = iJ >> 3;
            this.f82326f = i11;
            int i12 = iJ & 7;
            if (i12 == 0) {
                this.f82328h = FieldEncoding.VARINT;
                this.f82325e = 0;
                return i11;
            }
            if (i12 == 1) {
                this.f82328h = FieldEncoding.FIXED64;
                this.f82325e = 1;
                return i11;
            }
            if (i12 == 2) {
                i();
                return this.f82326f;
            }
            if (i12 != 3) {
                if (i12 == 4) {
                    throw new ProtocolException("Unexpected end group");
                }
                if (i12 == 5) {
                    this.f82328h = FieldEncoding.FIXED32;
                    this.f82325e = 5;
                    return i11;
                }
                throw new ProtocolException("Unexpected field encoding: " + i12);
            }
            w(i11);
        }
        return -1;
    }

    @Nullable
    public final FieldEncoding n() {
        return this.f82328h;
    }

    @NotNull
    public final ByteString o() throws IOException {
        long jD = d();
        this.f82321a.require(jD);
        return this.f82321a.readByteString(jD);
    }

    public final int p() throws IOException {
        int i10 = this.f82325e;
        if (i10 != 5 && i10 != 2) {
            throw new ProtocolException("Expected FIXED32 or LENGTH_DELIMITED but was " + this.f82325e);
        }
        this.f82321a.require(4L);
        this.f82322b += (long) 4;
        int intLe = this.f82321a.readIntLe();
        c(5);
        return intLe;
    }

    public final long q() throws IOException {
        int i10 = this.f82325e;
        if (i10 != 1 && i10 != 2) {
            throw new ProtocolException("Expected FIXED64 or LENGTH_DELIMITED but was " + this.f82325e);
        }
        this.f82321a.require(8L);
        this.f82322b += (long) 8;
        long longLe = this.f82321a.readLongLe();
        c(1);
        return longLe;
    }

    @NotNull
    public final String r() throws IOException {
        long jD = d();
        this.f82321a.require(jD);
        return this.f82321a.readUtf8(jD);
    }

    public final void s(int i10) {
        FieldEncoding fieldEncodingN = n();
        Intrinsics.checkNotNull(fieldEncodingN);
        b(i10, fieldEncodingN, fieldEncodingN.rawProtoAdapter().c(this));
    }

    public final int t() throws IOException {
        int i10 = this.f82325e;
        if (i10 == 0 || i10 == 2) {
            int iJ = j();
            c(0);
            return iJ;
        }
        throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.f82325e);
    }

    public final long u() throws IOException {
        int i10 = this.f82325e;
        if (i10 != 0 && i10 != 2) {
            throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.f82325e);
        }
        long j10 = 0;
        for (int i11 = 0; i11 < 64; i11 += 7) {
            this.f82321a.require(1L);
            this.f82322b++;
            byte b10 = this.f82321a.readByte();
            j10 |= ((long) (b10 & ByteCompanionObject.MAX_VALUE)) << i11;
            if ((b10 & 128) == 0) {
                c(0);
                return j10;
            }
        }
        throw new ProtocolException("WireInput encountered a malformed varint");
    }

    public final void v() throws IOException {
        int i10 = this.f82325e;
        if (i10 == 0) {
            u();
            return;
        }
        if (i10 == 1) {
            q();
            return;
        }
        if (i10 == 2) {
            this.f82321a.skip(d());
        } else {
            if (i10 != 5) {
                throw new IllegalStateException("Unexpected call to skip()");
            }
            p();
        }
    }
}

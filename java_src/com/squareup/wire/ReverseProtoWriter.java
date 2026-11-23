package com.squareup.wire;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class ReverseProtoWriter {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private static final a f82296h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private static final byte[] f82297i = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private Buffer f82298a = new Buffer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private Buffer f82299b = new Buffer();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final Buffer.UnsafeCursor f82300c = new Buffer.UnsafeCursor();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private byte[] f82301d = f82297i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f82302e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final Lazy f82303f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private final Lazy f82304g;

    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public ReverseProtoWriter() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f82303f = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Buffer>() { // from class: com.squareup.wire.ReverseProtoWriter$forwardBuffer$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Buffer invoke() {
                return new Buffer();
            }
        });
        this.f82304g = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<c0>() { // from class: com.squareup.wire.ReverseProtoWriter$forwardWriter$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final c0 invoke() {
                return new c0(this.f82306b.d());
            }
        });
    }

    private final void b() throws IOException {
        byte[] bArr = this.f82301d;
        byte[] bArr2 = f82297i;
        if (bArr == bArr2) {
            return;
        }
        this.f82300c.close();
        this.f82299b.skip(this.f82302e);
        this.f82299b.writeAll(this.f82298a);
        Buffer buffer = this.f82298a;
        this.f82298a = this.f82299b;
        this.f82299b = buffer;
        this.f82301d = bArr2;
        this.f82302e = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Buffer d() {
        return (Buffer) this.f82303f.getValue();
    }

    private final c0 e() {
        return (c0) this.f82304g.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002a  */
    private final void f(int i10) throws IOException {
        boolean z10;
        if (this.f82302e >= i10) {
            return;
        }
        b();
        this.f82299b.readAndWriteUnsafe(this.f82300c);
        this.f82300c.expandBuffer(i10);
        Buffer.UnsafeCursor unsafeCursor = this.f82300c;
        if (unsafeCursor.offset == 0) {
            int i11 = unsafeCursor.end;
            byte[] bArr = unsafeCursor.data;
            Intrinsics.checkNotNull(bArr);
            if (i11 == bArr.length) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        if (!z10) {
            throw new IllegalStateException("Check failed.".toString());
        }
        byte[] bArr2 = this.f82300c.data;
        Intrinsics.checkNotNull(bArr2);
        this.f82301d = bArr2;
        this.f82302e = this.f82300c.end;
    }

    public final int c() {
        return ((int) this.f82298a.size()) + (this.f82301d.length - this.f82302e);
    }

    public final void g(@NotNull ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int size = value.size();
        while (size != 0) {
            f(1);
            int iMin = Math.min(this.f82302e, size);
            int i10 = this.f82302e - iMin;
            this.f82302e = i10;
            size -= iMin;
            value.copyInto(size, this.f82301d, i10, iMin);
        }
    }

    public final void h(int i10) {
        f(4);
        int i11 = this.f82302e - 4;
        this.f82302e = i11;
        byte[] bArr = this.f82301d;
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i10 & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i10 >>> 8) & 255);
        bArr[i13] = (byte) ((i10 >>> 16) & 255);
        bArr[i13 + 1] = (byte) ((i10 >>> 24) & 255);
    }

    public final void i(long j10) {
        f(8);
        int i10 = this.f82302e - 8;
        this.f82302e = i10;
        byte[] bArr = this.f82301d;
        int i11 = i10 + 1;
        bArr[i10] = (byte) (j10 & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((j10 >>> 8) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((j10 >>> 16) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((j10 >>> 24) & 255);
        int i15 = i14 + 1;
        bArr[i14] = (byte) ((j10 >>> 32) & 255);
        int i16 = i15 + 1;
        bArr[i15] = (byte) ((j10 >>> 40) & 255);
        bArr[i16] = (byte) ((j10 >>> 48) & 255);
        bArr[i16 + 1] = (byte) ((j10 >>> 56) & 255);
    }

    public final void j(@NotNull Function1<? super c0, Unit> block) throws IOException {
        Intrinsics.checkNotNullParameter(block, "block");
        block.invoke(e());
        g(d().readByteString());
    }

    public final void k(int i10) {
        if (i10 >= 0) {
            o(i10);
        } else {
            p(i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00bd  */
    public final void l(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int length = value.length() - 1;
        while (length >= 0) {
            int i10 = length - 1;
            char cCharAt = value.charAt(length);
            if (cCharAt < 128) {
                f(1);
                int i11 = this.f82302e;
                byte[] bArr = this.f82301d;
                int i12 = i11 - 1;
                bArr[i12] = (byte) cCharAt;
                int iMax = Math.max(-1, i10 - i12);
                while (i10 > iMax) {
                    char cCharAt2 = value.charAt(i10);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    i10--;
                    i12--;
                    bArr[i12] = (byte) cCharAt2;
                }
                this.f82302e = i12;
            } else if (cCharAt < 2048) {
                f(2);
                byte[] bArr2 = this.f82301d;
                int i13 = this.f82302e - 1;
                bArr2[i13] = (byte) (128 | (cCharAt & '?'));
                int i14 = i13 - 1;
                this.f82302e = i14;
                bArr2[i14] = (byte) ((cCharAt >> 6) | 192);
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                f(3);
                byte[] bArr3 = this.f82301d;
                int i15 = this.f82302e - 1;
                bArr3[i15] = (byte) ((cCharAt & '?') | 128);
                int i16 = i15 - 1;
                bArr3[i16] = (byte) (128 | (63 & (cCharAt >> 6)));
                int i17 = i16 - 1;
                this.f82302e = i17;
                bArr3[i17] = (byte) ((cCharAt >> '\f') | Opcodes.SHL_INT_LIT8);
            } else {
                char cCharAt3 = i10 >= 0 ? value.charAt(i10) : CharCompanionObject.MAX_VALUE;
                if (cCharAt3 <= 56319) {
                    boolean z10 = false;
                    if (56320 <= cCharAt && cCharAt < 57344) {
                        z10 = true;
                    }
                    if (z10) {
                        i10--;
                        int i18 = ((cCharAt & 1023) | ((cCharAt3 & 1023) << 10)) + 65536;
                        f(4);
                        byte[] bArr4 = this.f82301d;
                        int i19 = this.f82302e - 1;
                        bArr4[i19] = (byte) ((i18 & 63) | 128);
                        int i20 = i19 - 1;
                        bArr4[i20] = (byte) (((i18 >> 6) & 63) | 128);
                        int i21 = i20 - 1;
                        bArr4[i21] = (byte) (128 | (63 & (i18 >> 12)));
                        int i22 = i21 - 1;
                        this.f82302e = i22;
                        bArr4[i22] = (byte) ((i18 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                    } else {
                        f(1);
                        byte[] bArr5 = this.f82301d;
                        int i23 = this.f82302e - 1;
                        this.f82302e = i23;
                        bArr5[i23] = Utf8.REPLACEMENT_BYTE;
                    }
                } else {
                    f(1);
                    byte[] bArr6 = this.f82301d;
                    int i24 = this.f82302e - 1;
                    this.f82302e = i24;
                    bArr6[i24] = Utf8.REPLACEMENT_BYTE;
                }
            }
            length = i10;
        }
    }

    public final void m(int i10, @NotNull FieldEncoding fieldEncoding) {
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        o(c0.f82330b.f(i10, fieldEncoding));
    }

    public final void n(@NotNull BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        b();
        sink.writeAll(this.f82298a);
    }

    public final void o(int i10) {
        int iH = c0.f82330b.h(i10);
        f(iH);
        int i11 = this.f82302e - iH;
        this.f82302e = i11;
        while ((i10 & (-128)) != 0) {
            this.f82301d[i11] = (byte) ((i10 & 127) | 128);
            i10 >>>= 7;
            i11++;
        }
        this.f82301d[i11] = (byte) i10;
    }

    public final void p(long j10) {
        int i10 = c0.f82330b.i(j10);
        f(i10);
        int i11 = this.f82302e - i10;
        this.f82302e = i11;
        while (((-128) & j10) != 0) {
            this.f82301d[i11] = (byte) ((127 & j10) | 128);
            j10 >>>= 7;
            i11++;
        }
        this.f82301d[i11] = (byte) j10;
    }
}

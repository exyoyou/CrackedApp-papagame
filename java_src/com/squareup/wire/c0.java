package com.squareup.wire;

import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class c0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final a f82330b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final BufferedSink f82331a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(int i10) {
            return (-(i10 & 1)) ^ (i10 >>> 1);
        }

        public final long b(long j10) {
            return (-(j10 & 1)) ^ (j10 >>> 1);
        }

        public final int c(int i10) {
            return (i10 >> 31) ^ (i10 << 1);
        }

        public final long d(long j10) {
            return (j10 >> 63) ^ (j10 << 1);
        }

        public final int e(int i10) {
            if (i10 >= 0) {
                return h(i10);
            }
            return 10;
        }

        public final int f(int i10, @NotNull FieldEncoding fieldEncoding) {
            Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
            return (i10 << 3) | fieldEncoding.getValue();
        }

        public final int g(int i10) {
            return h(f(i10, FieldEncoding.VARINT));
        }

        public final int h(int i10) {
            if ((i10 & (-128)) == 0) {
                return 1;
            }
            if ((i10 & (-16384)) == 0) {
                return 2;
            }
            if (((-2097152) & i10) == 0) {
                return 3;
            }
            return (i10 & (-268435456)) == 0 ? 4 : 5;
        }

        public final int i(long j10) {
            if (((-128) & j10) == 0) {
                return 1;
            }
            if (((-16384) & j10) == 0) {
                return 2;
            }
            if (((-2097152) & j10) == 0) {
                return 3;
            }
            if (((-268435456) & j10) == 0) {
                return 4;
            }
            if (((-34359738368L) & j10) == 0) {
                return 5;
            }
            if (((-4398046511104L) & j10) == 0) {
                return 6;
            }
            if (((-562949953421312L) & j10) == 0) {
                return 7;
            }
            if (((-72057594037927936L) & j10) == 0) {
                return 8;
            }
            return (j10 & Long.MIN_VALUE) == 0 ? 9 : 10;
        }

        private a() {
        }
    }

    public c0(@NotNull BufferedSink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.f82331a = sink;
    }

    public final void a(@NotNull ByteString value) throws IOException {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f82331a.write(value);
    }

    public final void b(int i10) throws IOException {
        this.f82331a.writeIntLe(i10);
    }

    public final void c(long j10) throws IOException {
        this.f82331a.writeLongLe(j10);
    }

    public final void d(int i10) throws IOException {
        if (i10 >= 0) {
            g(i10);
        } else {
            h(i10);
        }
    }

    public final void e(@NotNull String value) throws IOException {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f82331a.writeUtf8(value);
    }

    public final void f(int i10, @NotNull FieldEncoding fieldEncoding) throws IOException {
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        g(f82330b.f(i10, fieldEncoding));
    }

    public final void g(int i10) throws IOException {
        while ((i10 & (-128)) != 0) {
            this.f82331a.writeByte((i10 & 127) | 128);
            i10 >>>= 7;
        }
        this.f82331a.writeByte(i10);
    }

    public final void h(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            this.f82331a.writeByte((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        this.f82331a.writeByte((int) j10);
    }
}

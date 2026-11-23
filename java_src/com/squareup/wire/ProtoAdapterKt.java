package com.squareup.wire;

import com.alibaba.fastjson.parser.deserializer.o0;
import com.alibaba.fastjson.parser.deserializer.q0;
import java.io.IOException;
import java.time.Duration;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class ProtoAdapterKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f82292a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f82293b = 4;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f82294c = 8;

    public static final class a extends ProtoAdapter<Boolean> {
        a(FieldEncoding fieldEncoding, KClass<Boolean> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, (String) null, syntax, Boolean.FALSE);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Boolean J(Boolean bool) {
            return R(bool.booleanValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Boolean c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Boolean.valueOf(reader.t() != 0);
        }

        public void O(@NotNull c0 writer, boolean z10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.g(z10 ? 1 : 0);
        }

        public void P(@NotNull ReverseProtoWriter writer, boolean z10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.o(z10 ? 1 : 0);
        }

        public int Q(boolean z10) {
            return 1;
        }

        @NotNull
        public Boolean R(boolean z10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(c0 c0Var, Boolean bool) throws IOException {
            O(c0Var, bool.booleanValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Boolean bool) throws IOException {
            P(reverseProtoWriter, bool.booleanValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int p(Boolean bool) {
            return Q(bool.booleanValue());
        }
    }

    public static final class b extends ProtoAdapter<ByteString> {
        b(FieldEncoding fieldEncoding, KClass<ByteString> kClass, Syntax syntax, ByteString byteString) {
            super(fieldEncoding, kClass, (String) null, syntax, byteString);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public ByteString c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return reader.o();
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
        public void h(@NotNull c0 writer, @NotNull ByteString value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.a(value);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
        public void i(@NotNull ReverseProtoWriter writer, @NotNull ByteString value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.g(value);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public int p(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value.size();
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public ByteString J(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException();
        }
    }

    @SourceDebugExtension({"SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonDuration$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 Duration.kt\ncom/squareup/wire/DurationKt\n*L\n1#1,1632:1\n463#2,7:1633\n22#3:1640\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonDuration$1\n*L\n1231#1:1633,7\n1238#1:1640\n*E\n"})
    public static final class c extends ProtoAdapter<Duration> {
        c(FieldEncoding fieldEncoding, KClass<Duration> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, "type.googleapis.com/google.protobuf.Duration", syntax);
        }

        private final int R(Duration duration) {
            return (duration.getSeconds() >= 0 || duration.getNano() == 0) ? duration.getNano() : duration.getNano() - 1000000000;
        }

        private final long S(Duration duration) {
            return (duration.getSeconds() >= 0 || duration.getNano() == 0) ? duration.getSeconds() : duration.getSeconds() + 1;
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Duration J(Duration duration) {
            return T(v.a(duration));
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Duration c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            long jF = reader.f();
            long jLongValue = 0;
            int iIntValue = 0;
            while (true) {
                int iM = reader.m();
                if (iM == -1) {
                    reader.h(jF);
                    Duration durationOfSeconds = Duration.ofSeconds(jLongValue, iIntValue);
                    Intrinsics.checkNotNullExpressionValue(durationOfSeconds, "ofSeconds(...)");
                    return durationOfSeconds;
                }
                if (iM == 1) {
                    jLongValue = ProtoAdapter.f82278u.c(reader).longValue();
                } else if (iM != 2) {
                    reader.s(iM);
                } else {
                    iIntValue = ProtoAdapter.f82268k.c(reader).intValue();
                }
            }
        }

        public void O(@NotNull c0 writer, @NotNull Duration value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            long jS = S(value);
            if (jS != 0) {
                ProtoAdapter.f82278u.n(writer, 1, Long.valueOf(jS));
            }
            int iR = R(value);
            if (iR != 0) {
                ProtoAdapter.f82268k.n(writer, 2, Integer.valueOf(iR));
            }
        }

        public void P(@NotNull ReverseProtoWriter writer, @NotNull Duration value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            int iR = R(value);
            if (iR != 0) {
                ProtoAdapter.f82268k.o(writer, 2, Integer.valueOf(iR));
            }
            long jS = S(value);
            if (jS != 0) {
                ProtoAdapter.f82278u.o(writer, 1, Long.valueOf(jS));
            }
        }

        public int Q(@NotNull Duration value) {
            Intrinsics.checkNotNullParameter(value, "value");
            long jS = S(value);
            int iQ = jS != 0 ? 0 + ProtoAdapter.f82278u.q(1, Long.valueOf(jS)) : 0;
            int iR = R(value);
            return iR != 0 ? iQ + ProtoAdapter.f82268k.q(2, Integer.valueOf(iR)) : iQ;
        }

        @NotNull
        public Duration T(@NotNull Duration value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value;
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(c0 c0Var, Duration duration) throws IOException {
            O(c0Var, v.a(duration));
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Duration duration) throws IOException {
            P(reverseProtoWriter, v.a(duration));
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int p(Duration duration) {
            return Q(v.a(duration));
        }
    }

    @SourceDebugExtension({"SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonEmpty$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,1632:1\n463#2,7:1633\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonEmpty$1\n*L\n1326#1:1633,7\n*E\n"})
    public static final class d extends ProtoAdapter<Unit> {
        d(FieldEncoding fieldEncoding, KClass<Unit> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, "type.googleapis.com/google.protobuf.Empty", syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Unit J(Unit unit) {
            R(unit);
            return Unit.INSTANCE;
        }

        public void N(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            long jF = reader.f();
            while (true) {
                int iM = reader.m();
                if (iM == -1) {
                    reader.h(jF);
                    return;
                }
                reader.s(iM);
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
        public void h(@NotNull c0 writer, @NotNull Unit value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
        public void i(@NotNull ReverseProtoWriter writer, @NotNull Unit value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public int p(@NotNull Unit value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return 0;
        }

        public void R(@NotNull Unit value) {
            Intrinsics.checkNotNullParameter(value, "value");
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Unit c(b0 b0Var) throws IOException {
            N(b0Var);
            return Unit.INSTANCE;
        }
    }

    public static final class e extends ProtoAdapter<Integer> {
        e(FieldEncoding fieldEncoding, KClass<Integer> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, (String) null, syntax, 0);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Integer J(Integer num) {
            return R(num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Integer c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Integer.valueOf(reader.p());
        }

        public void O(@NotNull c0 writer, int i10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.b(i10);
        }

        public void P(@NotNull ReverseProtoWriter writer, int i10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.h(i10);
        }

        public int Q(int i10) {
            return 4;
        }

        @NotNull
        public Integer R(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(c0 c0Var, Integer num) throws IOException {
            O(c0Var, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Integer num) throws IOException {
            P(reverseProtoWriter, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int p(Integer num) {
            return Q(num.intValue());
        }
    }

    public static final class f extends ProtoAdapter<Long> {
        f(FieldEncoding fieldEncoding, KClass<Long> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, (String) null, syntax, 0L);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Long J(Long l10) {
            return R(l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Long c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Long.valueOf(reader.q());
        }

        public void O(@NotNull c0 writer, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.c(j10);
        }

        public void P(@NotNull ReverseProtoWriter writer, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.i(j10);
        }

        public int Q(long j10) {
            return 8;
        }

        @NotNull
        public Long R(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(c0 c0Var, Long l10) throws IOException {
            O(c0Var, l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Long l10) throws IOException {
            P(reverseProtoWriter, l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int p(Long l10) {
            return Q(l10.longValue());
        }
    }

    @SourceDebugExtension({"SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonInstant$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 Instant.kt\ncom/squareup/wire/InstantKt\n*L\n1#1,1632:1\n463#2,7:1633\n22#3:1640\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonInstant$1\n*L\n1300#1:1633,7\n1307#1:1640\n*E\n"})
    public static final class g extends ProtoAdapter<Instant> {
        g(FieldEncoding fieldEncoding, KClass<Instant> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, "type.googleapis.com/google.protobuf.Timestamp", syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Instant J(Instant instant) {
            return R(a0.a(instant));
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Instant c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            long jF = reader.f();
            long jLongValue = 0;
            int iIntValue = 0;
            while (true) {
                int iM = reader.m();
                if (iM == -1) {
                    reader.h(jF);
                    Instant instantOfEpochSecond = Instant.ofEpochSecond(jLongValue, iIntValue);
                    Intrinsics.checkNotNullExpressionValue(instantOfEpochSecond, "ofEpochSecond(...)");
                    return instantOfEpochSecond;
                }
                if (iM == 1) {
                    jLongValue = ProtoAdapter.f82278u.c(reader).longValue();
                } else if (iM != 2) {
                    reader.s(iM);
                } else {
                    iIntValue = ProtoAdapter.f82268k.c(reader).intValue();
                }
            }
        }

        public void O(@NotNull c0 writer, @NotNull Instant value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            long epochSecond = value.getEpochSecond();
            if (epochSecond != 0) {
                ProtoAdapter.f82278u.n(writer, 1, Long.valueOf(epochSecond));
            }
            int nano = value.getNano();
            if (nano != 0) {
                ProtoAdapter.f82268k.n(writer, 2, Integer.valueOf(nano));
            }
        }

        public void P(@NotNull ReverseProtoWriter writer, @NotNull Instant value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            int nano = value.getNano();
            if (nano != 0) {
                ProtoAdapter.f82268k.o(writer, 2, Integer.valueOf(nano));
            }
            long epochSecond = value.getEpochSecond();
            if (epochSecond != 0) {
                ProtoAdapter.f82278u.o(writer, 1, Long.valueOf(epochSecond));
            }
        }

        public int Q(@NotNull Instant value) {
            Intrinsics.checkNotNullParameter(value, "value");
            long epochSecond = value.getEpochSecond();
            int iQ = epochSecond != 0 ? 0 + ProtoAdapter.f82278u.q(1, Long.valueOf(epochSecond)) : 0;
            int nano = value.getNano();
            return nano != 0 ? iQ + ProtoAdapter.f82268k.q(2, Integer.valueOf(nano)) : iQ;
        }

        @NotNull
        public Instant R(@NotNull Instant value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value;
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(c0 c0Var, Instant instant) throws IOException {
            O(c0Var, a0.a(instant));
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Instant instant) throws IOException {
            P(reverseProtoWriter, a0.a(instant));
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int p(Instant instant) {
            return Q(a0.a(instant));
        }
    }

    public static final class h extends ProtoAdapter<Integer> {
        h(FieldEncoding fieldEncoding, KClass<Integer> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, (String) null, syntax, 0);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Integer J(Integer num) {
            return R(num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Integer c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Integer.valueOf(reader.t());
        }

        public void O(@NotNull c0 writer, int i10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.d(i10);
        }

        public void P(@NotNull ReverseProtoWriter writer, int i10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.k(i10);
        }

        public int Q(int i10) {
            return c0.f82330b.e(i10);
        }

        @NotNull
        public Integer R(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(c0 c0Var, Integer num) throws IOException {
            O(c0Var, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Integer num) throws IOException {
            P(reverseProtoWriter, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int p(Integer num) {
            return Q(num.intValue());
        }
    }

    public static final class i extends ProtoAdapter<Long> {
        i(FieldEncoding fieldEncoding, KClass<Long> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, (String) null, syntax, 0L);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Long J(Long l10) {
            return R(l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Long c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Long.valueOf(reader.u());
        }

        public void O(@NotNull c0 writer, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.h(j10);
        }

        public void P(@NotNull ReverseProtoWriter writer, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.p(j10);
        }

        public int Q(long j10) {
            return c0.f82330b.i(j10);
        }

        @NotNull
        public Long R(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(c0 c0Var, Long l10) throws IOException {
            O(c0Var, l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Long l10) throws IOException {
            P(reverseProtoWriter, l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int p(Long l10) {
            return Q(l10.longValue());
        }
    }

    public static final class j extends ProtoAdapter<Integer> {
        j(FieldEncoding fieldEncoding, KClass<Integer> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, (String) null, syntax, 0);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Integer J(Integer num) {
            return R(num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Integer c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Integer.valueOf(c0.f82330b.a(reader.t()));
        }

        public void O(@NotNull c0 writer, int i10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.g(c0.f82330b.c(i10));
        }

        public void P(@NotNull ReverseProtoWriter writer, int i10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.o(c0.f82330b.c(i10));
        }

        public int Q(int i10) {
            c0.a aVar = c0.f82330b;
            return aVar.h(aVar.c(i10));
        }

        @NotNull
        public Integer R(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(c0 c0Var, Integer num) throws IOException {
            O(c0Var, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Integer num) throws IOException {
            P(reverseProtoWriter, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int p(Integer num) {
            return Q(num.intValue());
        }
    }

    public static final class k extends ProtoAdapter<Long> {
        k(FieldEncoding fieldEncoding, KClass<Long> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, (String) null, syntax, 0L);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Long J(Long l10) {
            return R(l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Long c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Long.valueOf(c0.f82330b.b(reader.u()));
        }

        public void O(@NotNull c0 writer, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.h(c0.f82330b.d(j10));
        }

        public void P(@NotNull ReverseProtoWriter writer, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.p(c0.f82330b.d(j10));
        }

        public int Q(long j10) {
            c0.a aVar = c0.f82330b;
            return aVar.i(aVar.d(j10));
        }

        @NotNull
        public Long R(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(c0 c0Var, Long l10) throws IOException {
            O(c0Var, l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Long l10) throws IOException {
            P(reverseProtoWriter, l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int p(Long l10) {
            return Q(l10.longValue());
        }
    }

    public static final class l extends ProtoAdapter<String> {
        l(FieldEncoding fieldEncoding, KClass<String> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, (String) null, syntax, "");
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public String c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return reader.r();
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
        public void h(@NotNull c0 writer, @NotNull String value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.e(value);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
        public void i(@NotNull ReverseProtoWriter writer, @NotNull String value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.l(value);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public int p(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return (int) Utf8.size$default(value, 0, 0, 3, null);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public String J(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException();
        }
    }

    @SourceDebugExtension({"SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructList$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1632:1\n463#2,7:1633\n1549#3:1640\n1620#3,3:1641\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructList$1\n*L\n1430#1:1633,7\n1437#1:1640\n1437#1:1641,3\n*E\n"})
    public static final class m extends ProtoAdapter<List<?>> {
        m(FieldEncoding fieldEncoding, KClass<Map<?, ?>> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, "type.googleapis.com/google.protobuf.ListValue", syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public List<?> c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            ArrayList arrayList = new ArrayList();
            long jF = reader.f();
            while (true) {
                int iM = reader.m();
                if (iM == -1) {
                    reader.h(jF);
                    return arrayList;
                }
                if (iM != 1) {
                    reader.v();
                } else {
                    arrayList.add(ProtoAdapter.O.c(reader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
        public void h(@NotNull c0 writer, @Nullable List<?> list) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (list == null) {
                return;
            }
            Iterator<?> it2 = list.iterator();
            while (it2.hasNext()) {
                ProtoAdapter.O.n(writer, 1, it2.next());
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
        public void i(@NotNull ReverseProtoWriter writer, @Nullable List<?> list) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; -1 < size; size--) {
                ProtoAdapter.O.o(writer, 1, list.get(size));
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public int p(@Nullable List<?> list) {
            int iQ = 0;
            if (list == null) {
                return 0;
            }
            Iterator<?> it2 = list.iterator();
            while (it2.hasNext()) {
                iQ += ProtoAdapter.O.q(1, it2.next());
            }
            return iQ;
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public List<Object> J(@Nullable List<?> list) {
            if (list == null) {
                return null;
            }
            List<?> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(ProtoAdapter.O.J(it2.next()));
            }
            return arrayList;
        }
    }

    @SourceDebugExtension({"SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructMap$1\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1632:1\n37#2,2:1633\n1#3:1635\n463#4,5:1636\n463#4,7:1641\n469#4:1648\n453#5:1649\n403#5:1650\n1238#6,4:1651\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructMap$1\n*L\n1367#1:1633,2\n1378#1:1636,5\n1383#1:1641,7\n1378#1:1648\n1395#1:1649\n1395#1:1650\n1395#1:1651,4\n*E\n"})
    public static final class n extends ProtoAdapter<Map<String, ?>> {
        n(FieldEncoding fieldEncoding, KClass<Map<?, ?>> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, "type.googleapis.com/google.protobuf.Struct", syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Map<String, ?> c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            long jF = reader.f();
            while (true) {
                int iM = reader.m();
                if (iM == -1) {
                    reader.h(jF);
                    return linkedHashMap;
                }
                if (iM != 1) {
                    reader.v();
                } else {
                    long jF2 = reader.f();
                    String strC = null;
                    Object objC = null;
                    while (true) {
                        int iM2 = reader.m();
                        if (iM2 == -1) {
                            break;
                        }
                        if (iM2 == 1) {
                            strC = ProtoAdapter.J.c(reader);
                        } else if (iM2 != 2) {
                            reader.s(iM2);
                        } else {
                            objC = ProtoAdapter.O.c(reader);
                        }
                    }
                    reader.h(jF2);
                    if (strC != null) {
                        linkedHashMap.put(strC, objC);
                    }
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
        public void h(@NotNull c0 writer, @Nullable Map<String, ?> map) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (map == null) {
                return;
            }
            for (Map.Entry<String, ?> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                ProtoAdapter<String> protoAdapter = ProtoAdapter.J;
                int iQ = protoAdapter.q(1, key);
                ProtoAdapter<Object> protoAdapter2 = ProtoAdapter.O;
                int iQ2 = iQ + protoAdapter2.q(2, value);
                writer.f(1, FieldEncoding.LENGTH_DELIMITED);
                writer.g(iQ2);
                protoAdapter.n(writer, 1, key);
                protoAdapter2.n(writer, 2, value);
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
        public void i(@NotNull ReverseProtoWriter writer, @Nullable Map<String, ?> map) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (map == null) {
                return;
            }
            Map.Entry[] entryArr = (Map.Entry[]) map.entrySet().toArray(new Map.Entry[0]);
            ArraysKt___ArraysKt.reverse(entryArr);
            for (Map.Entry entry : entryArr) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                int iC = writer.c();
                ProtoAdapter.O.o(writer, 2, value);
                ProtoAdapter.J.o(writer, 1, str);
                writer.o(writer.c() - iC);
                writer.m(1, FieldEncoding.LENGTH_DELIMITED);
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public int p(@Nullable Map<String, ?> map) {
            int iG = 0;
            if (map == null) {
                return 0;
            }
            for (Map.Entry<String, ?> entry : map.entrySet()) {
                int iQ = ProtoAdapter.J.q(1, entry.getKey()) + ProtoAdapter.O.q(2, entry.getValue());
                c0.a aVar = c0.f82330b;
                iG += aVar.g(1) + aVar.h(iQ) + iQ;
            }
            return iG;
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public Map<String, Object> J(@Nullable Map<String, ?> map) {
            if (map == null) {
                return null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsJVMKt.mapCapacity(map.size()));
            Iterator<T> it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                linkedHashMap.put(entry.getKey(), ProtoAdapter.O.J(entry));
            }
            return linkedHashMap;
        }
    }

    public static final class o extends ProtoAdapter {
        o(FieldEncoding fieldEncoding, KClass kClass, Syntax syntax) {
            super(fieldEncoding, (KClass<?>) kClass, "type.googleapis.com/google.protobuf.NullValue", syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Void c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            int iT = reader.t();
            if (iT == 0) {
                return null;
            }
            throw new IOException("expected 0 but was " + iT);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
        public void h(@NotNull c0 writer, @Nullable Void r10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.g(0);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
        public void i(@NotNull ReverseProtoWriter writer, @Nullable Void r10) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.o(0);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public void n(@NotNull c0 writer, int i10, @Nullable Void r10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.f(i10, v());
            h(writer, r10);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public void o(@NotNull ReverseProtoWriter writer, int i10, @Nullable Void r10) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            i(writer, r10);
            writer.m(i10, v());
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
        public int p(@Nullable Void r10) {
            return c0.f82330b.h(0);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
        public int q(int i10, @Nullable Void r10) {
            int iP = p(r10);
            c0.a aVar = c0.f82330b;
            return aVar.g(i10) + aVar.h(iP);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
        public Void J(@Nullable Void r10) {
            return null;
        }
    }

    @SourceDebugExtension({"SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructValue$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,1632:1\n463#2,7:1633\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructValue$1\n*L\n1557#1:1633,7\n*E\n"})
    public static final class p extends ProtoAdapter<Object> {
        p(FieldEncoding fieldEncoding, KClass<Object> kClass, Syntax syntax) {
            super(fieldEncoding, (KClass<?>) kClass, "type.googleapis.com/google.protobuf.Value", syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        public Object J(@Nullable Object obj) {
            if (obj == null) {
                return ProtoAdapter.N.J(obj);
            }
            if (obj instanceof Number) {
                return obj;
            }
            if (obj instanceof String) {
                return null;
            }
            if (obj instanceof Boolean) {
                return obj;
            }
            if (obj instanceof Map) {
                ProtoAdapter<Map<String, ?>> protoAdapter = ProtoAdapter.L;
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, *>");
                return protoAdapter.J((Map) obj);
            }
            if (obj instanceof List) {
                return ProtoAdapter.M.J(obj);
            }
            throw new IllegalArgumentException("unexpected struct value: " + obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        public Object c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            long jF = reader.f();
            Object objC = null;
            while (true) {
                int iM = reader.m();
                if (iM == -1) {
                    reader.h(jF);
                    return objC;
                }
                switch (iM) {
                    case 1:
                        objC = ProtoAdapter.N.c(reader);
                        break;
                    case 2:
                        objC = ProtoAdapter.G.c(reader);
                        break;
                    case 3:
                        objC = ProtoAdapter.J.c(reader);
                        break;
                    case 4:
                        objC = ProtoAdapter.f82267j.c(reader);
                        break;
                    case 5:
                        objC = ProtoAdapter.L.c(reader);
                        break;
                    case 6:
                        objC = ProtoAdapter.M.c(reader);
                        break;
                    default:
                        reader.v();
                        break;
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void h(@NotNull c0 writer, @Nullable Object obj) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (obj == null) {
                ProtoAdapter.N.n(writer, 1, obj);
                return;
            }
            if (obj instanceof Number) {
                ProtoAdapter.G.n(writer, 2, Double.valueOf(((Number) obj).doubleValue()));
                return;
            }
            if (obj instanceof String) {
                ProtoAdapter.J.n(writer, 3, obj);
                return;
            }
            if (obj instanceof Boolean) {
                ProtoAdapter.f82267j.n(writer, 4, obj);
                return;
            }
            if (obj instanceof Map) {
                ProtoAdapter<Map<String, ?>> protoAdapter = ProtoAdapter.L;
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, *>");
                protoAdapter.n(writer, 5, (Map) obj);
            } else {
                if (obj instanceof List) {
                    ProtoAdapter.M.n(writer, 6, obj);
                    return;
                }
                throw new IllegalArgumentException("unexpected struct value: " + obj);
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void i(@NotNull ReverseProtoWriter writer, @Nullable Object obj) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (obj == null) {
                ProtoAdapter.N.o(writer, 1, obj);
                return;
            }
            if (obj instanceof Number) {
                ProtoAdapter.G.o(writer, 2, Double.valueOf(((Number) obj).doubleValue()));
                return;
            }
            if (obj instanceof String) {
                ProtoAdapter.J.o(writer, 3, obj);
                return;
            }
            if (obj instanceof Boolean) {
                ProtoAdapter.f82267j.o(writer, 4, obj);
                return;
            }
            if (obj instanceof Map) {
                ProtoAdapter<Map<String, ?>> protoAdapter = ProtoAdapter.L;
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, *>");
                protoAdapter.o(writer, 5, (Map) obj);
            } else {
                if (obj instanceof List) {
                    ProtoAdapter.M.o(writer, 6, obj);
                    return;
                }
                throw new IllegalArgumentException("unexpected struct value: " + obj);
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void n(@NotNull c0 writer, int i10, @Nullable Object obj) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (obj != null) {
                super.n(writer, i10, obj);
                return;
            }
            writer.f(i10, v());
            writer.g(p(obj));
            h(writer, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void o(@NotNull ReverseProtoWriter writer, int i10, @Nullable Object obj) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (obj != null) {
                super.o(writer, i10, obj);
                return;
            }
            int iC = writer.c();
            i(writer, obj);
            writer.o(writer.c() - iC);
            writer.m(i10, v());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public int p(@Nullable Object obj) {
            if (obj == null) {
                return ProtoAdapter.N.q(1, obj);
            }
            if (obj instanceof Number) {
                return ProtoAdapter.G.q(2, Double.valueOf(((Number) obj).doubleValue()));
            }
            if (obj instanceof String) {
                return ProtoAdapter.J.q(3, obj);
            }
            if (obj instanceof Boolean) {
                return ProtoAdapter.f82267j.q(4, obj);
            }
            if (obj instanceof Map) {
                ProtoAdapter<Map<String, ?>> protoAdapter = ProtoAdapter.L;
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, *>");
                return protoAdapter.q(5, (Map) obj);
            }
            if (obj instanceof List) {
                return ProtoAdapter.M.q(6, obj);
            }
            throw new IllegalArgumentException("unexpected struct value: " + obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public int q(int i10, @Nullable Object obj) {
            if (obj != null) {
                return super.q(i10, obj);
            }
            int iP = p(obj);
            c0.a aVar = c0.f82330b;
            return aVar.g(i10) + aVar.h(iP) + iP;
        }
    }

    public static final class q extends ProtoAdapter<Integer> {
        q(FieldEncoding fieldEncoding, KClass<Integer> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, (String) null, syntax, 0);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Integer J(Integer num) {
            return R(num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Integer c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Integer.valueOf(reader.t());
        }

        public void O(@NotNull c0 writer, int i10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.g(i10);
        }

        public void P(@NotNull ReverseProtoWriter writer, int i10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.o(i10);
        }

        public int Q(int i10) {
            return c0.f82330b.h(i10);
        }

        @NotNull
        public Integer R(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(c0 c0Var, Integer num) throws IOException {
            O(c0Var, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Integer num) throws IOException {
            P(reverseProtoWriter, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int p(Integer num) {
            return Q(num.intValue());
        }
    }

    public static final class r extends ProtoAdapter<Long> {
        r(FieldEncoding fieldEncoding, KClass<Long> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, (String) null, syntax, 0L);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Long J(Long l10) {
            return R(l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public Long c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Long.valueOf(reader.u());
        }

        public void O(@NotNull c0 writer, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.h(j10);
        }

        public void P(@NotNull ReverseProtoWriter writer, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.p(j10);
        }

        public int Q(long j10) {
            return c0.f82330b.i(j10);
        }

        @NotNull
        public Long R(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(c0 c0Var, Long l10) throws IOException {
            O(c0Var, l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void i(ReverseProtoWriter reverseProtoWriter, Long l10) throws IOException {
            P(reverseProtoWriter, l10.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int p(Long l10) {
            return Q(l10.longValue());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @SourceDebugExtension({"SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonWrapper$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,1632:1\n463#2,7:1633\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonWrapper$1\n*L\n1617#1:1633,7\n*E\n"})
    public static final class s<T> extends ProtoAdapter<T> {

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        final /* synthetic */ ProtoAdapter<T> f82295a0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        s(String str, ProtoAdapter<T> protoAdapter, FieldEncoding fieldEncoding, KClass<?> kClass, Syntax syntax, T t10) {
            super(fieldEncoding, kClass, str, syntax, t10);
            this.f82295a0 = protoAdapter;
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        public T J(@Nullable T t10) {
            if (t10 == null) {
                return null;
            }
            return this.f82295a0.J(t10);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        public T c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            T tW = this.f82295a0.w();
            ProtoAdapter<T> protoAdapter = this.f82295a0;
            long jF = reader.f();
            while (true) {
                int iM = reader.m();
                if (iM == -1) {
                    reader.h(jF);
                    return tW;
                }
                if (iM == 1) {
                    tW = protoAdapter.c(reader);
                } else {
                    reader.s(iM);
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void h(@NotNull c0 writer, @Nullable T t10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (t10 == null || Intrinsics.areEqual(t10, this.f82295a0.w())) {
                return;
            }
            this.f82295a0.n(writer, 1, t10);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void i(@NotNull ReverseProtoWriter writer, @Nullable T t10) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (t10 == null || Intrinsics.areEqual(t10, this.f82295a0.w())) {
                return;
            }
            this.f82295a0.o(writer, 1, t10);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public int p(@Nullable T t10) {
            if (t10 == null || Intrinsics.areEqual(t10, this.f82295a0.w())) {
                return 0;
            }
            return this.f82295a0.q(1, t10);
        }
    }

    @NotNull
    public static final ProtoAdapter<Long> A() {
        return new k(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Long.TYPE), Syntax.PROTO_2);
    }

    @NotNull
    public static final ProtoAdapter<String> B() {
        return new l(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(String.class), Syntax.PROTO_2);
    }

    @NotNull
    public static final ProtoAdapter<List<?>> C() {
        return new m(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Map.class), Syntax.PROTO_3);
    }

    @NotNull
    public static final ProtoAdapter<Map<String, ?>> D() {
        return new n(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Map.class), Syntax.PROTO_3);
    }

    @NotNull
    public static final ProtoAdapter E() {
        return new o(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Void.class), Syntax.PROTO_3);
    }

    @NotNull
    public static final ProtoAdapter<Object> F() {
        return new p(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Object.class), Syntax.PROTO_3);
    }

    @NotNull
    public static final <E> String G(E e10) {
        return String.valueOf(e10);
    }

    public static final <E> void H(@NotNull ProtoAdapter<E> protoAdapter, @NotNull b0 reader, @NotNull List<E> destination) {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (reader.e()) {
            destination.add(protoAdapter.c(reader));
        }
    }

    @NotNull
    public static final ProtoAdapter<Integer> I() {
        return new q(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Integer.TYPE), Syntax.PROTO_2);
    }

    @NotNull
    public static final ProtoAdapter<Long> J() {
        return new r(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Long.TYPE), Syntax.PROTO_2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> ProtoAdapter<?> K(@NotNull ProtoAdapter<E> protoAdapter, @NotNull WireField.Label label) {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        Intrinsics.checkNotNullParameter(label, "label");
        if (label.isRepeated()) {
            return label.isPacked() ? protoAdapter.a() : protoAdapter.b();
        }
        return protoAdapter;
    }

    @NotNull
    public static final <T> ProtoAdapter<T> L(@NotNull ProtoAdapter<T> delegate, @NotNull String typeUrl) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(typeUrl, "typeUrl");
        return new s(typeUrl, delegate, FieldEncoding.LENGTH_DELIMITED, delegate.getType(), Syntax.PROTO_3, delegate.w());
    }

    public static final <E> void M(@NotNull ProtoAdapter<E> protoAdapter, @NotNull ReverseProtoWriter writer, E e10) throws IOException {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        Intrinsics.checkNotNullParameter(writer, "writer");
        writer.j(new ProtoAdapterKt$delegateEncode$1(protoAdapter, e10));
    }

    @NotNull
    public static final ProtoAdapter<Boolean> a() {
        return new a(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Boolean.TYPE), Syntax.PROTO_2);
    }

    @NotNull
    public static final ProtoAdapter<ByteString> b() {
        return new b(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(ByteString.class), Syntax.PROTO_2, ByteString.EMPTY);
    }

    @NotNull
    public static final <E> ProtoAdapter<List<E>> c(@NotNull ProtoAdapter<E> protoAdapter) {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        if (protoAdapter.v() != FieldEncoding.LENGTH_DELIMITED) {
            return new u(protoAdapter);
        }
        throw new IllegalArgumentException("Unable to pack a length-delimited type.".toString());
    }

    @NotNull
    public static final <E> ProtoAdapter<List<E>> d(@NotNull ProtoAdapter<E> protoAdapter) {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        return new d0(protoAdapter);
    }

    public static final <E> E e(@NotNull ProtoAdapter<E> protoAdapter, @NotNull BufferedSource source) {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        return protoAdapter.c(new b0(source));
    }

    public static final <E> E f(@NotNull ProtoAdapter<E> protoAdapter, @NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return protoAdapter.e(new Buffer().write(bytes));
    }

    public static final <E> E g(@NotNull ProtoAdapter<E> protoAdapter, @NotNull byte[] bytes) {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return protoAdapter.e(new Buffer().write(bytes));
    }

    @NotNull
    public static final com.squareup.wire.c h() {
        return new com.squareup.wire.c();
    }

    @NotNull
    public static final ProtoAdapter<Duration> i() {
        return new c(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(o0.a()), Syntax.PROTO_3);
    }

    @NotNull
    public static final ProtoAdapter<Unit> j() {
        return new d(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Unit.class), Syntax.PROTO_3);
    }

    public static final <E> void k(@NotNull ProtoAdapter<E> protoAdapter, @NotNull BufferedSink sink, E e10) throws IOException {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        ReverseProtoWriter reverseProtoWriter = new ReverseProtoWriter();
        protoAdapter.i(reverseProtoWriter, e10);
        reverseProtoWriter.n(sink);
    }

    @NotNull
    public static final <E> byte[] l(@NotNull ProtoAdapter<E> protoAdapter, E e10) throws IOException {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        Buffer buffer = new Buffer();
        protoAdapter.k(buffer, e10);
        return buffer.readByteArray();
    }

    @NotNull
    public static final <E> ByteString m(@NotNull ProtoAdapter<E> protoAdapter, E e10) throws IOException {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        Buffer buffer = new Buffer();
        protoAdapter.k(buffer, e10);
        return buffer.readByteString();
    }

    public static final <E> void n(@NotNull ProtoAdapter<E> protoAdapter, @NotNull c0 writer, int i10, @Nullable E e10) throws IOException {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (e10 == null) {
            return;
        }
        writer.f(i10, protoAdapter.v());
        if (protoAdapter.v() == FieldEncoding.LENGTH_DELIMITED) {
            writer.g(protoAdapter.p(e10));
        }
        protoAdapter.h(writer, e10);
    }

    public static final <E> void o(@NotNull ProtoAdapter<E> protoAdapter, @NotNull ReverseProtoWriter writer, int i10, @Nullable E e10) throws IOException {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (e10 == null) {
            return;
        }
        if (protoAdapter.v() == FieldEncoding.LENGTH_DELIMITED) {
            int iC = writer.c();
            protoAdapter.i(writer, e10);
            writer.o(writer.c() - iC);
        } else {
            protoAdapter.i(writer, e10);
        }
        writer.m(i10, protoAdapter.v());
    }

    public static final <E> int p(@NotNull ProtoAdapter<E> protoAdapter, int i10, @Nullable E e10) {
        Intrinsics.checkNotNullParameter(protoAdapter, "<this>");
        if (e10 == null) {
            return 0;
        }
        int iP = protoAdapter.p(e10);
        if (protoAdapter.v() == FieldEncoding.LENGTH_DELIMITED) {
            iP += c0.f82330b.h(iP);
        }
        return iP + c0.f82330b.g(i10);
    }

    @NotNull
    public static final ProtoAdapter<Integer> q() {
        return new e(FieldEncoding.FIXED32, Reflection.getOrCreateKotlinClass(Integer.TYPE), Syntax.PROTO_2);
    }

    @NotNull
    public static final ProtoAdapter<Long> r() {
        return new f(FieldEncoding.FIXED64, Reflection.getOrCreateKotlinClass(Long.TYPE), Syntax.PROTO_2);
    }

    @NotNull
    public static final com.squareup.wire.i s() {
        return new com.squareup.wire.i();
    }

    @NotNull
    public static final ProtoAdapter<Instant> t() {
        return new g(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(q0.a()), Syntax.PROTO_3);
    }

    @NotNull
    public static final ProtoAdapter<Integer> u() {
        return new h(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Integer.TYPE), Syntax.PROTO_2);
    }

    @NotNull
    public static final ProtoAdapter<Long> v() {
        return new i(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Long.TYPE), Syntax.PROTO_2);
    }

    @NotNull
    public static final <K, V> ProtoAdapter<Map<K, V>> w(@NotNull ProtoAdapter<K> keyAdapter, @NotNull ProtoAdapter<V> valueAdapter) {
        Intrinsics.checkNotNullParameter(keyAdapter, "keyAdapter");
        Intrinsics.checkNotNullParameter(valueAdapter, "valueAdapter");
        return new com.squareup.wire.q(keyAdapter, valueAdapter);
    }

    @NotNull
    public static final ProtoAdapter<Integer> x() {
        return q();
    }

    @NotNull
    public static final ProtoAdapter<Long> y() {
        return r();
    }

    @NotNull
    public static final ProtoAdapter<Integer> z() {
        return new j(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Integer.TYPE), Syntax.PROTO_2);
    }
}

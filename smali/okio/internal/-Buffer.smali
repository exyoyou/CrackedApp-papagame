.class public final Lokio/internal/-Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1730:1\n112#1,20:1753\n112#1,20:1786\n112#1:1806\n114#1,18:1808\n112#1,20:1826\n74#2:1731\n74#2:1732\n74#2:1733\n74#2:1734\n74#2:1735\n74#2:1736\n74#2:1737\n74#2:1738\n74#2:1739\n74#2:1740\n74#2:1741\n74#2:1742\n83#2:1743\n83#2:1744\n77#2:1745\n77#2:1746\n77#2:1747\n77#2:1748\n77#2:1749\n77#2:1750\n77#2:1751\n77#2:1752\n86#2:1773\n89#2:1775\n74#2:1776\n74#2:1777\n74#2:1778\n74#2:1779\n74#2:1780\n74#2:1781\n74#2:1782\n74#2:1783\n74#2:1784\n74#2:1785\n89#2:1807\n86#2:1846\n1#3:1774\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n*L\n415#1:1753,20\n1292#1:1786,20\n1323#1:1806\n1323#1:1808,18\n1357#1:1826,20\n178#1:1731\n202#1:1732\n321#1:1733\n326#1:1734\n349#1:1735\n350#1:1736\n351#1:1737\n352#1:1738\n358#1:1739\n359#1:1740\n360#1:1741\n361#1:1742\n385#1:1743\n386#1:1744\n392#1:1745\n393#1:1746\n394#1:1747\n395#1:1748\n396#1:1749\n397#1:1750\n398#1:1751\n399#1:1752\n427#1:1773\n888#1:1775\n906#1:1776\n908#1:1777\n912#1:1778\n914#1:1779\n918#1:1780\n920#1:1781\n924#1:1782\n926#1:1783\n946#1:1784\n949#1:1785\n1336#1:1807\n1676#1:1846\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a0\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0000\u001a\r\u0010\u0013\u001a\u00020\u0014*\u00020\u0015H\u0080\u0008\u001a\r\u0010\u0016\u001a\u00020\u0014*\u00020\u0017H\u0080\u0008\u001a\r\u0010\u0018\u001a\u00020\u0007*\u00020\u0015H\u0080\u0008\u001a\r\u0010\u0019\u001a\u00020\u0015*\u00020\u0015H\u0080\u0008\u001a%\u0010\u001a\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\u0008\u001a\u0017\u0010\u001e\u001a\u00020\u000c*\u00020\u00152\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0080\u0008\u001a\u0015\u0010!\u001a\u00020\u0007*\u00020\u00172\u0006\u0010\"\u001a\u00020\nH\u0080\u0008\u001a\u0015\u0010#\u001a\u00020$*\u00020\u00152\u0006\u0010%\u001a\u00020\u0007H\u0080\u0008\u001a\r\u0010&\u001a\u00020\n*\u00020\u0015H\u0080\u0008\u001a%\u0010\'\u001a\u00020\u0007*\u00020\u00152\u0006\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0080\u0008\u001a\u001d\u0010\'\u001a\u00020\u0007*\u00020\u00152\u0006\u0010\u0010\u001a\u00020+2\u0006\u0010)\u001a\u00020\u0007H\u0080\u0008\u001a\u001d\u0010,\u001a\u00020\u0007*\u00020\u00152\u0006\u0010-\u001a\u00020+2\u0006\u0010)\u001a\u00020\u0007H\u0080\u0008\u001a\r\u0010.\u001a\u00020\n*\u00020\u0017H\u0080\u0008\u001a-\u0010/\u001a\u00020\u000c*\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\u0008\u001a\u0015\u00100\u001a\u00020\n*\u00020\u00152\u0006\u00101\u001a\u00020\u0001H\u0080\u0008\u001a%\u00100\u001a\u00020\n*\u00020\u00152\u0006\u00101\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\u0008\u001a\u001d\u00100\u001a\u00020\u0007*\u00020\u00152\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\u0008\u001a\u0015\u00102\u001a\u00020\u0007*\u00020\u00152\u0006\u00101\u001a\u000203H\u0080\u0008\u001a\u0014\u00104\u001a\u00020\u0017*\u00020\u00152\u0006\u00105\u001a\u00020\u0017H\u0000\u001a\r\u00106\u001a\u00020$*\u00020\u0015H\u0080\u0008\u001a\r\u00107\u001a\u00020\u0001*\u00020\u0015H\u0080\u0008\u001a\u0015\u00107\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\u0008\u001a\r\u00108\u001a\u00020+*\u00020\u0015H\u0080\u0008\u001a\u0015\u00108\u001a\u00020+*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\u0008\u001a\r\u00109\u001a\u00020\u0007*\u00020\u0015H\u0080\u0008\u001a\u0015\u0010:\u001a\u00020\u0014*\u00020\u00152\u0006\u00101\u001a\u00020\u0001H\u0080\u0008\u001a\u001d\u0010:\u001a\u00020\u0014*\u00020\u00152\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\u0008\u001a\r\u0010;\u001a\u00020\u0007*\u00020\u0015H\u0080\u0008\u001a\r\u0010<\u001a\u00020\n*\u00020\u0015H\u0080\u0008\u001a\r\u0010=\u001a\u00020\u0007*\u00020\u0015H\u0080\u0008\u001a\r\u0010>\u001a\u00020?*\u00020\u0015H\u0080\u0008\u001a\u0014\u0010@\u001a\u00020\u0017*\u00020\u00152\u0006\u00105\u001a\u00020\u0017H\u0000\u001a\u0015\u0010A\u001a\u00020B*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\u0008\u001a\r\u0010C\u001a\u00020\n*\u00020\u0015H\u0080\u0008\u001a\u000f\u0010D\u001a\u0004\u0018\u00010B*\u00020\u0015H\u0080\u0008\u001a\u0015\u0010E\u001a\u00020B*\u00020\u00152\u0006\u0010F\u001a\u00020\u0007H\u0080\u0008\u001a\u0015\u0010G\u001a\u00020\u0007*\u00020\u00172\u0006\u0010H\u001a\u00020\u0007H\u0080\u0008\u001a\u0015\u0010I\u001a\u00020\n*\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0007H\u0080\u0008\u001a\u0015\u0010J\u001a\u00020\n*\u00020\u00152\u0006\u0010K\u001a\u00020LH\u0080\u0008\u001a\u0015\u0010M\u001a\u00020\u0014*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\u0008\u001a\r\u0010N\u001a\u00020+*\u00020\u0015H\u0080\u0008\u001a\u0015\u0010N\u001a\u00020+*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\nH\u0080\u0008\u001a\u0015\u0010O\u001a\u00020\u000e*\u00020\u00152\u0006\u0010P\u001a\u00020\nH\u0080\u0008\u001a\u0015\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020\u0001H\u0080\u0008\u001a%\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\u0008\u001a\u001d\u0010Q\u001a\u00020\u0014*\u00020\u00152\u0006\u0010R\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\u0008\u001a)\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010S\u001a\u00020+2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\nH\u0080\u0008\u001a\u001d\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020T2\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\u0008\u001a\u0015\u0010U\u001a\u00020\u0007*\u00020\u00152\u0006\u0010R\u001a\u00020TH\u0080\u0008\u001a\u0015\u0010V\u001a\u00020\u0015*\u00020\u00152\u0006\u0010(\u001a\u00020\nH\u0080\u0008\u001a\u0015\u0010W\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\u0008\u001a\u0015\u0010Y\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\u0008\u001a\u0015\u0010Z\u001a\u00020\u0015*\u00020\u00152\u0006\u0010[\u001a\u00020\nH\u0080\u0008\u001a\u0015\u0010\\\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\u0008\u001a\u0015\u0010]\u001a\u00020\u0015*\u00020\u00152\u0006\u0010^\u001a\u00020\nH\u0080\u0008\u001a%\u0010_\u001a\u00020\u0015*\u00020\u00152\u0006\u0010`\u001a\u00020B2\u0006\u0010a\u001a\u00020\n2\u0006\u0010b\u001a\u00020\nH\u0080\u0008\u001a\u0015\u0010c\u001a\u00020\u0015*\u00020\u00152\u0006\u0010d\u001a\u00020\nH\u0080\u0008\u001a\u0014\u0010e\u001a\u00020B*\u00020\u00152\u0006\u0010f\u001a\u00020\u0007H\u0000\u001a?\u0010g\u001a\u0002Hh\"\u0004\u0008\u0000\u0010h*\u00020\u00152\u0006\u0010)\u001a\u00020\u00072\u001a\u0010i\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002Hh0jH\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010k\u001a\u001e\u0010l\u001a\u00020\n*\u00020\u00152\u0006\u0010K\u001a\u00020L2\u0008\u0008\u0002\u0010m\u001a\u00020\u000cH\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0007X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006n"
    }
    d2 = {
        "HEX_DIGIT_BYTES",
        "",
        "getHEX_DIGIT_BYTES$annotations",
        "()V",
        "getHEX_DIGIT_BYTES",
        "()[B",
        "OVERFLOW_DIGIT_START",
        "",
        "OVERFLOW_ZONE",
        "SEGMENTING_THRESHOLD",
        "",
        "rangeEquals",
        "",
        "segment",
        "Lokio/Segment;",
        "segmentPos",
        "bytes",
        "bytesOffset",
        "bytesLimit",
        "commonClear",
        "",
        "Lokio/Buffer;",
        "commonClose",
        "Lokio/Buffer$UnsafeCursor;",
        "commonCompleteSegmentByteCount",
        "commonCopy",
        "commonCopyTo",
        "out",
        "offset",
        "byteCount",
        "commonEquals",
        "other",
        "",
        "commonExpandBuffer",
        "minByteCount",
        "commonGet",
        "",
        "pos",
        "commonHashCode",
        "commonIndexOf",
        "b",
        "fromIndex",
        "toIndex",
        "Lokio/ByteString;",
        "commonIndexOfElement",
        "targetBytes",
        "commonNext",
        "commonRangeEquals",
        "commonRead",
        "sink",
        "commonReadAll",
        "Lokio/Sink;",
        "commonReadAndWriteUnsafe",
        "unsafeCursor",
        "commonReadByte",
        "commonReadByteArray",
        "commonReadByteString",
        "commonReadDecimalLong",
        "commonReadFully",
        "commonReadHexadecimalUnsignedLong",
        "commonReadInt",
        "commonReadLong",
        "commonReadShort",
        "",
        "commonReadUnsafe",
        "commonReadUtf8",
        "",
        "commonReadUtf8CodePoint",
        "commonReadUtf8Line",
        "commonReadUtf8LineStrict",
        "limit",
        "commonResizeBuffer",
        "newSize",
        "commonSeek",
        "commonSelect",
        "options",
        "Lokio/Options;",
        "commonSkip",
        "commonSnapshot",
        "commonWritableSegment",
        "minimumCapacity",
        "commonWrite",
        "source",
        "byteString",
        "Lokio/Source;",
        "commonWriteAll",
        "commonWriteByte",
        "commonWriteDecimalLong",
        "v",
        "commonWriteHexadecimalUnsignedLong",
        "commonWriteInt",
        "i",
        "commonWriteLong",
        "commonWriteShort",
        "s",
        "commonWriteUtf8",
        "string",
        "beginIndex",
        "endIndex",
        "commonWriteUtf8CodePoint",
        "codePoint",
        "readUtf8Line",
        "newline",
        "seek",
        "T",
        "lambda",
        "Lkotlin/Function2;",
        "(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "selectPrefix",
        "selectTruncated",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "-Buffer"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1730:1\n112#1,20:1753\n112#1,20:1786\n112#1:1806\n114#1,18:1808\n112#1,20:1826\n74#2:1731\n74#2:1732\n74#2:1733\n74#2:1734\n74#2:1735\n74#2:1736\n74#2:1737\n74#2:1738\n74#2:1739\n74#2:1740\n74#2:1741\n74#2:1742\n83#2:1743\n83#2:1744\n77#2:1745\n77#2:1746\n77#2:1747\n77#2:1748\n77#2:1749\n77#2:1750\n77#2:1751\n77#2:1752\n86#2:1773\n89#2:1775\n74#2:1776\n74#2:1777\n74#2:1778\n74#2:1779\n74#2:1780\n74#2:1781\n74#2:1782\n74#2:1783\n74#2:1784\n74#2:1785\n89#2:1807\n86#2:1846\n1#3:1774\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n*L\n415#1:1753,20\n1292#1:1786,20\n1323#1:1806\n1323#1:1808,18\n1357#1:1826,20\n178#1:1731\n202#1:1732\n321#1:1733\n326#1:1734\n349#1:1735\n350#1:1736\n351#1:1737\n352#1:1738\n358#1:1739\n359#1:1740\n360#1:1741\n361#1:1742\n385#1:1743\n386#1:1744\n392#1:1745\n393#1:1746\n394#1:1747\n395#1:1748\n396#1:1749\n397#1:1750\n398#1:1751\n399#1:1752\n427#1:1773\n888#1:1775\n906#1:1776\n908#1:1777\n912#1:1778\n914#1:1779\n918#1:1780\n920#1:1781\n924#1:1782\n926#1:1783\n946#1:1784\n949#1:1785\n1336#1:1807\n1676#1:1846\n*E\n"
    }
.end annotation


# static fields
.field private static final HEX_DIGIT_BYTES:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OVERFLOW_DIGIT_START:J = -0x7L

.field public static final OVERFLOW_ZONE:J = -0xcccccccccccccccL

.field public static final SEGMENTING_THRESHOLD:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789abcdef"

    .line 2
    .line 3
    invoke-static {v0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lokio/internal/-Buffer;->HEX_DIGIT_BYTES:[B

    .line 8
    .line 9
    return-void
.end method

.method public static final commonClear(Lokio/Buffer;)V
    .locals 2
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final commonClose(Lokio/Buffer$UnsafeCursor;)V
    .locals 3
    .param p0    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v1, -0x1

    .line 22
    .line 23
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 24
    .line 25
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 29
    .line 30
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "not attached to a buffer"

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public static final commonCompleteSegmentByteCount(Lokio/Buffer;)J
    .locals 5
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    return-wide v2

    .line 17
    :cond_0
    iget-object p0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 18
    .line 19
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lokio/Segment;->prev:Lokio/Segment;

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget v2, p0, Lokio/Segment;->limit:I

    .line 28
    .line 29
    const/16 v3, 0x2000

    .line 30
    .line 31
    if-ge v2, v3, :cond_1

    .line 32
    .line 33
    iget-boolean v3, p0, Lokio/Segment;->owner:Z

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iget p0, p0, Lokio/Segment;->pos:I

    .line 38
    .line 39
    sub-int/2addr v2, p0

    .line 40
    int-to-long v2, v2

    .line 41
    sub-long/2addr v0, v2

    .line 42
    :cond_1
    return-wide v0
.end method

.method public static final commonCopy(Lokio/Buffer;)Lokio/Buffer;
    .locals 6
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokio/Buffer;

    .line 7
    .line 8
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v5, v1, v3

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 32
    .line 33
    iput-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 34
    .line 35
    iput-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 36
    .line 37
    iget-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 38
    .line 39
    :goto_0
    if-eq v3, v1, :cond_1

    .line 40
    .line 41
    iget-object v4, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 42
    .line 43
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 54
    .line 55
    .line 56
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->setSize$okio(J)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public static final commonCopyTo(Lokio/Buffer;Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 8
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "out"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    move-wide v3, p2

    .line 16
    move-wide v5, p4

    .line 17
    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    cmp-long v2, p4, v0

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    add-long/2addr v2, p4

    .line 32
    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 36
    .line 37
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget v3, v2, Lokio/Segment;->limit:I

    .line 41
    .line 42
    iget v4, v2, Lokio/Segment;->pos:I

    .line 43
    .line 44
    sub-int v5, v3, v4

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    cmp-long v7, p2, v5

    .line 48
    .line 49
    if-ltz v7, :cond_1

    .line 50
    .line 51
    sub-int/2addr v3, v4

    .line 52
    int-to-long v3, v3

    .line 53
    sub-long/2addr p2, v3

    .line 54
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    .line 58
    .line 59
    if-lez v3, :cond_3

    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget v4, v3, Lokio/Segment;->pos:I

    .line 69
    .line 70
    long-to-int p3, p2

    .line 71
    add-int/2addr v4, p3

    .line 72
    iput v4, v3, Lokio/Segment;->pos:I

    .line 73
    .line 74
    long-to-int p2, p4

    .line 75
    add-int/2addr v4, p2

    .line 76
    iget p2, v3, Lokio/Segment;->limit:I

    .line 77
    .line 78
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    iput p2, v3, Lokio/Segment;->limit:I

    .line 83
    .line 84
    iget-object p2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 85
    .line 86
    if-nez p2, :cond_2

    .line 87
    .line 88
    iput-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 89
    .line 90
    iput-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 91
    .line 92
    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p2, Lokio/Segment;->prev:Lokio/Segment;

    .line 99
    .line 100
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 104
    .line 105
    .line 106
    :goto_2
    iget p2, v3, Lokio/Segment;->limit:I

    .line 107
    .line 108
    iget p3, v3, Lokio/Segment;->pos:I

    .line 109
    .line 110
    sub-int/2addr p2, p3

    .line 111
    int-to-long p2, p2

    .line 112
    sub-long/2addr p4, p2

    .line 113
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 114
    .line 115
    move-wide p2, v0

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    return-object p0
.end method

.method public static final commonEquals(Lokio/Buffer;Ljava/lang/Object;)Z
    .locals 18
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "<this>"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    instance-of v3, v1, Lokio/Buffer;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    return v4

    .line 20
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    check-cast v1, Lokio/Buffer;

    .line 25
    .line 26
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    cmp-long v3, v5, v7

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    return v4

    .line 35
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    const-wide/16 v7, 0x0

    .line 40
    .line 41
    cmp-long v3, v5, v7

    .line 42
    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    return v2

    .line 46
    :cond_3
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 47
    .line 48
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget v5, v3, Lokio/Segment;->pos:I

    .line 57
    .line 58
    iget v6, v1, Lokio/Segment;->pos:I

    .line 59
    .line 60
    move-wide v9, v7

    .line 61
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    .line 62
    .line 63
    .line 64
    move-result-wide v11

    .line 65
    cmp-long v13, v9, v11

    .line 66
    .line 67
    if-gez v13, :cond_8

    .line 68
    .line 69
    iget v11, v3, Lokio/Segment;->limit:I

    .line 70
    .line 71
    sub-int/2addr v11, v5

    .line 72
    iget v12, v1, Lokio/Segment;->limit:I

    .line 73
    .line 74
    sub-int/2addr v12, v6

    .line 75
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    int-to-long v11, v11

    .line 80
    move-wide v13, v7

    .line 81
    :goto_1
    cmp-long v15, v13, v11

    .line 82
    .line 83
    if-gez v15, :cond_5

    .line 84
    .line 85
    iget-object v15, v3, Lokio/Segment;->data:[B

    .line 86
    .line 87
    add-int/lit8 v16, v5, 0x1

    .line 88
    .line 89
    aget-byte v5, v15, v5

    .line 90
    .line 91
    iget-object v15, v1, Lokio/Segment;->data:[B

    .line 92
    .line 93
    add-int/lit8 v17, v6, 0x1

    .line 94
    .line 95
    aget-byte v6, v15, v6

    .line 96
    .line 97
    if-eq v5, v6, :cond_4

    .line 98
    .line 99
    return v4

    .line 100
    :cond_4
    const-wide/16 v5, 0x1

    .line 101
    .line 102
    add-long/2addr v13, v5

    .line 103
    move/from16 v5, v16

    .line 104
    .line 105
    move/from16 v6, v17

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    iget v13, v3, Lokio/Segment;->limit:I

    .line 109
    .line 110
    if-ne v5, v13, :cond_6

    .line 111
    .line 112
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 113
    .line 114
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget v5, v3, Lokio/Segment;->pos:I

    .line 118
    .line 119
    :cond_6
    iget v13, v1, Lokio/Segment;->limit:I

    .line 120
    .line 121
    if-ne v6, v13, :cond_7

    .line 122
    .line 123
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 124
    .line 125
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget v6, v1, Lokio/Segment;->pos:I

    .line 129
    .line 130
    :cond_7
    add-long/2addr v9, v11

    .line 131
    goto :goto_0

    .line 132
    :cond_8
    return v2
.end method

.method public static final commonExpandBuffer(Lokio/Buffer$UnsafeCursor;I)J
    .locals 9
    .param p0    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-eqz v2, :cond_5

    .line 14
    .line 15
    const/16 v2, 0x2000

    .line 16
    .line 17
    if-gt p1, v2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_1
    if-eqz v0, :cond_4

    .line 22
    .line 23
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-virtual {v0, p1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget v1, p1, Lokio/Segment;->limit:I

    .line 40
    .line 41
    rsub-int v1, v1, 0x2000

    .line 42
    .line 43
    iput v2, p1, Lokio/Segment;->limit:I

    .line 44
    .line 45
    int-to-long v5, v1

    .line 46
    add-long v7, v3, v5

    .line 47
    .line 48
    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->setSize$okio(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    .line 52
    .line 53
    .line 54
    iput-wide v3, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 55
    .line 56
    iget-object p1, p1, Lokio/Segment;->data:[B

    .line 57
    .line 58
    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 59
    .line 60
    rsub-int p1, v1, 0x2000

    .line 61
    .line 62
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 63
    .line 64
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 65
    .line 66
    return-wide v5

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p1, "expandBuffer() only permitted for read/write buffers"

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string p1, "not attached to a buffer"

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v0, "minByteCount > Segment.SIZE: "

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v0, "minByteCount <= 0: "

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1
.end method

.method public static final commonGet(Lokio/Buffer;J)B
    .locals 7
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v5, 0x1

    .line 11
    .line 12
    move-wide v3, p1

    .line 13
    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    sub-long/2addr v1, p1

    .line 25
    cmp-long v3, v1, p1

    .line 26
    .line 27
    if-gez v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    :goto_0
    cmp-long p0, v1, p1

    .line 34
    .line 35
    if-lez p0, :cond_0

    .line 36
    .line 37
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget p0, v0, Lokio/Segment;->limit:I

    .line 43
    .line 44
    iget v3, v0, Lokio/Segment;->pos:I

    .line 45
    .line 46
    sub-int/2addr p0, v3

    .line 47
    int-to-long v3, p0

    .line 48
    sub-long/2addr v1, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, v0, Lokio/Segment;->data:[B

    .line 54
    .line 55
    iget v0, v0, Lokio/Segment;->pos:I

    .line 56
    .line 57
    int-to-long v3, v0

    .line 58
    add-long/2addr v3, p1

    .line 59
    sub-long/2addr v3, v1

    .line 60
    long-to-int p1, v3

    .line 61
    aget-byte p0, p0, p1

    .line 62
    .line 63
    return p0

    .line 64
    :cond_1
    const-wide/16 v1, 0x0

    .line 65
    .line 66
    :goto_1
    iget p0, v0, Lokio/Segment;->limit:I

    .line 67
    .line 68
    iget v3, v0, Lokio/Segment;->pos:I

    .line 69
    .line 70
    sub-int/2addr p0, v3

    .line 71
    int-to-long v3, p0

    .line 72
    add-long/2addr v3, v1

    .line 73
    cmp-long p0, v3, p1

    .line 74
    .line 75
    if-gtz p0, :cond_2

    .line 76
    .line 77
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    move-wide v1, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object p0, v0, Lokio/Segment;->data:[B

    .line 88
    .line 89
    iget v0, v0, Lokio/Segment;->pos:I

    .line 90
    .line 91
    int-to-long v3, v0

    .line 92
    add-long/2addr v3, p1

    .line 93
    sub-long/2addr v3, v1

    .line 94
    long-to-int p1, v3

    .line 95
    aget-byte p0, p0, p1

    .line 96
    .line 97
    return p0

    .line 98
    :cond_3
    const/4 p0, 0x0

    .line 99
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public static final commonHashCode(Lokio/Buffer;)I
    .locals 5
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    :cond_1
    iget v2, v0, Lokio/Segment;->pos:I

    .line 14
    .line 15
    iget v3, v0, Lokio/Segment;->limit:I

    .line 16
    .line 17
    :goto_0
    if-ge v2, v3, :cond_2

    .line 18
    .line 19
    mul-int/lit8 v1, v1, 0x1f

    .line 20
    .line 21
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 22
    .line 23
    aget-byte v4, v4, v2

    .line 24
    .line 25
    add-int/2addr v1, v4

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 35
    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    return v1
.end method

.method public static final commonIndexOf(Lokio/Buffer;BJJ)J
    .locals 9
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, v1, p2

    if-gtz v3, :cond_0

    cmp-long v3, p2, p4

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_d

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v0, p4, v3

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide p4

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v0, p2, p4

    if-nez v0, :cond_2

    return-wide v3

    .line 2
    :cond_2
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_3

    return-wide v3

    .line 3
    :cond_3
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v5, p2

    cmp-long v7, v5, p2

    if-gez v7, :cond_8

    .line 4
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    :goto_0
    cmp-long p0, v1, p2

    if-lez p0, :cond_4

    .line 5
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    iget p0, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr p0, v5

    int-to-long v5, p0

    sub-long/2addr v1, v5

    goto :goto_0

    :cond_4
    :goto_1
    cmp-long p0, v1, p4

    if-gez p0, :cond_7

    .line 7
    iget-object p0, v0, Lokio/Segment;->data:[B

    .line 8
    iget v5, v0, Lokio/Segment;->limit:I

    int-to-long v5, v5

    iget v7, v0, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p4

    sub-long/2addr v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    .line 9
    iget v5, v0, Lokio/Segment;->pos:I

    int-to-long v7, v5

    add-long/2addr v7, p2

    sub-long/2addr v7, v1

    long-to-int p2, v7

    :goto_2
    if-ge p2, v6, :cond_6

    .line 10
    aget-byte p3, p0, p2

    if-ne p3, p1, :cond_5

    .line 11
    :goto_3
    iget p0, v0, Lokio/Segment;->pos:I

    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr p0, v1

    return-wide p0

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 12
    :cond_6
    iget p0, v0, Lokio/Segment;->limit:I

    iget p2, v0, Lokio/Segment;->pos:I

    sub-int/2addr p0, p2

    int-to-long p2, p0

    add-long/2addr v1, p2

    .line 13
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v1

    goto :goto_1

    :cond_7
    return-wide v3

    .line 14
    :cond_8
    :goto_4
    iget p0, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr p0, v5

    int-to-long v5, p0

    add-long/2addr v5, v1

    cmp-long p0, v5, p2

    if-gtz p0, :cond_9

    .line 15
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v1, v5

    goto :goto_4

    :cond_9
    :goto_5
    cmp-long p0, v1, p4

    if-gez p0, :cond_c

    .line 16
    iget-object p0, v0, Lokio/Segment;->data:[B

    .line 17
    iget v5, v0, Lokio/Segment;->limit:I

    int-to-long v5, v5

    iget v7, v0, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p4

    sub-long/2addr v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    .line 18
    iget v5, v0, Lokio/Segment;->pos:I

    int-to-long v7, v5

    add-long/2addr v7, p2

    sub-long/2addr v7, v1

    long-to-int p2, v7

    :goto_6
    if-ge p2, v6, :cond_b

    .line 19
    aget-byte p3, p0, p2

    if-ne p3, p1, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 20
    :cond_b
    iget p0, v0, Lokio/Segment;->limit:I

    iget p2, v0, Lokio/Segment;->pos:I

    sub-int/2addr p0, p2

    int-to-long p2, p0

    add-long/2addr v1, p2

    .line 21
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v1

    goto :goto_5

    :cond_c
    return-wide v3

    .line 22
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " fromIndex="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " toIndex="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonIndexOf(Lokio/Buffer;Lokio/ByteString;J)J
    .locals 17
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "bytes"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_e

    const-wide/16 v7, 0x0

    cmp-long v3, v1, v7

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_d

    .line 24
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v9, -0x1

    if-nez v3, :cond_2

    return-wide v9

    .line 25
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v11

    sub-long/2addr v11, v1

    const-wide/16 v13, 0x1

    cmp-long v15, v11, v1

    if-gez v15, :cond_7

    .line 26
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    :goto_2
    cmp-long v11, v7, v1

    if-lez v11, :cond_3

    .line 27
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    iget v11, v3, Lokio/Segment;->limit:I

    iget v12, v3, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v7, v11

    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v11

    .line 30
    aget-byte v5, v11, v5

    .line 31
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v4

    .line 32
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v15

    int-to-long v9, v4

    sub-long/2addr v15, v9

    add-long/2addr v15, v13

    :goto_3
    cmp-long v0, v7, v15

    if-gez v0, :cond_6

    .line 33
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 34
    iget v9, v3, Lokio/Segment;->limit:I

    iget v10, v3, Lokio/Segment;->pos:I

    int-to-long v12, v10

    add-long/2addr v12, v15

    sub-long/2addr v12, v7

    int-to-long v9, v9

    .line 35
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    .line 36
    iget v9, v3, Lokio/Segment;->pos:I

    int-to-long v12, v9

    add-long/2addr v12, v1

    sub-long/2addr v12, v7

    long-to-int v1, v12

    :goto_4
    if-ge v1, v10, :cond_5

    .line 37
    aget-byte v2, v0, v1

    if-ne v2, v5, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-static {v3, v2, v11, v6, v4}, Lokio/internal/-Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    iget v0, v3, Lokio/Segment;->pos:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    :goto_5
    add-long/2addr v0, v7

    return-wide v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 39
    :cond_5
    iget v0, v3, Lokio/Segment;->limit:I

    iget v1, v3, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v7, v0

    .line 40
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v1, v7

    goto :goto_3

    :cond_6
    const-wide/16 v0, -0x1

    return-wide v0

    .line 41
    :cond_7
    :goto_6
    iget v9, v3, Lokio/Segment;->limit:I

    iget v10, v3, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v9, v7

    cmp-long v11, v9, v1

    if-gtz v11, :cond_8

    .line 42
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v7, v9

    goto :goto_6

    .line 43
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v9

    .line 44
    aget-byte v5, v9, v5

    .line 45
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v4

    .line 46
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v10

    move-wide v15, v7

    int-to-long v6, v4

    sub-long/2addr v10, v6

    add-long/2addr v10, v13

    move-wide v7, v15

    :goto_7
    cmp-long v6, v7, v10

    if-gez v6, :cond_c

    .line 47
    iget-object v6, v3, Lokio/Segment;->data:[B

    .line 48
    iget v12, v3, Lokio/Segment;->limit:I

    iget v13, v3, Lokio/Segment;->pos:I

    int-to-long v13, v13

    add-long/2addr v13, v10

    sub-long/2addr v13, v7

    move-wide/from16 p1, v1

    int-to-long v0, v12

    .line 49
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 50
    iget v0, v3, Lokio/Segment;->pos:I

    int-to-long v12, v0

    move-wide/from16 v14, p1

    add-long/2addr v12, v14

    sub-long/2addr v12, v7

    long-to-int v0, v12

    :goto_8
    if-ge v0, v1, :cond_b

    .line 51
    aget-byte v2, v6, v0

    if-ne v2, v5, :cond_9

    add-int/lit8 v2, v0, 0x1

    const/4 v12, 0x1

    invoke-static {v3, v2, v9, v12, v4}, Lokio/internal/-Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 52
    iget v1, v3, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_5

    :cond_9
    const/4 v12, 0x1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v12, 0x1

    .line 53
    iget v0, v3, Lokio/Segment;->limit:I

    iget v1, v3, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v7, v0

    .line 54
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v1, v7

    goto :goto_7

    :cond_c
    const-wide/16 v0, -0x1

    return-wide v0

    .line 55
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromIndex < 0: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonIndexOfElement(Lokio/Buffer;Lokio/ByteString;J)J
    .locals 11
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "targetBytes"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, p2, v2

    .line 16
    .line 17
    if-ltz v4, :cond_0

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-eqz v4, :cond_14

    .line 23
    .line 24
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 25
    .line 26
    const-wide/16 v5, -0x1

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    return-wide v5

    .line 31
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    sub-long/2addr v7, p2

    .line 36
    const/4 v9, 0x2

    .line 37
    cmp-long v10, v7, p2

    .line 38
    .line 39
    if-gez v10, :cond_b

    .line 40
    .line 41
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    :goto_1
    cmp-long v7, v2, p2

    .line 46
    .line 47
    if-lez v7, :cond_2

    .line 48
    .line 49
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 50
    .line 51
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget v7, v4, Lokio/Segment;->limit:I

    .line 55
    .line 56
    iget v8, v4, Lokio/Segment;->pos:I

    .line 57
    .line 58
    sub-int/2addr v7, v8

    .line 59
    int-to-long v7, v7

    .line 60
    sub-long/2addr v2, v7

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-ne v7, v9, :cond_6

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lokio/ByteString;->getByte(I)B

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    :goto_2
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    cmp-long v1, v2, v7

    .line 81
    .line 82
    if-gez v1, :cond_a

    .line 83
    .line 84
    iget-object v1, v4, Lokio/Segment;->data:[B

    .line 85
    .line 86
    iget v7, v4, Lokio/Segment;->pos:I

    .line 87
    .line 88
    int-to-long v7, v7

    .line 89
    add-long/2addr v7, p2

    .line 90
    sub-long/2addr v7, v2

    .line 91
    long-to-int p2, v7

    .line 92
    iget p3, v4, Lokio/Segment;->limit:I

    .line 93
    .line 94
    :goto_3
    if-ge p2, p3, :cond_5

    .line 95
    .line 96
    aget-byte v7, v1, p2

    .line 97
    .line 98
    if-eq v7, v0, :cond_4

    .line 99
    .line 100
    if-ne v7, p1, :cond_3

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    :goto_4
    iget p0, v4, Lokio/Segment;->pos:I

    .line 107
    .line 108
    :goto_5
    sub-int/2addr p2, p0

    .line 109
    int-to-long p0, p2

    .line 110
    add-long/2addr p0, v2

    .line 111
    return-wide p0

    .line 112
    :cond_5
    iget p2, v4, Lokio/Segment;->limit:I

    .line 113
    .line 114
    iget p3, v4, Lokio/Segment;->pos:I

    .line 115
    .line 116
    sub-int/2addr p2, p3

    .line 117
    int-to-long p2, p2

    .line 118
    add-long/2addr v2, p2

    .line 119
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 120
    .line 121
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-wide p2, v2

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :goto_6
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 131
    .line 132
    .line 133
    move-result-wide v7

    .line 134
    cmp-long v1, v2, v7

    .line 135
    .line 136
    if-gez v1, :cond_a

    .line 137
    .line 138
    iget-object v1, v4, Lokio/Segment;->data:[B

    .line 139
    .line 140
    iget v7, v4, Lokio/Segment;->pos:I

    .line 141
    .line 142
    int-to-long v7, v7

    .line 143
    add-long/2addr v7, p2

    .line 144
    sub-long/2addr v7, v2

    .line 145
    long-to-int p2, v7

    .line 146
    iget p3, v4, Lokio/Segment;->limit:I

    .line 147
    .line 148
    :goto_7
    if-ge p2, p3, :cond_9

    .line 149
    .line 150
    aget-byte v7, v1, p2

    .line 151
    .line 152
    array-length v8, p1

    .line 153
    const/4 v9, 0x0

    .line 154
    :goto_8
    if-ge v9, v8, :cond_8

    .line 155
    .line 156
    aget-byte v10, p1, v9

    .line 157
    .line 158
    if-ne v7, v10, :cond_7

    .line 159
    .line 160
    :goto_9
    iget p0, v4, Lokio/Segment;->pos:I

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 164
    .line 165
    goto :goto_8

    .line 166
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_9
    iget p2, v4, Lokio/Segment;->limit:I

    .line 170
    .line 171
    iget p3, v4, Lokio/Segment;->pos:I

    .line 172
    .line 173
    sub-int/2addr p2, p3

    .line 174
    int-to-long p2, p2

    .line 175
    add-long/2addr v2, p2

    .line 176
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 177
    .line 178
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    move-wide p2, v2

    .line 182
    goto :goto_6

    .line 183
    :cond_a
    return-wide v5

    .line 184
    :cond_b
    :goto_a
    iget v7, v4, Lokio/Segment;->limit:I

    .line 185
    .line 186
    iget v8, v4, Lokio/Segment;->pos:I

    .line 187
    .line 188
    sub-int/2addr v7, v8

    .line 189
    int-to-long v7, v7

    .line 190
    add-long/2addr v7, v2

    .line 191
    cmp-long v10, v7, p2

    .line 192
    .line 193
    if-gtz v10, :cond_c

    .line 194
    .line 195
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 196
    .line 197
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    move-wide v2, v7

    .line 201
    goto :goto_a

    .line 202
    :cond_c
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-ne v7, v9, :cond_f

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Lokio/ByteString;->getByte(I)B

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    :goto_b
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 217
    .line 218
    .line 219
    move-result-wide v7

    .line 220
    cmp-long v1, v2, v7

    .line 221
    .line 222
    if-gez v1, :cond_13

    .line 223
    .line 224
    iget-object v1, v4, Lokio/Segment;->data:[B

    .line 225
    .line 226
    iget v7, v4, Lokio/Segment;->pos:I

    .line 227
    .line 228
    int-to-long v7, v7

    .line 229
    add-long/2addr v7, p2

    .line 230
    sub-long/2addr v7, v2

    .line 231
    long-to-int p2, v7

    .line 232
    iget p3, v4, Lokio/Segment;->limit:I

    .line 233
    .line 234
    :goto_c
    if-ge p2, p3, :cond_e

    .line 235
    .line 236
    aget-byte v7, v1, p2

    .line 237
    .line 238
    if-eq v7, v0, :cond_4

    .line 239
    .line 240
    if-ne v7, p1, :cond_d

    .line 241
    .line 242
    goto/16 :goto_4

    .line 243
    .line 244
    :cond_d
    add-int/lit8 p2, p2, 0x1

    .line 245
    .line 246
    goto :goto_c

    .line 247
    :cond_e
    iget p2, v4, Lokio/Segment;->limit:I

    .line 248
    .line 249
    iget p3, v4, Lokio/Segment;->pos:I

    .line 250
    .line 251
    sub-int/2addr p2, p3

    .line 252
    int-to-long p2, p2

    .line 253
    add-long/2addr v2, p2

    .line 254
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 255
    .line 256
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    move-wide p2, v2

    .line 260
    goto :goto_b

    .line 261
    :cond_f
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    :goto_d
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 266
    .line 267
    .line 268
    move-result-wide v7

    .line 269
    cmp-long v1, v2, v7

    .line 270
    .line 271
    if-gez v1, :cond_13

    .line 272
    .line 273
    iget-object v1, v4, Lokio/Segment;->data:[B

    .line 274
    .line 275
    iget v7, v4, Lokio/Segment;->pos:I

    .line 276
    .line 277
    int-to-long v7, v7

    .line 278
    add-long/2addr v7, p2

    .line 279
    sub-long/2addr v7, v2

    .line 280
    long-to-int p2, v7

    .line 281
    iget p3, v4, Lokio/Segment;->limit:I

    .line 282
    .line 283
    :goto_e
    if-ge p2, p3, :cond_12

    .line 284
    .line 285
    aget-byte v7, v1, p2

    .line 286
    .line 287
    array-length v8, p1

    .line 288
    const/4 v9, 0x0

    .line 289
    :goto_f
    if-ge v9, v8, :cond_11

    .line 290
    .line 291
    aget-byte v10, p1, v9

    .line 292
    .line 293
    if-ne v7, v10, :cond_10

    .line 294
    .line 295
    goto/16 :goto_9

    .line 296
    .line 297
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 298
    .line 299
    goto :goto_f

    .line 300
    :cond_11
    add-int/lit8 p2, p2, 0x1

    .line 301
    .line 302
    goto :goto_e

    .line 303
    :cond_12
    iget p2, v4, Lokio/Segment;->limit:I

    .line 304
    .line 305
    iget p3, v4, Lokio/Segment;->pos:I

    .line 306
    .line 307
    sub-int/2addr p2, p3

    .line 308
    int-to-long p2, p2

    .line 309
    add-long/2addr v2, p2

    .line 310
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 311
    .line 312
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    move-wide p2, v2

    .line 316
    goto :goto_d

    .line 317
    :cond_13
    return-wide v5

    .line 318
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p1, "fromIndex < 0: "

    .line 324
    .line 325
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 336
    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p1
.end method

.method public static final commonNext(Lokio/Buffer$UnsafeCursor;)I
    .locals 5
    .param p0    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 7
    .line 8
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 27
    .line 28
    const-wide/16 v2, -0x1

    .line 29
    .line 30
    cmp-long v4, v0, v2

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 38
    .line 39
    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 40
    .line 41
    sub-int/2addr v2, v3

    .line 42
    int-to-long v2, v2

    .line 43
    add-long/2addr v0, v2

    .line 44
    :goto_1
    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "no more bytes"

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static final commonRangeEquals(Lokio/Buffer;JLokio/ByteString;II)Z
    .locals 6
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bytes"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    cmp-long v3, p1, v0

    .line 15
    .line 16
    if-ltz v3, :cond_3

    .line 17
    .line 18
    if-ltz p4, :cond_3

    .line 19
    .line 20
    if-ltz p5, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    sub-long/2addr v0, p1

    .line 27
    int-to-long v3, p5

    .line 28
    cmp-long v5, v0, v3

    .line 29
    .line 30
    if-ltz v5, :cond_3

    .line 31
    .line 32
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sub-int/2addr v0, p4

    .line 37
    if-ge v0, p5, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    if-ge v0, p5, :cond_2

    .line 42
    .line 43
    int-to-long v3, v0

    .line 44
    add-long/2addr v3, p1

    .line 45
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-int v3, p4, v0

    .line 50
    .line 51
    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eq v1, v3, :cond_1

    .line 56
    .line 57
    return v2

    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_3
    :goto_1
    return v2
.end method

.method public static final commonRead(Lokio/Buffer;[B)I
    .locals 2
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->read([BII)I

    move-result p0

    return p0
.end method

.method public static final commonRead(Lokio/Buffer;[BII)I
    .locals 7
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 3
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 4
    :cond_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 5
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 6
    iget v2, v0, Lokio/Segment;->pos:I

    add-int v3, v2, p3

    .line 7
    invoke-static {v1, p1, p2, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 8
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Lokio/Segment;->pos:I

    .line 9
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide p1

    int-to-long v1, p3

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->setSize$okio(J)V

    .line 10
    iget p1, v0, Lokio/Segment;->pos:I

    iget p2, v0, Lokio/Segment;->limit:I

    if-ne p1, p2, :cond_1

    .line 11
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 12
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_1
    return p3
.end method

.method public static final commonRead(Lokio/Buffer;Lokio/Buffer;J)J
    .locals 5
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const-wide/16 p0, -0x1

    return-wide p0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide p2

    .line 15
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-wide p2

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "byteCount < 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonReadAll(Lokio/Buffer;Lokio/Sink;)J
    .locals 5
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sink"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-lez v4, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-wide v0
.end method

.method public static final commonReadAndWriteUnsafe(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "unsafeCursor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 26
    .line 27
    iput-boolean v1, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string p1, "already attached to a buffer"

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public static final commonReadByte(Lokio/Buffer;)B
    .locals 9
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget v1, v0, Lokio/Segment;->pos:I

    .line 22
    .line 23
    iget v2, v0, Lokio/Segment;->limit:I

    .line 24
    .line 25
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 26
    .line 27
    add-int/lit8 v4, v1, 0x1

    .line 28
    .line 29
    aget-byte v1, v3, v1

    .line 30
    .line 31
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    const-wide/16 v7, 0x1

    .line 36
    .line 37
    sub-long/2addr v5, v7

    .line 38
    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 39
    .line 40
    .line 41
    if-ne v4, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 48
    .line 49
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iput v4, v0, Lokio/Segment;->pos:I

    .line 54
    .line 55
    :goto_0
    return v1

    .line 56
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public static final commonReadByteArray(Lokio/Buffer;)[B
    .locals 2
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteArray(Lokio/Buffer;J)[B
    .locals 3
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    long-to-int p2, p1

    .line 3
    new-array p1, p2, [B

    .line 4
    invoke-virtual {p0, p1}, Lokio/Buffer;->readFully([B)V

    return-object p1

    .line 5
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonReadByteString(Lokio/Buffer;)Lokio/ByteString;
    .locals 2
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteString(Lokio/Buffer;J)Lokio/ByteString;
    .locals 3
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_2

    const-wide/16 v0, 0x1000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    long-to-int v0, p1

    .line 3
    invoke-virtual {p0, v0}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->skip(J)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    .line 5
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 6
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonReadDecimalLong(Lokio/Buffer;)J
    .locals 19
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    cmp-long v5, v1, v3

    .line 15
    .line 16
    if-eqz v5, :cond_e

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const-wide/16 v5, -0x7

    .line 20
    .line 21
    move-wide v8, v3

    .line 22
    move-wide v6, v5

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    :goto_0
    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 26
    .line 27
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 31
    .line 32
    iget v12, v10, Lokio/Segment;->pos:I

    .line 33
    .line 34
    iget v13, v10, Lokio/Segment;->limit:I

    .line 35
    .line 36
    :goto_1
    if-ge v12, v13, :cond_5

    .line 37
    .line 38
    aget-byte v15, v11, v12

    .line 39
    .line 40
    const/16 v14, 0x30

    .line 41
    .line 42
    if-lt v15, v14, :cond_3

    .line 43
    .line 44
    const/16 v14, 0x39

    .line 45
    .line 46
    if-gt v15, v14, :cond_3

    .line 47
    .line 48
    rsub-int/lit8 v14, v15, 0x30

    .line 49
    .line 50
    const-wide v16, -0xcccccccccccccccL

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    cmp-long v18, v8, v16

    .line 56
    .line 57
    if-ltz v18, :cond_1

    .line 58
    .line 59
    if-nez v18, :cond_0

    .line 60
    .line 61
    int-to-long v3, v14

    .line 62
    cmp-long v16, v3, v6

    .line 63
    .line 64
    if-gez v16, :cond_0

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_0
    const-wide/16 v3, 0xa

    .line 68
    .line 69
    mul-long v8, v8, v3

    .line 70
    .line 71
    int-to-long v3, v14

    .line 72
    add-long/2addr v8, v3

    .line 73
    goto :goto_3

    .line 74
    :cond_1
    :goto_2
    new-instance v0, Lokio/Buffer;

    .line 75
    .line 76
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v15}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v2, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 90
    .line 91
    .line 92
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v3, "Number too large: "

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v1

    .line 119
    :cond_3
    const/16 v3, 0x2d

    .line 120
    .line 121
    if-ne v15, v3, :cond_4

    .line 122
    .line 123
    if-nez v1, :cond_4

    .line 124
    .line 125
    const-wide/16 v2, 0x1

    .line 126
    .line 127
    sub-long/2addr v6, v2

    .line 128
    const/4 v2, 0x1

    .line 129
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    const-wide/16 v3, 0x0

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    const/4 v5, 0x1

    .line 137
    :cond_5
    if-ne v12, v13, :cond_6

    .line 138
    .line 139
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    iput-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 144
    .line 145
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    iput v12, v10, Lokio/Segment;->pos:I

    .line 150
    .line 151
    :goto_4
    if-nez v5, :cond_8

    .line 152
    .line 153
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 154
    .line 155
    if-nez v3, :cond_7

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_7
    const-wide/16 v3, 0x0

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    .line 163
    .line 164
    .line 165
    move-result-wide v3

    .line 166
    int-to-long v5, v1

    .line 167
    sub-long/2addr v3, v5

    .line 168
    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 169
    .line 170
    .line 171
    if-eqz v2, :cond_9

    .line 172
    .line 173
    const/4 v14, 0x2

    .line 174
    goto :goto_6

    .line 175
    :cond_9
    const/4 v14, 0x1

    .line 176
    :goto_6
    if-ge v1, v14, :cond_c

    .line 177
    .line 178
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    .line 179
    .line 180
    .line 181
    move-result-wide v3

    .line 182
    const-wide/16 v5, 0x0

    .line 183
    .line 184
    cmp-long v1, v3, v5

    .line 185
    .line 186
    if-eqz v1, :cond_b

    .line 187
    .line 188
    if-eqz v2, :cond_a

    .line 189
    .line 190
    const-string v1, "Expected a digit"

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_a
    const-string v1, "Expected a digit or \'-\'"

    .line 194
    .line 195
    :goto_7
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 196
    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v1, " but was 0x"

    .line 206
    .line 207
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-wide/16 v4, 0x0

    .line 211
    .line 212
    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->getByte(J)B

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-static {v0}, Lokio/-SegmentedByteString;->toHexString(B)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v2

    .line 231
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 234
    .line 235
    .line 236
    throw v0

    .line 237
    :cond_c
    if-eqz v2, :cond_d

    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_d
    neg-long v8, v8

    .line 241
    :goto_8
    return-wide v8

    .line 242
    :cond_e
    new-instance v0, Ljava/io/EOFException;

    .line 243
    .line 244
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 245
    .line 246
    .line 247
    throw v0
.end method

.method public static final commonReadFully(Lokio/Buffer;Lokio/Buffer;J)V
    .locals 3
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide p2

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 7
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static final commonReadFully(Lokio/Buffer;[B)V
    .locals 3
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static final commonReadHexadecimalUnsignedLong(Lokio/Buffer;)J
    .locals 15
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-eqz v4, :cond_9

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    move-wide v4, v2

    .line 18
    const/4 v1, 0x0

    .line 19
    :cond_0
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 20
    .line 21
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v7, v6, Lokio/Segment;->data:[B

    .line 25
    .line 26
    iget v8, v6, Lokio/Segment;->pos:I

    .line 27
    .line 28
    iget v9, v6, Lokio/Segment;->limit:I

    .line 29
    .line 30
    :goto_0
    if-ge v8, v9, :cond_6

    .line 31
    .line 32
    aget-byte v10, v7, v8

    .line 33
    .line 34
    const/16 v11, 0x30

    .line 35
    .line 36
    if-lt v10, v11, :cond_1

    .line 37
    .line 38
    const/16 v11, 0x39

    .line 39
    .line 40
    if-gt v10, v11, :cond_1

    .line 41
    .line 42
    add-int/lit8 v11, v10, -0x30

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const/16 v11, 0x61

    .line 46
    .line 47
    if-lt v10, v11, :cond_2

    .line 48
    .line 49
    const/16 v11, 0x66

    .line 50
    .line 51
    if-gt v10, v11, :cond_2

    .line 52
    .line 53
    add-int/lit8 v11, v10, -0x61

    .line 54
    .line 55
    :goto_1
    add-int/lit8 v11, v11, 0xa

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v11, 0x41

    .line 59
    .line 60
    if-lt v10, v11, :cond_4

    .line 61
    .line 62
    const/16 v11, 0x46

    .line 63
    .line 64
    if-gt v10, v11, :cond_4

    .line 65
    .line 66
    add-int/lit8 v11, v10, -0x41

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    .line 70
    .line 71
    and-long/2addr v12, v4

    .line 72
    cmp-long v14, v12, v2

    .line 73
    .line 74
    if-nez v14, :cond_3

    .line 75
    .line 76
    const/4 v10, 0x4

    .line 77
    shl-long/2addr v4, v10

    .line 78
    int-to-long v10, v11

    .line 79
    or-long/2addr v4, v10

    .line 80
    add-int/lit8 v8, v8, 0x1

    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance p0, Lokio/Buffer;

    .line 86
    .line 87
    invoke-direct {p0}, Lokio/Buffer;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v2, "Number too large: "

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_4
    if-eqz v0, :cond_5

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-static {v10}, Lokio/-SegmentedByteString;->toHexString(B)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 157
    .line 158
    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    iput-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 163
    .line 164
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_7
    iput v8, v6, Lokio/Segment;->pos:I

    .line 169
    .line 170
    :goto_4
    if-nez v1, :cond_8

    .line 171
    .line 172
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 173
    .line 174
    if-nez v6, :cond_0

    .line 175
    .line 176
    :cond_8
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 177
    .line 178
    .line 179
    move-result-wide v1

    .line 180
    int-to-long v6, v0

    .line 181
    sub-long/2addr v1, v6

    .line 182
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->setSize$okio(J)V

    .line 183
    .line 184
    .line 185
    return-wide v4

    .line 186
    :cond_9
    new-instance p0, Ljava/io/EOFException;

    .line 187
    .line 188
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 189
    .line 190
    .line 191
    throw p0
.end method

.method public static final commonReadInt(Lokio/Buffer;)I
    .locals 8
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x4

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-ltz v4, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget v1, v0, Lokio/Segment;->pos:I

    .line 22
    .line 23
    iget v4, v0, Lokio/Segment;->limit:I

    .line 24
    .line 25
    sub-int v5, v4, v1

    .line 26
    .line 27
    int-to-long v5, v5

    .line 28
    cmp-long v7, v5, v2

    .line 29
    .line 30
    if-gez v7, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    and-int/lit16 v0, v0, 0xff

    .line 37
    .line 38
    shl-int/lit8 v0, v0, 0x18

    .line 39
    .line 40
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    and-int/lit16 v1, v1, 0xff

    .line 45
    .line 46
    shl-int/lit8 v1, v1, 0x10

    .line 47
    .line 48
    or-int/2addr v0, v1

    .line 49
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    and-int/lit16 v1, v1, 0xff

    .line 54
    .line 55
    shl-int/lit8 v1, v1, 0x8

    .line 56
    .line 57
    or-int/2addr v0, v1

    .line 58
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    and-int/lit16 p0, p0, 0xff

    .line 63
    .line 64
    or-int/2addr p0, v0

    .line 65
    return p0

    .line 66
    :cond_0
    iget-object v5, v0, Lokio/Segment;->data:[B

    .line 67
    .line 68
    add-int/lit8 v6, v1, 0x1

    .line 69
    .line 70
    aget-byte v1, v5, v1

    .line 71
    .line 72
    and-int/lit16 v1, v1, 0xff

    .line 73
    .line 74
    shl-int/lit8 v1, v1, 0x18

    .line 75
    .line 76
    add-int/lit8 v7, v6, 0x1

    .line 77
    .line 78
    aget-byte v6, v5, v6

    .line 79
    .line 80
    and-int/lit16 v6, v6, 0xff

    .line 81
    .line 82
    shl-int/lit8 v6, v6, 0x10

    .line 83
    .line 84
    or-int/2addr v1, v6

    .line 85
    add-int/lit8 v6, v7, 0x1

    .line 86
    .line 87
    aget-byte v7, v5, v7

    .line 88
    .line 89
    and-int/lit16 v7, v7, 0xff

    .line 90
    .line 91
    shl-int/lit8 v7, v7, 0x8

    .line 92
    .line 93
    or-int/2addr v1, v7

    .line 94
    add-int/lit8 v7, v6, 0x1

    .line 95
    .line 96
    aget-byte v5, v5, v6

    .line 97
    .line 98
    and-int/lit16 v5, v5, 0xff

    .line 99
    .line 100
    or-int/2addr v1, v5

    .line 101
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 102
    .line 103
    .line 104
    move-result-wide v5

    .line 105
    sub-long/2addr v5, v2

    .line 106
    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 107
    .line 108
    .line 109
    if-ne v7, v4, :cond_1

    .line 110
    .line 111
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 116
    .line 117
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    iput v7, v0, Lokio/Segment;->pos:I

    .line 122
    .line 123
    :goto_0
    return v1

    .line 124
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    .line 125
    .line 126
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 127
    .line 128
    .line 129
    throw p0
.end method

.method public static final commonReadLong(Lokio/Buffer;)J
    .locals 14
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x8

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-ltz v4, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget v1, v0, Lokio/Segment;->pos:I

    .line 22
    .line 23
    iget v4, v0, Lokio/Segment;->limit:I

    .line 24
    .line 25
    sub-int v5, v4, v1

    .line 26
    .line 27
    int-to-long v5, v5

    .line 28
    const/16 v7, 0x20

    .line 29
    .line 30
    cmp-long v8, v5, v2

    .line 31
    .line 32
    if-gez v8, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    int-to-long v0, v0

    .line 39
    const-wide v2, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    and-long/2addr v0, v2

    .line 45
    shl-long/2addr v0, v7

    .line 46
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    int-to-long v4, p0

    .line 51
    and-long/2addr v2, v4

    .line 52
    or-long/2addr v0, v2

    .line 53
    return-wide v0

    .line 54
    :cond_0
    iget-object v5, v0, Lokio/Segment;->data:[B

    .line 55
    .line 56
    add-int/lit8 v6, v1, 0x1

    .line 57
    .line 58
    aget-byte v1, v5, v1

    .line 59
    .line 60
    int-to-long v8, v1

    .line 61
    const-wide/16 v10, 0xff

    .line 62
    .line 63
    and-long/2addr v8, v10

    .line 64
    const/16 v1, 0x38

    .line 65
    .line 66
    shl-long/2addr v8, v1

    .line 67
    add-int/lit8 v1, v6, 0x1

    .line 68
    .line 69
    aget-byte v6, v5, v6

    .line 70
    .line 71
    int-to-long v12, v6

    .line 72
    and-long/2addr v12, v10

    .line 73
    const/16 v6, 0x30

    .line 74
    .line 75
    shl-long/2addr v12, v6

    .line 76
    or-long/2addr v8, v12

    .line 77
    add-int/lit8 v6, v1, 0x1

    .line 78
    .line 79
    aget-byte v1, v5, v1

    .line 80
    .line 81
    int-to-long v12, v1

    .line 82
    and-long/2addr v12, v10

    .line 83
    const/16 v1, 0x28

    .line 84
    .line 85
    shl-long/2addr v12, v1

    .line 86
    or-long/2addr v8, v12

    .line 87
    add-int/lit8 v1, v6, 0x1

    .line 88
    .line 89
    aget-byte v6, v5, v6

    .line 90
    .line 91
    int-to-long v12, v6

    .line 92
    and-long/2addr v12, v10

    .line 93
    shl-long v6, v12, v7

    .line 94
    .line 95
    or-long/2addr v6, v8

    .line 96
    add-int/lit8 v8, v1, 0x1

    .line 97
    .line 98
    aget-byte v1, v5, v1

    .line 99
    .line 100
    int-to-long v12, v1

    .line 101
    and-long/2addr v12, v10

    .line 102
    const/16 v1, 0x18

    .line 103
    .line 104
    shl-long/2addr v12, v1

    .line 105
    or-long/2addr v6, v12

    .line 106
    add-int/lit8 v1, v8, 0x1

    .line 107
    .line 108
    aget-byte v8, v5, v8

    .line 109
    .line 110
    int-to-long v8, v8

    .line 111
    and-long/2addr v8, v10

    .line 112
    const/16 v12, 0x10

    .line 113
    .line 114
    shl-long/2addr v8, v12

    .line 115
    or-long/2addr v6, v8

    .line 116
    add-int/lit8 v8, v1, 0x1

    .line 117
    .line 118
    aget-byte v1, v5, v1

    .line 119
    .line 120
    int-to-long v12, v1

    .line 121
    and-long/2addr v12, v10

    .line 122
    const/16 v1, 0x8

    .line 123
    .line 124
    shl-long/2addr v12, v1

    .line 125
    or-long/2addr v6, v12

    .line 126
    add-int/lit8 v1, v8, 0x1

    .line 127
    .line 128
    aget-byte v5, v5, v8

    .line 129
    .line 130
    int-to-long v8, v5

    .line 131
    and-long/2addr v8, v10

    .line 132
    or-long v5, v6, v8

    .line 133
    .line 134
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 135
    .line 136
    .line 137
    move-result-wide v7

    .line 138
    sub-long/2addr v7, v2

    .line 139
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->setSize$okio(J)V

    .line 140
    .line 141
    .line 142
    if-ne v1, v4, :cond_1

    .line 143
    .line 144
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 149
    .line 150
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_1
    iput v1, v0, Lokio/Segment;->pos:I

    .line 155
    .line 156
    :goto_0
    return-wide v5

    .line 157
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    .line 158
    .line 159
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 160
    .line 161
    .line 162
    throw p0
.end method

.method public static final commonReadShort(Lokio/Buffer;)S
    .locals 8
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x2

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-ltz v4, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget v1, v0, Lokio/Segment;->pos:I

    .line 22
    .line 23
    iget v4, v0, Lokio/Segment;->limit:I

    .line 24
    .line 25
    sub-int v5, v4, v1

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    if-ge v5, v6, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    and-int/lit16 v0, v0, 0xff

    .line 35
    .line 36
    shl-int/lit8 v0, v0, 0x8

    .line 37
    .line 38
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    and-int/lit16 p0, p0, 0xff

    .line 43
    .line 44
    or-int/2addr p0, v0

    .line 45
    int-to-short p0, p0

    .line 46
    return p0

    .line 47
    :cond_0
    iget-object v5, v0, Lokio/Segment;->data:[B

    .line 48
    .line 49
    add-int/lit8 v6, v1, 0x1

    .line 50
    .line 51
    aget-byte v1, v5, v1

    .line 52
    .line 53
    and-int/lit16 v1, v1, 0xff

    .line 54
    .line 55
    shl-int/lit8 v1, v1, 0x8

    .line 56
    .line 57
    add-int/lit8 v7, v6, 0x1

    .line 58
    .line 59
    aget-byte v5, v5, v6

    .line 60
    .line 61
    and-int/lit16 v5, v5, 0xff

    .line 62
    .line 63
    or-int/2addr v1, v5

    .line 64
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    sub-long/2addr v5, v2

    .line 69
    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 70
    .line 71
    .line 72
    if-ne v7, v4, :cond_1

    .line 73
    .line 74
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 79
    .line 80
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iput v7, v0, Lokio/Segment;->pos:I

    .line 85
    .line 86
    :goto_0
    int-to-short p0, v1

    .line 87
    return p0

    .line 88
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    .line 89
    .line 90
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public static final commonReadUnsafe(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "unsafeCursor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 26
    .line 27
    iput-boolean v1, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string p1, "already attached to a buffer"

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public static final commonReadUtf8(Lokio/Buffer;J)Ljava/lang/String;
    .locals 8
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    cmp-long v3, p1, v0

    .line 10
    .line 11
    if-ltz v3, :cond_0

    .line 12
    .line 13
    const-wide/32 v0, 0x7fffffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, p1, v0

    .line 17
    .line 18
    if-gtz v4, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    cmp-long v4, v0, p1

    .line 30
    .line 31
    if-ltz v4, :cond_4

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    const-string p0, ""

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget v1, v0, Lokio/Segment;->pos:I

    .line 44
    .line 45
    int-to-long v3, v1

    .line 46
    add-long/2addr v3, p1

    .line 47
    iget v5, v0, Lokio/Segment;->limit:I

    .line 48
    .line 49
    int-to-long v5, v5

    .line 50
    cmp-long v7, v3, v5

    .line 51
    .line 52
    if-lez v7, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const/4 p1, 0x3

    .line 59
    const/4 p2, 0x0

    .line 60
    invoke-static {p0, v2, v2, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_2
    iget-object v2, v0, Lokio/Segment;->data:[B

    .line 66
    .line 67
    long-to-int v3, p1

    .line 68
    add-int v4, v1, v3

    .line 69
    .line 70
    invoke-static {v2, v1, v4}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget v2, v0, Lokio/Segment;->pos:I

    .line 75
    .line 76
    add-int/2addr v2, v3

    .line 77
    iput v2, v0, Lokio/Segment;->pos:I

    .line 78
    .line 79
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    sub-long/2addr v2, p1

    .line 84
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    .line 85
    .line 86
    .line 87
    iget p1, v0, Lokio/Segment;->pos:I

    .line 88
    .line 89
    iget p2, v0, Lokio/Segment;->limit:I

    .line 90
    .line 91
    if-ne p1, p2, :cond_3

    .line 92
    .line 93
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 98
    .line 99
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    return-object v1

    .line 103
    :cond_4
    new-instance p0, Ljava/io/EOFException;

    .line 104
    .line 105
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v0, "byteCount: "

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1
.end method

.method public static final commonReadUtf8CodePoint(Lokio/Buffer;)I
    .locals 14
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-eqz v4, :cond_b

    .line 15
    .line 16
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    and-int/lit16 v1, v0, 0x80

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/16 v3, 0x80

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    const v5, 0xfffd

    .line 27
    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    and-int/lit8 v1, v0, 0x7f

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    const/4 v7, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    and-int/lit16 v1, v0, 0xe0

    .line 37
    .line 38
    const/16 v6, 0xc0

    .line 39
    .line 40
    if-ne v1, v6, :cond_1

    .line 41
    .line 42
    and-int/lit8 v1, v0, 0x1f

    .line 43
    .line 44
    const/4 v6, 0x2

    .line 45
    const/16 v7, 0x80

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    .line 49
    .line 50
    const/16 v6, 0xe0

    .line 51
    .line 52
    if-ne v1, v6, :cond_2

    .line 53
    .line 54
    and-int/lit8 v1, v0, 0xf

    .line 55
    .line 56
    const/4 v6, 0x3

    .line 57
    const/16 v7, 0x800

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    and-int/lit16 v1, v0, 0xf8

    .line 61
    .line 62
    const/16 v6, 0xf0

    .line 63
    .line 64
    if-ne v1, v6, :cond_a

    .line 65
    .line 66
    and-int/lit8 v1, v0, 0x7

    .line 67
    .line 68
    const/4 v6, 0x4

    .line 69
    const/high16 v7, 0x10000

    .line 70
    .line 71
    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    int-to-long v10, v6

    .line 76
    cmp-long v12, v8, v10

    .line 77
    .line 78
    if-ltz v12, :cond_9

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    :goto_1
    if-ge v0, v6, :cond_4

    .line 82
    .line 83
    int-to-long v8, v0

    .line 84
    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->getByte(J)B

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    and-int/lit16 v13, v12, 0xc0

    .line 89
    .line 90
    if-ne v13, v3, :cond_3

    .line 91
    .line 92
    shl-int/lit8 v1, v1, 0x6

    .line 93
    .line 94
    and-int/lit8 v8, v12, 0x3f

    .line 95
    .line 96
    or-int/2addr v1, v8

    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 101
    .line 102
    .line 103
    return v5

    .line 104
    :cond_4
    invoke-virtual {p0, v10, v11}, Lokio/Buffer;->skip(J)V

    .line 105
    .line 106
    .line 107
    const p0, 0x10ffff

    .line 108
    .line 109
    .line 110
    if-le v1, p0, :cond_5

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    const p0, 0xd800

    .line 114
    .line 115
    .line 116
    if-gt p0, v1, :cond_6

    .line 117
    .line 118
    const p0, 0xe000

    .line 119
    .line 120
    .line 121
    if-ge v1, p0, :cond_6

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    :cond_6
    if-eqz v2, :cond_7

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_7
    if-ge v1, v7, :cond_8

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_8
    move v5, v1

    .line 131
    :goto_2
    return v5

    .line 132
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v3, "size < "

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, ": "

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 153
    .line 154
    .line 155
    move-result-wide v3

    .line 156
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string p0, " (to read code point prefixed 0x"

    .line 160
    .line 161
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Lokio/-SegmentedByteString;->toHexString(B)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const/16 p0, 0x29

    .line 172
    .line 173
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-direct {v1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v1

    .line 184
    :cond_a
    const-wide/16 v0, 0x1

    .line 185
    .line 186
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 187
    .line 188
    .line 189
    return v5

    .line 190
    :cond_b
    new-instance p0, Ljava/io/EOFException;

    .line 191
    .line 192
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 193
    .line 194
    .line 195
    throw p0
.end method

.method public static final commonReadUtf8Line(Lokio/Buffer;)Ljava/lang/String;
    .locals 5
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, -0x1

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-static {p0, v0, v1}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long v4, v0, v2

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    :goto_0
    return-object p0
.end method

.method public static final commonReadUtf8LineStrict(Lokio/Buffer;J)Ljava/lang/String;
    .locals 10
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v0

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_4

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    const-wide v2, 0x7fffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmp-long v4, p1, v2

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    add-long v2, p1, v0

    .line 30
    .line 31
    :goto_1
    const/16 v5, 0xa

    .line 32
    .line 33
    const-wide/16 v6, 0x0

    .line 34
    .line 35
    move-object v4, p0

    .line 36
    move-wide v8, v2

    .line 37
    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->indexOf(BJJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    const-wide/16 v6, -0x1

    .line 42
    .line 43
    cmp-long v8, v4, v6

    .line 44
    .line 45
    if-eqz v8, :cond_2

    .line 46
    .line 47
    invoke-static {p0, v4, v5}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    cmp-long v6, v2, v4

    .line 57
    .line 58
    if-gez v6, :cond_3

    .line 59
    .line 60
    sub-long v0, v2, v0

    .line 61
    .line 62
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/16 v1, 0xd

    .line 67
    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/16 v1, 0xa

    .line 75
    .line 76
    if-ne v0, v1, :cond_3

    .line 77
    .line 78
    invoke-static {p0, v2, v3}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_3
    new-instance v6, Lokio/Buffer;

    .line 84
    .line 85
    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 86
    .line 87
    .line 88
    const-wide/16 v2, 0x0

    .line 89
    .line 90
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    const/16 v4, 0x20

    .line 95
    .line 96
    int-to-long v4, v4

    .line 97
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 98
    .line 99
    .line 100
    move-result-wide v4

    .line 101
    move-object v0, p0

    .line 102
    move-object v1, v6

    .line 103
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 104
    .line 105
    .line 106
    new-instance v0, Ljava/io/EOFException;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v2, "\\n not found: limit="

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 123
    .line 124
    .line 125
    move-result-wide p0

    .line 126
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p0, " content="

    .line 130
    .line 131
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const/16 p0, 0x2026

    .line 146
    .line 147
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v0, "limit < 0: "

    .line 164
    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p1
.end method

.method public static final commonResizeBuffer(Lokio/Buffer$UnsafeCursor;J)J
    .locals 16
    .param p0    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    const-string v3, "<this>"

    .line 6
    .line 7
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 11
    .line 12
    if-eqz v3, :cond_8

    .line 13
    .line 14
    iget-boolean v4, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 15
    .line 16
    if-eqz v4, :cond_7

    .line 17
    .line 18
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    const/4 v7, 0x1

    .line 23
    const-wide/16 v8, 0x0

    .line 24
    .line 25
    cmp-long v10, v1, v4

    .line 26
    .line 27
    if-gtz v10, :cond_4

    .line 28
    .line 29
    cmp-long v10, v1, v8

    .line 30
    .line 31
    if-ltz v10, :cond_0

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v6, 0x0

    .line 36
    :goto_0
    if-eqz v6, :cond_3

    .line 37
    .line 38
    sub-long v6, v4, v1

    .line 39
    .line 40
    :goto_1
    cmp-long v10, v6, v8

    .line 41
    .line 42
    if-lez v10, :cond_2

    .line 43
    .line 44
    iget-object v10, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 45
    .line 46
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v10, v10, Lokio/Segment;->prev:Lokio/Segment;

    .line 50
    .line 51
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget v11, v10, Lokio/Segment;->limit:I

    .line 55
    .line 56
    iget v12, v10, Lokio/Segment;->pos:I

    .line 57
    .line 58
    sub-int v12, v11, v12

    .line 59
    .line 60
    int-to-long v12, v12

    .line 61
    cmp-long v14, v12, v6

    .line 62
    .line 63
    if-gtz v14, :cond_1

    .line 64
    .line 65
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    iput-object v11, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 70
    .line 71
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 72
    .line 73
    .line 74
    sub-long/2addr v6, v12

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    long-to-int v7, v6

    .line 77
    sub-int/2addr v11, v7

    .line 78
    iput v11, v10, Lokio/Segment;->limit:I

    .line 79
    .line 80
    :cond_2
    const/4 v6, 0x0

    .line 81
    invoke-virtual {v0, v6}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    .line 82
    .line 83
    .line 84
    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 85
    .line 86
    iput-object v6, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 87
    .line 88
    const/4 v6, -0x1

    .line 89
    iput v6, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 90
    .line 91
    iput v6, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v3, "newSize < 0: "

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :cond_4
    if-lez v10, :cond_6

    .line 122
    .line 123
    sub-long v10, v1, v4

    .line 124
    .line 125
    const/4 v12, 0x1

    .line 126
    :goto_2
    cmp-long v13, v10, v8

    .line 127
    .line 128
    if-lez v13, :cond_6

    .line 129
    .line 130
    invoke-virtual {v3, v7}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    iget v14, v13, Lokio/Segment;->limit:I

    .line 135
    .line 136
    rsub-int v14, v14, 0x2000

    .line 137
    .line 138
    int-to-long v14, v14

    .line 139
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 140
    .line 141
    .line 142
    move-result-wide v14

    .line 143
    long-to-int v15, v14

    .line 144
    iget v14, v13, Lokio/Segment;->limit:I

    .line 145
    .line 146
    add-int/2addr v14, v15

    .line 147
    iput v14, v13, Lokio/Segment;->limit:I

    .line 148
    .line 149
    int-to-long v6, v15

    .line 150
    sub-long/2addr v10, v6

    .line 151
    if-eqz v12, :cond_5

    .line 152
    .line 153
    invoke-virtual {v0, v13}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    .line 154
    .line 155
    .line 156
    iput-wide v4, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 157
    .line 158
    iget-object v6, v13, Lokio/Segment;->data:[B

    .line 159
    .line 160
    iput-object v6, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 161
    .line 162
    iget v6, v13, Lokio/Segment;->limit:I

    .line 163
    .line 164
    sub-int v7, v6, v15

    .line 165
    .line 166
    iput v7, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 167
    .line 168
    iput v6, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 169
    .line 170
    const/4 v7, 0x1

    .line 171
    const/4 v12, 0x0

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    const/4 v7, 0x1

    .line 174
    goto :goto_2

    .line 175
    :cond_6
    :goto_3
    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->setSize$okio(J)V

    .line 176
    .line 177
    .line 178
    return-wide v4

    .line 179
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    const-string v1, "resizeBuffer() only permitted for read/write buffers"

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 192
    .line 193
    const-string v1, "not attached to a buffer"

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v0
.end method

.method public static final commonSeek(Lokio/Buffer$UnsafeCursor;J)I
    .locals 12
    .param p0    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    const-wide/16 v1, -0x1

    .line 11
    .line 12
    cmp-long v3, p1, v1

    .line 13
    .line 14
    if-ltz v3, :cond_9

    .line 15
    .line 16
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    cmp-long v4, p1, v1

    .line 21
    .line 22
    if-gtz v4, :cond_9

    .line 23
    .line 24
    if-eqz v3, :cond_8

    .line 25
    .line 26
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    cmp-long v3, p1, v1

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 41
    .line 42
    invoke-virtual {p0}, Lokio/Buffer$UnsafeCursor;->getSegment$okio()Lokio/Segment;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget-wide v7, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 51
    .line 52
    iget v4, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 53
    .line 54
    invoke-virtual {p0}, Lokio/Buffer$UnsafeCursor;->getSegment$okio()Lokio/Segment;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget v9, v9, Lokio/Segment;->pos:I

    .line 62
    .line 63
    sub-int/2addr v4, v9

    .line 64
    int-to-long v9, v4

    .line 65
    sub-long/2addr v7, v9

    .line 66
    cmp-long v4, v7, p1

    .line 67
    .line 68
    if-lez v4, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0}, Lokio/Buffer$UnsafeCursor;->getSegment$okio()Lokio/Segment;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    move-object v4, v3

    .line 75
    move-object v3, v1

    .line 76
    move-wide v1, v7

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer$UnsafeCursor;->getSegment$okio()Lokio/Segment;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    move-wide v5, v7

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move-object v4, v3

    .line 85
    :goto_0
    sub-long v7, v1, p1

    .line 86
    .line 87
    sub-long v9, p1, v5

    .line 88
    .line 89
    cmp-long v11, v7, v9

    .line 90
    .line 91
    if-lez v11, :cond_3

    .line 92
    .line 93
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget v1, v4, Lokio/Segment;->limit:I

    .line 97
    .line 98
    iget v2, v4, Lokio/Segment;->pos:I

    .line 99
    .line 100
    sub-int v3, v1, v2

    .line 101
    .line 102
    int-to-long v7, v3

    .line 103
    add-long/2addr v7, v5

    .line 104
    cmp-long v3, p1, v7

    .line 105
    .line 106
    if-ltz v3, :cond_5

    .line 107
    .line 108
    sub-int/2addr v1, v2

    .line 109
    int-to-long v1, v1

    .line 110
    add-long/2addr v5, v1

    .line 111
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :goto_2
    cmp-long v4, v1, p1

    .line 115
    .line 116
    if-lez v4, :cond_4

    .line 117
    .line 118
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 122
    .line 123
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget v4, v3, Lokio/Segment;->limit:I

    .line 127
    .line 128
    iget v5, v3, Lokio/Segment;->pos:I

    .line 129
    .line 130
    sub-int/2addr v4, v5

    .line 131
    int-to-long v4, v4

    .line 132
    sub-long/2addr v1, v4

    .line 133
    goto :goto_2

    .line 134
    :cond_4
    move-wide v5, v1

    .line 135
    move-object v4, v3

    .line 136
    :cond_5
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 137
    .line 138
    if-eqz v1, :cond_7

    .line 139
    .line 140
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-boolean v1, v4, Lokio/Segment;->shared:Z

    .line 144
    .line 145
    if-eqz v1, :cond_7

    .line 146
    .line 147
    invoke-virtual {v4}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 152
    .line 153
    if-ne v2, v4, :cond_6

    .line 154
    .line 155
    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 156
    .line 157
    :cond_6
    invoke-virtual {v4, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    iget-object v0, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 162
    .line 163
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 167
    .line 168
    .line 169
    :cond_7
    invoke-virtual {p0, v4}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    .line 170
    .line 171
    .line 172
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 173
    .line 174
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, v4, Lokio/Segment;->data:[B

    .line 178
    .line 179
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 180
    .line 181
    iget v0, v4, Lokio/Segment;->pos:I

    .line 182
    .line 183
    sub-long/2addr p1, v5

    .line 184
    long-to-int p2, p1

    .line 185
    add-int/2addr v0, p2

    .line 186
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 187
    .line 188
    iget p1, v4, Lokio/Segment;->limit:I

    .line 189
    .line 190
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 191
    .line 192
    sub-int/2addr p1, v0

    .line 193
    return p1

    .line 194
    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    .line 196
    .line 197
    .line 198
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 199
    .line 200
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 201
    .line 202
    const/4 p1, -0x1

    .line 203
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 204
    .line 205
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 206
    .line 207
    return p1

    .line 208
    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 209
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v2, "offset="

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string p1, " > size="

    .line 224
    .line 225
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 229
    .line 230
    .line 231
    move-result-wide p1

    .line 232
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw p0

    .line 243
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 244
    .line 245
    const-string p1, "not attached to a buffer"

    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p0
.end method

.method public static final commonSelect(Lokio/Buffer;Lokio/Options;)I
    .locals 3
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "options"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p0, p1, v2, v0, v1}, Lokio/internal/-Buffer;->selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$okio()[Lokio/ByteString;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    aget-object p1, p1, v0

    .line 27
    .line 28
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    int-to-long v1, p1

    .line 33
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 34
    .line 35
    .line 36
    return v0
.end method

.method public static final commonSkip(Lokio/Buffer;J)V
    .locals 7
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v0

    .line 9
    .line 10
    if-lez v2, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v1, v0, Lokio/Segment;->limit:I

    .line 17
    .line 18
    iget v2, v0, Lokio/Segment;->pos:I

    .line 19
    .line 20
    sub-int/2addr v1, v2

    .line 21
    int-to-long v1, v1

    .line 22
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    long-to-int v2, v1

    .line 27
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    int-to-long v5, v2

    .line 32
    sub-long/2addr v3, v5

    .line 33
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 34
    .line 35
    .line 36
    sub-long/2addr p1, v5

    .line 37
    iget v1, v0, Lokio/Segment;->pos:I

    .line 38
    .line 39
    add-int/2addr v1, v2

    .line 40
    iput v1, v0, Lokio/Segment;->pos:I

    .line 41
    .line 42
    iget v2, v0, Lokio/Segment;->limit:I

    .line 43
    .line 44
    if-ne v1, v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 51
    .line 52
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    return-void
.end method

.method public static final commonSnapshot(Lokio/Buffer;)Lokio/ByteString;
    .locals 5
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonSnapshot(Lokio/Buffer;I)Lokio/ByteString;
    .locals 7
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 4
    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 6
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 8
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "s.limit == s.pos"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 10
    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    .line 11
    new-array v2, v2, [I

    .line 12
    iget-object p0, p0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v4, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    .line 13
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lokio/Segment;->data:[B

    aput-object v5, v0, v4

    .line 14
    iget v5, p0, Lokio/Segment;->limit:I

    iget v6, p0, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 15
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v2, v4

    add-int v5, v4, v3

    .line 16
    iget v6, p0, Lokio/Segment;->pos:I

    aput v6, v2, v5

    const/4 v5, 0x1

    .line 17
    iput-boolean v5, p0, Lokio/Segment;->shared:Z

    add-int/2addr v4, v5

    .line 18
    iget-object p0, p0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 19
    :cond_3
    new-instance p0, Lokio/SegmentedByteString;

    invoke-direct {p0, v0, v2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    return-object p0
.end method

.method public static final commonWritableSegment(Lokio/Buffer;I)Lokio/Segment;
    .locals 2
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x2000

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-lt p1, v1, :cond_0

    .line 10
    .line 11
    if-gt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-eqz v1, :cond_4

    .line 16
    .line 17
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 26
    .line 27
    iput-object p1, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 28
    .line 29
    iput-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lokio/Segment;->limit:I

    .line 41
    .line 42
    add-int/2addr v1, p1

    .line 43
    if-gt v1, v0, :cond_2

    .line 44
    .line 45
    iget-boolean p1, p0, Lokio/Segment;->owner:Z

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    :cond_2
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :cond_3
    return-object p0

    .line 58
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string p1, "unexpected capacity"

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/ByteString;II)Lokio/Buffer;
    .locals 1
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0, p2, p3}, Lokio/ByteString;->write$okio(Lokio/Buffer;II)V

    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/Source;J)Lokio/Buffer;
    .locals 5
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 11
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sub-long/2addr p2, v0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;[B)Lokio/Buffer;
    .locals 2
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;[BII)Lokio/Buffer;
    .locals 9
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v0

    sub-int v1, p3, p2

    .line 5
    iget v2, v0, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6
    iget-object v2, v0, Lokio/Segment;->data:[B

    .line 7
    iget v3, v0, Lokio/Segment;->limit:I

    add-int v4, p2, v1

    .line 8
    invoke-static {p1, v2, v3, p2, v4}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 9
    iget p2, v0, Lokio/Segment;->limit:I

    add-int/2addr p2, v1

    iput p2, v0, Lokio/Segment;->limit:I

    move p2, v4

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide p1

    add-long/2addr p1, v7

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->setSize$okio(J)V

    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/Buffer;J)V
    .locals 8
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_6

    .line 14
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lokio/Segment;->limit:I

    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-gez v3, :cond_4

    .line 15
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 16
    iget-boolean v2, v1, Lokio/Segment;->owner:Z

    if-eqz v2, :cond_3

    .line 17
    iget v2, v1, Lokio/Segment;->limit:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    iget-boolean v4, v1, Lokio/Segment;->shared:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    iget v4, v1, Lokio/Segment;->pos:I

    :goto_3
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2000

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    .line 18
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 19
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->setSize$okio(J)V

    .line 20
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->setSize$okio(J)V

    return-void

    .line 21
    :cond_3
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 22
    :cond_4
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 24
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 25
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_5

    .line 26
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 27
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 28
    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_4

    .line 29
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 30
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lokio/Segment;->compact()V

    .line 32
    :goto_4
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 33
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    sub-long/2addr p2, v2

    goto/16 :goto_1

    :cond_6
    return-void

    .line 34
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == this"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic commonWrite$default(Lokio/Buffer;Lokio/ByteString;IIILjava/lang/Object;)Lokio/Buffer;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    :cond_1
    const-string p4, "<this>"

    .line 15
    .line 16
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p4, "byteString"

    .line 20
    .line 21
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0, p2, p3}, Lokio/ByteString;->write$okio(Lokio/Buffer;II)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public static final commonWriteAll(Lokio/Buffer;Lokio/Source;)J
    .locals 7
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "source"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    :goto_0
    const-wide/16 v2, 0x2000

    .line 14
    .line 15
    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    const-wide/16 v4, -0x1

    .line 20
    .line 21
    cmp-long v6, v2, v4

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    add-long/2addr v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-wide v0
.end method

.method public static final commonWriteByte(Lokio/Buffer;I)Lokio/Buffer;
    .locals 4
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 12
    .line 13
    iget v2, v0, Lokio/Segment;->limit:I

    .line 14
    .line 15
    add-int/lit8 v3, v2, 0x1

    .line 16
    .line 17
    iput v3, v0, Lokio/Segment;->limit:I

    .line 18
    .line 19
    int-to-byte p1, p1

    .line 20
    aput-byte p1, v1, v2

    .line 21
    .line 22
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, 0x1

    .line 27
    .line 28
    add-long/2addr v0, v2

    .line 29
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->setSize$okio(J)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public static final commonWriteDecimalLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 12
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v0

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x30

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const/4 v3, 0x1

    .line 20
    if-gez v2, :cond_2

    .line 21
    .line 22
    neg-long p1, p1

    .line 23
    cmp-long v2, p1, v0

    .line 24
    .line 25
    if-gez v2, :cond_1

    .line 26
    .line 27
    const-string p1, "-9223372036854775808"

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    const/4 v2, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v2, 0x0

    .line 37
    :goto_0
    const-wide/32 v4, 0x5f5e100

    .line 38
    .line 39
    .line 40
    const/16 v6, 0xa

    .line 41
    .line 42
    cmp-long v7, p1, v4

    .line 43
    .line 44
    if-gez v7, :cond_a

    .line 45
    .line 46
    const-wide/16 v4, 0x2710

    .line 47
    .line 48
    cmp-long v7, p1, v4

    .line 49
    .line 50
    if-gez v7, :cond_6

    .line 51
    .line 52
    const-wide/16 v4, 0x64

    .line 53
    .line 54
    cmp-long v7, p1, v4

    .line 55
    .line 56
    if-gez v7, :cond_4

    .line 57
    .line 58
    const-wide/16 v4, 0xa

    .line 59
    .line 60
    cmp-long v7, p1, v4

    .line 61
    .line 62
    if-gez v7, :cond_3

    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_3
    const/4 v3, 0x2

    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_4
    const-wide/16 v3, 0x3e8

    .line 70
    .line 71
    cmp-long v5, p1, v3

    .line 72
    .line 73
    if-gez v5, :cond_5

    .line 74
    .line 75
    const/4 v3, 0x3

    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_5
    const/4 v3, 0x4

    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :cond_6
    const-wide/32 v3, 0xf4240

    .line 82
    .line 83
    .line 84
    cmp-long v5, p1, v3

    .line 85
    .line 86
    if-gez v5, :cond_8

    .line 87
    .line 88
    const-wide/32 v3, 0x186a0

    .line 89
    .line 90
    .line 91
    cmp-long v5, p1, v3

    .line 92
    .line 93
    if-gez v5, :cond_7

    .line 94
    .line 95
    const/4 v3, 0x5

    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_7
    const/4 v3, 0x6

    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_8
    const-wide/32 v3, 0x989680

    .line 102
    .line 103
    .line 104
    cmp-long v5, p1, v3

    .line 105
    .line 106
    if-gez v5, :cond_9

    .line 107
    .line 108
    const/4 v3, 0x7

    .line 109
    goto/16 :goto_1

    .line 110
    .line 111
    :cond_9
    const/16 v3, 0x8

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_a
    const-wide v3, 0xe8d4a51000L

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    cmp-long v5, p1, v3

    .line 121
    .line 122
    if-gez v5, :cond_e

    .line 123
    .line 124
    const-wide v3, 0x2540be400L

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    cmp-long v5, p1, v3

    .line 130
    .line 131
    if-gez v5, :cond_c

    .line 132
    .line 133
    const-wide/32 v3, 0x3b9aca00

    .line 134
    .line 135
    .line 136
    cmp-long v5, p1, v3

    .line 137
    .line 138
    if-gez v5, :cond_b

    .line 139
    .line 140
    const/16 v3, 0x9

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_b
    const/16 v3, 0xa

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_c
    const-wide v3, 0x174876e800L

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    cmp-long v5, p1, v3

    .line 152
    .line 153
    if-gez v5, :cond_d

    .line 154
    .line 155
    const/16 v3, 0xb

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_d
    const/16 v3, 0xc

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    cmp-long v5, p1, v3

    .line 167
    .line 168
    if-gez v5, :cond_11

    .line 169
    .line 170
    const-wide v3, 0x9184e72a000L

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    cmp-long v5, p1, v3

    .line 176
    .line 177
    if-gez v5, :cond_f

    .line 178
    .line 179
    const/16 v3, 0xd

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_f
    const-wide v3, 0x5af3107a4000L

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    cmp-long v5, p1, v3

    .line 188
    .line 189
    if-gez v5, :cond_10

    .line 190
    .line 191
    const/16 v3, 0xe

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_10
    const/16 v3, 0xf

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_11
    const-wide v3, 0x16345785d8a0000L

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    cmp-long v5, p1, v3

    .line 203
    .line 204
    if-gez v5, :cond_13

    .line 205
    .line 206
    const-wide v3, 0x2386f26fc10000L

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    cmp-long v5, p1, v3

    .line 212
    .line 213
    if-gez v5, :cond_12

    .line 214
    .line 215
    const/16 v3, 0x10

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_12
    const/16 v3, 0x11

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    cmp-long v5, p1, v3

    .line 227
    .line 228
    if-gez v5, :cond_14

    .line 229
    .line 230
    const/16 v3, 0x12

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_14
    const/16 v3, 0x13

    .line 234
    .line 235
    :goto_1
    if-eqz v2, :cond_15

    .line 236
    .line 237
    add-int/lit8 v3, v3, 0x1

    .line 238
    .line 239
    :cond_15
    invoke-virtual {p0, v3}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    iget-object v5, v4, Lokio/Segment;->data:[B

    .line 244
    .line 245
    iget v7, v4, Lokio/Segment;->limit:I

    .line 246
    .line 247
    add-int/2addr v7, v3

    .line 248
    :goto_2
    cmp-long v8, p1, v0

    .line 249
    .line 250
    if-eqz v8, :cond_16

    .line 251
    .line 252
    int-to-long v8, v6

    .line 253
    rem-long v10, p1, v8

    .line 254
    .line 255
    long-to-int v11, v10

    .line 256
    add-int/lit8 v7, v7, -0x1

    .line 257
    .line 258
    invoke-static {}, Lokio/internal/-Buffer;->getHEX_DIGIT_BYTES()[B

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    aget-byte v10, v10, v11

    .line 263
    .line 264
    aput-byte v10, v5, v7

    .line 265
    .line 266
    div-long/2addr p1, v8

    .line 267
    goto :goto_2

    .line 268
    :cond_16
    if-eqz v2, :cond_17

    .line 269
    .line 270
    add-int/lit8 v7, v7, -0x1

    .line 271
    .line 272
    const/16 p1, 0x2d

    .line 273
    .line 274
    aput-byte p1, v5, v7

    .line 275
    .line 276
    :cond_17
    iget p1, v4, Lokio/Segment;->limit:I

    .line 277
    .line 278
    add-int/2addr p1, v3

    .line 279
    iput p1, v4, Lokio/Segment;->limit:I

    .line 280
    .line 281
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 282
    .line 283
    .line 284
    move-result-wide p1

    .line 285
    int-to-long v0, v3

    .line 286
    add-long/2addr p1, v0

    .line 287
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->setSize$okio(J)V

    .line 288
    .line 289
    .line 290
    return-object p0
.end method

.method public static final commonWriteHexadecimalUnsignedLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 12
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v0

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x30

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    ushr-long v1, p1, v0

    .line 21
    .line 22
    or-long/2addr v1, p1

    .line 23
    const/4 v3, 0x2

    .line 24
    ushr-long v4, v1, v3

    .line 25
    .line 26
    or-long/2addr v1, v4

    .line 27
    const/4 v4, 0x4

    .line 28
    ushr-long v5, v1, v4

    .line 29
    .line 30
    or-long/2addr v1, v5

    .line 31
    const/16 v5, 0x8

    .line 32
    .line 33
    ushr-long v6, v1, v5

    .line 34
    .line 35
    or-long/2addr v1, v6

    .line 36
    const/16 v6, 0x10

    .line 37
    .line 38
    ushr-long v7, v1, v6

    .line 39
    .line 40
    or-long/2addr v1, v7

    .line 41
    const/16 v7, 0x20

    .line 42
    .line 43
    ushr-long v8, v1, v7

    .line 44
    .line 45
    or-long/2addr v1, v8

    .line 46
    ushr-long v8, v1, v0

    .line 47
    .line 48
    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    and-long/2addr v8, v10

    .line 54
    sub-long/2addr v1, v8

    .line 55
    ushr-long v8, v1, v3

    .line 56
    .line 57
    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    and-long/2addr v8, v10

    .line 63
    and-long/2addr v1, v10

    .line 64
    add-long/2addr v8, v1

    .line 65
    ushr-long v1, v8, v4

    .line 66
    .line 67
    add-long/2addr v1, v8

    .line 68
    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    and-long/2addr v1, v8

    .line 74
    ushr-long v8, v1, v5

    .line 75
    .line 76
    add-long/2addr v1, v8

    .line 77
    ushr-long v5, v1, v6

    .line 78
    .line 79
    add-long/2addr v1, v5

    .line 80
    const-wide/16 v5, 0x3f

    .line 81
    .line 82
    and-long v8, v1, v5

    .line 83
    .line 84
    ushr-long/2addr v1, v7

    .line 85
    and-long/2addr v1, v5

    .line 86
    add-long/2addr v8, v1

    .line 87
    const/4 v1, 0x3

    .line 88
    int-to-long v1, v1

    .line 89
    add-long/2addr v8, v1

    .line 90
    int-to-long v1, v4

    .line 91
    div-long/2addr v8, v1

    .line 92
    long-to-int v1, v8

    .line 93
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 98
    .line 99
    iget v5, v2, Lokio/Segment;->limit:I

    .line 100
    .line 101
    add-int v6, v5, v1

    .line 102
    .line 103
    sub-int/2addr v6, v0

    .line 104
    :goto_0
    if-lt v6, v5, :cond_1

    .line 105
    .line 106
    invoke-static {}, Lokio/internal/-Buffer;->getHEX_DIGIT_BYTES()[B

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-wide/16 v7, 0xf

    .line 111
    .line 112
    and-long/2addr v7, p1

    .line 113
    long-to-int v8, v7

    .line 114
    aget-byte v0, v0, v8

    .line 115
    .line 116
    aput-byte v0, v3, v6

    .line 117
    .line 118
    ushr-long/2addr p1, v4

    .line 119
    add-int/lit8 v6, v6, -0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    iget p1, v2, Lokio/Segment;->limit:I

    .line 123
    .line 124
    add-int/2addr p1, v1

    .line 125
    iput p1, v2, Lokio/Segment;->limit:I

    .line 126
    .line 127
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 128
    .line 129
    .line 130
    move-result-wide p1

    .line 131
    int-to-long v0, v1

    .line 132
    add-long/2addr p1, v0

    .line 133
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->setSize$okio(J)V

    .line 134
    .line 135
    .line 136
    return-object p0
.end method

.method public static final commonWriteInt(Lokio/Buffer;I)Lokio/Buffer;
    .locals 5
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 12
    .line 13
    iget v2, v0, Lokio/Segment;->limit:I

    .line 14
    .line 15
    add-int/lit8 v3, v2, 0x1

    .line 16
    .line 17
    ushr-int/lit8 v4, p1, 0x18

    .line 18
    .line 19
    and-int/lit16 v4, v4, 0xff

    .line 20
    .line 21
    int-to-byte v4, v4

    .line 22
    aput-byte v4, v1, v2

    .line 23
    .line 24
    add-int/lit8 v2, v3, 0x1

    .line 25
    .line 26
    ushr-int/lit8 v4, p1, 0x10

    .line 27
    .line 28
    and-int/lit16 v4, v4, 0xff

    .line 29
    .line 30
    int-to-byte v4, v4

    .line 31
    aput-byte v4, v1, v3

    .line 32
    .line 33
    add-int/lit8 v3, v2, 0x1

    .line 34
    .line 35
    ushr-int/lit8 v4, p1, 0x8

    .line 36
    .line 37
    and-int/lit16 v4, v4, 0xff

    .line 38
    .line 39
    int-to-byte v4, v4

    .line 40
    aput-byte v4, v1, v2

    .line 41
    .line 42
    add-int/lit8 v2, v3, 0x1

    .line 43
    .line 44
    and-int/lit16 p1, p1, 0xff

    .line 45
    .line 46
    int-to-byte p1, p1

    .line 47
    aput-byte p1, v1, v3

    .line 48
    .line 49
    iput v2, v0, Lokio/Segment;->limit:I

    .line 50
    .line 51
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    const-wide/16 v2, 0x4

    .line 56
    .line 57
    add-long/2addr v0, v2

    .line 58
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->setSize$okio(J)V

    .line 59
    .line 60
    .line 61
    return-object p0
.end method

.method public static final commonWriteLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 9
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 13
    .line 14
    iget v3, v1, Lokio/Segment;->limit:I

    .line 15
    .line 16
    add-int/lit8 v4, v3, 0x1

    .line 17
    .line 18
    const/16 v5, 0x38

    .line 19
    .line 20
    ushr-long v5, p1, v5

    .line 21
    .line 22
    const-wide/16 v7, 0xff

    .line 23
    .line 24
    and-long/2addr v5, v7

    .line 25
    long-to-int v6, v5

    .line 26
    int-to-byte v5, v6

    .line 27
    aput-byte v5, v2, v3

    .line 28
    .line 29
    add-int/lit8 v3, v4, 0x1

    .line 30
    .line 31
    const/16 v5, 0x30

    .line 32
    .line 33
    ushr-long v5, p1, v5

    .line 34
    .line 35
    and-long/2addr v5, v7

    .line 36
    long-to-int v6, v5

    .line 37
    int-to-byte v5, v6

    .line 38
    aput-byte v5, v2, v4

    .line 39
    .line 40
    add-int/lit8 v4, v3, 0x1

    .line 41
    .line 42
    const/16 v5, 0x28

    .line 43
    .line 44
    ushr-long v5, p1, v5

    .line 45
    .line 46
    and-long/2addr v5, v7

    .line 47
    long-to-int v6, v5

    .line 48
    int-to-byte v5, v6

    .line 49
    aput-byte v5, v2, v3

    .line 50
    .line 51
    add-int/lit8 v3, v4, 0x1

    .line 52
    .line 53
    const/16 v5, 0x20

    .line 54
    .line 55
    ushr-long v5, p1, v5

    .line 56
    .line 57
    and-long/2addr v5, v7

    .line 58
    long-to-int v6, v5

    .line 59
    int-to-byte v5, v6

    .line 60
    aput-byte v5, v2, v4

    .line 61
    .line 62
    add-int/lit8 v4, v3, 0x1

    .line 63
    .line 64
    const/16 v5, 0x18

    .line 65
    .line 66
    ushr-long v5, p1, v5

    .line 67
    .line 68
    and-long/2addr v5, v7

    .line 69
    long-to-int v6, v5

    .line 70
    int-to-byte v5, v6

    .line 71
    aput-byte v5, v2, v3

    .line 72
    .line 73
    add-int/lit8 v3, v4, 0x1

    .line 74
    .line 75
    const/16 v5, 0x10

    .line 76
    .line 77
    ushr-long v5, p1, v5

    .line 78
    .line 79
    and-long/2addr v5, v7

    .line 80
    long-to-int v6, v5

    .line 81
    int-to-byte v5, v6

    .line 82
    aput-byte v5, v2, v4

    .line 83
    .line 84
    add-int/lit8 v4, v3, 0x1

    .line 85
    .line 86
    ushr-long v5, p1, v0

    .line 87
    .line 88
    and-long/2addr v5, v7

    .line 89
    long-to-int v0, v5

    .line 90
    int-to-byte v0, v0

    .line 91
    aput-byte v0, v2, v3

    .line 92
    .line 93
    add-int/lit8 v0, v4, 0x1

    .line 94
    .line 95
    and-long/2addr p1, v7

    .line 96
    long-to-int p2, p1

    .line 97
    int-to-byte p1, p2

    .line 98
    aput-byte p1, v2, v4

    .line 99
    .line 100
    iput v0, v1, Lokio/Segment;->limit:I

    .line 101
    .line 102
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 103
    .line 104
    .line 105
    move-result-wide p1

    .line 106
    const-wide/16 v0, 0x8

    .line 107
    .line 108
    add-long/2addr p1, v0

    .line 109
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->setSize$okio(J)V

    .line 110
    .line 111
    .line 112
    return-object p0
.end method

.method public static final commonWriteShort(Lokio/Buffer;I)Lokio/Buffer;
    .locals 5
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 12
    .line 13
    iget v2, v0, Lokio/Segment;->limit:I

    .line 14
    .line 15
    add-int/lit8 v3, v2, 0x1

    .line 16
    .line 17
    ushr-int/lit8 v4, p1, 0x8

    .line 18
    .line 19
    and-int/lit16 v4, v4, 0xff

    .line 20
    .line 21
    int-to-byte v4, v4

    .line 22
    aput-byte v4, v1, v2

    .line 23
    .line 24
    add-int/lit8 v2, v3, 0x1

    .line 25
    .line 26
    and-int/lit16 p1, p1, 0xff

    .line 27
    .line 28
    int-to-byte p1, p1

    .line 29
    aput-byte p1, v1, v3

    .line 30
    .line 31
    iput v2, v0, Lokio/Segment;->limit:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    const-wide/16 v2, 0x2

    .line 38
    .line 39
    add-long/2addr v0, v2

    .line 40
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->setSize$okio(J)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method

.method public static final commonWriteUtf8(Lokio/Buffer;Ljava/lang/String;II)Lokio/Buffer;
    .locals 11
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "string"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ltz p2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-eqz v2, :cond_f

    .line 19
    .line 20
    if-lt p3, p2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_1
    if-eqz v2, :cond_e

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-gt p3, v2, :cond_2

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    const/4 v2, 0x0

    .line 36
    :goto_2
    if-eqz v2, :cond_d

    .line 37
    .line 38
    :goto_3
    if-ge p2, p3, :cond_c

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/16 v3, 0x80

    .line 45
    .line 46
    if-ge v2, v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v5, v4, Lokio/Segment;->data:[B

    .line 53
    .line 54
    iget v6, v4, Lokio/Segment;->limit:I

    .line 55
    .line 56
    sub-int/2addr v6, p2

    .line 57
    rsub-int v7, v6, 0x2000

    .line 58
    .line 59
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    add-int/lit8 v8, p2, 0x1

    .line 64
    .line 65
    add-int/2addr p2, v6

    .line 66
    int-to-byte v2, v2

    .line 67
    aput-byte v2, v5, p2

    .line 68
    .line 69
    :goto_4
    move p2, v8

    .line 70
    if-ge p2, v7, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-ge v2, v3, :cond_3

    .line 77
    .line 78
    add-int/lit8 v8, p2, 0x1

    .line 79
    .line 80
    add-int/2addr p2, v6

    .line 81
    int-to-byte v2, v2

    .line 82
    aput-byte v2, v5, p2

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_3
    add-int/2addr v6, p2

    .line 86
    iget v2, v4, Lokio/Segment;->limit:I

    .line 87
    .line 88
    sub-int/2addr v6, v2

    .line 89
    add-int/2addr v2, v6

    .line 90
    iput v2, v4, Lokio/Segment;->limit:I

    .line 91
    .line 92
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    int-to-long v4, v6

    .line 97
    add-long/2addr v2, v4

    .line 98
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    const/16 v4, 0x800

    .line 103
    .line 104
    if-ge v2, v4, :cond_5

    .line 105
    .line 106
    const/4 v4, 0x2

    .line 107
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 112
    .line 113
    iget v7, v5, Lokio/Segment;->limit:I

    .line 114
    .line 115
    shr-int/lit8 v8, v2, 0x6

    .line 116
    .line 117
    or-int/lit16 v8, v8, 0xc0

    .line 118
    .line 119
    int-to-byte v8, v8

    .line 120
    aput-byte v8, v6, v7

    .line 121
    .line 122
    add-int/lit8 v8, v7, 0x1

    .line 123
    .line 124
    and-int/lit8 v2, v2, 0x3f

    .line 125
    .line 126
    or-int/2addr v2, v3

    .line 127
    int-to-byte v2, v2

    .line 128
    aput-byte v2, v6, v8

    .line 129
    .line 130
    add-int/2addr v7, v4

    .line 131
    iput v7, v5, Lokio/Segment;->limit:I

    .line 132
    .line 133
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 134
    .line 135
    .line 136
    move-result-wide v2

    .line 137
    const-wide/16 v4, 0x2

    .line 138
    .line 139
    add-long/2addr v2, v4

    .line 140
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    .line 141
    .line 142
    .line 143
    :goto_5
    add-int/lit8 p2, p2, 0x1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_5
    const v4, 0xd800

    .line 147
    .line 148
    .line 149
    const/16 v5, 0x3f

    .line 150
    .line 151
    if-lt v2, v4, :cond_b

    .line 152
    .line 153
    const v4, 0xdfff

    .line 154
    .line 155
    .line 156
    if-le v2, v4, :cond_6

    .line 157
    .line 158
    goto :goto_9

    .line 159
    :cond_6
    add-int/lit8 v4, p2, 0x1

    .line 160
    .line 161
    if-ge v4, p3, :cond_7

    .line 162
    .line 163
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    goto :goto_6

    .line 168
    :cond_7
    const/4 v6, 0x0

    .line 169
    :goto_6
    const v7, 0xdbff

    .line 170
    .line 171
    .line 172
    if-gt v2, v7, :cond_a

    .line 173
    .line 174
    const v7, 0xdc00

    .line 175
    .line 176
    .line 177
    if-gt v7, v6, :cond_8

    .line 178
    .line 179
    const v7, 0xe000

    .line 180
    .line 181
    .line 182
    if-ge v6, v7, :cond_8

    .line 183
    .line 184
    const/4 v7, 0x1

    .line 185
    goto :goto_7

    .line 186
    :cond_8
    const/4 v7, 0x0

    .line 187
    :goto_7
    if-nez v7, :cond_9

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_9
    and-int/lit16 v2, v2, 0x3ff

    .line 191
    .line 192
    shl-int/lit8 v2, v2, 0xa

    .line 193
    .line 194
    and-int/lit16 v4, v6, 0x3ff

    .line 195
    .line 196
    or-int/2addr v2, v4

    .line 197
    const/high16 v4, 0x10000

    .line 198
    .line 199
    add-int/2addr v2, v4

    .line 200
    const/4 v4, 0x4

    .line 201
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    iget-object v7, v6, Lokio/Segment;->data:[B

    .line 206
    .line 207
    iget v8, v6, Lokio/Segment;->limit:I

    .line 208
    .line 209
    shr-int/lit8 v9, v2, 0x12

    .line 210
    .line 211
    or-int/lit16 v9, v9, 0xf0

    .line 212
    .line 213
    int-to-byte v9, v9

    .line 214
    aput-byte v9, v7, v8

    .line 215
    .line 216
    add-int/lit8 v9, v8, 0x1

    .line 217
    .line 218
    shr-int/lit8 v10, v2, 0xc

    .line 219
    .line 220
    and-int/2addr v10, v5

    .line 221
    or-int/2addr v10, v3

    .line 222
    int-to-byte v10, v10

    .line 223
    aput-byte v10, v7, v9

    .line 224
    .line 225
    add-int/lit8 v9, v8, 0x2

    .line 226
    .line 227
    shr-int/lit8 v10, v2, 0x6

    .line 228
    .line 229
    and-int/2addr v10, v5

    .line 230
    or-int/2addr v10, v3

    .line 231
    int-to-byte v10, v10

    .line 232
    aput-byte v10, v7, v9

    .line 233
    .line 234
    add-int/lit8 v9, v8, 0x3

    .line 235
    .line 236
    and-int/2addr v2, v5

    .line 237
    or-int/2addr v2, v3

    .line 238
    int-to-byte v2, v2

    .line 239
    aput-byte v2, v7, v9

    .line 240
    .line 241
    add-int/2addr v8, v4

    .line 242
    iput v8, v6, Lokio/Segment;->limit:I

    .line 243
    .line 244
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 245
    .line 246
    .line 247
    move-result-wide v2

    .line 248
    const-wide/16 v4, 0x4

    .line 249
    .line 250
    add-long/2addr v2, v4

    .line 251
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    .line 252
    .line 253
    .line 254
    add-int/lit8 p2, p2, 0x2

    .line 255
    .line 256
    goto/16 :goto_3

    .line 257
    .line 258
    :cond_a
    :goto_8
    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 259
    .line 260
    .line 261
    move p2, v4

    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    :cond_b
    :goto_9
    const/4 v4, 0x3

    .line 265
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    iget-object v7, v6, Lokio/Segment;->data:[B

    .line 270
    .line 271
    iget v8, v6, Lokio/Segment;->limit:I

    .line 272
    .line 273
    shr-int/lit8 v9, v2, 0xc

    .line 274
    .line 275
    or-int/lit16 v9, v9, 0xe0

    .line 276
    .line 277
    int-to-byte v9, v9

    .line 278
    aput-byte v9, v7, v8

    .line 279
    .line 280
    add-int/lit8 v9, v8, 0x1

    .line 281
    .line 282
    shr-int/lit8 v10, v2, 0x6

    .line 283
    .line 284
    and-int/2addr v5, v10

    .line 285
    or-int/2addr v5, v3

    .line 286
    int-to-byte v5, v5

    .line 287
    aput-byte v5, v7, v9

    .line 288
    .line 289
    add-int/lit8 v5, v8, 0x2

    .line 290
    .line 291
    and-int/lit8 v2, v2, 0x3f

    .line 292
    .line 293
    or-int/2addr v2, v3

    .line 294
    int-to-byte v2, v2

    .line 295
    aput-byte v2, v7, v5

    .line 296
    .line 297
    add-int/2addr v8, v4

    .line 298
    iput v8, v6, Lokio/Segment;->limit:I

    .line 299
    .line 300
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 301
    .line 302
    .line 303
    move-result-wide v2

    .line 304
    const-wide/16 v4, 0x3

    .line 305
    .line 306
    add-long/2addr v2, v4

    .line 307
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_5

    .line 311
    .line 312
    :cond_c
    return-object p0

    .line 313
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string p2, "endIndex > string.length: "

    .line 319
    .line 320
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string p2, " > "

    .line 327
    .line 328
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 343
    .line 344
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw p1

    .line 352
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    const-string p1, "endIndex < beginIndex: "

    .line 358
    .line 359
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string p1, " < "

    .line 366
    .line 367
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 378
    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw p1

    .line 387
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    const-string p1, "beginIndex < 0: "

    .line 393
    .line 394
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 405
    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw p1
.end method

.method public static final commonWriteUtf8CodePoint(Lokio/Buffer;I)Lokio/Buffer;
    .locals 8
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x80

    .line 7
    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    const/16 v1, 0x800

    .line 16
    .line 17
    const/16 v2, 0x3f

    .line 18
    .line 19
    if-ge p1, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, v3, Lokio/Segment;->data:[B

    .line 27
    .line 28
    iget v5, v3, Lokio/Segment;->limit:I

    .line 29
    .line 30
    shr-int/lit8 v6, p1, 0x6

    .line 31
    .line 32
    or-int/lit16 v6, v6, 0xc0

    .line 33
    .line 34
    int-to-byte v6, v6

    .line 35
    aput-byte v6, v4, v5

    .line 36
    .line 37
    add-int/lit8 v6, v5, 0x1

    .line 38
    .line 39
    and-int/2addr p1, v2

    .line 40
    or-int/2addr p1, v0

    .line 41
    int-to-byte p1, p1

    .line 42
    aput-byte p1, v4, v6

    .line 43
    .line 44
    add-int/2addr v5, v1

    .line 45
    iput v5, v3, Lokio/Segment;->limit:I

    .line 46
    .line 47
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    const-wide/16 v2, 0x2

    .line 52
    .line 53
    add-long/2addr v0, v2

    .line 54
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->setSize$okio(J)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_1
    const v1, 0xd800

    .line 60
    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    if-gt v1, p1, :cond_2

    .line 64
    .line 65
    const v1, 0xe000

    .line 66
    .line 67
    .line 68
    if-ge p1, v1, :cond_2

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    :cond_2
    if-eqz v3, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/high16 v1, 0x10000

    .line 78
    .line 79
    if-ge p1, v1, :cond_4

    .line 80
    .line 81
    const/4 v1, 0x3

    .line 82
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v4, v3, Lokio/Segment;->data:[B

    .line 87
    .line 88
    iget v5, v3, Lokio/Segment;->limit:I

    .line 89
    .line 90
    shr-int/lit8 v6, p1, 0xc

    .line 91
    .line 92
    or-int/lit16 v6, v6, 0xe0

    .line 93
    .line 94
    int-to-byte v6, v6

    .line 95
    aput-byte v6, v4, v5

    .line 96
    .line 97
    add-int/lit8 v6, v5, 0x1

    .line 98
    .line 99
    shr-int/lit8 v7, p1, 0x6

    .line 100
    .line 101
    and-int/2addr v7, v2

    .line 102
    or-int/2addr v7, v0

    .line 103
    int-to-byte v7, v7

    .line 104
    aput-byte v7, v4, v6

    .line 105
    .line 106
    add-int/lit8 v6, v5, 0x2

    .line 107
    .line 108
    and-int/2addr p1, v2

    .line 109
    or-int/2addr p1, v0

    .line 110
    int-to-byte p1, p1

    .line 111
    aput-byte p1, v4, v6

    .line 112
    .line 113
    add-int/2addr v5, v1

    .line 114
    iput v5, v3, Lokio/Segment;->limit:I

    .line 115
    .line 116
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    const-wide/16 v2, 0x3

    .line 121
    .line 122
    add-long/2addr v0, v2

    .line 123
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->setSize$okio(J)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    const v1, 0x10ffff

    .line 128
    .line 129
    .line 130
    if-gt p1, v1, :cond_5

    .line 131
    .line 132
    const/4 v1, 0x4

    .line 133
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iget-object v4, v3, Lokio/Segment;->data:[B

    .line 138
    .line 139
    iget v5, v3, Lokio/Segment;->limit:I

    .line 140
    .line 141
    shr-int/lit8 v6, p1, 0x12

    .line 142
    .line 143
    or-int/lit16 v6, v6, 0xf0

    .line 144
    .line 145
    int-to-byte v6, v6

    .line 146
    aput-byte v6, v4, v5

    .line 147
    .line 148
    add-int/lit8 v6, v5, 0x1

    .line 149
    .line 150
    shr-int/lit8 v7, p1, 0xc

    .line 151
    .line 152
    and-int/2addr v7, v2

    .line 153
    or-int/2addr v7, v0

    .line 154
    int-to-byte v7, v7

    .line 155
    aput-byte v7, v4, v6

    .line 156
    .line 157
    add-int/lit8 v6, v5, 0x2

    .line 158
    .line 159
    shr-int/lit8 v7, p1, 0x6

    .line 160
    .line 161
    and-int/2addr v7, v2

    .line 162
    or-int/2addr v7, v0

    .line 163
    int-to-byte v7, v7

    .line 164
    aput-byte v7, v4, v6

    .line 165
    .line 166
    add-int/lit8 v6, v5, 0x3

    .line 167
    .line 168
    and-int/2addr p1, v2

    .line 169
    or-int/2addr p1, v0

    .line 170
    int-to-byte p1, p1

    .line 171
    aput-byte p1, v4, v6

    .line 172
    .line 173
    add-int/2addr v5, v1

    .line 174
    iput v5, v3, Lokio/Segment;->limit:I

    .line 175
    .line 176
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 177
    .line 178
    .line 179
    move-result-wide v0

    .line 180
    const-wide/16 v2, 0x4

    .line 181
    .line 182
    add-long/2addr v0, v2

    .line 183
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->setSize$okio(J)V

    .line 184
    .line 185
    .line 186
    :goto_0
    return-object p0

    .line 187
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 188
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v1, "Unexpected code point: 0x"

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-static {p1}, Lokio/-SegmentedByteString;->toHexString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p0
.end method

.method public static final getHEX_DIGIT_BYTES()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/internal/-Buffer;->HEX_DIGIT_BYTES:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getHEX_DIGIT_BYTES$annotations()V
    .locals 0

    return-void
.end method

.method public static final rangeEquals(Lokio/Segment;I[BII)Z
    .locals 5
    .param p0    # Lokio/Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "segment"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bytes"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lokio/Segment;->limit:I

    .line 12
    .line 13
    iget-object v1, p0, Lokio/Segment;->data:[B

    .line 14
    .line 15
    :goto_0
    if-ge p3, p4, :cond_2

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 20
    .line 21
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lokio/Segment;->data:[B

    .line 25
    .line 26
    iget v0, p0, Lokio/Segment;->pos:I

    .line 27
    .line 28
    iget v1, p0, Lokio/Segment;->limit:I

    .line 29
    .line 30
    move v4, v1

    .line 31
    move-object v1, p1

    .line 32
    move p1, v0

    .line 33
    move v0, v4

    .line 34
    :cond_0
    aget-byte v2, v1, p1

    .line 35
    .line 36
    aget-byte v3, p2, p3

    .line 37
    .line 38
    if-eq v2, v3, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    add-int/lit8 p3, p3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p0, 0x1

    .line 48
    return p0
.end method

.method public static final readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;
    .locals 6
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    const-wide/16 v2, 0x1

    .line 9
    .line 10
    cmp-long v4, p1, v0

    .line 11
    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    sub-long v0, p1, v2

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/16 v5, 0xd

    .line 21
    .line 22
    if-ne v4, v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-wide/16 v0, 0x2

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-object p1
.end method

.method public static final seek(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 5
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Buffer;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lokio/Segment;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lambda"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-wide/16 p0, -0x1

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-interface {p3, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    sub-long/2addr v1, p1

    .line 32
    cmp-long v3, v1, p1

    .line 33
    .line 34
    if-gez v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    :goto_0
    cmp-long p0, v1, p1

    .line 41
    .line 42
    if-lez p0, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget p0, v0, Lokio/Segment;->limit:I

    .line 50
    .line 51
    iget v3, v0, Lokio/Segment;->pos:I

    .line 52
    .line 53
    sub-int/2addr p0, v3

    .line 54
    int-to-long v3, p0

    .line 55
    sub-long/2addr v1, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p3, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_2
    const-wide/16 v1, 0x0

    .line 67
    .line 68
    :goto_1
    iget p0, v0, Lokio/Segment;->limit:I

    .line 69
    .line 70
    iget v3, v0, Lokio/Segment;->pos:I

    .line 71
    .line 72
    sub-int/2addr p0, v3

    .line 73
    int-to-long v3, p0

    .line 74
    add-long/2addr v3, v1

    .line 75
    cmp-long p0, v3, p1

    .line 76
    .line 77
    if-gtz p0, :cond_3

    .line 78
    .line 79
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    move-wide v1, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-interface {p3, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 17
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "options"

    .line 9
    .line 10
    move-object/from16 v2, p1

    .line 11
    .line 12
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 16
    .line 17
    const/4 v1, -0x2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, -0x1

    .line 25
    :goto_0
    return v1

    .line 26
    :cond_1
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 27
    .line 28
    iget v5, v0, Lokio/Segment;->pos:I

    .line 29
    .line 30
    iget v6, v0, Lokio/Segment;->limit:I

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lokio/Options;->getTrie$okio()[I

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v9, v0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v10, -0x1

    .line 40
    :goto_1
    add-int/lit8 v11, v8, 0x1

    .line 41
    .line 42
    aget v8, v2, v8

    .line 43
    .line 44
    add-int/lit8 v12, v11, 0x1

    .line 45
    .line 46
    aget v11, v2, v11

    .line 47
    .line 48
    if-eq v11, v3, :cond_2

    .line 49
    .line 50
    move v10, v11

    .line 51
    :cond_2
    if-nez v9, :cond_3

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_3
    const/4 v11, 0x0

    .line 55
    if-gez v8, :cond_b

    .line 56
    .line 57
    mul-int/lit8 v8, v8, -0x1

    .line 58
    .line 59
    add-int v13, v12, v8

    .line 60
    .line 61
    :goto_2
    add-int/lit8 v8, v5, 0x1

    .line 62
    .line 63
    aget-byte v5, v4, v5

    .line 64
    .line 65
    and-int/lit16 v5, v5, 0xff

    .line 66
    .line 67
    add-int/lit8 v14, v12, 0x1

    .line 68
    .line 69
    aget v12, v2, v12

    .line 70
    .line 71
    if-eq v5, v12, :cond_4

    .line 72
    .line 73
    return v10

    .line 74
    :cond_4
    if-ne v14, v13, :cond_5

    .line 75
    .line 76
    const/4 v5, 0x1

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    const/4 v5, 0x0

    .line 79
    :goto_3
    if-ne v8, v6, :cond_9

    .line 80
    .line 81
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v4, v9, Lokio/Segment;->next:Lokio/Segment;

    .line 85
    .line 86
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget v6, v4, Lokio/Segment;->pos:I

    .line 90
    .line 91
    iget-object v8, v4, Lokio/Segment;->data:[B

    .line 92
    .line 93
    iget v9, v4, Lokio/Segment;->limit:I

    .line 94
    .line 95
    if-ne v4, v0, :cond_8

    .line 96
    .line 97
    if-eqz v5, :cond_6

    .line 98
    .line 99
    move-object v4, v8

    .line 100
    move-object v8, v11

    .line 101
    goto :goto_5

    .line 102
    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    .line 103
    .line 104
    return v1

    .line 105
    :cond_7
    return v10

    .line 106
    :cond_8
    move-object/from16 v16, v8

    .line 107
    .line 108
    move-object v8, v4

    .line 109
    move-object/from16 v4, v16

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_9
    move-object/from16 v16, v9

    .line 113
    .line 114
    move v9, v6

    .line 115
    move v6, v8

    .line 116
    move-object/from16 v8, v16

    .line 117
    .line 118
    :goto_5
    if-eqz v5, :cond_a

    .line 119
    .line 120
    aget v5, v2, v14

    .line 121
    .line 122
    move v13, v6

    .line 123
    move v6, v9

    .line 124
    move-object v9, v8

    .line 125
    goto :goto_7

    .line 126
    :cond_a
    move v5, v6

    .line 127
    move v6, v9

    .line 128
    move v12, v14

    .line 129
    move-object v9, v8

    .line 130
    goto :goto_2

    .line 131
    :cond_b
    add-int/lit8 v13, v5, 0x1

    .line 132
    .line 133
    aget-byte v5, v4, v5

    .line 134
    .line 135
    and-int/lit16 v5, v5, 0xff

    .line 136
    .line 137
    add-int v14, v12, v8

    .line 138
    .line 139
    :goto_6
    if-ne v12, v14, :cond_c

    .line 140
    .line 141
    return v10

    .line 142
    :cond_c
    aget v15, v2, v12

    .line 143
    .line 144
    if-ne v5, v15, :cond_f

    .line 145
    .line 146
    add-int/2addr v12, v8

    .line 147
    aget v5, v2, v12

    .line 148
    .line 149
    if-ne v13, v6, :cond_d

    .line 150
    .line 151
    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    .line 152
    .line 153
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iget v4, v9, Lokio/Segment;->pos:I

    .line 157
    .line 158
    iget-object v6, v9, Lokio/Segment;->data:[B

    .line 159
    .line 160
    iget v8, v9, Lokio/Segment;->limit:I

    .line 161
    .line 162
    move v13, v4

    .line 163
    move-object v4, v6

    .line 164
    move v6, v8

    .line 165
    if-ne v9, v0, :cond_d

    .line 166
    .line 167
    move-object v9, v11

    .line 168
    :cond_d
    :goto_7
    if-ltz v5, :cond_e

    .line 169
    .line 170
    return v5

    .line 171
    :cond_e
    neg-int v8, v5

    .line 172
    move v5, v13

    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_f
    add-int/lit8 v12, v12, 0x1

    .line 176
    .line 177
    goto :goto_6
.end method

.method public static synthetic selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lokio/internal/-Buffer;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

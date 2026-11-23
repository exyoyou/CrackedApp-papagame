.class final Lio/netty/handler/codec/http2/HpackDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;,
        Lio/netty/handler/codec/http2/HpackDecoder$Sink;,
        Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DECODE_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final DECODE_ULE_128_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final INDEX_HEADER_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final INVALID_MAX_DYNAMIC_TABLE_SIZE:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final READ_HEADER_REPRESENTATION:B = 0x0t

.field private static final READ_INDEXED_HEADER:B = 0x2t

.field private static final READ_INDEXED_HEADER_NAME:B = 0x3t

.field private static final READ_LITERAL_HEADER_NAME:B = 0x6t

.field private static final READ_LITERAL_HEADER_NAME_LENGTH:B = 0x5t

.field private static final READ_LITERAL_HEADER_NAME_LENGTH_PREFIX:B = 0x4t

.field private static final READ_LITERAL_HEADER_VALUE:B = 0x9t

.field private static final READ_LITERAL_HEADER_VALUE_LENGTH:B = 0x8t

.field private static final READ_LITERAL_HEADER_VALUE_LENGTH_PREFIX:B = 0x7t

.field private static final READ_MAX_DYNAMIC_TABLE_SIZE:B = 0x1t

.field private static final READ_NAME_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;


# instance fields
.field private encoderMaxDynamicTableSize:J

.field private final hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

.field private final huffmanDecoder:Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

.field private maxDynamicTableSize:J

.field private maxDynamicTableSizeChangeRequired:Z

.field private maxHeaderListSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 2
    .line 3
    sget-object v1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 4
    .line 5
    const-string v2, "HPACK - decompression failure"

    .line 6
    .line 7
    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-class v3, Lio/netty/handler/codec/http2/HpackDecoder;

    .line 12
    .line 13
    const-string v4, "decodeULE128(..)"

    .line 14
    .line 15
    invoke-static {v2, v3, v4}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lio/netty/handler/codec/http2/Http2Exception;

    .line 20
    .line 21
    sput-object v2, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    .line 22
    .line 23
    const-string v2, "HPACK - long overflow"

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2, v3, v4}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lio/netty/handler/codec/http2/Http2Exception;

    .line 34
    .line 35
    sput-object v2, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    .line 36
    .line 37
    const-string v2, "HPACK - int overflow"

    .line 38
    .line 39
    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v4, "decodeULE128ToInt(..)"

    .line 44
    .line 45
    invoke-static {v2, v3, v4}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lio/netty/handler/codec/http2/Http2Exception;

    .line 50
    .line 51
    sput-object v2, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    .line 52
    .line 53
    const-string v2, "HPACK - illegal index value"

    .line 54
    .line 55
    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "decode(..)"

    .line 60
    .line 61
    invoke-static {v4, v3, v5}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lio/netty/handler/codec/http2/Http2Exception;

    .line 66
    .line 67
    sput-object v4, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    .line 68
    .line 69
    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v6, "indexHeader(..)"

    .line 74
    .line 75
    invoke-static {v4, v3, v6}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Lio/netty/handler/codec/http2/Http2Exception;

    .line 80
    .line 81
    sput-object v4, Lio/netty/handler/codec/http2/HpackDecoder;->INDEX_HEADER_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    .line 82
    .line 83
    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v4, "readName(..)"

    .line 88
    .line 89
    invoke-static {v2, v3, v4}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lio/netty/handler/codec/http2/Http2Exception;

    .line 94
    .line 95
    sput-object v2, Lio/netty/handler/codec/http2/HpackDecoder;->READ_NAME_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    .line 96
    .line 97
    const-string v2, "HPACK - invalid max dynamic table size"

    .line 98
    .line 99
    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v4, "setDynamicTableSize(..)"

    .line 104
    .line 105
    invoke-static {v2, v3, v4}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lio/netty/handler/codec/http2/Http2Exception;

    .line 110
    .line 111
    sput-object v2, Lio/netty/handler/codec/http2/HpackDecoder;->INVALID_MAX_DYNAMIC_TABLE_SIZE:Lio/netty/handler/codec/http2/Http2Exception;

    .line 112
    .line 113
    const-string v2, "HPACK - max dynamic table size change required"

    .line 114
    .line 115
    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0, v3, v5}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lio/netty/handler/codec/http2/Http2Exception;

    .line 124
    .line 125
    sput-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED:Lio/netty/handler/codec/http2/Http2Exception;

    .line 126
    .line 127
    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/HpackDecoder;-><init>(JI)V

    return-void
.end method

.method constructor <init>(JI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->huffmanDecoder:Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

    const-string v0, "maxHeaderListSize"

    .line 4
    invoke-static {p1, p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    int-to-long p1, p3

    .line 5
    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->encoderMaxDynamicTableSize:J

    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSize:J

    const/4 p3, 0x0

    .line 6
    iput-boolean p3, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    .line 7
    new-instance p3, Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-direct {p3, p1, p2}, Lio/netty/handler/codec/http2/HpackDynamicTable;-><init>(J)V

    iput-object p3, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    return-void
.end method

.method static synthetic access$000(ILjava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;)Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http2/HpackDecoder;->validate(ILjava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;)Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private decode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/HpackDecoder$Sink;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 4
    sget-object v3, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NONE:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v12, 0x6

    const/4 v13, 0x1

    const/16 v14, 0x80

    const/4 v15, 0x7

    const/16 v11, 0x7f

    packed-switch v6, :pswitch_data_0

    .line 6
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "should not reach here state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    if-lt v6, v9, :cond_0

    .line 8
    invoke-direct {v0, v1, v9, v10}, Lio/netty/handler/codec/http2/HpackDecoder;->readStringLiteral(Lio/netty/buffer/ByteBuf;IZ)Ljava/lang/CharSequence;

    move-result-object v6

    .line 9
    invoke-direct {v0, v2, v5, v6, v3}, Lio/netty/handler/codec/http2/HpackDecoder;->insertHeader(Lio/netty/handler/codec/http2/HpackDecoder$Sink;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;)V

    goto/16 :goto_6

    .line 10
    :cond_0
    invoke-static/range {p1 .. p1}, Lio/netty/handler/codec/http2/HpackDecoder;->notEnoughDataException(Lio/netty/buffer/ByteBuf;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 11
    :pswitch_1
    invoke-static {v1, v7}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v9

    :goto_1
    const/16 v6, 0x9

    goto :goto_0

    .line 12
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v6

    and-int/lit16 v7, v6, 0x80

    if-ne v7, v14, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    and-int/lit8 v7, v6, 0x7f

    if-eqz v7, :cond_3

    if-eq v7, v11, :cond_2

    move v9, v7

    goto :goto_1

    :cond_2
    const/16 v6, 0x8

    goto :goto_0

    .line 13
    :cond_3
    sget-object v6, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-direct {v0, v2, v5, v6, v3}, Lio/netty/handler/codec/http2/HpackDecoder;->insertHeader(Lio/netty/handler/codec/http2/HpackDecoder$Sink;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;)V

    goto :goto_6

    .line 14
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    if-lt v5, v8, :cond_4

    .line 15
    invoke-direct {v0, v1, v8, v10}, Lio/netty/handler/codec/http2/HpackDecoder;->readStringLiteral(Lio/netty/buffer/ByteBuf;IZ)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_5

    .line 16
    :cond_4
    invoke-static/range {p1 .. p1}, Lio/netty/handler/codec/http2/HpackDecoder;->notEnoughDataException(Lio/netty/buffer/ByteBuf;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 17
    :pswitch_4
    invoke-static {v1, v7}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v8

    :goto_3
    const/4 v6, 0x6

    goto :goto_0

    .line 18
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v6

    and-int/lit16 v7, v6, 0x80

    if-ne v7, v14, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    and-int/lit8 v7, v6, 0x7f

    if-ne v7, v11, :cond_6

    const/4 v6, 0x5

    goto/16 :goto_0

    :cond_6
    move v8, v7

    goto :goto_3

    .line 19
    :pswitch_6
    invoke-static {v1, v7}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v5

    invoke-direct {v0, v5}, Lio/netty/handler/codec/http2/HpackDecoder;->readName(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 20
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    :goto_5
    const/4 v6, 0x7

    goto/16 :goto_0

    .line 21
    :pswitch_7
    invoke-static {v1, v7}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v6

    invoke-direct {v0, v6}, Lio/netty/handler/codec/http2/HpackDecoder;->getIndexedHeader(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v6

    .line 22
    iget-object v11, v6, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    iget-object v6, v6, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    invoke-interface {v2, v11, v6}, Lio/netty/handler/codec/http2/HpackDecoder$Sink;->appendToHeaderList(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_8
    int-to-long v11, v7

    .line 23
    invoke-static {v1, v11, v12}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;J)J

    move-result-wide v11

    invoke-direct {v0, v11, v12}, Lio/netty/handler/codec/http2/HpackDecoder;->setDynamicTableSize(J)V

    :goto_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 24
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v7

    .line 25
    iget-boolean v12, v0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    const/16 v14, 0x20

    if-eqz v12, :cond_8

    and-int/lit16 v12, v7, 0xe0

    if-ne v12, v14, :cond_7

    goto :goto_7

    .line 26
    :cond_7
    sget-object v1, Lio/netty/handler/codec/http2/HpackDecoder;->MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED:Lio/netty/handler/codec/http2/Http2Exception;

    throw v1

    :cond_8
    :goto_7
    if-gez v7, :cond_b

    and-int/lit8 v7, v7, 0x7f

    if-eqz v7, :cond_a

    if-eq v7, v11, :cond_9

    .line 27
    invoke-direct {v0, v7}, Lio/netty/handler/codec/http2/HpackDecoder;->getIndexedHeader(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v11

    .line 28
    iget-object v12, v11, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    iget-object v11, v11, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    invoke-interface {v2, v12, v11}, Lio/netty/handler/codec/http2/HpackDecoder$Sink;->appendToHeaderList(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 29
    :cond_a
    sget-object v1, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    throw v1

    :cond_b
    and-int/lit8 v6, v7, 0x40

    const/4 v12, 0x4

    const/16 v11, 0x40

    if-ne v6, v11, :cond_e

    .line 30
    sget-object v3, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->INCREMENTAL:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    and-int/lit8 v7, v7, 0x3f

    if-eqz v7, :cond_d

    const/16 v6, 0x3f

    if-eq v7, v6, :cond_c

    .line 31
    invoke-direct {v0, v7}, Lio/netty/handler/codec/http2/HpackDecoder;->readName(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 32
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    goto :goto_5

    :cond_c
    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_d
    const/4 v6, 0x4

    goto/16 :goto_0

    :cond_e
    and-int/lit8 v6, v7, 0x20

    if-ne v6, v14, :cond_10

    and-int/lit8 v7, v7, 0x1f

    const/16 v6, 0x1f

    if-ne v7, v6, :cond_f

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_f
    int-to-long v11, v7

    .line 33
    invoke-direct {v0, v11, v12}, Lio/netty/handler/codec/http2/HpackDecoder;->setDynamicTableSize(J)V

    goto :goto_6

    :cond_10
    and-int/lit8 v3, v7, 0x10

    const/16 v6, 0x10

    if-ne v3, v6, :cond_11

    .line 34
    sget-object v3, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NEVER:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    goto :goto_8

    :cond_11
    sget-object v3, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NONE:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    :goto_8
    and-int/lit8 v7, v7, 0xf

    if-eqz v7, :cond_d

    const/16 v6, 0xf

    if-eq v7, v6, :cond_c

    .line 35
    invoke-direct {v0, v7}, Lio/netty/handler/codec/http2/HpackDecoder;->readName(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 36
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    goto/16 :goto_5

    :cond_12
    if-nez v6, :cond_13

    return-void

    .line 37
    :cond_13
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "Incomplete header block fragment."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeULE128(Lio/netty/buffer/ByteBuf;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    int-to-long v1, p1

    .line 2
    invoke-static {p0, v1, v2}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;J)J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v1, v3

    if-gtz p1, :cond_0

    long-to-int p0, v1

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 4
    sget-object p0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    throw p0
.end method

.method static decodeULE128(Lio/netty/buffer/ByteBuf;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    :goto_1
    if-ge v4, v1, :cond_4

    .line 7
    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v5

    const/16 v6, 0x38

    if-ne v2, v6, :cond_2

    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_1

    const/16 v6, 0x7f

    if-ne v5, v6, :cond_2

    if-eqz v0, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    sget-object p0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    throw p0

    :cond_2
    :goto_2
    and-int/lit16 v6, v5, 0x80

    const-wide/16 v7, 0x7f

    if-nez v6, :cond_3

    add-int/2addr v4, v3

    .line 9
    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    int-to-long v0, v5

    and-long/2addr v0, v7

    shl-long/2addr v0, v2

    add-long/2addr p1, v0

    return-wide p1

    :cond_3
    int-to-long v5, v5

    and-long/2addr v5, v7

    shl-long/2addr v5, v2

    add-long/2addr p1, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x7

    goto :goto_1

    .line 10
    :cond_4
    sget-object p0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    throw p0
.end method

.method private getIndexedHeader(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    sget v0, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sub-int v1, p1, v0

    .line 11
    .line 12
    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 13
    .line 14
    invoke-virtual {v2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-gt v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 21
    .line 22
    sub-int/2addr p1, v0

    .line 23
    invoke-virtual {v1, p1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/HpackDecoder;->INDEX_HEADER_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    .line 29
    .line 30
    throw p1
.end method

.method private insertHeader(Lio/netty/handler/codec/http2/HpackDecoder$Sink;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Lio/netty/handler/codec/http2/HpackDecoder$Sink;->appendToHeaderList(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lio/netty/handler/codec/http2/HpackDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType:[I

    .line 5
    .line 6
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p4

    .line 10
    aget p1, p1, p4

    .line 11
    .line 12
    const/4 p4, 0x1

    .line 13
    if-eq p1, p4, :cond_1

    .line 14
    .line 15
    const/4 p4, 0x2

    .line 16
    if-eq p1, p4, :cond_1

    .line 17
    .line 18
    const/4 p4, 0x3

    .line 19
    if-ne p1, p4, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 22
    .line 23
    new-instance p4, Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 24
    .line 25
    invoke-direct {p4, p2, p3}, Lio/netty/handler/codec/http2/HpackHeaderField;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p4}, Lio/netty/handler/codec/http2/HpackDynamicTable;->add(Lio/netty/handler/codec/http2/HpackHeaderField;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/Error;

    .line 33
    .line 34
    const-string p2, "should not reach here"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method private static notEnoughDataException(Lio/netty/buffer/ByteBuf;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "decode only works with an entire header block! "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private readName(I)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    sget v0, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p1, p1, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    sub-int v1, p1, v0

    .line 13
    .line 14
    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 15
    .line 16
    invoke-virtual {v2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-gt v1, v2, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 23
    .line 24
    sub-int/2addr p1, v0

    .line 25
    invoke-virtual {v1, p1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/HpackDecoder;->READ_NAME_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    .line 33
    .line 34
    throw p1
.end method

.method private readStringLiteral(Lio/netty/buffer/ByteBuf;IZ)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Lio/netty/handler/codec/http2/HpackDecoder;->huffmanDecoder:Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

    .line 4
    .line 5
    invoke-virtual {p3, p1, p2}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->decode(Lio/netty/buffer/ByteBuf;I)Lio/netty/util/AsciiString;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    new-array p2, p2, [B

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    .line 13
    .line 14
    .line 15
    new-instance p1, Lio/netty/util/AsciiString;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-direct {p1, p2, p3}, Lio/netty/util/AsciiString;-><init>([BZ)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method private setDynamicTableSize(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSize:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->encoderMaxDynamicTableSize:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    .line 11
    .line 12
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->setCapacity(J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object p1, Lio/netty/handler/codec/http2/HpackDecoder;->INVALID_MAX_DYNAMIC_TABLE_SIZE:Lio/netty/handler/codec/http2/Http2Exception;

    .line 19
    .line 20
    throw p1
.end method

.method private static validate(ILjava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;)Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->hasPseudoHeaderFormat(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->REGULAR_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq p2, v0, :cond_4

    .line 12
    .line 13
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->getPseudoHeader(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->isRequestOnly()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    sget-object p1, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->REQUEST_PSEUDO_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->RESPONSE_PSEUDO_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    .line 29
    .line 30
    :goto_0
    if-eqz p2, :cond_2

    .line 31
    .line 32
    if-ne p1, p2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 36
    .line 37
    const-string p2, "Mix of request and response pseudo-headers."

    .line 38
    .line 39
    new-array v0, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    throw p0

    .line 46
    :cond_2
    :goto_1
    return-object p1

    .line 47
    :cond_3
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 48
    .line 49
    new-array v0, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object p1, v0, v2

    .line 52
    .line 53
    const-string p1, "Invalid HTTP/2 pseudo-header \'%s\' encountered."

    .line 54
    .line 55
    invoke-static {p0, p2, p1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    throw p0

    .line 60
    :cond_4
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 61
    .line 62
    new-array v0, v1, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object p1, v0, v2

    .line 65
    .line 66
    const-string p1, "Pseudo-header field \'%s\' found after regular header."

    .line 67
    .line 68
    invoke-static {p0, p2, p1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    throw p0

    .line 73
    :cond_5
    sget-object p0, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->REGULAR_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    .line 74
    .line 75
    return-object p0
.end method


# virtual methods
.method public decode(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    new-instance v6, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;

    iget-wide v3, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    move-object v0, v6

    move v1, p1

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;-><init>(ILio/netty/handler/codec/http2/Http2Headers;JZ)V

    .line 2
    invoke-direct {p0, p2, v6}, Lio/netty/handler/codec/http2/HpackDecoder;->decode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/HpackDecoder$Sink;)V

    .line 3
    invoke-virtual {v6}, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->finish()V

    return-void
.end method

.method getHeaderField(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getMaxHeaderListSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxHeaderTableSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setMaxHeaderListSize(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const-wide v0, 0xffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    .line 2
    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    return-void

    .line 3
    :cond_0
    sget-object v4, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v0

    const-string p1, "Header List Size must be >= %d and <= %d but was %d"

    .line 5
    invoke-static {v4, p1, v5}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public setMaxHeaderListSize(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/HpackDecoder;->setMaxHeaderListSize(J)V

    return-void
.end method

.method public setMaxHeaderTableSize(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v5, p1, v3

    .line 10
    .line 11
    if-ltz v5, :cond_1

    .line 12
    .line 13
    cmp-long v5, p1, v0

    .line 14
    .line 15
    if-gtz v5, :cond_1

    .line 16
    .line 17
    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSize:J

    .line 18
    .line 19
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->encoderMaxDynamicTableSize:J

    .line 20
    .line 21
    cmp-long v3, p1, v0

    .line 22
    .line 23
    if-gez v3, :cond_0

    .line 24
    .line 25
    iput-boolean v2, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    .line 26
    .line 27
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->setCapacity(J)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    sget-object v5, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 34
    .line 35
    const/4 v6, 0x3

    .line 36
    new-array v6, v6, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    aput-object v3, v6, v7

    .line 44
    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    aput-object v0, v6, v2

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    aput-object p1, v6, v0

    .line 57
    .line 58
    const-string p1, "Header Table Size must be >= %d and <= %d but was %d"

    .line 59
    .line 60
    invoke-static {v5, p1, v6}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1
.end method

.method size()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->size()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

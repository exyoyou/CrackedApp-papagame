.class public abstract Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;
.super Lio/netty/handler/codec/memcache/AbstractMemcacheObjectDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;",
        ">",
        "Lio/netty/handler/codec/memcache/AbstractMemcacheObjectDecoder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CHUNK_SIZE:I = 0x2000


# instance fields
.field private alreadyReadChunkSize:I

.field private final chunkSize:I

.field private currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private state:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/16 v0, 0x2000

    .line 1
    invoke-direct {p0, v0}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/netty/handler/codec/memcache/AbstractMemcacheObjectDecoder;-><init>()V

    .line 3
    sget-object v0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;->READ_HEADER:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->state:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    const-string v0, "chunkSize"

    .line 4
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 5
    iput p1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->chunkSize:I

    return-void
.end method

.method private invalidChunk(Ljava/lang/Exception;)Lio/netty/handler/codec/memcache/MemcacheContent;
    .locals 2

    .line 1
    sget-object v0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    .line 2
    .line 3
    iput-object v0, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->state:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    .line 4
    .line 5
    new-instance v0, Lio/netty/handler/codec/memcache/DefaultLastMemcacheContent;

    .line 6
    .line 7
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lio/netty/handler/codec/memcache/DefaultLastMemcacheContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {v0, p1}, Lio/netty/handler/codec/DecoderResultProvider;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private invalidMessage(Ljava/lang/Exception;)Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TM;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    .line 2
    .line 3
    iput-object v0, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->state:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->buildInvalidMessage()Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Lio/netty/handler/codec/DecoderResultProvider;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method protected abstract buildInvalidMessage()Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->resetDecoder()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$1;->$SwitchMap$io$netty$handler$codec$memcache$binary$AbstractBinaryMemcacheDecoder$State:[I

    .line 2
    .line 3
    iget-object v0, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->state:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget p1, p1, v0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq p1, v0, :cond_3

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    if-eq p1, v0, :cond_6

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    if-eq p1, v0, :cond_9

    .line 22
    .line 23
    const/4 p3, 0x5

    .line 24
    if-ne p1, p3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->actualReadableBytes()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/Error;

    .line 35
    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string p3, "Unknown state reached: "

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object p3, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->state:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/16 v0, 0x18

    .line 64
    .line 65
    if-ge p1, v0, :cond_2

    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->resetDecoder()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->decodeHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 76
    .line 77
    sget-object p1, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;->READ_EXTRAS:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    .line 78
    .line 79
    iput-object p1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->state:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 80
    .line 81
    :cond_3
    :try_start_1
    iget-object p1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 82
    .line 83
    invoke-interface {p1}, Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;->extrasLength()B

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-lez p1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-ge v0, p1, :cond_4

    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    iget-object v0, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 97
    .line 98
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {v0, p1}, Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;->setExtras(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 103
    .line 104
    .line 105
    :cond_5
    sget-object p1, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;->READ_KEY:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    .line 106
    .line 107
    iput-object p1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->state:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 108
    .line 109
    :cond_6
    :try_start_2
    iget-object p1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 110
    .line 111
    invoke-interface {p1}, Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;->keyLength()S

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-lez p1, :cond_8

    .line 116
    .line 117
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-ge v0, p1, :cond_7

    .line 122
    .line 123
    return-void

    .line 124
    :cond_7
    iget-object v0, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 125
    .line 126
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {v0, p1}, Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;->setKey(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 131
    .line 132
    .line 133
    :cond_8
    iget-object p1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 134
    .line 135
    invoke-interface {p1}, Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;->retain()Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    sget-object p1, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;->READ_CONTENT:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    .line 143
    .line 144
    iput-object p1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->state:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    .line 146
    :cond_9
    :try_start_3
    iget-object p1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 147
    .line 148
    invoke-interface {p1}, Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;->totalBodyLength()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iget-object v0, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 153
    .line 154
    invoke-interface {v0}, Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;->keyLength()S

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    sub-int/2addr p1, v0

    .line 159
    iget-object v0, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 160
    .line 161
    invoke-interface {v0}, Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;->extrasLength()B

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    sub-int/2addr p1, v0

    .line 166
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-lez p1, :cond_e

    .line 171
    .line 172
    if-nez v0, :cond_a

    .line 173
    .line 174
    return-void

    .line 175
    :cond_a
    iget v1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->chunkSize:I

    .line 176
    .line 177
    if-le v0, v1, :cond_b

    .line 178
    .line 179
    move v0, v1

    .line 180
    :cond_b
    iget v1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->alreadyReadChunkSize:I

    .line 181
    .line 182
    sub-int v1, p1, v1

    .line 183
    .line 184
    if-le v0, v1, :cond_c

    .line 185
    .line 186
    move v0, v1

    .line 187
    :cond_c
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iget v1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->alreadyReadChunkSize:I

    .line 192
    .line 193
    add-int/2addr v1, v0

    .line 194
    iput v1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->alreadyReadChunkSize:I

    .line 195
    .line 196
    if-lt v1, p1, :cond_d

    .line 197
    .line 198
    new-instance v0, Lio/netty/handler/codec/memcache/DefaultLastMemcacheContent;

    .line 199
    .line 200
    invoke-direct {v0, p2}, Lio/netty/handler/codec/memcache/DefaultLastMemcacheContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_d
    new-instance v0, Lio/netty/handler/codec/memcache/DefaultMemcacheContent;

    .line 205
    .line 206
    invoke-direct {v0, p2}, Lio/netty/handler/codec/memcache/DefaultMemcacheContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 207
    .line 208
    .line 209
    :goto_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    iget p2, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->alreadyReadChunkSize:I

    .line 213
    .line 214
    if-ge p2, p1, :cond_f

    .line 215
    .line 216
    return-void

    .line 217
    :cond_e
    sget-object p1, Lio/netty/handler/codec/memcache/LastMemcacheContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/memcache/LastMemcacheContent;

    .line 218
    .line 219
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    :cond_f
    invoke-virtual {p0}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->resetDecoder()V

    .line 223
    .line 224
    .line 225
    sget-object p1, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;->READ_HEADER:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;

    .line 226
    .line 227
    iput-object p1, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->state:Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder$State;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 228
    .line 229
    return-void

    .line 230
    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p0}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->resetDecoder()V

    .line 232
    .line 233
    .line 234
    invoke-direct {p0, p1}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->invalidChunk(Ljava/lang/Exception;)Lio/netty/handler/codec/memcache/MemcacheContent;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :catch_1
    move-exception p1

    .line 243
    invoke-virtual {p0}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->resetDecoder()V

    .line 244
    .line 245
    .line 246
    invoke-direct {p0, p1}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->invalidMessage(Ljava/lang/Exception;)Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :catch_2
    move-exception p1

    .line 255
    invoke-virtual {p0}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->resetDecoder()V

    .line 256
    .line 257
    .line 258
    invoke-direct {p0, p1}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->invalidMessage(Ljava/lang/Exception;)Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :catch_3
    move-exception p1

    .line 267
    invoke-virtual {p0}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->resetDecoder()V

    .line 268
    .line 269
    .line 270
    invoke-direct {p0, p1}, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->invalidMessage(Ljava/lang/Exception;)Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    return-void
.end method

.method protected abstract decodeHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            ")TM;"
        }
    .end annotation
.end method

.method protected resetDecoder()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->currentMessage:Lio/netty/handler/codec/memcache/binary/BinaryMemcacheMessage;

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lio/netty/handler/codec/memcache/binary/AbstractBinaryMemcacheDecoder;->alreadyReadChunkSize:I

    .line 13
    .line 14
    return-void
.end method

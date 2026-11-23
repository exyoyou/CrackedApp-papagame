.class abstract Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HeaderExtractor"
.end annotation


# instance fields
.field private final maxHeaderSize:I

.field final synthetic this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;


# direct methods
.method protected constructor <init>(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->maxHeaderSize:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected abstract delimiterLength(Lio/netty/buffer/ByteBuf;I)I
.end method

.method public extract(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->findEndOfHeader(Lio/netty/buffer/ByteBuf;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 6
    .line 7
    invoke-static {v1}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$000(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "over "

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v1, :cond_3

    .line 15
    .line 16
    if-ltz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sub-int v1, v0, v1

    .line 23
    .line 24
    iget v2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->maxHeaderSize:I

    .line 25
    .line 26
    if-le v1, v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p2, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->delimiterLength(Lio/netty/buffer/ByteBuf;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/2addr v0, v2

    .line 33
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 37
    .line 38
    invoke-static {p2, p1, v1}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$100(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;Lio/netty/channel/ChannelHandlerContext;I)V

    .line 39
    .line 40
    .line 41
    return-object v3

    .line 42
    :cond_0
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p2, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->delimiterLength(Lio/netty/buffer/ByteBuf;I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget v1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->maxHeaderSize:I

    .line 59
    .line 60
    if-le v0, v1, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 63
    .line 64
    invoke-static {v1, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$202(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;I)I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 68
    .line 69
    .line 70
    iget-object p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-static {p2, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$002(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;Z)Z

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 77
    .line 78
    invoke-static {p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$300(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    iget-object p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 95
    .line 96
    invoke-static {v1}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$200(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {p2, p1, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$400(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-object v3

    .line 111
    :cond_3
    if-ltz v0, :cond_4

    .line 112
    .line 113
    iget-object v1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 114
    .line 115
    invoke-static {v1}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$200(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-int/2addr v1, v0

    .line 120
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    sub-int/2addr v1, v4

    .line 125
    invoke-virtual {p0, p2, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->delimiterLength(Lio/netty/buffer/ByteBuf;I)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    add-int/2addr v0, v4

    .line 130
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 131
    .line 132
    .line 133
    iget-object p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 134
    .line 135
    const/4 v0, 0x0

    .line 136
    invoke-static {p2, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$202(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;I)I

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 140
    .line 141
    invoke-static {p2, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$002(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;Z)Z

    .line 142
    .line 143
    .line 144
    iget-object p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 145
    .line 146
    invoke-static {p2}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$300(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;)Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-nez p2, :cond_5

    .line 151
    .line 152
    iget-object p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 153
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {p2, p1, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$400(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_4
    iget-object p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder$HeaderExtractor;->this$0:Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;

    .line 174
    .line 175
    invoke-static {p1}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$200(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    add-int/2addr v0, v1

    .line 184
    invoke-static {p1, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;->access$202(Lio/netty/handler/codec/haproxy/HAProxyMessageDecoder;I)I

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 192
    .line 193
    .line 194
    :cond_5
    :goto_0
    return-object v3
.end method

.method protected abstract findEndOfHeader(Lio/netty/buffer/ByteBuf;)I
.end method

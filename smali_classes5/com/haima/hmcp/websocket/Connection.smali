.class public Lcom/haima/hmcp/websocket/Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

.field private mProtocol:Lcom/haima/hmcp/websocket/FrameProtocol;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/websocket/Connection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 5
    .line 6
    new-instance p1, Lcom/haima/hmcp/websocket/FrameProtocol;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/haima/hmcp/websocket/FrameProtocol;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/haima/hmcp/websocket/Connection;->mProtocol:Lcom/haima/hmcp/websocket/FrameProtocol;

    .line 12
    .line 13
    return-void
.end method

.method private sendText(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/websocket/exceptions/ParseFailed;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/websocket/Connection;->sendText([B)[B

    move-result-object p1

    return-object p1

    .line 3
    :catch_0
    new-instance p1, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;

    const-string v0, "payload is an invalid utf-8 string"

    invoke-direct {p1, v0}, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendText([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/websocket/exceptions/ParseFailed;
        }
    .end annotation

    .line 4
    array-length v0, p1

    iget-object v1, p0, Lcom/haima/hmcp/websocket/Connection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxMessagePayloadSize()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/websocket/Connection;->mProtocol:Lcom/haima/hmcp/websocket/FrameProtocol;

    invoke-virtual {v0, p1}, Lcom/haima/hmcp/websocket/FrameProtocol;->sendText([B)[B

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance v0, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message payload exceeds payload limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "----"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/haima/hmcp/websocket/Connection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxMessagePayloadSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public send(Lcom/haima/hmcp/websocket/messages/Message;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/websocket/exceptions/ParseFailed;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/TextMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/haima/hmcp/websocket/messages/TextMessage;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/TextMessage;->mPayload:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/haima/hmcp/websocket/Connection;->sendText(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/RawTextMessage;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Lcom/haima/hmcp/websocket/messages/RawTextMessage;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/RawTextMessage;->mPayload:[B

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/haima/hmcp/websocket/Connection;->sendText([B)[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/BinaryMessage;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    check-cast p1, Lcom/haima/hmcp/websocket/messages/BinaryMessage;

    .line 32
    .line 33
    iget-object v0, p1, Lcom/haima/hmcp/websocket/messages/BinaryMessage;->mPayload:[B

    .line 34
    .line 35
    array-length v0, v0

    .line 36
    iget-object v1, p0, Lcom/haima/hmcp/websocket/Connection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxMessagePayloadSize()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-gt v0, v1, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/haima/hmcp/websocket/Connection;->mProtocol:Lcom/haima/hmcp/websocket/FrameProtocol;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/BinaryMessage;->mPayload:[B

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/websocket/FrameProtocol;->sendBinary([B)[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_2
    new-instance v0, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "message payload exceeds payload limit"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/BinaryMessage;->mPayload:[B

    .line 66
    .line 67
    array-length p1, p1

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, "----"

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/haima/hmcp/websocket/Connection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxMessagePayloadSize()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {v0, p1}, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_3
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/Ping;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    iget-object v0, p0, Lcom/haima/hmcp/websocket/Connection;->mProtocol:Lcom/haima/hmcp/websocket/FrameProtocol;

    .line 98
    .line 99
    check-cast p1, Lcom/haima/hmcp/websocket/messages/Ping;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/Ping;->mPayload:[B

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/websocket/FrameProtocol;->ping([B)[B

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_4
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/Pong;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    iget-object v0, p0, Lcom/haima/hmcp/websocket/Connection;->mProtocol:Lcom/haima/hmcp/websocket/FrameProtocol;

    .line 113
    .line 114
    check-cast p1, Lcom/haima/hmcp/websocket/messages/Pong;

    .line 115
    .line 116
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/Pong;->mPayload:[B

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/websocket/FrameProtocol;->pong([B)[B

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    :cond_5
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/Close;

    .line 124
    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    iget-object v0, p0, Lcom/haima/hmcp/websocket/Connection;->mProtocol:Lcom/haima/hmcp/websocket/FrameProtocol;

    .line 128
    .line 129
    check-cast p1, Lcom/haima/hmcp/websocket/messages/Close;

    .line 130
    .line 131
    iget v1, p1, Lcom/haima/hmcp/websocket/messages/Close;->mCode:I

    .line 132
    .line 133
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/Close;->mReason:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v0, v1, p1}, Lcom/haima/hmcp/websocket/FrameProtocol;->close(ILjava/lang/String;)[B

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    return-object p1

    .line 140
    :cond_6
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/ClientHandshake;

    .line 141
    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    check-cast p1, Lcom/haima/hmcp/websocket/messages/ClientHandshake;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/haima/hmcp/websocket/Handshake;->handshake(Lcom/haima/hmcp/websocket/messages/ClientHandshake;)[B

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1

    .line 151
    :cond_7
    new-instance p1, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;

    .line 152
    .line 153
    const-string v0, "unknown message received by WebSocketWriter"

    .line 154
    .line 155
    invoke-direct {p1, v0}, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1
.end method

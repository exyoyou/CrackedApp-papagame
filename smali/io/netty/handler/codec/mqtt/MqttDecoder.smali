.class public final Lio/netty/handler/codec/mqtt/MqttDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/mqtt/MqttDecoder$Result;,
        Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder<",
        "Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_BYTES_IN_MESSAGE:I = 0x1f9c


# instance fields
.field private bytesRemainingInVariablePart:I

.field private final maxBytesInMessage:I

.field private mqttFixedHeader:Lio/netty/handler/codec/mqtt/MqttFixedHeader;

.field private variableHeader:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1f9c

    .line 1
    invoke-direct {p0, v0}, Lio/netty/handler/codec/mqtt/MqttDecoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    sget-object v0, Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;->READ_FIXED_HEADER:Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>(Ljava/lang/Object;)V

    .line 3
    iput p1, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->maxBytesInMessage:I

    return-void
.end method

.method private static decodeByteArray(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeMsbLsb(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-array v2, v1, [B

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    .line 18
    .line 19
    .line 20
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 21
    .line 22
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, v1

    .line 27
    invoke-direct {p0, v2, v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method private static decodeConnAckVariableHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;

    .line 16
    .line 17
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;->valueOf(B)Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;-><init>(Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;Z)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method private static decodeConnectionPayload(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;",
            ")",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Lio/netty/handler/codec/mqtt/MqttConnectPayload;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeString(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;->version()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    int-to-byte v3, v3

    .line 20
    invoke-static {v2, v3}, Lio/netty/handler/codec/mqtt/MqttVersion;->fromProtocolNameAndLevel(Ljava/lang/String;B)Lio/netty/handler/codec/mqtt/MqttVersion;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2, v1}, Lio/netty/handler/codec/mqtt/MqttCodecUtil;->isValidClientId(Lio/netty/handler/codec/mqtt/MqttVersion;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_7

    .line 29
    .line 30
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p1}, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;->isWillFlag()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/16 v4, 0x7fff

    .line 43
    .line 44
    invoke-static {p0, v2, v4}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeString(Lio/netty/buffer/ByteBuf;II)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    add-int/2addr v1, v4

    .line 53
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeByteArray(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    add-int/2addr v1, v5

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object v2, v3

    .line 64
    move-object v4, v2

    .line 65
    :goto_0
    invoke-virtual {p1}, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;->hasUserName()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeString(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v5}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    add-int/2addr v1, v6

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move-object v5, v3

    .line 82
    :goto_1
    invoke-virtual {p1}, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;->hasPassword()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeByteArray(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    add-int/2addr v1, p1

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    move-object p0, v3

    .line 99
    :goto_2
    new-instance p1, Lio/netty/handler/codec/mqtt/MqttConnectPayload;

    .line 100
    .line 101
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    move-object v7, v0

    .line 106
    check-cast v7, Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    invoke-static {v2}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/lang/String;

    .line 115
    .line 116
    move-object v8, v0

    .line 117
    goto :goto_3

    .line 118
    :cond_3
    move-object v8, v3

    .line 119
    :goto_3
    if-eqz v4, :cond_4

    .line 120
    .line 121
    invoke-static {v4}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, [B

    .line 126
    .line 127
    move-object v9, v0

    .line 128
    goto :goto_4

    .line 129
    :cond_4
    move-object v9, v3

    .line 130
    :goto_4
    if-eqz v5, :cond_5

    .line 131
    .line 132
    invoke-static {v5}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/lang/String;

    .line 137
    .line 138
    move-object v10, v0

    .line 139
    goto :goto_5

    .line 140
    :cond_5
    move-object v10, v3

    .line 141
    :goto_5
    if-eqz p0, :cond_6

    .line 142
    .line 143
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    move-object v3, p0

    .line 148
    check-cast v3, [B

    .line 149
    .line 150
    :cond_6
    move-object v11, v3

    .line 151
    move-object v6, p1

    .line 152
    invoke-direct/range {v6 .. v11}, Lio/netty/handler/codec/mqtt/MqttConnectPayload;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V

    .line 153
    .line 154
    .line 155
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 156
    .line 157
    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 158
    .line 159
    .line 160
    return-object p0

    .line 161
    :cond_7
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttIdentifierRejectedException;

    .line 162
    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v0, "invalid clientIdentifier: "

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {p0, p1}, Lio/netty/handler/codec/mqtt/MqttIdentifierRejectedException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0
.end method

.method private static decodeConnectionVariableHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeString(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    add-int/2addr v1, v3

    .line 15
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v2}, Lio/netty/handler/codec/mqtt/MqttVersion;->fromProtocolNameAndLevel(Ljava/lang/String;B)Lio/netty/handler/codec/mqtt/MqttVersion;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/2addr v1, v3

    .line 30
    invoke-static/range {p0 .. p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeMsbLsb(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    add-int/2addr v1, v5

    .line 39
    and-int/lit16 v5, v2, 0x80

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/16 v7, 0x80

    .line 43
    .line 44
    if-ne v5, v7, :cond_0

    .line 45
    .line 46
    const/4 v11, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v11, 0x0

    .line 49
    :goto_0
    and-int/lit8 v5, v2, 0x40

    .line 50
    .line 51
    const/16 v7, 0x40

    .line 52
    .line 53
    if-ne v5, v7, :cond_1

    .line 54
    .line 55
    const/4 v12, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v12, 0x0

    .line 58
    :goto_1
    and-int/lit8 v5, v2, 0x20

    .line 59
    .line 60
    const/16 v7, 0x20

    .line 61
    .line 62
    if-ne v5, v7, :cond_2

    .line 63
    .line 64
    const/4 v13, 0x1

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const/4 v13, 0x0

    .line 67
    :goto_2
    and-int/lit8 v5, v2, 0x18

    .line 68
    .line 69
    shr-int/lit8 v14, v5, 0x3

    .line 70
    .line 71
    and-int/lit8 v5, v2, 0x4

    .line 72
    .line 73
    const/4 v7, 0x4

    .line 74
    if-ne v5, v7, :cond_3

    .line 75
    .line 76
    const/4 v15, 0x1

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    const/4 v15, 0x0

    .line 79
    :goto_3
    and-int/lit8 v5, v2, 0x2

    .line 80
    .line 81
    const/4 v7, 0x2

    .line 82
    if-ne v5, v7, :cond_4

    .line 83
    .line 84
    const/16 v16, 0x1

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    const/16 v16, 0x0

    .line 88
    .line 89
    :goto_4
    sget-object v5, Lio/netty/handler/codec/mqtt/MqttVersion;->MQTT_3_1_1:Lio/netty/handler/codec/mqtt/MqttVersion;

    .line 90
    .line 91
    if-ne v0, v5, :cond_7

    .line 92
    .line 93
    and-int/2addr v2, v3

    .line 94
    if-nez v2, :cond_5

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_5
    const/4 v3, 0x0

    .line 98
    :goto_5
    if-eqz v3, :cond_6

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_6
    new-instance v0, Lio/netty/handler/codec/DecoderException;

    .line 102
    .line 103
    const-string v1, "non-zero reserved flag"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_7
    :goto_6
    new-instance v2, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;

    .line 110
    .line 111
    invoke-virtual {v0}, Lio/netty/handler/codec/mqtt/MqttVersion;->protocolName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v0}, Lio/netty/handler/codec/mqtt/MqttVersion;->protocolLevel()B

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    invoke-static {v4}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v17

    .line 129
    move-object v8, v2

    .line 130
    invoke-direct/range {v8 .. v17}, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;-><init>(Ljava/lang/String;IZZZIZZI)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 134
    .line 135
    invoke-direct {v0, v2, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 136
    .line 137
    .line 138
    return-object v0
.end method

.method private static decodeFixedHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttFixedHeader;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shr-int/lit8 v1, v0, 0x4

    .line 6
    .line 7
    invoke-static {v1}, Lio/netty/handler/codec/mqtt/MqttMessageType;->valueOf(I)Lio/netty/handler/codec/mqtt/MqttMessageType;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    and-int/lit8 v1, v0, 0x8

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    const/16 v5, 0x8

    .line 16
    .line 17
    if-ne v1, v5, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    and-int/lit8 v5, v0, 0x6

    .line 23
    .line 24
    shr-int/2addr v5, v4

    .line 25
    and-int/2addr v0, v4

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v6, 0x0

    .line 31
    :goto_1
    const/4 v0, 0x0

    .line 32
    const/4 v7, 0x1

    .line 33
    :goto_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    and-int/lit8 v9, v8, 0x7f

    .line 38
    .line 39
    mul-int v9, v9, v7

    .line 40
    .line 41
    add-int/2addr v9, v2

    .line 42
    mul-int/lit16 v7, v7, 0x80

    .line 43
    .line 44
    add-int/2addr v0, v4

    .line 45
    and-int/lit16 v2, v8, 0x80

    .line 46
    .line 47
    const/4 v8, 0x4

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    if-lt v0, v8, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    move v2, v9

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    :goto_3
    if-ne v0, v8, :cond_5

    .line 56
    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_4
    new-instance p0, Lio/netty/handler/codec/DecoderException;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v1, "remaining length exceeds 4 digits ("

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const/16 v1, 0x29

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_5
    :goto_4
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 89
    .line 90
    invoke-static {v5}, Lio/netty/handler/codec/mqtt/MqttQoS;->valueOf(I)Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    move-object v2, p0

    .line 95
    move v4, v1

    .line 96
    move v7, v9

    .line 97
    invoke-direct/range {v2 .. v7}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;-><init>(Lio/netty/handler/codec/mqtt/MqttMessageType;ZLio/netty/handler/codec/mqtt/MqttQoS;ZI)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttCodecUtil;->resetUnusedFields(Lio/netty/handler/codec/mqtt/MqttFixedHeader;)Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttCodecUtil;->validateFixedHeader(Lio/netty/handler/codec/mqtt/MqttFixedHeader;)Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method

.method private static decodeMessageId(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeMsbLsb(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttCodecUtil;->isValidMessageId(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance v0, Lio/netty/handler/codec/DecoderException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "invalid messageId: "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method private static decodeMessageIdVariableHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeMessageId(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 6
    .line 7
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;->from(I)Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-direct {v0, v1, p0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method private static decodeMsbLsb(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0xffff

    .line 1
    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeMsbLsb(Lio/netty/buffer/ByteBuf;II)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    move-result-object p0

    return-object p0
.end method

.method private static decodeMsbLsb(Lio/netty/buffer/ByteBuf;II)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "II)",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    .line 3
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    if-lt p0, p1, :cond_0

    if-le p0, p2, :cond_1

    :cond_0
    const/4 p0, -0x1

    .line 4
    :cond_1
    new-instance p1, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method private static decodePayload(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/mqtt/MqttMessageType;ILjava/lang/Object;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/handler/codec/mqtt/MqttMessageType;",
            "I",
            "Ljava/lang/Object;",
            ")",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/codec/mqtt/MqttDecoder$1;->$SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_4

    .line 11
    .line 12
    const/16 p3, 0xb

    .line 13
    .line 14
    if-eq p1, p3, :cond_3

    .line 15
    .line 16
    const/4 p3, 0x3

    .line 17
    if-eq p1, p3, :cond_2

    .line 18
    .line 19
    const/4 p3, 0x4

    .line 20
    if-eq p1, p3, :cond_1

    .line 21
    .line 22
    const/4 p3, 0x5

    .line 23
    if-eq p1, p3, :cond_0

    .line 24
    .line 25
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    invoke-static {p0, p2}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeSubackPayload(Lio/netty/buffer/ByteBuf;I)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-static {p0, p2}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeUnsubscribePayload(Lio/netty/buffer/ByteBuf;I)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2
    invoke-static {p0, p2}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeSubscribePayload(Lio/netty/buffer/ByteBuf;I)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_3
    invoke-static {p0, p2}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodePublishPayload(Lio/netty/buffer/ByteBuf;I)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_4
    check-cast p3, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;

    .line 54
    .line 55
    invoke-static {p0, p3}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeConnectionPayload(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method private static decodePublishPayload(Lio/netty/buffer/ByteBuf;I)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "I)",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static decodePublishVariableHeader(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/mqtt/MqttFixedHeader;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/handler/codec/mqtt/MqttFixedHeader;",
            ")",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeString(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Lio/netty/handler/codec/mqtt/MqttCodecUtil;->isValidPublishTopicName(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;->qosLevel()Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lio/netty/handler/codec/mqtt/MqttQoS;->value()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-lez p1, :cond_0

    .line 30
    .line 31
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeMessageId(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    add-int/2addr v1, p0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p1, -0x1

    .line 52
    :goto_0
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;

    .line 53
    .line 54
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 64
    .line 65
    invoke-direct {p1, p0, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    new-instance p0, Lio/netty/handler/codec/DecoderException;

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "invalid publish topic name: "

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, " (contains wildcards)"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method private static decodeString(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1
    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeString(Lio/netty/buffer/ByteBuf;II)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    move-result-object p0

    return-object p0
.end method

.method private static decodeString(Lio/netty/buffer/ByteBuf;II)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "II)",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeMsbLsb(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    move-result v0

    if-lt v1, p1, :cond_1

    if-le v1, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p1

    sget-object p2, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v1, p2}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    add-int/2addr v0, v1

    .line 7
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    return-object p0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    add-int/2addr v0, v1

    .line 9
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method

.method private static decodeSubackPayload(Lio/netty/buffer/ByteBuf;I)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "I)",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Lio/netty/handler/codec/mqtt/MqttSubAckPayload;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sget-object v3, Lio/netty/handler/codec/mqtt/MqttQoS;->FAILURE:Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 14
    .line 15
    invoke-virtual {v3}, Lio/netty/handler/codec/mqtt/MqttQoS;->value()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    and-int/lit8 v2, v2, 0x3

    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 34
    .line 35
    new-instance p1, Lio/netty/handler/codec/mqtt/MqttSubAckPayload;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lio/netty/handler/codec/mqtt/MqttSubAckPayload;-><init>(Ljava/lang/Iterable;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method

.method private static decodeSubscribePayload(Lio/netty/buffer/ByteBuf;I)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "I)",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Lio/netty/handler/codec/mqtt/MqttSubscribePayload;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeString(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/2addr v1, v3

    .line 18
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    and-int/lit8 v3, v3, 0x3

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    new-instance v4, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;

    .line 27
    .line 28
    invoke-static {v2}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v3}, Lio/netty/handler/codec/mqtt/MqttQoS;->valueOf(I)Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v4, v2, v3}, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;-><init>(Ljava/lang/String;Lio/netty/handler/codec/mqtt/MqttQoS;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 46
    .line 47
    new-instance p1, Lio/netty/handler/codec/mqtt/MqttSubscribePayload;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lio/netty/handler/codec/mqtt/MqttSubscribePayload;-><init>(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method private static decodeUnsubscribePayload(Lio/netty/buffer/ByteBuf;I)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "I)",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "Lio/netty/handler/codec/mqtt/MqttUnsubscribePayload;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeString(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/2addr v1, v3

    .line 18
    invoke-static {v2}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 27
    .line 28
    new-instance p1, Lio/netty/handler/codec/mqtt/MqttUnsubscribePayload;

    .line 29
    .line 30
    invoke-direct {p1, v0}, Lio/netty/handler/codec/mqtt/MqttUnsubscribePayload;-><init>(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method private static decodeVariableHeader(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/mqtt/MqttFixedHeader;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/handler/codec/mqtt/MqttFixedHeader;",
            ")",
            "Lio/netty/handler/codec/mqtt/MqttDecoder$Result<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/codec/mqtt/MqttDecoder$1;->$SwitchMap$io$netty$handler$codec$mqtt$MqttMessageType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;->messageType()Lio/netty/handler/codec/mqtt/MqttMessageType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 19
    .line 20
    invoke-direct {p0, v2, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_0
    new-instance p0, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 25
    .line 26
    invoke-direct {p0, v2, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_1
    invoke-static {p0, p1}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodePublishVariableHeader(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/mqtt/MqttFixedHeader;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_2
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeMessageIdVariableHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_3
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeConnAckVariableHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_4
    invoke-static {p0}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeConnectionVariableHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private invalidMessage(Ljava/lang/Throwable;)Lio/netty/handler/codec/mqtt/MqttMessage;
    .locals 2

    .line 1
    sget-object v0, Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;->BAD_MESSAGE:Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->mqttFixedHeader:Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 7
    .line 8
    iget-object v1, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->variableHeader:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lio/netty/handler/codec/mqtt/MqttMessageFactory;->newInvalidMessage(Lio/netty/handler/codec/mqtt/MqttFixedHeader;Ljava/lang/Object;Ljava/lang/Throwable;)Lio/netty/handler/codec/mqtt/MqttMessage;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method


# virtual methods
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
    sget-object p1, Lio/netty/handler/codec/mqtt/MqttDecoder$1;->$SwitchMap$io$netty$handler$codec$mqtt$MqttDecoder$DecoderState:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->state()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget p1, p1, v0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    const/4 p3, 0x4

    .line 25
    if-ne p1, p3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->actualReadableBytes()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/Error;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    :try_start_0
    invoke-static {p2}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeFixedHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->mqttFixedHeader:Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 46
    .line 47
    invoke-virtual {p1}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;->remainingLength()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->bytesRemainingInVariablePart:I

    .line 52
    .line 53
    sget-object p1, Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;->READ_VARIABLE_HEADER:Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 56
    .line 57
    .line 58
    :cond_2
    :try_start_1
    iget-object p1, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->mqttFixedHeader:Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 59
    .line 60
    invoke-static {p2, p1}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodeVariableHeader(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/mqtt/MqttFixedHeader;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->variableHeader:Ljava/lang/Object;

    .line 69
    .line 70
    iget v0, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->bytesRemainingInVariablePart:I

    .line 71
    .line 72
    iget v1, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->maxBytesInMessage:I

    .line 73
    .line 74
    if-gt v0, v1, :cond_5

    .line 75
    .line 76
    invoke-static {p1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    sub-int/2addr v0, p1

    .line 81
    iput v0, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->bytesRemainingInVariablePart:I

    .line 82
    .line 83
    sget-object p1, Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;->READ_PAYLOAD:Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .line 87
    .line 88
    :cond_3
    :try_start_2
    iget-object p1, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->mqttFixedHeader:Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 89
    .line 90
    invoke-virtual {p1}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;->messageType()Lio/netty/handler/codec/mqtt/MqttMessageType;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget v0, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->bytesRemainingInVariablePart:I

    .line 95
    .line 96
    iget-object v1, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->variableHeader:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-static {p2, p1, v0, v1}, Lio/netty/handler/codec/mqtt/MqttDecoder;->decodePayload(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/mqtt/MqttMessageType;ILjava/lang/Object;)Lio/netty/handler/codec/mqtt/MqttDecoder$Result;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget p2, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->bytesRemainingInVariablePart:I

    .line 103
    .line 104
    invoke-static {p1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$100(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    sub-int/2addr p2, v0

    .line 109
    iput p2, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->bytesRemainingInVariablePart:I

    .line 110
    .line 111
    if-nez p2, :cond_4

    .line 112
    .line 113
    sget-object p2, Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;->READ_FIXED_HEADER:Lio/netty/handler/codec/mqtt/MqttDecoder$DecoderState;

    .line 114
    .line 115
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->mqttFixedHeader:Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 119
    .line 120
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->variableHeader:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {p1}, Lio/netty/handler/codec/mqtt/MqttDecoder$Result;->access$000(Lio/netty/handler/codec/mqtt/MqttDecoder$Result;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p2, v0, p1}, Lio/netty/handler/codec/mqtt/MqttMessageFactory;->newMessage(Lio/netty/handler/codec/mqtt/MqttFixedHeader;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/mqtt/MqttMessage;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const/4 p2, 0x0

    .line 131
    iput-object p2, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->mqttFixedHeader:Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 132
    .line 133
    iput-object p2, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->variableHeader:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :goto_0
    return-void

    .line 139
    :cond_4
    new-instance p1, Lio/netty/handler/codec/DecoderException;

    .line 140
    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v0, "non-zero remaining payload bytes: "

    .line 147
    .line 148
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v0, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->bytesRemainingInVariablePart:I

    .line 152
    .line 153
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, " ("

    .line 157
    .line 158
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->mqttFixedHeader:Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 162
    .line 163
    invoke-virtual {v0}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;->messageType()Lio/netty/handler/codec/mqtt/MqttMessageType;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const/16 v0, 0x29

    .line 171
    .line 172
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-direct {p1, p2}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    :catch_0
    move-exception p1

    .line 184
    invoke-direct {p0, p1}, Lio/netty/handler/codec/mqtt/MqttDecoder;->invalidMessage(Ljava/lang/Throwable;)Lio/netty/handler/codec/mqtt/MqttMessage;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_5
    :try_start_3
    new-instance p1, Lio/netty/handler/codec/DecoderException;

    .line 193
    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v0, "too large message: "

    .line 200
    .line 201
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget v0, p0, Lio/netty/handler/codec/mqtt/MqttDecoder;->bytesRemainingInVariablePart:I

    .line 205
    .line 206
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v0, " bytes"

    .line 210
    .line 211
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-direct {p1, p2}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 222
    :catch_1
    move-exception p1

    .line 223
    invoke-direct {p0, p1}, Lio/netty/handler/codec/mqtt/MqttDecoder;->invalidMessage(Ljava/lang/Throwable;)Lio/netty/handler/codec/mqtt/MqttMessage;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :catch_2
    move-exception p1

    .line 232
    invoke-direct {p0, p1}, Lio/netty/handler/codec/mqtt/MqttDecoder;->invalidMessage(Ljava/lang/Throwable;)Lio/netty/handler/codec/mqtt/MqttMessage;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    return-void
.end method

.class public final Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/mqtt/MqttMessageBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectBuilder"
.end annotation


# instance fields
.field private cleanSession:Z

.field private clientId:Ljava/lang/String;

.field private hasPassword:Z

.field private hasUser:Z

.field private keepAliveSecs:I

.field private password:[B

.field private username:Ljava/lang/String;

.field private version:Lio/netty/handler/codec/mqtt/MqttVersion;

.field private willFlag:Z

.field private willMessage:[B

.field private willQos:Lio/netty/handler/codec/mqtt/MqttQoS;

.field private willRetain:Z

.field private willTopic:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/netty/handler/codec/mqtt/MqttVersion;->MQTT_3_1_1:Lio/netty/handler/codec/mqtt/MqttVersion;

    .line 5
    .line 6
    iput-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->version:Lio/netty/handler/codec/mqtt/MqttVersion;

    .line 7
    .line 8
    sget-object v0, Lio/netty/handler/codec/mqtt/MqttQoS;->AT_MOST_ONCE:Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 9
    .line 10
    iput-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willQos:Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public build()Lio/netty/handler/codec/mqtt/MqttConnectMessage;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v7, Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 4
    .line 5
    sget-object v2, Lio/netty/handler/codec/mqtt/MqttMessageType;->CONNECT:Lio/netty/handler/codec/mqtt/MqttMessageType;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    sget-object v4, Lio/netty/handler/codec/mqtt/MqttQoS;->AT_MOST_ONCE:Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v1, v7

    .line 13
    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;-><init>(Lio/netty/handler/codec/mqtt/MqttMessageType;ZLio/netty/handler/codec/mqtt/MqttQoS;ZI)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;

    .line 17
    .line 18
    iget-object v2, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->version:Lio/netty/handler/codec/mqtt/MqttVersion;

    .line 19
    .line 20
    invoke-virtual {v2}, Lio/netty/handler/codec/mqtt/MqttVersion;->protocolName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    iget-object v2, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->version:Lio/netty/handler/codec/mqtt/MqttVersion;

    .line 25
    .line 26
    invoke-virtual {v2}, Lio/netty/handler/codec/mqtt/MqttVersion;->protocolLevel()B

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    iget-boolean v11, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasUser:Z

    .line 31
    .line 32
    iget-boolean v12, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasPassword:Z

    .line 33
    .line 34
    iget-boolean v13, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willRetain:Z

    .line 35
    .line 36
    iget-object v2, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willQos:Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 37
    .line 38
    invoke-virtual {v2}, Lio/netty/handler/codec/mqtt/MqttQoS;->value()I

    .line 39
    .line 40
    .line 41
    move-result v14

    .line 42
    iget-boolean v15, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willFlag:Z

    .line 43
    .line 44
    iget-boolean v2, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->cleanSession:Z

    .line 45
    .line 46
    iget v3, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->keepAliveSecs:I

    .line 47
    .line 48
    move-object v8, v1

    .line 49
    move/from16 v16, v2

    .line 50
    .line 51
    move/from16 v17, v3

    .line 52
    .line 53
    invoke-direct/range {v8 .. v17}, Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;-><init>(Ljava/lang/String;IZZZIZZI)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lio/netty/handler/codec/mqtt/MqttConnectPayload;

    .line 57
    .line 58
    iget-object v3, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->clientId:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v4, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willTopic:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v5, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willMessage:[B

    .line 63
    .line 64
    iget-object v6, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->username:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v8, v0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->password:[B

    .line 67
    .line 68
    move-object/from16 v16, v2

    .line 69
    .line 70
    move-object/from16 v17, v3

    .line 71
    .line 72
    move-object/from16 v18, v4

    .line 73
    .line 74
    move-object/from16 v19, v5

    .line 75
    .line 76
    move-object/from16 v20, v6

    .line 77
    .line 78
    move-object/from16 v21, v8

    .line 79
    .line 80
    invoke-direct/range {v16 .. v21}, Lio/netty/handler/codec/mqtt/MqttConnectPayload;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Lio/netty/handler/codec/mqtt/MqttConnectMessage;

    .line 84
    .line 85
    invoke-direct {v3, v7, v1, v2}, Lio/netty/handler/codec/mqtt/MqttConnectMessage;-><init>(Lio/netty/handler/codec/mqtt/MqttFixedHeader;Lio/netty/handler/codec/mqtt/MqttConnectVariableHeader;Lio/netty/handler/codec/mqtt/MqttConnectPayload;)V

    .line 86
    .line 87
    .line 88
    return-object v3
.end method

.method public cleanSession(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->cleanSession:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public clientId(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->clientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasPassword(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasPassword:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public hasUser(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasUser:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public keepAlive(I)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->keepAliveSecs:I

    .line 2
    .line 3
    return-object p0
.end method

.method public password(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->password([B)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;

    return-object p0
.end method

.method public password([B)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasPassword:Z

    .line 3
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->password:[B

    return-object p0
.end method

.method public protocolVersion(Lio/netty/handler/codec/mqtt/MqttVersion;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->version:Lio/netty/handler/codec/mqtt/MqttVersion;

    .line 2
    .line 3
    return-object p0
.end method

.method public username(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-boolean v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->hasUser:Z

    .line 7
    .line 8
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->username:Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public willFlag(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willFlag:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public willMessage(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willMessage([B)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;

    return-object p0
.end method

.method public willMessage([B)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willMessage:[B

    return-object p0
.end method

.method public willQoS(Lio/netty/handler/codec/mqtt/MqttQoS;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willQos:Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 2
    .line 3
    return-object p0
.end method

.method public willRetain(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willRetain:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public willTopic(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnectBuilder;->willTopic:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

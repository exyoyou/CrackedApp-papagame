.class public final Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/mqtt/MqttMessageBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnAckBuilder"
.end annotation


# instance fields
.field private returnCode:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

.field private sessionPresent:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lio/netty/handler/codec/mqtt/MqttConnAckMessage;
    .locals 7

    .line 1
    new-instance v6, Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 2
    .line 3
    sget-object v1, Lio/netty/handler/codec/mqtt/MqttMessageType;->CONNACK:Lio/netty/handler/codec/mqtt/MqttMessageType;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lio/netty/handler/codec/mqtt/MqttQoS;->AT_MOST_ONCE:Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;-><init>(Lio/netty/handler/codec/mqtt/MqttMessageType;ZLio/netty/handler/codec/mqtt/MqttQoS;ZI)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;

    .line 15
    .line 16
    iget-object v1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;->returnCode:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 17
    .line 18
    iget-boolean v2, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;->sessionPresent:Z

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;-><init>(Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;Z)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lio/netty/handler/codec/mqtt/MqttConnAckMessage;

    .line 24
    .line 25
    invoke-direct {v1, v6, v0}, Lio/netty/handler/codec/mqtt/MqttConnAckMessage;-><init>(Lio/netty/handler/codec/mqtt/MqttFixedHeader;Lio/netty/handler/codec/mqtt/MqttConnAckVariableHeader;)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public returnCode(Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;->returnCode:Lio/netty/handler/codec/mqtt/MqttConnectReturnCode;

    .line 2
    .line 3
    return-object p0
.end method

.method public sessionPresent(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$ConnAckBuilder;->sessionPresent:Z

    .line 2
    .line 3
    return-object p0
.end method

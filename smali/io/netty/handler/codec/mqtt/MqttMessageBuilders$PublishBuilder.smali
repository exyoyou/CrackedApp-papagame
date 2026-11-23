.class public final Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/mqtt/MqttMessageBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PublishBuilder"
.end annotation


# instance fields
.field private messageId:I

.field private payload:Lio/netty/buffer/ByteBuf;

.field private qos:Lio/netty/handler/codec/mqtt/MqttQoS;

.field private retained:Z

.field private topic:Ljava/lang/String;


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
.method public build()Lio/netty/handler/codec/mqtt/MqttPublishMessage;
    .locals 7

    .line 1
    new-instance v6, Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 2
    .line 3
    sget-object v1, Lio/netty/handler/codec/mqtt/MqttMessageType;->PUBLISH:Lio/netty/handler/codec/mqtt/MqttMessageType;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;->qos:Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 7
    .line 8
    iget-boolean v4, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;->retained:Z

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/mqtt/MqttFixedHeader;-><init>(Lio/netty/handler/codec/mqtt/MqttMessageType;ZLio/netty/handler/codec/mqtt/MqttQoS;ZI)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;

    .line 16
    .line 17
    iget-object v1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;->topic:Ljava/lang/String;

    .line 18
    .line 19
    iget v2, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;->messageId:I

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lio/netty/handler/codec/mqtt/MqttPublishMessage;

    .line 25
    .line 26
    invoke-static {}, Lio/netty/buffer/Unpooled;->buffer()Lio/netty/buffer/ByteBuf;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;->payload:Lio/netty/buffer/ByteBuf;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v6, v0, v2}, Lio/netty/handler/codec/mqtt/MqttPublishMessage;-><init>(Lio/netty/handler/codec/mqtt/MqttFixedHeader;Lio/netty/handler/codec/mqtt/MqttPublishVariableHeader;Lio/netty/buffer/ByteBuf;)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method

.method public messageId(I)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;->messageId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public payload(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;->payload:Lio/netty/buffer/ByteBuf;

    .line 2
    .line 3
    return-object p0
.end method

.method public qos(Lio/netty/handler/codec/mqtt/MqttQoS;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;->qos:Lio/netty/handler/codec/mqtt/MqttQoS;

    .line 2
    .line 3
    return-object p0
.end method

.method public retained(Z)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;->retained:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public topicName(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$PublishBuilder;->topic:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

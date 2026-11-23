.class public final Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/mqtt/MqttMessageBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscribeBuilder"
.end annotation


# instance fields
.field private messageId:I

.field private subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/mqtt/MqttTopicSubscription;",
            ">;"
        }
    .end annotation
.end field


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
.method public addSubscription(Lio/netty/handler/codec/mqtt/MqttQoS;Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->subscriptions:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->subscriptions:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->subscriptions:Ljava/util/List;

    .line 14
    .line 15
    new-instance v1, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;

    .line 16
    .line 17
    invoke-direct {v1, p2, p1}, Lio/netty/handler/codec/mqtt/MqttTopicSubscription;-><init>(Ljava/lang/String;Lio/netty/handler/codec/mqtt/MqttQoS;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public build()Lio/netty/handler/codec/mqtt/MqttSubscribeMessage;
    .locals 7

    .line 1
    new-instance v6, Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 2
    .line 3
    sget-object v1, Lio/netty/handler/codec/mqtt/MqttMessageType;->SUBSCRIBE:Lio/netty/handler/codec/mqtt/MqttMessageType;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lio/netty/handler/codec/mqtt/MqttQoS;->AT_LEAST_ONCE:Lio/netty/handler/codec/mqtt/MqttQoS;

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
    iget v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->messageId:I

    .line 15
    .line 16
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;->from(I)Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lio/netty/handler/codec/mqtt/MqttSubscribePayload;

    .line 21
    .line 22
    iget-object v2, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->subscriptions:Ljava/util/List;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lio/netty/handler/codec/mqtt/MqttSubscribePayload;-><init>(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lio/netty/handler/codec/mqtt/MqttSubscribeMessage;

    .line 28
    .line 29
    invoke-direct {v2, v6, v0, v1}, Lio/netty/handler/codec/mqtt/MqttSubscribeMessage;-><init>(Lio/netty/handler/codec/mqtt/MqttFixedHeader;Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;Lio/netty/handler/codec/mqtt/MqttSubscribePayload;)V

    .line 30
    .line 31
    .line 32
    return-object v2
.end method

.method public messageId(I)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$SubscribeBuilder;->messageId:I

    .line 2
    .line 3
    return-object p0
.end method

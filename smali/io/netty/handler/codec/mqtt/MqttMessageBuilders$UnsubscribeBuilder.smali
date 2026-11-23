.class public final Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/mqtt/MqttMessageBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsubscribeBuilder"
.end annotation


# instance fields
.field private messageId:I

.field private topicFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
.method public addTopicFilter(Ljava/lang/String;)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->topicFilters:Ljava/util/List;

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
    iput-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->topicFilters:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->topicFilters:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public build()Lio/netty/handler/codec/mqtt/MqttUnsubscribeMessage;
    .locals 7

    .line 1
    new-instance v6, Lio/netty/handler/codec/mqtt/MqttFixedHeader;

    .line 2
    .line 3
    sget-object v1, Lio/netty/handler/codec/mqtt/MqttMessageType;->UNSUBSCRIBE:Lio/netty/handler/codec/mqtt/MqttMessageType;

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
    iget v0, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->messageId:I

    .line 15
    .line 16
    invoke-static {v0}, Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;->from(I)Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lio/netty/handler/codec/mqtt/MqttUnsubscribePayload;

    .line 21
    .line 22
    iget-object v2, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->topicFilters:Ljava/util/List;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lio/netty/handler/codec/mqtt/MqttUnsubscribePayload;-><init>(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lio/netty/handler/codec/mqtt/MqttUnsubscribeMessage;

    .line 28
    .line 29
    invoke-direct {v2, v6, v0, v1}, Lio/netty/handler/codec/mqtt/MqttUnsubscribeMessage;-><init>(Lio/netty/handler/codec/mqtt/MqttFixedHeader;Lio/netty/handler/codec/mqtt/MqttMessageIdVariableHeader;Lio/netty/handler/codec/mqtt/MqttUnsubscribePayload;)V

    .line 30
    .line 31
    .line 32
    return-object v2
.end method

.method public messageId(I)Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lio/netty/handler/codec/mqtt/MqttMessageBuilders$UnsubscribeBuilder;->messageId:I

    .line 2
    .line 3
    return-object p0
.end method

.class public final Lcom/windmill/sdk/models/ChannelConfig$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/ChannelConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/ChannelConfig;",
        "Lcom/windmill/sdk/models/ChannelConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public channel_appId:Ljava/lang/String;

.field public channel_appkey:Ljava/lang/String;

.field public is_support_repeat_init:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/windmill/sdk/models/ChannelConfig;->DEFAULT_IS_SUPPORT_REPEAT_INIT:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/ChannelConfig$Builder;->is_support_repeat_init:Ljava/lang/Boolean;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/ChannelConfig$Builder;->build()Lcom/windmill/sdk/models/ChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/ChannelConfig;
    .locals 5

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/ChannelConfig;

    iget-object v1, p0, Lcom/windmill/sdk/models/ChannelConfig$Builder;->is_support_repeat_init:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/windmill/sdk/models/ChannelConfig$Builder;->channel_appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/windmill/sdk/models/ChannelConfig$Builder;->channel_appkey:Ljava/lang/String;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/windmill/sdk/models/ChannelConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public channel_appId(Ljava/lang/String;)Lcom/windmill/sdk/models/ChannelConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel_appId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/ChannelConfig$Builder;->channel_appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public channel_appkey(Ljava/lang/String;)Lcom/windmill/sdk/models/ChannelConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel_appkey"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/ChannelConfig$Builder;->channel_appkey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public is_support_repeat_init(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/ChannelConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_support_repeat_init"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/ChannelConfig$Builder;->is_support_repeat_init:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

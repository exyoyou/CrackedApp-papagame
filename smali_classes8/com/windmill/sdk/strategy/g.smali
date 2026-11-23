.class public Lcom/windmill/sdk/strategy/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/strategy/g$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/windmill/sdk/strategy/g$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/g;-><init>()V

    return-void
.end method

.method public static b()Lcom/windmill/sdk/strategy/g;
    .locals 1

    .line 3
    invoke-static {}, Lcom/windmill/sdk/strategy/g$a;->a()Lcom/windmill/sdk/strategy/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/windmill/sdk/models/ChannelConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelId"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/g;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/windmill/sdk/models/ChannelConfig;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/windmill/sdk/models/ChannelConfig$Builder;

    invoke-direct {p1}, Lcom/windmill/sdk/models/ChannelConfig$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/windmill/sdk/models/ChannelConfig$Builder;->build()Lcom/windmill/sdk/models/ChannelConfig;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/windmill/sdk/models/ChannelConfig;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getChannelConfigs()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/strategy/g;->a(I)Lcom/windmill/sdk/models/ChannelConfig;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/windmill/sdk/models/ChannelConfig;->is_support_repeat_init:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

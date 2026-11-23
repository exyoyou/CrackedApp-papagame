.class public final Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/CommonEndpointsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/CommonEndpointsConfig;",
        "Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public bidding_url:Ljava/lang/String;

.field public config:Ljava/lang/String;

.field public log:Ljava/lang/String;

.field public strategy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->log:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->strategy:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->bidding_url:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->config:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public bidding_url(Ljava/lang/String;)Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bidding_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->bidding_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->build()Lcom/windmill/sdk/models/CommonEndpointsConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/CommonEndpointsConfig;
    .locals 7

    .line 2
    new-instance v6, Lcom/windmill/sdk/models/CommonEndpointsConfig;

    iget-object v1, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->log:Ljava/lang/String;

    iget-object v2, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->strategy:Ljava/lang/String;

    iget-object v3, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->bidding_url:Ljava/lang/String;

    iget-object v4, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->config:Ljava/lang/String;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/windmill/sdk/models/CommonEndpointsConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    return-object v6
.end method

.method public config(Ljava/lang/String;)Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->config:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public log(Ljava/lang/String;)Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->log:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public strategy(Ljava/lang/String;)Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->strategy:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

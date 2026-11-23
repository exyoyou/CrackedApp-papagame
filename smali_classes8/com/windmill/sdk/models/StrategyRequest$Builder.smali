.class public final Lcom/windmill/sdk/models/StrategyRequest$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/StrategyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/StrategyRequest;",
        "Lcom/windmill/sdk/models/StrategyRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public auto_request:Ljava/lang/Boolean;

.field public bidRequest:Lcom/czhj/sdk/common/models/BidRequest;

.field public request_n:Ljava/lang/Integer;

.field public request_type:Ljava/lang/Integer;

.field public sign:Ljava/lang/String;

.field public slot_group:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->sign:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/windmill/sdk/models/StrategyRequest;->DEFAULT_REQUEST_TYPE:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->request_type:Ljava/lang/Integer;

    .line 11
    .line 12
    sget-object v0, Lcom/windmill/sdk/models/StrategyRequest;->DEFAULT_AUTO_REQUEST:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->auto_request:Ljava/lang/Boolean;

    .line 15
    .line 16
    sget-object v0, Lcom/windmill/sdk/models/StrategyRequest;->DEFAULT_REQUEST_N:Ljava/lang/Integer;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->request_n:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->slot_group:Ljava/util/Map;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public auto_request(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/StrategyRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto_request"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->auto_request:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public bidRequest(Lcom/czhj/sdk/common/models/BidRequest;)Lcom/windmill/sdk/models/StrategyRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bidRequest"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->bidRequest:Lcom/czhj/sdk/common/models/BidRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->build()Lcom/windmill/sdk/models/StrategyRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/StrategyRequest;
    .locals 9

    .line 2
    new-instance v8, Lcom/windmill/sdk/models/StrategyRequest;

    iget-object v1, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->bidRequest:Lcom/czhj/sdk/common/models/BidRequest;

    iget-object v2, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->sign:Ljava/lang/String;

    iget-object v3, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->slot_group:Ljava/util/Map;

    iget-object v4, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->request_type:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->auto_request:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->request_n:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/windmill/sdk/models/StrategyRequest;-><init>(Lcom/czhj/sdk/common/models/BidRequest;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v8
.end method

.method public request_n(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request_n"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->request_n:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public request_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->request_type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public sign(Ljava/lang/String;)Lcom/windmill/sdk/models/StrategyRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sign"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->sign:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public slot_group(Ljava/util/Map;)Lcom/windmill/sdk/models/StrategyRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slot_group"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/StrategyRequest$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyRequest$Builder;->slot_group:Ljava/util/Map;

    .line 5
    .line 6
    return-object p0
.end method

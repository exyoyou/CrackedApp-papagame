.class public final Lcom/windmill/sdk/models/WaterfallRequest$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/WaterfallRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/WaterfallRequest;",
        "Lcom/windmill/sdk/models/WaterfallRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public bidRequest:Lcom/czhj/sdk/common/models/BidRequest;

.field public request_n:Ljava/lang/Integer;

.field public waterfall:Lcom/windmill/sdk/models/Waterfall;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/windmill/sdk/models/WaterfallRequest;->DEFAULT_REQUEST_N:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallRequest$Builder;->request_n:Ljava/lang/Integer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bidRequest(Lcom/czhj/sdk/common/models/BidRequest;)Lcom/windmill/sdk/models/WaterfallRequest$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallRequest$Builder;->bidRequest:Lcom/czhj/sdk/common/models/BidRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/WaterfallRequest$Builder;->build()Lcom/windmill/sdk/models/WaterfallRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/WaterfallRequest;
    .locals 5

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/WaterfallRequest;

    iget-object v1, p0, Lcom/windmill/sdk/models/WaterfallRequest$Builder;->bidRequest:Lcom/czhj/sdk/common/models/BidRequest;

    iget-object v2, p0, Lcom/windmill/sdk/models/WaterfallRequest$Builder;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, p0, Lcom/windmill/sdk/models/WaterfallRequest$Builder;->request_n:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/windmill/sdk/models/WaterfallRequest;-><init>(Lcom/czhj/sdk/common/models/BidRequest;Lcom/windmill/sdk/models/Waterfall;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public request_n(Ljava/lang/Integer;)Lcom/windmill/sdk/models/WaterfallRequest$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallRequest$Builder;->request_n:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public waterfall(Lcom/windmill/sdk/models/Waterfall;)Lcom/windmill/sdk/models/WaterfallRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waterfall"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallRequest$Builder;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    .line 2
    .line 3
    return-object p0
.end method

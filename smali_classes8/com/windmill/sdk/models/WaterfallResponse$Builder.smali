.class public final Lcom/windmill/sdk/models/WaterfallResponse$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/WaterfallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/WaterfallResponse;",
        "Lcom/windmill/sdk/models/WaterfallResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public code:Ljava/lang/Integer;

.field public dc_options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public error_message:Ljava/lang/String;

.field public saas_options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sign:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public waterfall:Lcom/windmill/sdk/models/Waterfall;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/windmill/sdk/models/WaterfallResponse;->DEFAULT_CODE:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->code:Ljava/lang/Integer;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->error_message:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->uid:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->sign:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->dc_options:Ljava/util/Map;

    .line 21
    .line 22
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->saas_options:Ljava/util/Map;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->build()Lcom/windmill/sdk/models/WaterfallResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/WaterfallResponse;
    .locals 10

    .line 2
    new-instance v9, Lcom/windmill/sdk/models/WaterfallResponse;

    iget-object v1, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->code:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->error_message:Ljava/lang/String;

    iget-object v3, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->sign:Ljava/lang/String;

    iget-object v5, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v6, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->dc_options:Ljava/util/Map;

    iget-object v7, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->saas_options:Ljava/util/Map;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/windmill/sdk/models/WaterfallResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/models/Waterfall;Ljava/util/Map;Ljava/util/Map;Lcom/czhj/wire/okio/ByteString;)V

    return-object v9
.end method

.method public code(Ljava/lang/Integer;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->code:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public dc_options(Ljava/util/Map;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dc_options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/WaterfallResponse$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->dc_options:Ljava/util/Map;

    .line 5
    .line 6
    return-object p0
.end method

.method public error_message(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->error_message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public saas_options(Ljava/util/Map;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saas_options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/WaterfallResponse$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->saas_options:Ljava/util/Map;

    .line 5
    .line 6
    return-object p0
.end method

.method public sign(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->sign:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public waterfall(Lcom/windmill/sdk/models/Waterfall;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    .line 2
    .line 3
    return-object p0
.end method

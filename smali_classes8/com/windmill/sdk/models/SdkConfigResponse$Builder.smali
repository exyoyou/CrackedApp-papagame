.class public final Lcom/windmill/sdk/models/SdkConfigResponse$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/SdkConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/SdkConfigResponse;",
        "Lcom/windmill/sdk/models/SdkConfigResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public code:Ljava/lang/Integer;

.field public config:Lcom/windmill/sdk/models/SdkConfig;

.field public error_message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/windmill/sdk/models/SdkConfigResponse;->DEFAULT_CODE:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/SdkConfigResponse$Builder;->code:Ljava/lang/Integer;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/SdkConfigResponse$Builder;->error_message:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/SdkConfigResponse$Builder;->build()Lcom/windmill/sdk/models/SdkConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/SdkConfigResponse;
    .locals 5

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/SdkConfigResponse;

    iget-object v1, p0, Lcom/windmill/sdk/models/SdkConfigResponse$Builder;->code:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/windmill/sdk/models/SdkConfigResponse$Builder;->error_message:Ljava/lang/String;

    iget-object v3, p0, Lcom/windmill/sdk/models/SdkConfigResponse$Builder;->config:Lcom/windmill/sdk/models/SdkConfig;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/windmill/sdk/models/SdkConfigResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/windmill/sdk/models/SdkConfig;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public code(Ljava/lang/Integer;)Lcom/windmill/sdk/models/SdkConfigResponse$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/SdkConfigResponse$Builder;->code:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public config(Lcom/windmill/sdk/models/SdkConfig;)Lcom/windmill/sdk/models/SdkConfigResponse$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/SdkConfigResponse$Builder;->config:Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public error_message(Ljava/lang/String;)Lcom/windmill/sdk/models/SdkConfigResponse$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/SdkConfigResponse$Builder;->error_message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

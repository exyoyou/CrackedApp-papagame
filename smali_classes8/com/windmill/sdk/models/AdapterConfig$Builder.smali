.class public final Lcom/windmill/sdk/models/AdapterConfig$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/AdapterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/AdapterConfig;",
        "Lcom/windmill/sdk/models/AdapterConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public banner_adapter:Ljava/lang/String;

.field public config_adapter:Ljava/lang/String;

.field public interstitial_adapter:Ljava/lang/String;

.field public native_adapter:Ljava/lang/String;

.field public rv_adapter:Ljava/lang/String;

.field public splash_adapter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public banner_adapter(Ljava/lang/String;)Lcom/windmill/sdk/models/AdapterConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banner_adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->banner_adapter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/AdapterConfig$Builder;->build()Lcom/windmill/sdk/models/AdapterConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/AdapterConfig;
    .locals 9

    .line 2
    new-instance v8, Lcom/windmill/sdk/models/AdapterConfig;

    iget-object v1, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->config_adapter:Ljava/lang/String;

    iget-object v2, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->rv_adapter:Ljava/lang/String;

    iget-object v3, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->splash_adapter:Ljava/lang/String;

    iget-object v4, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->interstitial_adapter:Ljava/lang/String;

    iget-object v5, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->native_adapter:Ljava/lang/String;

    iget-object v6, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->banner_adapter:Ljava/lang/String;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/windmill/sdk/models/AdapterConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    return-object v8
.end method

.method public config_adapter(Ljava/lang/String;)Lcom/windmill/sdk/models/AdapterConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config_adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->config_adapter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public interstitial_adapter(Ljava/lang/String;)Lcom/windmill/sdk/models/AdapterConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interstitial_adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->interstitial_adapter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public native_adapter(Ljava/lang/String;)Lcom/windmill/sdk/models/AdapterConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "native_adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->native_adapter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public rv_adapter(Ljava/lang/String;)Lcom/windmill/sdk/models/AdapterConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rv_adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->rv_adapter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public splash_adapter(Ljava/lang/String;)Lcom/windmill/sdk/models/AdapterConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splash_adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/AdapterConfig$Builder;->splash_adapter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

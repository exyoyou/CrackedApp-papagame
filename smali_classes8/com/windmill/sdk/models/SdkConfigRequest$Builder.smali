.class public final Lcom/windmill/sdk/models/SdkConfigRequest$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/SdkConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/SdkConfigRequest;",
        "Lcom/windmill/sdk/models/SdkConfigRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public app:Lcom/czhj/sdk/common/models/App;

.field public device:Lcom/czhj/sdk/common/models/Device;

.field public network:Lcom/czhj/sdk/common/models/Network;

.field public privacy:Lcom/czhj/sdk/common/models/Privacy;

.field public user:Lcom/czhj/sdk/common/models/User;


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
.method public app(Lcom/czhj/sdk/common/models/App;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->app:Lcom/czhj/sdk/common/models/App;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->build()Lcom/windmill/sdk/models/SdkConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/SdkConfigRequest;
    .locals 8

    .line 2
    new-instance v7, Lcom/windmill/sdk/models/SdkConfigRequest;

    iget-object v1, p0, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->app:Lcom/czhj/sdk/common/models/App;

    iget-object v2, p0, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->device:Lcom/czhj/sdk/common/models/Device;

    iget-object v3, p0, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->network:Lcom/czhj/sdk/common/models/Network;

    iget-object v4, p0, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->privacy:Lcom/czhj/sdk/common/models/Privacy;

    iget-object v5, p0, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->user:Lcom/czhj/sdk/common/models/User;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/windmill/sdk/models/SdkConfigRequest;-><init>(Lcom/czhj/sdk/common/models/App;Lcom/czhj/sdk/common/models/Device;Lcom/czhj/sdk/common/models/Network;Lcom/czhj/sdk/common/models/Privacy;Lcom/czhj/sdk/common/models/User;Lcom/czhj/wire/okio/ByteString;)V

    return-object v7
.end method

.method public device(Lcom/czhj/sdk/common/models/Device;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->device:Lcom/czhj/sdk/common/models/Device;

    .line 2
    .line 3
    return-object p0
.end method

.method public network(Lcom/czhj/sdk/common/models/Network;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "network"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->network:Lcom/czhj/sdk/common/models/Network;

    .line 2
    .line 3
    return-object p0
.end method

.method public privacy(Lcom/czhj/sdk/common/models/Privacy;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privacy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->privacy:Lcom/czhj/sdk/common/models/Privacy;

    .line 2
    .line 3
    return-object p0
.end method

.method public user(Lcom/czhj/sdk/common/models/User;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->user:Lcom/czhj/sdk/common/models/User;

    .line 2
    .line 3
    return-object p0
.end method

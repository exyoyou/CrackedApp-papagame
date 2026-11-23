.class public final Lcom/czhj/sdk/common/models/NovaReq$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/models/NovaReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/czhj/sdk/common/models/NovaReq;",
        "Lcom/czhj/sdk/common/models/NovaReq$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public black_package_status:Ljava/lang/Integer;

.field public quickapp_launcher_package:Ljava/lang/String;

.field public quickapp_launcher_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public black_package_status(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/NovaReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/NovaReq$Builder;->black_package_status:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/czhj/sdk/common/models/NovaReq;
    .locals 5

    .line 1
    new-instance v0, Lcom/czhj/sdk/common/models/NovaReq;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/NovaReq$Builder;->quickapp_launcher_version:Ljava/lang/String;

    iget-object v2, p0, Lcom/czhj/sdk/common/models/NovaReq$Builder;->quickapp_launcher_package:Ljava/lang/String;

    iget-object v3, p0, Lcom/czhj/sdk/common/models/NovaReq$Builder;->black_package_status:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/czhj/sdk/common/models/NovaReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/NovaReq$Builder;->build()Lcom/czhj/sdk/common/models/NovaReq;

    move-result-object v0

    return-object v0
.end method

.method public quickapp_launcher_package(Ljava/lang/String;)Lcom/czhj/sdk/common/models/NovaReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/NovaReq$Builder;->quickapp_launcher_package:Ljava/lang/String;

    return-object p0
.end method

.method public quickapp_launcher_version(Ljava/lang/String;)Lcom/czhj/sdk/common/models/NovaReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/NovaReq$Builder;->quickapp_launcher_version:Ljava/lang/String;

    return-object p0
.end method

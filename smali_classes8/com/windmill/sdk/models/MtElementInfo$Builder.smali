.class public final Lcom/windmill/sdk/models/MtElementInfo$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/MtElementInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/MtElementInfo;",
        "Lcom/windmill/sdk/models/MtElementInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public channel_id:Ljava/lang/Integer;

.field public element_id:Ljava/lang/Integer;

.field public mt_element_options:Ljava/util/Map;
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
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/windmill/sdk/models/MtElementInfo$Builder;->mt_element_options:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/MtElementInfo$Builder;->build()Lcom/windmill/sdk/models/MtElementInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/MtElementInfo;
    .locals 5

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/MtElementInfo;

    iget-object v1, p0, Lcom/windmill/sdk/models/MtElementInfo$Builder;->channel_id:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/windmill/sdk/models/MtElementInfo$Builder;->element_id:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/windmill/sdk/models/MtElementInfo$Builder;->mt_element_options:Ljava/util/Map;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/windmill/sdk/models/MtElementInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public channel_id(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MtElementInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MtElementInfo$Builder;->channel_id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public element_id(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MtElementInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MtElementInfo$Builder;->element_id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public mt_element_options(Ljava/util/Map;)Lcom/windmill/sdk/models/MtElementInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mt_element_options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/MtElementInfo$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/MtElementInfo$Builder;->mt_element_options:Ljava/util/Map;

    .line 5
    .line 6
    return-object p0
.end method

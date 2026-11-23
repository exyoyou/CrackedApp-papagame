.class public final Lcom/windmill/sdk/models/HBResponse$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/HBResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/HBResponse;",
        "Lcom/windmill/sdk/models/HBResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public bid_id:Ljava/lang/String;

.field public err_code:Ljava/lang/Integer;

.field public err_msg:Ljava/lang/String;

.field public lose_url:Ljava/lang/String;

.field public response_bytes:Lcom/czhj/wire/okio/ByteString;

.field public response_str:Ljava/lang/String;

.field public win_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->win_url:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->lose_url:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->bid_id:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->response_str:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v1, Lcom/windmill/sdk/models/HBResponse;->DEFAULT_RESPONSE_BYTES:Lcom/czhj/wire/okio/ByteString;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->response_bytes:Lcom/czhj/wire/okio/ByteString;

    .line 17
    .line 18
    sget-object v1, Lcom/windmill/sdk/models/HBResponse;->DEFAULT_ERR_CODE:Ljava/lang/Integer;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->err_code:Ljava/lang/Integer;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->err_msg:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public bid_id(Ljava/lang/String;)Lcom/windmill/sdk/models/HBResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bid_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->bid_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/HBResponse$Builder;->build()Lcom/windmill/sdk/models/HBResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/HBResponse;
    .locals 10

    .line 2
    new-instance v9, Lcom/windmill/sdk/models/HBResponse;

    iget-object v1, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->win_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->lose_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->bid_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->response_str:Ljava/lang/String;

    iget-object v5, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->response_bytes:Lcom/czhj/wire/okio/ByteString;

    iget-object v6, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->err_code:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->err_msg:Ljava/lang/String;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/windmill/sdk/models/HBResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;Ljava/lang/Integer;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    return-object v9
.end method

.method public err_code(Ljava/lang/Integer;)Lcom/windmill/sdk/models/HBResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "err_code"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->err_code:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public err_msg(Ljava/lang/String;)Lcom/windmill/sdk/models/HBResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "err_msg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->err_msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public lose_url(Ljava/lang/String;)Lcom/windmill/sdk/models/HBResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lose_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->lose_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public response_bytes(Lcom/czhj/wire/okio/ByteString;)Lcom/windmill/sdk/models/HBResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response_bytes"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->response_bytes:Lcom/czhj/wire/okio/ByteString;

    .line 2
    .line 3
    return-object p0
.end method

.method public response_str(Ljava/lang/String;)Lcom/windmill/sdk/models/HBResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response_str"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->response_str:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public win_url(Ljava/lang/String;)Lcom/windmill/sdk/models/HBResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "win_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/HBResponse$Builder;->win_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

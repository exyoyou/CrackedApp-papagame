.class final Lcom/windmill/sdk/models/SdkConfigRequest$ProtoAdapter_SdkConfigRequest;
.super Lcom/czhj/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/SdkConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_SdkConfigRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/windmill/sdk/models/SdkConfigRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/czhj/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/czhj/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v1, Lcom/windmill/sdk/models/SdkConfigRequest;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/ProtoAdapter;-><init>(Lcom/czhj/wire/FieldEncoding;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/windmill/sdk/models/SdkConfigRequest;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    invoke-direct {v0}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->peekFieldEncoding()Lcom/czhj/wire/FieldEncoding;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/czhj/wire/FieldEncoding;->rawProtoAdapter()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-virtual {v0, v3, v4, v5}, Lcom/czhj/wire/Message$Builder;->addUnknownField(ILcom/czhj/wire/FieldEncoding;Ljava/lang/Object;)Lcom/czhj/wire/Message$Builder;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v3, Lcom/czhj/sdk/common/models/User;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/User;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->user(Lcom/czhj/sdk/common/models/User;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    goto :goto_0

    .line 9
    :cond_1
    sget-object v3, Lcom/czhj/sdk/common/models/Privacy;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Privacy;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->privacy(Lcom/czhj/sdk/common/models/Privacy;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    goto :goto_0

    .line 10
    :cond_2
    sget-object v3, Lcom/czhj/sdk/common/models/Network;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Network;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->network(Lcom/czhj/sdk/common/models/Network;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    goto :goto_0

    .line 11
    :cond_3
    sget-object v3, Lcom/czhj/sdk/common/models/Device;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Device;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->device(Lcom/czhj/sdk/common/models/Device;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    goto :goto_0

    .line 12
    :cond_4
    sget-object v3, Lcom/czhj/sdk/common/models/App;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/App;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->app(Lcom/czhj/sdk/common/models/App;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    .line 14
    invoke-virtual {v0}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->build()Lcom/windmill/sdk/models/SdkConfigRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/SdkConfigRequest$ProtoAdapter_SdkConfigRequest;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/windmill/sdk/models/SdkConfigRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/windmill/sdk/models/SdkConfigRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writer",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/czhj/sdk/common/models/App;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/windmill/sdk/models/SdkConfigRequest;->app:Lcom/czhj/sdk/common/models/App;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/czhj/sdk/common/models/Device;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/windmill/sdk/models/SdkConfigRequest;->device:Lcom/czhj/sdk/common/models/Device;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/czhj/sdk/common/models/Network;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/windmill/sdk/models/SdkConfigRequest;->network:Lcom/czhj/sdk/common/models/Network;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/czhj/sdk/common/models/Privacy;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/windmill/sdk/models/SdkConfigRequest;->privacy:Lcom/czhj/sdk/common/models/Privacy;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/czhj/sdk/common/models/User;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/windmill/sdk/models/SdkConfigRequest;->user:Lcom/czhj/sdk/common/models/User;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p2}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/czhj/wire/ProtoWriter;->writeBytes(Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/czhj/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "writer",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/windmill/sdk/models/SdkConfigRequest;

    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/models/SdkConfigRequest$ProtoAdapter_SdkConfigRequest;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/windmill/sdk/models/SdkConfigRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/windmill/sdk/models/SdkConfigRequest;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/czhj/sdk/common/models/App;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/windmill/sdk/models/SdkConfigRequest;->app:Lcom/czhj/sdk/common/models/App;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/czhj/sdk/common/models/Device;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/windmill/sdk/models/SdkConfigRequest;->device:Lcom/czhj/sdk/common/models/Device;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/czhj/sdk/common/models/Network;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/windmill/sdk/models/SdkConfigRequest;->network:Lcom/czhj/sdk/common/models/Network;

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/czhj/sdk/common/models/Privacy;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/windmill/sdk/models/SdkConfigRequest;->privacy:Lcom/czhj/sdk/common/models/Privacy;

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/czhj/sdk/common/models/User;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/windmill/sdk/models/SdkConfigRequest;->user:Lcom/czhj/sdk/common/models/User;

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p1}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/windmill/sdk/models/SdkConfigRequest;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/SdkConfigRequest$ProtoAdapter_SdkConfigRequest;->encodedSize(Lcom/windmill/sdk/models/SdkConfigRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/windmill/sdk/models/SdkConfigRequest;)Lcom/windmill/sdk/models/SdkConfigRequest;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/windmill/sdk/models/SdkConfigRequest;->newBuilder()Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->app:Lcom/czhj/sdk/common/models/App;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/czhj/sdk/common/models/App;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/App;

    iput-object v0, p1, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->app:Lcom/czhj/sdk/common/models/App;

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->device:Lcom/czhj/sdk/common/models/Device;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/czhj/sdk/common/models/Device;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Device;

    iput-object v0, p1, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->device:Lcom/czhj/sdk/common/models/Device;

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->network:Lcom/czhj/sdk/common/models/Network;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/czhj/sdk/common/models/Network;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Network;

    iput-object v0, p1, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->network:Lcom/czhj/sdk/common/models/Network;

    .line 6
    :cond_2
    iget-object v0, p1, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->privacy:Lcom/czhj/sdk/common/models/Privacy;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/czhj/sdk/common/models/Privacy;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Privacy;

    iput-object v0, p1, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->privacy:Lcom/czhj/sdk/common/models/Privacy;

    .line 7
    :cond_3
    iget-object v0, p1, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->user:Lcom/czhj/sdk/common/models/User;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/czhj/sdk/common/models/User;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/User;

    iput-object v0, p1, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->user:Lcom/czhj/sdk/common/models/User;

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    .line 9
    invoke-virtual {p1}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->build()Lcom/windmill/sdk/models/SdkConfigRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/windmill/sdk/models/SdkConfigRequest;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/SdkConfigRequest$ProtoAdapter_SdkConfigRequest;->redact(Lcom/windmill/sdk/models/SdkConfigRequest;)Lcom/windmill/sdk/models/SdkConfigRequest;

    move-result-object p1

    return-object p1
.end method

.class final Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;
.super Lcom/czhj/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/WaterfallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_WaterfallResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/windmill/sdk/models/WaterfallResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final dc_options:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final saas_options:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/czhj/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/czhj/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v1, Lcom/windmill/sdk/models/WaterfallResponse;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/ProtoAdapter;-><init>(Lcom/czhj/wire/FieldEncoding;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    .line 9
    .line 10
    invoke-static {v0, v0}, Lcom/czhj/wire/ProtoAdapter;->newMapAdapter(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/ProtoAdapter;)Lcom/czhj/wire/ProtoAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->dc_options:Lcom/czhj/wire/ProtoAdapter;

    .line 15
    .line 16
    invoke-static {v0, v0}, Lcom/czhj/wire/ProtoAdapter;->newMapAdapter(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/ProtoAdapter;)Lcom/czhj/wire/ProtoAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->saas_options:Lcom/czhj/wire/ProtoAdapter;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/windmill/sdk/models/WaterfallResponse;
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
    new-instance v0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    invoke-direct {v0}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 5
    :pswitch_0
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
    :pswitch_1
    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->saas_options:Ljava/util/Map;

    iget-object v4, p0, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->saas_options:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 9
    :pswitch_2
    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->dc_options:Ljava/util/Map;

    iget-object v4, p0, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->dc_options:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 10
    :pswitch_3
    sget-object v3, Lcom/windmill/sdk/models/Waterfall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/models/Waterfall;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->waterfall(Lcom/windmill/sdk/models/Waterfall;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    goto :goto_0

    .line 11
    :pswitch_4
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->sign(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    goto :goto_0

    .line 12
    :pswitch_5
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->uid(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    goto :goto_0

    .line 13
    :pswitch_6
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->error_message(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    goto :goto_0

    .line 14
    :pswitch_7
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->code(Ljava/lang/Integer;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    .line 16
    invoke-virtual {v0}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->build()Lcom/windmill/sdk/models/WaterfallResponse;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
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
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/windmill/sdk/models/WaterfallResponse;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/windmill/sdk/models/WaterfallResponse;)V
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
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/windmill/sdk/models/WaterfallResponse;->code:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/windmill/sdk/models/WaterfallResponse;->error_message:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x3

    .line 4
    iget-object v2, p2, Lcom/windmill/sdk/models/WaterfallResponse;->uid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x5

    .line 5
    iget-object v2, p2, Lcom/windmill/sdk/models/WaterfallResponse;->sign:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/windmill/sdk/models/Waterfall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->dc_options:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/windmill/sdk/models/WaterfallResponse;->dc_options:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->saas_options:Lcom/czhj/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/windmill/sdk/models/WaterfallResponse;->saas_options:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 9
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
    check-cast p2, Lcom/windmill/sdk/models/WaterfallResponse;

    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/windmill/sdk/models/WaterfallResponse;)V

    return-void
.end method

.method public encodedSize(Lcom/windmill/sdk/models/WaterfallResponse;)I
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
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/windmill/sdk/models/WaterfallResponse;->code:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/windmill/sdk/models/WaterfallResponse;->error_message:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/windmill/sdk/models/WaterfallResponse;->uid:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/windmill/sdk/models/WaterfallResponse;->sign:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/windmill/sdk/models/Waterfall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->dc_options:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/windmill/sdk/models/WaterfallResponse;->dc_options:Ljava/util/Map;

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->saas_options:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/windmill/sdk/models/WaterfallResponse;->saas_options:Ljava/util/Map;

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
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
    check-cast p1, Lcom/windmill/sdk/models/WaterfallResponse;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->encodedSize(Lcom/windmill/sdk/models/WaterfallResponse;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/windmill/sdk/models/WaterfallResponse;)Lcom/windmill/sdk/models/WaterfallResponse;
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
    invoke-virtual {p1}, Lcom/windmill/sdk/models/WaterfallResponse;->newBuilder()Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/windmill/sdk/models/Waterfall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/models/Waterfall;

    iput-object v0, p1, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    .line 5
    invoke-virtual {p1}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->build()Lcom/windmill/sdk/models/WaterfallResponse;

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
    check-cast p1, Lcom/windmill/sdk/models/WaterfallResponse;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/WaterfallResponse$ProtoAdapter_WaterfallResponse;->redact(Lcom/windmill/sdk/models/WaterfallResponse;)Lcom/windmill/sdk/models/WaterfallResponse;

    move-result-object p1

    return-object p1
.end method

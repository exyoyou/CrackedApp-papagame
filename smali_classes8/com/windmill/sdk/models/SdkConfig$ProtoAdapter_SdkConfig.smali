.class final Lcom/windmill/sdk/models/SdkConfig$ProtoAdapter_SdkConfig;
.super Lcom/czhj/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/SdkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_SdkConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/windmill/sdk/models/SdkConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final channel_configs:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/windmill/sdk/models/ChannelConfig;",
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
    const-class v1, Lcom/windmill/sdk/models/SdkConfig;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/ProtoAdapter;-><init>(Lcom/czhj/wire/FieldEncoding;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    .line 9
    .line 10
    sget-object v1, Lcom/windmill/sdk/models/ChannelConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/czhj/wire/ProtoAdapter;->newMapAdapter(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/ProtoAdapter;)Lcom/czhj/wire/ProtoAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/windmill/sdk/models/SdkConfig$ProtoAdapter_SdkConfig;->channel_configs:Lcom/czhj/wire/ProtoAdapter;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/windmill/sdk/models/SdkConfig;
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
    new-instance v0, Lcom/windmill/sdk/models/SdkConfig$Builder;

    invoke-direct {v0}, Lcom/windmill/sdk/models/SdkConfig$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

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
    iget-object v3, v0, Lcom/windmill/sdk/models/SdkConfig$Builder;->channel_configs:Ljava/util/Map;

    iget-object v4, p0, Lcom/windmill/sdk/models/SdkConfig$ProtoAdapter_SdkConfig;->channel_configs:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v3, Lcom/windmill/sdk/models/Android;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/models/Android;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/SdkConfig$Builder;->android_config(Lcom/windmill/sdk/models/Android;)Lcom/windmill/sdk/models/SdkConfig$Builder;

    goto :goto_0

    .line 10
    :cond_2
    sget-object v3, Lcom/windmill/sdk/models/Common;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/models/Common;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/SdkConfig$Builder;->common_config(Lcom/windmill/sdk/models/Common;)Lcom/windmill/sdk/models/SdkConfig$Builder;

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    .line 12
    invoke-virtual {v0}, Lcom/windmill/sdk/models/SdkConfig$Builder;->build()Lcom/windmill/sdk/models/SdkConfig;

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
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/SdkConfig$ProtoAdapter_SdkConfig;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/windmill/sdk/models/SdkConfig;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/windmill/sdk/models/SdkConfig;)V
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
    sget-object v0, Lcom/windmill/sdk/models/Common;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/windmill/sdk/models/SdkConfig;->common_config:Lcom/windmill/sdk/models/Common;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/windmill/sdk/models/Android;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/windmill/sdk/models/SdkConfig;->android_config:Lcom/windmill/sdk/models/Android;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/models/SdkConfig$ProtoAdapter_SdkConfig;->channel_configs:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/windmill/sdk/models/SdkConfig;->channel_configs:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5
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
    check-cast p2, Lcom/windmill/sdk/models/SdkConfig;

    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/models/SdkConfig$ProtoAdapter_SdkConfig;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/windmill/sdk/models/SdkConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/windmill/sdk/models/SdkConfig;)I
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
    sget-object v0, Lcom/windmill/sdk/models/Common;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/windmill/sdk/models/SdkConfig;->common_config:Lcom/windmill/sdk/models/Common;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/windmill/sdk/models/Android;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/windmill/sdk/models/SdkConfig;->android_config:Lcom/windmill/sdk/models/Android;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/windmill/sdk/models/SdkConfig$ProtoAdapter_SdkConfig;->channel_configs:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/windmill/sdk/models/SdkConfig;->channel_configs:Ljava/util/Map;

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
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
    check-cast p1, Lcom/windmill/sdk/models/SdkConfig;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/SdkConfig$ProtoAdapter_SdkConfig;->encodedSize(Lcom/windmill/sdk/models/SdkConfig;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/windmill/sdk/models/SdkConfig;)Lcom/windmill/sdk/models/SdkConfig;
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
    invoke-virtual {p1}, Lcom/windmill/sdk/models/SdkConfig;->newBuilder()Lcom/windmill/sdk/models/SdkConfig$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/windmill/sdk/models/SdkConfig$Builder;->common_config:Lcom/windmill/sdk/models/Common;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/windmill/sdk/models/Common;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/models/Common;

    iput-object v0, p1, Lcom/windmill/sdk/models/SdkConfig$Builder;->common_config:Lcom/windmill/sdk/models/Common;

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/windmill/sdk/models/SdkConfig$Builder;->android_config:Lcom/windmill/sdk/models/Android;

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lcom/windmill/sdk/models/Android;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/models/Android;

    iput-object v0, p1, Lcom/windmill/sdk/models/SdkConfig$Builder;->android_config:Lcom/windmill/sdk/models/Android;

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    .line 8
    invoke-virtual {p1}, Lcom/windmill/sdk/models/SdkConfig$Builder;->build()Lcom/windmill/sdk/models/SdkConfig;

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
    check-cast p1, Lcom/windmill/sdk/models/SdkConfig;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/SdkConfig$ProtoAdapter_SdkConfig;->redact(Lcom/windmill/sdk/models/SdkConfig;)Lcom/windmill/sdk/models/SdkConfig;

    move-result-object p1

    return-object p1
.end method

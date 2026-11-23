.class final Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;
.super Lcom/czhj/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/MediationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_MediationElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/windmill/sdk/models/MediationElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final options:Lcom/czhj/wire/ProtoAdapter;
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
    const-class v1, Lcom/windmill/sdk/models/MediationElement;

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
    iput-object v1, p0, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->options:Lcom/czhj/wire/ProtoAdapter;

    .line 15
    .line 16
    invoke-static {v0, v0}, Lcom/czhj/wire/ProtoAdapter;->newMapAdapter(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/ProtoAdapter;)Lcom/czhj/wire/ProtoAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->saas_options:Lcom/czhj/wire/ProtoAdapter;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/windmill/sdk/models/MediationElement;
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
    new-instance v0, Lcom/windmill/sdk/models/MediationElement$Builder;

    invoke-direct {v0}, Lcom/windmill/sdk/models/MediationElement$Builder;-><init>()V

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
    :pswitch_0
    iget-object v3, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->saas_options:Ljava/util/Map;

    iget-object v4, p0, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->saas_options:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 9
    :pswitch_1
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->reward_guide_prompt(Ljava/lang/String;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto :goto_0

    .line 10
    :pswitch_2
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->pdb_priority(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto :goto_0

    .line 11
    :pswitch_3
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->is_pdb(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto :goto_0

    .line 12
    :pswitch_4
    iget-object v3, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->ban_pkg_name:Ljava/util/List;

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :pswitch_5
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_floor_cur(Ljava/lang/String;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto :goto_0

    .line 14
    :pswitch_6
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->mask(Ljava/lang/String;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto :goto_0

    .line 15
    :pswitch_7
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->order(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto :goto_0

    .line 16
    :pswitch_8
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->reward_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 17
    :pswitch_9
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->sub_ad_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 18
    :pswitch_a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->no_hb_preload(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 19
    :pswitch_b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_floor(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 20
    :pswitch_c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->render_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 21
    :pswitch_d
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->weight_switch(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 22
    :pswitch_e
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->single_channel_timeout(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 23
    :pswitch_f
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->tag(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 24
    :pswitch_10
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 25
    :pswitch_11
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->hb(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 26
    :pswitch_12
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->price(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 27
    :pswitch_13
    sget-object v3, Lcom/windmill/sdk/models/HBResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/models/HBResponse;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->hb_response(Lcom/windmill/sdk/models/HBResponse;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 28
    :pswitch_14
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->ecpm(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 29
    :pswitch_15
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_secs(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 30
    :pswitch_16
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_hour(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 31
    :pswitch_17
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_day(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 32
    :pswitch_18
    iget-object v3, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->options:Ljava/util/Map;

    iget-object v4, p0, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->options:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 33
    :pswitch_19
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->mediation_app_id(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 34
    :pswitch_1a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/MediationElement$Builder;->element_id(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;

    goto/16 :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    .line 36
    invoke-virtual {v0}, Lcom/windmill/sdk/models/MediationElement$Builder;->build()Lcom/windmill/sdk/models/MediationElement;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
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
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/windmill/sdk/models/MediationElement;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/windmill/sdk/models/MediationElement;)V
    .locals 6
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

    iget-object v1, p2, Lcom/windmill/sdk/models/MediationElement;->element_id:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x2

    .line 3
    iget-object v2, p2, Lcom/windmill/sdk/models/MediationElement;->mediation_app_id:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->options:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/windmill/sdk/models/MediationElement;->options:Ljava/util/Map;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x4

    .line 5
    iget-object v2, p2, Lcom/windmill/sdk/models/MediationElement;->frequency_day:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x5

    .line 6
    iget-object v2, p2, Lcom/windmill/sdk/models/MediationElement;->frequency_hour:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x6

    .line 7
    iget-object v2, p2, Lcom/windmill/sdk/models/MediationElement;->frequency_secs:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x7

    .line 8
    iget-object v2, p2, Lcom/windmill/sdk/models/MediationElement;->ecpm:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 9
    sget-object v1, Lcom/windmill/sdk/models/HBResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0x9

    .line 10
    iget-object v2, p2, Lcom/windmill/sdk/models/MediationElement;->price:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0xa

    .line 11
    iget-object v2, p2, Lcom/windmill/sdk/models/MediationElement;->hb:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0xb

    .line 12
    iget-object v2, p2, Lcom/windmill/sdk/models/MediationElement;->bid_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0xc

    .line 13
    iget-object v2, p2, Lcom/windmill/sdk/models/MediationElement;->tag:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0xd

    .line 14
    iget-object v2, p2, Lcom/windmill/sdk/models/MediationElement;->single_channel_timeout:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 15
    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/windmill/sdk/models/MediationElement;->weight_switch:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xf

    .line 16
    iget-object v3, p2, Lcom/windmill/sdk/models/MediationElement;->render_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 17
    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x10

    iget-object v4, p2, Lcom/windmill/sdk/models/MediationElement;->bid_floor:Ljava/lang/Integer;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x11

    .line 18
    iget-object v4, p2, Lcom/windmill/sdk/models/MediationElement;->no_hb_preload:Ljava/lang/Integer;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x12

    .line 19
    iget-object v4, p2, Lcom/windmill/sdk/models/MediationElement;->sub_ad_type:Ljava/lang/Integer;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x13

    .line 20
    iget-object v4, p2, Lcom/windmill/sdk/models/MediationElement;->reward_type:Ljava/lang/Integer;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x14

    .line 21
    iget-object v4, p2, Lcom/windmill/sdk/models/MediationElement;->order:Ljava/lang/Integer;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 22
    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x15

    iget-object v4, p2, Lcom/windmill/sdk/models/MediationElement;->mask:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x16

    .line 23
    iget-object v4, p2, Lcom/windmill/sdk/models/MediationElement;->bid_floor_cur:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 24
    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v3

    const/16 v4, 0x17

    iget-object v5, p2, Lcom/windmill/sdk/models/MediationElement;->ban_pkg_name:Ljava/util/List;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x18

    .line 25
    iget-object v4, p2, Lcom/windmill/sdk/models/MediationElement;->is_pdb:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0x19

    .line 26
    iget-object v3, p2, Lcom/windmill/sdk/models/MediationElement;->pdb_priority:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x1a

    .line 27
    iget-object v1, p2, Lcom/windmill/sdk/models/MediationElement;->reward_guide_prompt:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v1}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->saas_options:Lcom/czhj/wire/ProtoAdapter;

    const/16 v1, 0x1b

    iget-object v2, p2, Lcom/windmill/sdk/models/MediationElement;->saas_options:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 29
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
    check-cast p2, Lcom/windmill/sdk/models/MediationElement;

    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/windmill/sdk/models/MediationElement;)V

    return-void
.end method

.method public encodedSize(Lcom/windmill/sdk/models/MediationElement;)I
    .locals 7
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

    iget-object v1, p1, Lcom/windmill/sdk/models/MediationElement;->element_id:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->mediation_app_id:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->options:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/windmill/sdk/models/MediationElement;->options:Ljava/util/Map;

    .line 4
    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->frequency_day:Ljava/lang/Integer;

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->frequency_hour:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->frequency_secs:Ljava/lang/Integer;

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->ecpm:Ljava/lang/Integer;

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/windmill/sdk/models/HBResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    .line 9
    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->price:Ljava/lang/Integer;

    .line 10
    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->hb:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->bid_type:Ljava/lang/Integer;

    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->tag:Ljava/lang/Integer;

    .line 13
    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->single_channel_timeout:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0xe

    iget-object v4, p1, Lcom/windmill/sdk/models/MediationElement;->weight_switch:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xf

    iget-object v4, p1, Lcom/windmill/sdk/models/MediationElement;->render_type:Ljava/lang/Integer;

    .line 16
    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x10

    iget-object v5, p1, Lcom/windmill/sdk/models/MediationElement;->bid_floor:Ljava/lang/Integer;

    .line 17
    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x11

    iget-object v5, p1, Lcom/windmill/sdk/models/MediationElement;->no_hb_preload:Ljava/lang/Integer;

    .line 18
    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x12

    iget-object v5, p1, Lcom/windmill/sdk/models/MediationElement;->sub_ad_type:Ljava/lang/Integer;

    .line 19
    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x13

    iget-object v5, p1, Lcom/windmill/sdk/models/MediationElement;->reward_type:Ljava/lang/Integer;

    .line 20
    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x14

    iget-object v5, p1, Lcom/windmill/sdk/models/MediationElement;->order:Ljava/lang/Integer;

    .line 21
    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x15

    iget-object v5, p1, Lcom/windmill/sdk/models/MediationElement;->mask:Ljava/lang/String;

    .line 22
    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x16

    iget-object v5, p1, Lcom/windmill/sdk/models/MediationElement;->bid_floor_cur:Ljava/lang/String;

    .line 23
    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    .line 24
    invoke-virtual {v3}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v4

    const/16 v5, 0x17

    iget-object v6, p1, Lcom/windmill/sdk/models/MediationElement;->ban_pkg_name:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x18

    iget-object v5, p1, Lcom/windmill/sdk/models/MediationElement;->is_pdb:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v2, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x19

    iget-object v4, p1, Lcom/windmill/sdk/models/MediationElement;->pdb_priority:Ljava/lang/Integer;

    .line 26
    invoke-virtual {v0, v2, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x1a

    iget-object v2, p1, Lcom/windmill/sdk/models/MediationElement;->reward_guide_prompt:Ljava/lang/String;

    .line 27
    invoke-virtual {v3, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->saas_options:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x1b

    iget-object v3, p1, Lcom/windmill/sdk/models/MediationElement;->saas_options:Ljava/util/Map;

    .line 28
    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 29
    invoke-virtual {p1}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v1, p1

    return v1
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
    check-cast p1, Lcom/windmill/sdk/models/MediationElement;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->encodedSize(Lcom/windmill/sdk/models/MediationElement;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/windmill/sdk/models/MediationElement;)Lcom/windmill/sdk/models/MediationElement;
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
    invoke-virtual {p1}, Lcom/windmill/sdk/models/MediationElement;->newBuilder()Lcom/windmill/sdk/models/MediationElement$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/windmill/sdk/models/MediationElement$Builder;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/windmill/sdk/models/HBResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/models/HBResponse;

    iput-object v0, p1, Lcom/windmill/sdk/models/MediationElement$Builder;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    .line 5
    invoke-virtual {p1}, Lcom/windmill/sdk/models/MediationElement$Builder;->build()Lcom/windmill/sdk/models/MediationElement;

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
    check-cast p1, Lcom/windmill/sdk/models/MediationElement;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/MediationElement$ProtoAdapter_MediationElement;->redact(Lcom/windmill/sdk/models/MediationElement;)Lcom/windmill/sdk/models/MediationElement;

    move-result-object p1

    return-object p1
.end method

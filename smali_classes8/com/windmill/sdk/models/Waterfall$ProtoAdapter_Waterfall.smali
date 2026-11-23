.class final Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;
.super Lcom/czhj/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/Waterfall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_Waterfall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/windmill/sdk/models/Waterfall;",
        ">;"
    }
.end annotation


# instance fields
.field private final currency_setting:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final custom_setting:Lcom/czhj/wire/ProtoAdapter;
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

.field private final ssp_options:Lcom/czhj/wire/ProtoAdapter;
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
    const-class v1, Lcom/windmill/sdk/models/Waterfall;

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
    iput-object v1, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->ssp_options:Lcom/czhj/wire/ProtoAdapter;

    .line 15
    .line 16
    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->FLOAT:Lcom/czhj/wire/ProtoAdapter;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/czhj/wire/ProtoAdapter;->newMapAdapter(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/ProtoAdapter;)Lcom/czhj/wire/ProtoAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->currency_setting:Lcom/czhj/wire/ProtoAdapter;

    .line 23
    .line 24
    invoke-static {v0, v0}, Lcom/czhj/wire/ProtoAdapter;->newMapAdapter(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/ProtoAdapter;)Lcom/czhj/wire/ProtoAdapter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->custom_setting:Lcom/czhj/wire/ProtoAdapter;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/windmill/sdk/models/Waterfall;
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
    new-instance v0, Lcom/windmill/sdk/models/Waterfall$Builder;

    invoke-direct {v0}, Lcom/windmill/sdk/models/Waterfall$Builder;-><init>()V

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
    sget-object v3, Lcom/windmill/sdk/models/MtElementInfo;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/models/MtElementInfo;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->mt_channel(Lcom/windmill/sdk/models/MtElementInfo;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto :goto_0

    .line 9
    :pswitch_1
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->is_enable_tracking_ready_log(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto :goto_0

    .line 10
    :pswitch_2
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->incentive_abnormal_shutdown(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto :goto_0

    .line 11
    :pswitch_3
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->m(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto :goto_0

    .line 12
    :pswitch_4
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->mabc_url(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto :goto_0

    .line 13
    :pswitch_5
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->check_mask(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto :goto_0

    .line 14
    :pswitch_6
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->timestamp(Ljava/lang/Long;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto :goto_0

    .line 15
    :pswitch_7
    iget-object v3, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->custom_setting:Ljava/util/Map;

    iget-object v4, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->custom_setting:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 16
    :pswitch_8
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->time_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 17
    :pswitch_9
    iget-object v3, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->currency_setting:Ljava/util/Map;

    iget-object v4, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->currency_setting:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 18
    :pswitch_a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->client_bidding_switch(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 19
    :pswitch_b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_realtime_refresh(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 20
    :pswitch_c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->forbidPluginUpdate(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 21
    :pswitch_d
    iget-object v3, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->ssp_options:Ljava/util/Map;

    iget-object v4, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->ssp_options:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 22
    :pswitch_e
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->useMediation(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 23
    :pswitch_f
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->privacy_url(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 24
    :pswitch_10
    sget-object v3, Lcom/windmill/sdk/models/TemplateSetting;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/models/TemplateSetting;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->template_setting(Lcom/windmill/sdk/models/TemplateSetting;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 25
    :pswitch_11
    iget-object v3, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->track_url:Ljava/util/List;

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 26
    :pswitch_12
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_expire_timestamp(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 27
    :pswitch_13
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->rv_callback_url(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 28
    :pswitch_14
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->rule_id(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 29
    :pswitch_15
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_id(Ljava/lang/String;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 30
    :pswitch_16
    sget-object v3, Lcom/windmill/sdk/models/StrategyWaterFall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/models/StrategyWaterFall;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_waterfall(Lcom/windmill/sdk/models/StrategyWaterFall;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 31
    :pswitch_17
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->enable_ab_test(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 32
    :pswitch_18
    iget-object v3, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->channels:Ljava/util/List;

    sget-object v4, Lcom/windmill/sdk/models/MediationChannel;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/models/MediationChannel;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 33
    :pswitch_19
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/Waterfall$Builder;->single_channel_timeout(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Waterfall$Builder;

    goto/16 :goto_0

    .line 34
    :pswitch_1a
    iget-object v3, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->apps:Ljava/util/List;

    sget-object v4, Lcom/windmill/sdk/models/MediationApp;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/models/MediationApp;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 35
    :pswitch_1b
    iget-object v3, v0, Lcom/windmill/sdk/models/Waterfall$Builder;->elements:Ljava/util/List;

    sget-object v4, Lcom/windmill/sdk/models/MediationElement;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/models/MediationElement;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    .line 37
    invoke-virtual {v0}, Lcom/windmill/sdk/models/Waterfall$Builder;->build()Lcom/windmill/sdk/models/Waterfall;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
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
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/windmill/sdk/models/Waterfall;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/windmill/sdk/models/Waterfall;)V
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
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/windmill/sdk/models/MediationApp;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/windmill/sdk/models/Waterfall;->single_channel_timeout:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5
    sget-object v1, Lcom/windmill/sdk/models/MediationChannel;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 6
    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/windmill/sdk/models/Waterfall;->enable_ab_test:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 7
    sget-object v2, Lcom/windmill/sdk/models/StrategyWaterFall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p2, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 8
    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x7

    iget-object v4, p2, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x8

    .line 9
    iget-object v4, p2, Lcom/windmill/sdk/models/Waterfall;->rule_id:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x9

    .line 10
    iget-object v4, p2, Lcom/windmill/sdk/models/Waterfall;->rv_callback_url:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0xa

    .line 11
    iget-object v4, p2, Lcom/windmill/sdk/models/Waterfall;->strategy_expire_timestamp:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 12
    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    const/16 v3, 0xb

    iget-object v4, p2, Lcom/windmill/sdk/models/Waterfall;->track_url:Ljava/util/List;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 13
    sget-object v0, Lcom/windmill/sdk/models/TemplateSetting;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0xc

    iget-object v4, p2, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0xd

    .line 14
    iget-object v3, p2, Lcom/windmill/sdk/models/Waterfall;->privacy_url:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0xe

    .line 15
    iget-object v3, p2, Lcom/windmill/sdk/models/Waterfall;->useMediation:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->ssp_options:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0xf

    iget-object v4, p2, Lcom/windmill/sdk/models/Waterfall;->ssp_options:Ljava/util/Map;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x10

    .line 17
    iget-object v3, p2, Lcom/windmill/sdk/models/Waterfall;->forbidPluginUpdate:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x11

    .line 18
    iget-object v3, p2, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x12

    .line 19
    iget-object v3, p2, Lcom/windmill/sdk/models/Waterfall;->client_bidding_switch:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->currency_setting:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x13

    iget-object v4, p2, Lcom/windmill/sdk/models/Waterfall;->currency_setting:Ljava/util/Map;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x14

    iget-object v4, p2, Lcom/windmill/sdk/models/Waterfall;->time_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 22
    iget-object v3, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->custom_setting:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x15

    iget-object v5, p2, Lcom/windmill/sdk/models/Waterfall;->custom_setting:Ljava/util/Map;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 23
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x16

    iget-object v5, p2, Lcom/windmill/sdk/models/Waterfall;->timestamp:Ljava/lang/Long;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x17

    .line 24
    iget-object v4, p2, Lcom/windmill/sdk/models/Waterfall;->check_mask:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x18

    .line 25
    iget-object v3, p2, Lcom/windmill/sdk/models/Waterfall;->mabc_url:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x19

    .line 26
    iget-object v3, p2, Lcom/windmill/sdk/models/Waterfall;->m:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x1a

    .line 27
    iget-object v2, p2, Lcom/windmill/sdk/models/Waterfall;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x1b

    .line 28
    iget-object v2, p2, Lcom/windmill/sdk/models/Waterfall;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/windmill/sdk/models/MtElementInfo;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v1, 0x1c

    iget-object v2, p2, Lcom/windmill/sdk/models/Waterfall;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 30
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
    check-cast p2, Lcom/windmill/sdk/models/Waterfall;

    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/windmill/sdk/models/Waterfall;)V

    return-void
.end method

.method public encodedSize(Lcom/windmill/sdk/models/Waterfall;)I
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
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/windmill/sdk/models/MediationApp;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 3
    invoke-virtual {v1}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->single_channel_timeout:Ljava/lang/Integer;

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/windmill/sdk/models/MediationChannel;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 5
    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/windmill/sdk/models/Waterfall;->enable_ab_test:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    sget-object v3, Lcom/windmill/sdk/models/StrategyWaterFall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v4, 0x6

    iget-object v5, p1, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 7
    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v4, 0x7

    iget-object v5, p1, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    const/16 v4, 0x8

    iget-object v5, p1, Lcom/windmill/sdk/models/Waterfall;->rule_id:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    const/16 v4, 0x9

    iget-object v5, p1, Lcom/windmill/sdk/models/Waterfall;->rv_callback_url:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    const/16 v4, 0xa

    iget-object v5, p1, Lcom/windmill/sdk/models/Waterfall;->strategy_expire_timestamp:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    invoke-virtual {v3}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v1

    const/16 v4, 0xb

    iget-object v5, p1, Lcom/windmill/sdk/models/Waterfall;->track_url:Ljava/util/List;

    invoke-virtual {v1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/windmill/sdk/models/TemplateSetting;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0xc

    iget-object v5, p1, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    .line 13
    invoke-virtual {v1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    iget-object v4, p1, Lcom/windmill/sdk/models/Waterfall;->privacy_url:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v1, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    iget-object v4, p1, Lcom/windmill/sdk/models/Waterfall;->useMediation:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {v2, v1, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->ssp_options:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0xf

    iget-object v5, p1, Lcom/windmill/sdk/models/Waterfall;->ssp_options:Ljava/util/Map;

    .line 16
    invoke-virtual {v1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    iget-object v4, p1, Lcom/windmill/sdk/models/Waterfall;->forbidPluginUpdate:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v2, v1, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x11

    iget-object v4, p1, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v2, v1, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x12

    iget-object v4, p1, Lcom/windmill/sdk/models/Waterfall;->client_bidding_switch:Ljava/lang/Boolean;

    .line 19
    invoke-virtual {v2, v1, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->currency_setting:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x13

    iget-object v5, p1, Lcom/windmill/sdk/models/Waterfall;->currency_setting:Ljava/util/Map;

    .line 20
    invoke-virtual {v1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x14

    iget-object v5, p1, Lcom/windmill/sdk/models/Waterfall;->time_type:Ljava/lang/Integer;

    .line 21
    invoke-virtual {v1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->custom_setting:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x15

    iget-object v6, p1, Lcom/windmill/sdk/models/Waterfall;->custom_setting:Ljava/util/Map;

    .line 22
    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x16

    iget-object v6, p1, Lcom/windmill/sdk/models/Waterfall;->timestamp:Ljava/lang/Long;

    .line 23
    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    const/16 v4, 0x17

    iget-object v5, p1, Lcom/windmill/sdk/models/Waterfall;->check_mask:Ljava/lang/Integer;

    .line 24
    invoke-virtual {v1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x18

    iget-object v4, p1, Lcom/windmill/sdk/models/Waterfall;->mabc_url:Ljava/lang/String;

    .line 25
    invoke-virtual {v3, v1, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x19

    iget-object v4, p1, Lcom/windmill/sdk/models/Waterfall;->m:Ljava/lang/String;

    .line 26
    invoke-virtual {v3, v1, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x1a

    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->incentive_abnormal_shutdown:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v2, v1, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x1b

    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->is_enable_tracking_ready_log:Ljava/lang/Boolean;

    .line 28
    invoke-virtual {v2, v1, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/windmill/sdk/models/MtElementInfo;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x1c

    iget-object v3, p1, Lcom/windmill/sdk/models/Waterfall;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
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
    check-cast p1, Lcom/windmill/sdk/models/Waterfall;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->encodedSize(Lcom/windmill/sdk/models/Waterfall;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/windmill/sdk/models/Waterfall;)Lcom/windmill/sdk/models/Waterfall;
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
    invoke-virtual {p1}, Lcom/windmill/sdk/models/Waterfall;->newBuilder()Lcom/windmill/sdk/models/Waterfall$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/windmill/sdk/models/Waterfall$Builder;->elements:Ljava/util/List;

    sget-object v1, Lcom/windmill/sdk/models/MediationElement;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/czhj/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/czhj/wire/ProtoAdapter;)V

    .line 4
    iget-object v0, p1, Lcom/windmill/sdk/models/Waterfall$Builder;->apps:Ljava/util/List;

    sget-object v1, Lcom/windmill/sdk/models/MediationApp;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/czhj/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/czhj/wire/ProtoAdapter;)V

    .line 5
    iget-object v0, p1, Lcom/windmill/sdk/models/Waterfall$Builder;->channels:Ljava/util/List;

    sget-object v1, Lcom/windmill/sdk/models/MediationChannel;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/czhj/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/czhj/wire/ProtoAdapter;)V

    .line 6
    iget-object v0, p1, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/windmill/sdk/models/StrategyWaterFall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/models/StrategyWaterFall;

    iput-object v0, p1, Lcom/windmill/sdk/models/Waterfall$Builder;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/windmill/sdk/models/Waterfall$Builder;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/windmill/sdk/models/TemplateSetting;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/models/TemplateSetting;

    iput-object v0, p1, Lcom/windmill/sdk/models/Waterfall$Builder;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/windmill/sdk/models/Waterfall$Builder;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/windmill/sdk/models/MtElementInfo;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/models/MtElementInfo;

    iput-object v0, p1, Lcom/windmill/sdk/models/Waterfall$Builder;->mt_channel:Lcom/windmill/sdk/models/MtElementInfo;

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    .line 10
    invoke-virtual {p1}, Lcom/windmill/sdk/models/Waterfall$Builder;->build()Lcom/windmill/sdk/models/Waterfall;

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
    check-cast p1, Lcom/windmill/sdk/models/Waterfall;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/models/Waterfall$ProtoAdapter_Waterfall;->redact(Lcom/windmill/sdk/models/Waterfall;)Lcom/windmill/sdk/models/Waterfall;

    move-result-object p1

    return-object p1
.end method

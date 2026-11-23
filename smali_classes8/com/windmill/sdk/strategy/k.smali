.class public Lcom/windmill/sdk/strategy/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/models/WaterfallResponse;)Lcom/windmill/sdk/strategy/a;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adRequest",
            "waterfallResponse"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 131
    new-instance v16, Lcom/windmill/sdk/strategy/a;

    invoke-virtual/range {p0 .. p0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->dc_options:Ljava/util/Map;

    iget-object v4, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v5, v4, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    iget-object v6, v4, Lcom/windmill/sdk/models/Waterfall;->rule_id:Ljava/lang/String;

    iget-object v4, v4, Lcom/windmill/sdk/models/Waterfall;->enable_ab_test:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v4, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v8, v4, Lcom/windmill/sdk/models/Waterfall;->rv_callback_url:Ljava/lang/String;

    iget-object v4, v4, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v4, v4, Lcom/windmill/sdk/models/StrategyWaterFall;->ab_flag:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v4, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v4, v4, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v4, v4, Lcom/windmill/sdk/models/StrategyWaterFall;->experiment_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v4, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v4, v4, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v4, v4, Lcom/windmill/sdk/models/StrategyWaterFall;->sub_experiment_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v4, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v4, v4, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v4, v4, Lcom/windmill/sdk/models/StrategyWaterFall;->traffic_weight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v4, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v13, v4, Lcom/windmill/sdk/models/Waterfall;->mabc_url:Ljava/lang/String;

    iget-object v4, v4, Lcom/windmill/sdk/models/Waterfall;->timestamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v0, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v0, v0, Lcom/windmill/sdk/models/Waterfall;->check_mask:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, v16

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move-wide v13, v14

    move/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Lcom/windmill/sdk/strategy/a;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIIILjava/lang/String;JI)V

    return-object v16
.end method

.method public static a(ILcom/windmill/sdk/models/WaterfallResponse;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/s$c;)Lcom/windmill/sdk/strategy/q;
    .locals 37
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "waterfallResponse",
            "adRequest",
            "listener"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    if-eqz v4, :cond_1d

    iget-object v4, v4, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    if-eqz v4, :cond_1d

    .line 2
    iget-object v4, v4, Lcom/windmill/sdk/models/StrategyWaterFall;->element_ids:Ljava/util/List;

    if-eqz v4, :cond_1b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1b

    .line 3
    iget-object v4, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v4, v4, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 4
    invoke-static {v1, v4}, Lcom/windmill/sdk/strategy/r;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/models/StrategyWaterFall;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-static {v1, v0}, Lcom/windmill/sdk/strategy/k;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/models/WaterfallResponse;)Lcom/windmill/sdk/strategy/a;

    move-result-object v0

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    const-string v4, "strategyResponse strategy_waterfall frequency is limit"

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    goto/16 :goto_11

    .line 6
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 8
    :goto_0
    iget-object v9, v4, Lcom/windmill/sdk/models/StrategyWaterFall;->element_ids:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ge v8, v9, :cond_16

    .line 9
    :try_start_1
    invoke-static {v1, v0}, Lcom/windmill/sdk/strategy/k;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/models/WaterfallResponse;)Lcom/windmill/sdk/strategy/a;

    move-result-object v9

    .line 10
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "useMediation"

    .line 11
    iget-object v12, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v12, v12, Lcom/windmill/sdk/models/Waterfall;->useMediation:Ljava/lang/Boolean;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "forbidPluginUpdate"

    .line 12
    iget-object v12, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v12, v12, Lcom/windmill/sdk/models/Waterfall;->forbidPluginUpdate:Ljava/lang/Boolean;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v12, "privacy_url"

    .line 14
    iget-object v13, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v13, v13, Lcom/windmill/sdk/models/Waterfall;->privacy_url:Ljava/lang/String;

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v12, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v12, v12, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_1

    :try_start_2
    const-string v13, "close_style"

    .line 16
    iget-object v12, v12, Lcom/windmill/sdk/models/TemplateSetting;->close_style:Ljava/lang/Integer;

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "close_position"

    .line 17
    iget-object v13, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v13, v13, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    iget-object v13, v13, Lcom/windmill/sdk/models/TemplateSetting;->close_position:Ljava/lang/Integer;

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "mistake_click_rate"

    .line 18
    iget-object v13, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v13, v13, Lcom/windmill/sdk/models/Waterfall;->template_setting:Lcom/windmill/sdk/models/TemplateSetting;

    iget-object v13, v13, Lcom/windmill/sdk/models/TemplateSetting;->mistake_click_rate:Ljava/lang/Integer;

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    :cond_1
    :try_start_3
    iget-object v12, v4, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_url:Ljava/lang/String;

    iput-object v12, v9, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    .line 20
    iget-object v12, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v12, v12, Lcom/windmill/sdk/models/Waterfall;->custom_setting:Ljava/util/Map;

    invoke-virtual {v9, v12}, Lcom/windmill/sdk/strategy/a;->a(Ljava/util/Map;)V

    .line 21
    iget-object v12, v4, Lcom/windmill/sdk/models/StrategyWaterFall;->element_ids:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 22
    iget-object v13, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v13, v13, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    if-eqz v13, :cond_13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_13

    const/4 v13, 0x0

    .line 23
    :goto_1
    iget-object v14, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v14, v14, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_12

    .line 24
    iget-object v14, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v14, v14, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/windmill/sdk/models/MediationElement;

    .line 25
    iget-object v15, v14, Lcom/windmill/sdk/models/MediationElement;->element_id:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v12, v15, :cond_10

    .line 26
    invoke-virtual {v9, v12}, Lcom/windmill/sdk/strategy/a;->t(I)V

    .line 27
    iget-object v15, v14, Lcom/windmill/sdk/models/MediationElement;->mediation_app_id:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 28
    iget-object v7, v14, Lcom/windmill/sdk/models/MediationElement;->options:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_2

    .line 29
    :try_start_4
    invoke-interface {v11, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v3, "placementId"

    .line 30
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Lcom/windmill/sdk/strategy/a;->r(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v9, v11}, Lcom/windmill/sdk/strategy/a;->h(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 32
    :cond_2
    :try_start_5
    iget-object v3, v14, Lcom/windmill/sdk/models/MediationElement;->frequency_day:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/windmill/sdk/strategy/a;->p(I)V

    .line 33
    iget-object v3, v14, Lcom/windmill/sdk/models/MediationElement;->frequency_hour:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/windmill/sdk/strategy/a;->q(I)V

    .line 34
    iget-object v3, v14, Lcom/windmill/sdk/models/MediationElement;->frequency_secs:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/windmill/sdk/strategy/a;->r(I)V

    .line 35
    iget-object v3, v14, Lcom/windmill/sdk/models/MediationElement;->ecpm:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V

    .line 36
    iget-object v3, v14, Lcom/windmill/sdk/models/MediationElement;->mask:Ljava/lang/String;

    invoke-virtual {v9, v3}, Lcom/windmill/sdk/strategy/a;->i(Ljava/lang/String;)V

    .line 37
    iget-object v3, v14, Lcom/windmill/sdk/models/MediationElement;->is_pdb:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v9, Lcom/windmill/sdk/strategy/a;->h:Z

    .line 38
    iget-object v3, v14, Lcom/windmill/sdk/models/MediationElement;->pdb_priority:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v9, Lcom/windmill/sdk/strategy/a;->i:I

    .line 39
    iget-object v3, v14, Lcom/windmill/sdk/models/MediationElement;->reward_guide_prompt:Ljava/lang/String;

    iput-object v3, v9, Lcom/windmill/sdk/strategy/a;->j:Ljava/lang/String;

    .line 40
    iget-object v3, v14, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    if-eqz v3, :cond_3

    .line 41
    new-instance v7, Lcom/windmill/sdk/strategy/a$a;

    move-object/from16 v24, v11

    iget-object v11, v3, Lcom/windmill/sdk/models/HBResponse;->win_url:Ljava/lang/String;

    move/from16 v25, v12

    iget-object v12, v3, Lcom/windmill/sdk/models/HBResponse;->lose_url:Ljava/lang/String;

    iget-object v1, v3, Lcom/windmill/sdk/models/HBResponse;->bid_id:Ljava/lang/String;

    iget-object v2, v3, Lcom/windmill/sdk/models/HBResponse;->response_str:Ljava/lang/String;

    move/from16 v26, v8

    iget-object v8, v3, Lcom/windmill/sdk/models/HBResponse;->response_bytes:Lcom/czhj/wire/okio/ByteString;

    move-object/from16 v27, v5

    iget-object v5, v3, Lcom/windmill/sdk/models/HBResponse;->err_code:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    iget-object v3, v3, Lcom/windmill/sdk/models/HBResponse;->err_msg:Ljava/lang/String;

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v23, v3

    invoke-direct/range {v16 .. v23}, Lcom/windmill/sdk/strategy/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;ILjava/lang/String;)V

    invoke-virtual {v9, v7}, Lcom/windmill/sdk/strategy/a;->a(Lcom/windmill/sdk/strategy/a$a;)V

    goto :goto_2

    :cond_3
    move-object/from16 v27, v5

    move/from16 v26, v8

    move-object/from16 v24, v11

    move/from16 v25, v12

    .line 42
    :goto_2
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->price:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 43
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->hb:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->n(I)V

    .line 44
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->bid_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->o(I)V

    .line 45
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->tag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->i(I)V

    .line 46
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->single_channel_timeout:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v2, v2, Lcom/windmill/sdk/models/Waterfall;->time_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v1, v2}, Lcom/windmill/sdk/strategy/a;->a(II)V

    .line 47
    iget-object v1, v4, Lcom/windmill/sdk/models/StrategyWaterFall;->fill_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 48
    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->k(Z)V

    goto :goto_3

    .line 49
    :cond_4
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->weight_switch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->k(Z)V

    .line 50
    :goto_3
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->render_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->e(I)V

    .line 51
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->bid_floor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->s(I)V

    .line 52
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->sub_ad_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->f(I)V

    .line 53
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->reward_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->g(I)V

    .line 54
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->bid_floor_cur:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->j(Ljava/lang/String;)V

    .line 55
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->ban_pkg_name:Ljava/util/List;

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->a(Ljava/util/List;)V

    .line 56
    iget-object v1, v14, Lcom/windmill/sdk/models/MediationElement;->order:Ljava/lang/Integer;

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/Integer;)V

    .line 57
    iget-object v1, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v1, v1, Lcom/windmill/sdk/models/Waterfall;->m:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->k(Ljava/lang/String;)V

    .line 58
    iget-object v1, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v1, v1, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v1, v1, Lcom/windmill/sdk/models/StrategyWaterFall;->bidding_timeout:Ljava/lang/Integer;

    invoke-virtual {v9, v1}, Lcom/windmill/sdk/strategy/a;->b(Ljava/lang/Integer;)V

    .line 59
    iget-object v1, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v1, v1, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    const/4 v1, 0x0

    .line 60
    :goto_4
    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_11

    .line 61
    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->apps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/models/MediationApp;

    .line 62
    iget-object v5, v3, Lcom/windmill/sdk/models/MediationApp;->app_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v15, v5, :cond_e

    .line 63
    iget-object v5, v3, Lcom/windmill/sdk/models/MediationApp;->mediation_channel_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 64
    iget-object v7, v3, Lcom/windmill/sdk/models/MediationApp;->options:Ljava/util/Map;

    if-eqz v7, :cond_5

    .line 65
    invoke-interface {v10, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    iget-object v7, v3, Lcom/windmill/sdk/models/MediationApp;->options:Ljava/util/Map;

    const-string v8, "appId"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Lcom/windmill/sdk/strategy/a;->q(Ljava/lang/String;)V

    .line 67
    iget-object v7, v3, Lcom/windmill/sdk/models/MediationApp;->options:Ljava/util/Map;

    const-string v8, "apiKey"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Lcom/windmill/sdk/strategy/a;->s(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v9, v10}, Lcom/windmill/sdk/strategy/a;->i(Ljava/util/Map;)V

    .line 69
    :cond_5
    iget-object v7, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v7, v7, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_d

    const/4 v7, 0x0

    .line 70
    :goto_5
    iget-object v8, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v8, v8, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    .line 71
    iget-object v8, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v8, v8, Lcom/windmill/sdk/models/Waterfall;->channels:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/windmill/sdk/models/MediationChannel;

    .line 72
    iget-object v11, v8, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v5, v11, :cond_b

    .line 73
    sget-object v11, Lcom/windmill/sdk/common/h;->a:Ljava/util/Map;

    iget-object v12, v8, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    if-nez v11, :cond_6

    .line 74
    iget-object v11, v3, Lcom/windmill/sdk/models/MediationApp;->options:Ljava/util/Map;

    if-eqz v11, :cond_6

    .line 75
    sget-object v11, Lcom/windmill/sdk/common/h;->a:Ljava/util/Map;

    iget-object v12, v8, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v11, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v11, v3, Lcom/windmill/sdk/models/MediationApp;->options:Ljava/util/Map;

    invoke-static {v2, v11}, Lcom/windmill/sdk/strategy/k;->a(ILjava/util/Map;)V

    .line 77
    :cond_6
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->name:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->o(Ljava/lang/String;)V

    .line 78
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->ad_expire_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->u(I)V

    .line 79
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->enable_extra_close_callback:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->n(Z)V

    .line 80
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->channel_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->v(I)V

    .line 81
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->is_custom:Ljava/lang/Boolean;

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/Boolean;)V

    .line 82
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->ad_init_class:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->c(Ljava/lang/String;)V

    .line 83
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->ad_class:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->d(Ljava/lang/String;)V

    .line 84
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->fill_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->j(I)V

    .line 85
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->is_ready:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_7

    const/4 v11, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v9, v11}, Lcom/windmill/sdk/strategy/a;->b(Z)V

    .line 86
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->cur:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->e(Ljava/lang/String;)V

    .line 87
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->ratio:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->c(I)V

    .line 88
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->countdown_auto_close_timer:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->d(I)V

    .line 89
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->enable_click_auto_close:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->e(Z)V

    const/4 v11, 0x1

    .line 90
    invoke-virtual {v9, v11}, Lcom/windmill/sdk/strategy/a;->m(Z)V

    .line 91
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->is_saas_adx:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v12, 0x3e6

    if-nez v2, :cond_9

    if-ne v5, v12, :cond_8

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->b(Ljava/lang/Boolean;)V

    .line 92
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->options:Ljava/util/Map;

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->g(Ljava/util/Map;)V

    .line 93
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->is_saas_adx:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    if-ne v5, v12, :cond_c

    .line 94
    :cond_a
    iget-object v2, v0, Lcom/windmill/sdk/models/WaterfallResponse;->saas_options:Ljava/util/Map;

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->c(Ljava/util/Map;)V

    .line 95
    iget-object v2, v8, Lcom/windmill/sdk/models/MediationChannel;->saas_options:Ljava/util/Map;

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->c(Ljava/util/Map;)V

    .line 96
    iget-object v2, v14, Lcom/windmill/sdk/models/MediationElement;->saas_options:Ljava/util/Map;

    invoke-virtual {v9, v2}, Lcom/windmill/sdk/strategy/a;->c(Ljava/util/Map;)V

    goto :goto_9

    :cond_b
    const/4 v11, 0x1

    :cond_c
    :goto_9
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_d
    const/4 v11, 0x1

    const-string v2, "deliverResponse: strategyResponseV4.channel is null"

    .line 97
    invoke-static {v2}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    const/4 v11, 0x1

    :goto_a
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_f
    const-string v1, "deliverResponse: strategyResponseV4.apps is null"

    .line 98
    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    move-object/from16 v27, v5

    move/from16 v26, v8

    move-object/from16 v24, v11

    move/from16 v25, v12

    :cond_11
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v11, v24

    move/from16 v12, v25

    move/from16 v8, v26

    move-object/from16 v5, v27

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_12
    move-object/from16 v27, v5

    move/from16 v26, v8

    goto :goto_c

    :cond_13
    move-object/from16 v27, v5

    move/from16 v26, v8

    const-string v1, "deliverResponse: strategyResponseV4.elements is null"

    .line 99
    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 100
    :goto_c
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->aC()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 101
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->L()I

    move-result v1

    if-eqz v1, :cond_14

    .line 102
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v27

    goto :goto_d

    :cond_14
    move-object/from16 v1, v27

    .line 103
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_15
    move-object/from16 v1, v27

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This adStrategy is not pass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    :goto_d
    add-int/lit8 v8, v26, 0x1

    move-object/from16 v2, p3

    move-object v5, v1

    const/4 v3, 0x0

    move-object/from16 v1, p2

    goto/16 :goto_0

    :cond_16
    move-object v1, v5

    .line 105
    new-instance v2, Lcom/windmill/sdk/strategy/q;

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->concurrent_count:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v4, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->ab_flag:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->traffic_weight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->enable_ab_test:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->load_timeout:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v22

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->time_type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->refresh_interval:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v25

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->playing_auto_load:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->bid_bottom_line_switch:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->bidding_timeout:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v28

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v5, v3, Lcom/windmill/sdk/models/Waterfall;->track_url:Ljava/util/List;

    iget-object v7, v0, Lcom/windmill/sdk/models/WaterfallResponse;->dc_options:Ljava/util/Map;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->enable_concurrency:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->max_concurrent_count:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v32

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    iget-object v3, v3, Lcom/windmill/sdk/models/StrategyWaterFall;->notify_bid_result_switch:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->client_bidding_switch:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    iget-object v3, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v3, v3, Lcom/windmill/sdk/models/Waterfall;->currency_setting:Ljava/util/Map;

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v7

    move-object/from16 v36, v3

    invoke-direct/range {v16 .. v36}, Lcom/windmill/sdk/strategy/q;-><init>(ILjava/lang/String;IIZIIIIZZILjava/util/List;Ljava/util/Map;ZIZZZLjava/util/Map;)V

    .line 106
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 107
    invoke-virtual {v2, v6}, Lcom/windmill/sdk/strategy/q;->a(Ljava/util/List;)V

    .line 108
    iget-object v0, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v3, p0

    move-object/from16 v4, p3

    :try_start_6
    invoke-interface {v4, v3, v1, v2, v0}, Lcom/windmill/sdk/strategy/s$c;->a(ILjava/util/List;Lcom/windmill/sdk/strategy/q;Lcom/windmill/sdk/models/Waterfall;)V

    return-object v2

    :cond_17
    move-object/from16 v4, p3

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----deliverResponse: error_message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/windmill/sdk/models/WaterfallResponse;->error_message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 110
    iget-object v1, v0, Lcom/windmill/sdk/models/WaterfallResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 111
    iget-object v2, v0, Lcom/windmill/sdk/models/WaterfallResponse;->error_message:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 112
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    const-string v2, "strategyResponse list is null"

    .line 113
    :cond_18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v5, v0, Lcom/windmill/sdk/models/WaterfallResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v7, 0x7a2e0

    if-ne v5, v7, :cond_1a

    const/4 v7, 0x0

    .line 115
    :goto_e
    iget-object v5, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v5, v5, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v7, v5, :cond_1a

    .line 116
    iget-object v5, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v5, v5, Lcom/windmill/sdk/models/Waterfall;->elements:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/windmill/sdk/models/MediationElement;

    .line 117
    iget-object v8, v5, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    if-eqz v8, :cond_19

    iget-object v8, v8, Lcom/windmill/sdk/models/HBResponse;->lose_url:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 118
    iget-object v5, v5, Lcom/windmill/sdk/models/MediationElement;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1a
    move-object/from16 v3, p2

    .line 119
    invoke-static {v3, v0}, Lcom/windmill/sdk/strategy/k;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/models/WaterfallResponse;)Lcom/windmill/sdk/strategy/a;

    move-result-object v0

    invoke-interface {v4, v6, v0, v1, v2}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    move-object/from16 v4, p3

    goto :goto_10

    :cond_1b
    move-object v3, v1

    move-object v4, v2

    .line 120
    iget-object v1, v0, Lcom/windmill/sdk/models/WaterfallResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 121
    iget-object v2, v0, Lcom/windmill/sdk/models/WaterfallResponse;->error_message:Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 122
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    const-string v2, "strategyResponse element_ids is null"

    .line 123
    :cond_1c
    invoke-static {v3, v0}, Lcom/windmill/sdk/strategy/k;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/models/WaterfallResponse;)Lcom/windmill/sdk/strategy/a;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v4, v3, v0, v1, v2}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    goto :goto_11

    :cond_1d
    move-object v3, v1

    move-object v4, v2

    .line 124
    iget-object v1, v0, Lcom/windmill/sdk/models/WaterfallResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1e

    .line 125
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    const-string v1, "waterfallResponse strategy_waterfall is null"

    const/4 v2, 0x0

    invoke-interface {v4, v2, v2, v0, v1}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    goto :goto_11

    .line 126
    :cond_1e
    iget-object v1, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    if-eqz v1, :cond_1f

    .line 127
    invoke-static {v3, v0}, Lcom/windmill/sdk/strategy/k;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/models/WaterfallResponse;)Lcom/windmill/sdk/strategy/a;

    move-result-object v1

    goto :goto_f

    :cond_1f
    const/4 v1, 0x0

    .line 128
    :goto_f
    iget-object v2, v0, Lcom/windmill/sdk/models/WaterfallResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Lcom/windmill/sdk/models/WaterfallResponse;->error_message:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v4, v3, v1, v2, v0}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_11

    :catchall_1
    move-exception v0

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v4, v2

    .line 129
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse strategy exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    if-eqz v4, :cond_20

    .line 130
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v4, v2, v2, v1, v0}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    goto :goto_12

    :cond_20
    :goto_11
    const/4 v2, 0x0

    :goto_12
    return-object v2
.end method

.method private static a(ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelId",
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/common/h;->a()Lcom/windmill/sdk/common/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/common/h;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 134
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;

    if-eqz v2, :cond_0

    .line 136
    invoke-interface {v2}, Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;->getAdnId()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strategy cacheInit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/czhj/sdk/common/ClientMetadata;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 139
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.class public Lcom/windmill/baidu/BdAdapterProxy;
.super Lcom/windmill/sdk/custom/WMCustomAdapterProxy;
.source "SourceFile"


# instance fields
.field private a:Lcom/windmill/sdk/WMCustomController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;-><init>()V

    return-void
.end method

.method public static castBiddingInfo(ZLjava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "ad_time"

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v3, Lcom/windmill/sdk/base/WMBidUtil;->LOSS_ECPM:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ecpm"

    invoke-virtual {v2, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/windmill/sdk/base/WMBidUtil;->ADN:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v5, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v12, 0x39

    if-eq v5, v12, :cond_4

    const/16 v12, 0x622

    if-eq v5, v12, :cond_3

    const/16 v12, 0x625

    if-eq v5, v12, :cond_2

    const/16 v12, 0x628

    if-eq v5, v12, :cond_1

    const/16 v12, 0x63f

    if-eq v5, v12, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "21"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const-string v5, "19"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const-string v5, "16"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "13"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const-string v5, "9"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_9

    if-eq v3, v11, :cond_8

    if-eq v3, v10, :cond_7

    if-eq v3, v9, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x4

    goto :goto_3

    :cond_7
    const/4 v3, 0x3

    goto :goto_3

    :cond_8
    const/4 v3, 0x2

    goto :goto_3

    :cond_9
    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    :goto_2
    const/16 v3, 0xa

    :goto_3
    const-string v5, "adn"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/windmill/sdk/base/WMBidUtil;->MATERIAL_TYPE:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v12, 0x6

    const-string v13, "4"

    const-string v14, "3"

    const/4 v15, 0x7

    const/16 v16, 0x5

    const-string v6, "1"

    const-string v7, "2"

    if-nez v5, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_4
    const/4 v3, -0x1

    goto :goto_5

    :pswitch_0
    const-string v5, "6"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    const/4 v3, 0x5

    goto :goto_5

    :pswitch_1
    const-string v5, "5"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    const/4 v3, 0x4

    goto :goto_5

    :pswitch_2
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_4

    :cond_d
    const/4 v3, 0x3

    goto :goto_5

    :pswitch_3
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_4

    :cond_e
    const/4 v3, 0x2

    goto :goto_5

    :pswitch_4
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_4

    :cond_f
    const/4 v3, 0x1

    goto :goto_5

    :pswitch_5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_4

    :cond_10
    const/4 v3, 0x0

    :goto_5
    packed-switch v3, :pswitch_data_1

    goto :goto_6

    :pswitch_6
    const/4 v3, 0x6

    goto :goto_7

    :pswitch_7
    const/4 v3, 0x5

    goto :goto_7

    :pswitch_8
    const/4 v3, 0x4

    goto :goto_7

    :pswitch_9
    const/4 v3, 0x3

    goto :goto_7

    :pswitch_a
    const/4 v3, 0x2

    goto :goto_7

    :pswitch_b
    const/4 v3, 0x1

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v3, 0x7

    :goto_7
    const-string v5, "ad_t"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/windmill/sdk/base/WMBidUtil;->AD_TIME:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide/16 v18, 0x3e8

    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static {v3}, Lcom/windmill/sdk/base/WMBidUtil;->parseLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    :goto_8
    invoke-virtual {v2, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    div-long v20, v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    div-long v20, v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->BID_TYPE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    :goto_a
    const/4 v1, -0x1

    goto :goto_b

    :pswitch_c
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_a

    :cond_13
    const/4 v1, 0x3

    goto :goto_b

    :pswitch_d
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_a

    :cond_14
    const/4 v1, 0x2

    goto :goto_b

    :pswitch_e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_a

    :cond_15
    const/4 v1, 0x1

    goto :goto_b

    :pswitch_f
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_a

    :cond_16
    const/4 v1, 0x0

    :goto_b
    packed-switch v1, :pswitch_data_3

    goto :goto_c

    :pswitch_10
    const/4 v1, 0x3

    goto :goto_d

    :pswitch_11
    const/4 v1, 0x2

    goto :goto_d

    :pswitch_12
    const/4 v1, 0x1

    goto :goto_d

    :cond_17
    :goto_c
    :pswitch_13
    const/4 v1, 0x4

    :goto_d
    const-string v3, "bid_t"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->AD_TITLE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->AD_TITLE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "ad_ti"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->AD_USERNAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->AD_USERNAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "ad_n"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    if-nez p0, :cond_2c

    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->ECPM:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->WIN_ECPM:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1a
    invoke-virtual {v2, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->REASON:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "203"

    if-nez v3, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v5, "301"

    const-string v13, "202"

    const-string v14, "201"

    const-string v8, "100"

    sparse-switch v3, :sswitch_data_0

    :goto_e
    const/4 v15, -0x1

    goto :goto_f

    :sswitch_0
    const-string v3, "900"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_e

    :sswitch_1
    const-string v3, "303"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v15, 0x6

    goto :goto_f

    :sswitch_2
    const-string v3, "302"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v15, 0x5

    goto :goto_f

    :sswitch_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v15, 0x4

    goto :goto_f

    :sswitch_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_e

    :cond_1e
    const/4 v15, 0x3

    goto :goto_f

    :sswitch_5
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_e

    :cond_1f
    const/4 v15, 0x2

    goto :goto_f

    :sswitch_6
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_e

    :cond_20
    const/4 v15, 0x1

    goto :goto_f

    :sswitch_7
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_e

    :cond_21
    const/4 v15, 0x0

    :cond_22
    :goto_f
    packed-switch v15, :pswitch_data_4

    goto :goto_10

    :pswitch_14
    const-string v4, "900"

    goto :goto_10

    :pswitch_15
    const-string v4, "303"

    goto :goto_10

    :pswitch_16
    const-string v4, "302"

    goto :goto_10

    :pswitch_17
    move-object v4, v5

    goto :goto_10

    :pswitch_18
    move-object v4, v13

    goto :goto_10

    :pswitch_19
    move-object v4, v14

    goto :goto_10

    :pswitch_1a
    move-object v4, v8

    :cond_23
    :goto_10
    :pswitch_1b
    const-string v1, "reason"

    invoke-virtual {v2, v1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->IS_SHOW:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "0"

    if-nez v3, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_5

    :goto_11
    const/4 v1, -0x1

    goto :goto_12

    :pswitch_1c
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_11

    :cond_24
    const/4 v1, 0x2

    goto :goto_12

    :pswitch_1d
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_11

    :cond_25
    const/4 v1, 0x1

    goto :goto_12

    :pswitch_1e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_11

    :cond_26
    const/4 v1, 0x0

    :goto_12
    packed-switch v1, :pswitch_data_6

    goto :goto_13

    :pswitch_1f
    move-object v1, v6

    goto :goto_14

    :pswitch_20
    move-object v1, v4

    goto :goto_14

    :cond_27
    :goto_13
    :pswitch_21
    move-object v1, v7

    :goto_14
    const-string v3, "is_s"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/windmill/sdk/base/WMBidUtil;->IS_CLICK:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_7

    :goto_15
    const/16 v17, -0x1

    goto :goto_16

    :pswitch_22
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_15

    :cond_28
    const/16 v17, 0x2

    goto :goto_16

    :pswitch_23
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_15

    :cond_29
    const/16 v17, 0x1

    goto :goto_16

    :pswitch_24
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_15

    :cond_2a
    const/16 v17, 0x0

    :goto_16
    packed-switch v17, :pswitch_data_8

    goto :goto_17

    :pswitch_25
    move-object v6, v4

    goto :goto_18

    :cond_2b
    :goto_17
    :pswitch_26
    move-object v6, v7

    :goto_18
    :pswitch_27
    const-string v0, "is_c"

    invoke-virtual {v2, v0, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_13
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xbdf1 -> :sswitch_7
        0xc1b3 -> :sswitch_6
        0xc1b4 -> :sswitch_5
        0xc1b5 -> :sswitch_4
        0xc574 -> :sswitch_3
        0xc575 -> :sswitch_2
        0xc576 -> :sswitch_1
        0xdbf9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_1b
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x30
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_21
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x30
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_25
        :pswitch_27
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public baseOnToBidCustomAdapterVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getAdapterSdkVersion()I
    .locals 1

    const v0, 0x9858

    return v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/mobads/sdk/api/AdSettings;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeADN(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "appId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---initializeADN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getAdConfig()Lcom/windmill/sdk/WMAdConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMAdConfig;->getCustomController()Lcom/windmill/sdk/WMCustomController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMAdConfig;->getCustomController()Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/baidu/BdAdapterProxy;->a:Lcom/windmill/sdk/WMCustomController;

    :cond_0
    iget-object v0, p0, Lcom/windmill/baidu/BdAdapterProxy;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseLocation()Z

    move-result v0

    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionLocation(Z)V

    iget-object v0, p0, Lcom/windmill/baidu/BdAdapterProxy;->a:Lcom/windmill/sdk/WMCustomController;

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePhoneState()Z

    move-result v0

    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionReadDeviceID(Z)V

    iget-object v0, p0, Lcom/windmill/baidu/BdAdapterProxy;->a:Lcom/windmill/sdk/WMCustomController;

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseWriteExternal()Z

    move-result v0

    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionStorage(Z)V

    iget-object v0, p0, Lcom/windmill/baidu/BdAdapterProxy;->a:Lcom/windmill/sdk/WMCustomController;

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseAppList()Z

    move-result v0

    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionAppList(Z)V

    iget-object v0, p0, Lcom/windmill/baidu/BdAdapterProxy;->a:Lcom/windmill/sdk/WMCustomController;

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseOaid()Z

    move-result v0

    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setPermissionOAID(Z)V

    :cond_1
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->isPersonalizedAdvertisingOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setLimitPersonalAds(Z)V

    new-instance v0, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;-><init>()V

    new-instance v2, Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;

    invoke-direct {v2}, Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;->setDlDialogType(I)Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;->setDlDialogAnimStyle(I)Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobads/sdk/api/BDDialogParams$Builder;->build()Lcom/baidu/mobads/sdk/api/BDDialogParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->setDialogParams(Lcom/baidu/mobads/sdk/api/BDDialogParams;)Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitBefore(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->setAppsid(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    move-result-object p2

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getWxOpenAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->setWXAppid(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobads/sdk/api/BDAdConfig$Builder;->build(Landroid/content/Context;)Lcom/baidu/mobads/sdk/api/BDAdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->init()V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitFail(ILjava/lang/String;)V

    return-void
.end method

.method public notifyPrivacyStatusChange()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->isPersonalizedAdvertisingOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setLimitPersonalAds(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

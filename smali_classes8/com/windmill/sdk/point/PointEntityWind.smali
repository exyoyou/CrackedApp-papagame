.class public Lcom/windmill/sdk/point/PointEntityWind;
.super Lcom/czhj/sdk/common/mta/PointEntityBase;
.source "SourceFile"


# static fields
.field public static gameVersionCode:I


# instance fields
.field private ab_test:Ljava/lang/String;

.field private ad_cnt:Ljava/lang/String;

.field private ad_position_custom_info:Ljava/lang/String;

.field private adapter_version:Ljava/lang/String;

.field private aggr_appid:Ljava/lang/String;

.field private aggr_channel_id:Ljava/lang/String;

.field private aggr_placement_id:Ljava/lang/String;

.field private aggr_waterfall_id:Ljava/lang/String;

.field private auto_load:Ljava/lang/String;

.field private bidding_type:Ljava/lang/String;

.field private call_source:Ljava/lang/String;

.field private concurrent_count:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field public currency_coefficient:Ljava/lang/String;

.field private custom_info:Ljava/lang/String;

.field private ecpm:Ljava/lang/String;

.field private element_ad_type:Ljava/lang/String;

.field private event_type:Ljava/lang/String;

.field public exchange_rate:Ljava/lang/String;

.field private execution_scene:Ljava/lang/String;

.field private experiment_id:Ljava/lang/String;

.field public express_ecpm:Ljava/lang/String;

.field private feed_cnt:Ljava/lang/String;

.field private gdpr_filters:Ljava/lang/String;

.field private group_id:Ljava/lang/String;

.field private guaranteed_ad:Ljava/lang/String;

.field private hb:Ljava/lang/String;

.field private hb_id:Ljava/lang/String;

.field private hb_response:Ljava/lang/String;

.field private higher_price:Ljava/lang/String;

.field private init_filters:Ljava/lang/String;

.field private interval_filters:Ljava/lang/String;

.field private isTimeOut:Ljava/lang/String;

.field private is_custom_android_id:Ljava/lang/String;

.field private is_custom_imei:Ljava/lang/String;

.field private is_custom_oaid:Ljava/lang/String;

.field private is_enter_sdk:Ljava/lang/String;

.field private is_native:Ljava/lang/String;

.field private is_out_sdk:Ljava/lang/String;

.field private is_pdb:Z

.field private is_reward:Ljava/lang/String;

.field private is_success:Ljava/lang/String;

.field private load_count:Ljava/lang/String;

.field private load_model:Ljava/lang/String;

.field private load_type:Ljava/lang/String;

.field private loading_filters:Ljava/lang/String;

.field private network_version:Ljava/lang/String;

.field private offer_id:Ljava/lang/String;

.field private pdb_priority:I

.field private platform_trans_id:Ljava/lang/String;

.field private playing_filters:Ljava/lang/String;

.field private pldempty_filters:Ljava/lang/String;

.field private reward_action:Ljava/lang/String;

.field private rule_id:Ljava/lang/String;

.field private sdk_operation_bid_type:Ljava/lang/String;

.field private strategy_stage:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private sub_experiment_id:Ljava/lang/String;

.field private template_id:Ljava/lang/String;

.field public template_type:Ljava/lang/String;

.field private traffic_weight:Ljava/lang/String;

.field private vlist_element:Ljava/lang/String;

.field private vlist_platform:Ljava/lang/String;

.field private weight:Ljava/lang/String;

.field private win_platform:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static WindTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/point/PointEntityWind;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "category",
            "placement_id",
            "adType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/windmill/sdk/point/PointEntityWind;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/point/PointEntityWind;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "666"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public appId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getAb_test()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->ab_test:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAd_cnt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->ad_cnt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAd_position_custom_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->ad_position_custom_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdapter_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->adapter_version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAggr_appid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->aggr_appid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAggr_channel_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->aggr_channel_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAggr_placement_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->aggr_placement_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAggr_waterfall_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->aggr_waterfall_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAuto_load()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->auto_load:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBidding_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->bidding_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCall_source()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->call_source:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConcurrent_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->concurrent_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrency_coefficient()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->currency_coefficient:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustom_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->custom_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceContext()Lcom/czhj/sdk/common/mta/DeviceContext;
    .locals 1

    .line 1
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getEcpm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->ecpm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getElement_ad_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->element_ad_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEvent_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->event_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExchange_rate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->exchange_rate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExecution_scene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->execution_scene:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExperiment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->experiment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpress_ecpm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->express_ecpm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFeed_cnt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->feed_cnt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameVersionCode()I
    .locals 3

    .line 1
    sget v0, Lcom/windmill/sdk/point/PointEntityWind;->gameVersionCode:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 30
    .line 31
    sput v0, Lcom/windmill/sdk/point/PointEntityWind;->gameVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    :cond_1
    sget v0, Lcom/windmill/sdk/point/PointEntityWind;->gameVersionCode:I

    .line 34
    .line 35
    return v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v1
.end method

.method public getGdpr_filters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->gdpr_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGroup_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->group_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGuaranteed_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->guaranteed_ad:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->hb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHb_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->hb_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHb_response()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->hb_response:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHigher_price()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->higher_price:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInit_filters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->init_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInterval_filters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->interval_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_custom_android_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_custom_android_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_custom_imei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_custom_imei:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_custom_oaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_custom_oaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_enter_sdk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_enter_sdk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_native()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_native:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_out_sdk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_out_sdk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_pdb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_pdb:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIs_reward()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_reward:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_success()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_success:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_timeout()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->isTimeOut:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoad_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->load_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoad_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->load_model:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoad_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->load_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoading_filters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->loading_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetwork_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->network_version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOffer_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->offer_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPdb_priority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->pdb_priority:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlatform_trans_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->platform_trans_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlaying_filters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->playing_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPldempty_filters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->pldempty_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReward_action()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->reward_action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRule_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->rule_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdk_operation_bid_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->sdk_operation_bid_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkversion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.8.7"

    return-object v0
.end method

.method public getStrategy_stage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->strategy_stage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->subType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSub_experiment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->sub_experiment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTemplate_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->template_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTemplate_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->template_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTraffic_weight()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->traffic_weight:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVlist_element()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->vlist_element:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVlist_platform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->vlist_platform:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->weight:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWin_platform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWind;->win_platform:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAcTypeBlock()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/windmill/sdk/common/c;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getLogBlackList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getAc_type()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "block ac type "

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getAc_type()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 73
    return v0
.end method

.method public setAb_test(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ab_test"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->ab_test:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAd_cnt(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_cnt"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->ad_cnt:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAd_position_custom_info(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position_custom_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->ad_position_custom_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdapter_version(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter_version"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->adapter_version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAggr_appid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aggr_appid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->aggr_appid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAggr_channel_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aggr_channel_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->aggr_channel_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAggr_placement_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aggr_placement_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->aggr_placement_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAggr_waterfall_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aggr_waterfall_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->aggr_waterfall_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAuto_load(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto_load"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->auto_load:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBidding_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bidding_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->bidding_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCall_source(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "call_source"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->call_source:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setConcurrent_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "concurrent_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->concurrent_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currency"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrency_coefficient(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currency_coefficient"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->currency_coefficient:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCustom_info(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "custom_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->custom_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEcpm(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ecpm"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->ecpm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setElement_ad_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element_ad_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->element_ad_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEvent_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->event_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExchange_rate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exchange_rate"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->exchange_rate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExecution_scene(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "execution_scene"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->execution_scene:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExperiment_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "experiment_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->experiment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFeed_cnt(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "feed_cnt"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->feed_cnt:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGdpr_filters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gdpr_filters"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->gdpr_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGroup_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->group_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGuaranteed_ad(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guaranteed_ad"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->guaranteed_ad:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHb(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hb"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->hb:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHb_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hb_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->hb_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHb_response(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hb_response"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->hb_response:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHigher_price(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "higher_price"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->higher_price:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInit_filters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "init_filters"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->init_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInterval_filters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interval_filters"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->interval_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_custom_android_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_custom_android_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_custom_android_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_custom_imei(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_custom_imei"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_custom_imei:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_custom_oaid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_custom_oaid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_custom_oaid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_enter_sdk(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_enter_sdk"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_enter_sdk:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_native(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_native"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_native:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_out_sdk(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_out_sdk"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_out_sdk:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_pdb(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPdb"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_pdb:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIs_success(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_success"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_success:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLoad_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "load_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->load_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLoad_model(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "load_model"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->load_model:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLoad_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "load_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->load_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLoading_filters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loading_filters"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->loading_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNetwork_version(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "network_version"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->network_version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOffer_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offer_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->offer_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPdb_priority(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pdb_priority"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->pdb_priority:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlatform_trans_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "platform_trans_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->platform_trans_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlaying_filters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playing_filters"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->playing_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPldempty_filters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pldempty_filters"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->pldempty_filters:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReward(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReward"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->is_reward:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReward_action(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reward_action"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->reward_action:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRule_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rule_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->rule_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSdk_operation_bid_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdk_operation_bid_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->sdk_operation_bid_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStrategy_stage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy_stage"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->strategy_stage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->subType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSub_experiment_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub_experiment_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->sub_experiment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTemplate_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->template_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTemplate_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->template_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTimeOut(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeOut"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->isTimeOut:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTraffic_weight(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traffic_weight"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->traffic_weight:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVlist_element(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vlist_element"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->vlist_element:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVlist_platform(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vlist_platform"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->vlist_platform:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWeight(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weight"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->weight:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWin_platform(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "win_platform"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->win_platform:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setexpress_ecpm(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groEcpm"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWind;->express_ecpm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

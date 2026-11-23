.class public final Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/StrategyWaterFall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/StrategyWaterFall;",
        "Lcom/windmill/sdk/models/StrategyWaterFall$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ab_flag:Ljava/lang/Integer;

.field public bid_bottom_line_switch:Ljava/lang/Boolean;

.field public bid_floor:Ljava/lang/Integer;

.field public bidding_timeout:Ljava/lang/Integer;

.field public concurrent_count:Ljava/lang/Integer;

.field public element_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public enable_concurrency:Ljava/lang/Boolean;

.field public experiment_id:Ljava/lang/Integer;

.field public fill_type:Ljava/lang/Integer;

.field public frequency_day:Ljava/lang/Integer;

.field public frequency_hour:Ljava/lang/Integer;

.field public frequency_secs:Ljava/lang/Integer;

.field public load_timeout:Ljava/lang/Integer;

.field public max_concurrent_count:Ljava/lang/Integer;

.field public notify_bid_result_switch:Ljava/lang/Boolean;

.field public notify_url:Ljava/lang/String;

.field public playing_auto_load:Ljava/lang/Boolean;

.field public refresh_interval:Ljava/lang/Integer;

.field public sub_experiment_id:Ljava/lang/Integer;

.field public traffic_weight:Ljava/lang/Integer;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_AB_FLAG:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->ab_flag:Ljava/lang/Integer;

    .line 7
    .line 8
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_TRAFFIC_WEIGHT:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->traffic_weight:Ljava/lang/Integer;

    .line 11
    .line 12
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_CONCURRENT_COUNT:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->concurrent_count:Ljava/lang/Integer;

    .line 15
    .line 16
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_LOAD_TIMEOUT:Ljava/lang/Integer;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->load_timeout:Ljava/lang/Integer;

    .line 19
    .line 20
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_EXPERIMENT_ID:Ljava/lang/Integer;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->experiment_id:Ljava/lang/Integer;

    .line 23
    .line 24
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->type:Ljava/lang/Integer;

    .line 27
    .line 28
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_SUB_EXPERIMENT_ID:Ljava/lang/Integer;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->sub_experiment_id:Ljava/lang/Integer;

    .line 31
    .line 32
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_REFRESH_INTERVAL:Ljava/lang/Integer;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->refresh_interval:Ljava/lang/Integer;

    .line 35
    .line 36
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_BID_FLOOR:Ljava/lang/Integer;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bid_floor:Ljava/lang/Integer;

    .line 39
    .line 40
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_PLAYING_AUTO_LOAD:Ljava/lang/Boolean;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->playing_auto_load:Ljava/lang/Boolean;

    .line 43
    .line 44
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_BID_BOTTOM_LINE_SWITCH:Ljava/lang/Boolean;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bid_bottom_line_switch:Ljava/lang/Boolean;

    .line 47
    .line 48
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_BIDDING_TIMEOUT:Ljava/lang/Integer;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bidding_timeout:Ljava/lang/Integer;

    .line 51
    .line 52
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_FREQUENCY_DAY:Ljava/lang/Integer;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_day:Ljava/lang/Integer;

    .line 55
    .line 56
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_FREQUENCY_HOUR:Ljava/lang/Integer;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_hour:Ljava/lang/Integer;

    .line 59
    .line 60
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_FREQUENCY_SECS:Ljava/lang/Integer;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_secs:Ljava/lang/Integer;

    .line 63
    .line 64
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_FILL_TYPE:Ljava/lang/Integer;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->fill_type:Ljava/lang/Integer;

    .line 67
    .line 68
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_ENABLE_CONCURRENCY:Ljava/lang/Boolean;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->enable_concurrency:Ljava/lang/Boolean;

    .line 71
    .line 72
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_MAX_CONCURRENT_COUNT:Ljava/lang/Integer;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->max_concurrent_count:Ljava/lang/Integer;

    .line 75
    .line 76
    sget-object v0, Lcom/windmill/sdk/models/StrategyWaterFall;->DEFAULT_NOTIFY_BID_RESULT_SWITCH:Ljava/lang/Boolean;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->notify_bid_result_switch:Ljava/lang/Boolean;

    .line 79
    .line 80
    const-string v0, ""

    .line 81
    .line 82
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->notify_url:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->element_ids:Ljava/util/List;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public ab_flag(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ab_flag"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->ab_flag:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public bid_bottom_line_switch(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bid_bottom_line_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bid_bottom_line_switch:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public bid_floor(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bid_floor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bid_floor:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public bidding_timeout(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bidding_timeout"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bidding_timeout:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->build()Lcom/windmill/sdk/models/StrategyWaterFall;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/StrategyWaterFall;
    .locals 26

    move-object/from16 v0, p0

    .line 2
    new-instance v24, Lcom/windmill/sdk/models/StrategyWaterFall;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->ab_flag:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->traffic_weight:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->concurrent_count:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->element_ids:Ljava/util/List;

    iget-object v6, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->load_timeout:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->experiment_id:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->type:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->sub_experiment_id:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->refresh_interval:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bid_floor:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->playing_auto_load:Ljava/lang/Boolean;

    iget-object v13, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bid_bottom_line_switch:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->bidding_timeout:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_day:Ljava/lang/Integer;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_hour:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_secs:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->fill_type:Ljava/lang/Integer;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->enable_concurrency:Ljava/lang/Boolean;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->max_concurrent_count:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->notify_bid_result_switch:Ljava/lang/Boolean;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->notify_url:Ljava/lang/String;

    move-object/from16 v22, v1

    invoke-super/range {p0 .. p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v23

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lcom/windmill/sdk/models/StrategyWaterFall;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    return-object v24
.end method

.method public concurrent_count(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->concurrent_count:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public element_ids(Ljava/util/List;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element_ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/windmill/sdk/models/StrategyWaterFall$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->element_ids:Ljava/util/List;

    .line 5
    .line 6
    return-object p0
.end method

.method public enable_concurrency(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_concurrency"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->enable_concurrency:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public experiment_id(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->experiment_id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public fill_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fill_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->fill_type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public frequency_day(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequency_day"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_day:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public frequency_hour(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequency_hour"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_hour:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public frequency_secs(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequency_secs"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->frequency_secs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public load_timeout(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "load_timeout"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->load_timeout:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public max_concurrent_count(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max_concurrent_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->max_concurrent_count:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public notify_bid_result_switch(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notify_bid_result_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->notify_bid_result_switch:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public notify_url(Ljava/lang/String;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notify_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->notify_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public playing_auto_load(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playing_auto_load"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->playing_auto_load:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public refresh_interval(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refresh_interval"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->refresh_interval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public sub_experiment_id(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->sub_experiment_id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public traffic_weight(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->traffic_weight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyWaterFall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/StrategyWaterFall$Builder;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

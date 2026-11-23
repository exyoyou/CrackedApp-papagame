.class public final Lcom/windmill/sdk/models/MediationElement$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/MediationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/MediationElement;",
        "Lcom/windmill/sdk/models/MediationElement$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ban_pkg_name:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bid_floor:Ljava/lang/Integer;

.field public bid_floor_cur:Ljava/lang/String;

.field public bid_type:Ljava/lang/Integer;

.field public ecpm:Ljava/lang/Integer;

.field public element_id:Ljava/lang/Integer;

.field public frequency_day:Ljava/lang/Integer;

.field public frequency_hour:Ljava/lang/Integer;

.field public frequency_secs:Ljava/lang/Integer;

.field public hb:Ljava/lang/Integer;

.field public hb_response:Lcom/windmill/sdk/models/HBResponse;

.field public is_pdb:Ljava/lang/Boolean;

.field public mask:Ljava/lang/String;

.field public mediation_app_id:Ljava/lang/Integer;

.field public no_hb_preload:Ljava/lang/Integer;

.field public options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public order:Ljava/lang/Integer;

.field public pdb_priority:Ljava/lang/Integer;

.field public price:Ljava/lang/Integer;

.field public render_type:Ljava/lang/Integer;

.field public reward_guide_prompt:Ljava/lang/String;

.field public reward_type:Ljava/lang/Integer;

.field public saas_options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public single_channel_timeout:Ljava/lang/Integer;

.field public sub_ad_type:Ljava/lang/Integer;

.field public tag:Ljava/lang/Integer;

.field public weight_switch:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_ELEMENT_ID:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->element_id:Ljava/lang/Integer;

    .line 7
    .line 8
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_MEDIATION_APP_ID:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->mediation_app_id:Ljava/lang/Integer;

    .line 11
    .line 12
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_FREQUENCY_DAY:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_day:Ljava/lang/Integer;

    .line 15
    .line 16
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_FREQUENCY_HOUR:Ljava/lang/Integer;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_hour:Ljava/lang/Integer;

    .line 19
    .line 20
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_FREQUENCY_SECS:Ljava/lang/Integer;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_secs:Ljava/lang/Integer;

    .line 23
    .line 24
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_ECPM:Ljava/lang/Integer;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->ecpm:Ljava/lang/Integer;

    .line 27
    .line 28
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_PRICE:Ljava/lang/Integer;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->price:Ljava/lang/Integer;

    .line 31
    .line 32
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_HB:Ljava/lang/Integer;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->hb:Ljava/lang/Integer;

    .line 35
    .line 36
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_BID_TYPE:Ljava/lang/Integer;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_type:Ljava/lang/Integer;

    .line 39
    .line 40
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_TAG:Ljava/lang/Integer;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->tag:Ljava/lang/Integer;

    .line 43
    .line 44
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_SINGLE_CHANNEL_TIMEOUT:Ljava/lang/Integer;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->single_channel_timeout:Ljava/lang/Integer;

    .line 47
    .line 48
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_WEIGHT_SWITCH:Ljava/lang/Boolean;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->weight_switch:Ljava/lang/Boolean;

    .line 51
    .line 52
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_RENDER_TYPE:Ljava/lang/Integer;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->render_type:Ljava/lang/Integer;

    .line 55
    .line 56
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_BID_FLOOR:Ljava/lang/Integer;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_floor:Ljava/lang/Integer;

    .line 59
    .line 60
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_NO_HB_PRELOAD:Ljava/lang/Integer;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->no_hb_preload:Ljava/lang/Integer;

    .line 63
    .line 64
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_SUB_AD_TYPE:Ljava/lang/Integer;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->sub_ad_type:Ljava/lang/Integer;

    .line 67
    .line 68
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_REWARD_TYPE:Ljava/lang/Integer;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->reward_type:Ljava/lang/Integer;

    .line 71
    .line 72
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_ORDER:Ljava/lang/Integer;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->order:Ljava/lang/Integer;

    .line 75
    .line 76
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_IS_PDB:Ljava/lang/Boolean;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->is_pdb:Ljava/lang/Boolean;

    .line 79
    .line 80
    sget-object v0, Lcom/windmill/sdk/models/MediationElement;->DEFAULT_PDB_PRIORITY:Ljava/lang/Integer;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->pdb_priority:Ljava/lang/Integer;

    .line 83
    .line 84
    const-string v0, ""

    .line 85
    .line 86
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->reward_guide_prompt:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->options:Ljava/util/Map;

    .line 93
    .line 94
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->ban_pkg_name:Ljava/util/List;

    .line 99
    .line 100
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->saas_options:Ljava/util/Map;

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public ban_pkg_name(Ljava/util/List;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ban_pkg_name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/MediationElement$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->ban_pkg_name:Ljava/util/List;

    .line 5
    .line 6
    return-object p0
.end method

.method public bid_floor(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_floor:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public bid_floor_cur(Ljava/lang/String;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bid_floor_cur"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_floor_cur:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bid_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bid_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/MediationElement$Builder;->build()Lcom/windmill/sdk/models/MediationElement;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/MediationElement;
    .locals 32

    move-object/from16 v0, p0

    .line 2
    new-instance v30, Lcom/windmill/sdk/models/MediationElement;

    move-object/from16 v1, v30

    iget-object v2, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->element_id:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->mediation_app_id:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->options:Ljava/util/Map;

    iget-object v5, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_day:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_hour:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_secs:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->ecpm:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    iget-object v10, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->price:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->hb:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_type:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->tag:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->single_channel_timeout:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->weight_switch:Ljava/lang/Boolean;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->render_type:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_floor:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->no_hb_preload:Ljava/lang/Integer;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->sub_ad_type:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->reward_type:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->order:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->mask:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->bid_floor_cur:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->ban_pkg_name:Ljava/util/List;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->is_pdb:Ljava/lang/Boolean;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->pdb_priority:Ljava/lang/Integer;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->reward_guide_prompt:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationElement$Builder;->saas_options:Ljava/util/Map;

    move-object/from16 v28, v1

    invoke-super/range {p0 .. p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v29

    move-object/from16 v1, v31

    invoke-direct/range {v1 .. v29}, Lcom/windmill/sdk/models/MediationElement;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/windmill/sdk/models/HBResponse;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Lcom/czhj/wire/okio/ByteString;)V

    return-object v30
.end method

.method public ecpm(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->ecpm:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public element_id(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->element_id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public frequency_day(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_day:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public frequency_hour(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_hour:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public frequency_secs(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->frequency_secs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public hb(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->hb:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public hb_response(Lcom/windmill/sdk/models/HBResponse;)Lcom/windmill/sdk/models/MediationElement$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->hb_response:Lcom/windmill/sdk/models/HBResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public is_pdb(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_pdb"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->is_pdb:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public mask(Ljava/lang/String;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mask"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->mask:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public mediation_app_id(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediation_app_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->mediation_app_id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public no_hb_preload(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "no_hb_preload"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->no_hb_preload:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public options(Ljava/util/Map;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/MediationElement$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->options:Ljava/util/Map;

    .line 5
    .line 6
    return-object p0
.end method

.method public order(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->order:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public pdb_priority(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->pdb_priority:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public price(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "price"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->price:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public render_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "render_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->render_type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public reward_guide_prompt(Ljava/lang/String;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reward_guide_prompt"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->reward_guide_prompt:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public reward_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reward_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->reward_type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public saas_options(Ljava/util/Map;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saas_options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/MediationElement$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->saas_options:Ljava/util/Map;

    .line 5
    .line 6
    return-object p0
.end method

.method public single_channel_timeout(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "single_channel_timeout"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->single_channel_timeout:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public sub_ad_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub_ad_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->sub_ad_type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public tag(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->tag:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public weight_switch(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/MediationElement$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weight_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationElement$Builder;->weight_switch:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

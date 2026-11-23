.class public final Lcom/windmill/sdk/models/Android$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/Android;",
        "Lcom/windmill/sdk/models/Android$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public disable_boot_mark:Ljava/lang/Boolean;

.field public disable_up_oaid:Ljava/lang/Integer;

.field public enable_ndk_crash:Ljava/lang/Boolean;

.field public enable_permission:Ljava/lang/Boolean;

.field public enable_report_crash:Ljava/lang/Boolean;

.field public enable_reward_ndk:Ljava/lang/Boolean;

.field public gm_price_cache_switch:Ljava/lang/Integer;

.field public gm_price_packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gm_price_percent:Ljava/lang/Integer;

.field public init_sync_timeout:Ljava/lang/Integer;

.field public oaid_api_is_disable:Ljava/lang/Boolean;

.field public quick_app_schema:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public redirect_link_collection_ratio:Ljava/lang/Integer;

.field public redirect_link_collection_switch:Ljava/lang/Boolean;

.field public report_log:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_REPORT_LOG:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->report_log:Ljava/lang/Integer;

    .line 7
    .line 8
    sget-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_DISABLE_UP_OAID:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->disable_up_oaid:Ljava/lang/Integer;

    .line 11
    .line 12
    sget-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_ENABLE_PERMISSION:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->enable_permission:Ljava/lang/Boolean;

    .line 15
    .line 16
    sget-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_ENABLE_REPORT_CRASH:Ljava/lang/Boolean;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->enable_report_crash:Ljava/lang/Boolean;

    .line 19
    .line 20
    sget-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_OAID_API_IS_DISABLE:Ljava/lang/Boolean;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->oaid_api_is_disable:Ljava/lang/Boolean;

    .line 23
    .line 24
    sget-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_DISABLE_BOOT_MARK:Ljava/lang/Boolean;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->disable_boot_mark:Ljava/lang/Boolean;

    .line 27
    .line 28
    sget-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_ENABLE_REWARD_NDK:Ljava/lang/Boolean;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->enable_reward_ndk:Ljava/lang/Boolean;

    .line 31
    .line 32
    sget-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_ENABLE_NDK_CRASH:Ljava/lang/Boolean;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->enable_ndk_crash:Ljava/lang/Boolean;

    .line 35
    .line 36
    sget-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_INIT_SYNC_TIMEOUT:Ljava/lang/Integer;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->init_sync_timeout:Ljava/lang/Integer;

    .line 39
    .line 40
    sget-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_GM_PRICE_PERCENT:Ljava/lang/Integer;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->gm_price_percent:Ljava/lang/Integer;

    .line 43
    .line 44
    sget-object v0, Lcom/windmill/sdk/models/Android;->DEFAULT_GM_PRICE_CACHE_SWITCH:Ljava/lang/Integer;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->gm_price_cache_switch:Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->gm_price_packages:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/windmill/sdk/models/Android$Builder;->quick_app_schema:Ljava/util/List;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/Android$Builder;->build()Lcom/windmill/sdk/models/Android;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/Android;
    .locals 20

    move-object/from16 v0, p0

    .line 2
    new-instance v18, Lcom/windmill/sdk/models/Android;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/windmill/sdk/models/Android$Builder;->report_log:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/windmill/sdk/models/Android$Builder;->disable_up_oaid:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/windmill/sdk/models/Android$Builder;->enable_permission:Ljava/lang/Boolean;

    iget-object v5, v0, Lcom/windmill/sdk/models/Android$Builder;->enable_report_crash:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/windmill/sdk/models/Android$Builder;->oaid_api_is_disable:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/windmill/sdk/models/Android$Builder;->disable_boot_mark:Ljava/lang/Boolean;

    iget-object v8, v0, Lcom/windmill/sdk/models/Android$Builder;->enable_reward_ndk:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/windmill/sdk/models/Android$Builder;->enable_ndk_crash:Ljava/lang/Boolean;

    iget-object v10, v0, Lcom/windmill/sdk/models/Android$Builder;->init_sync_timeout:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/windmill/sdk/models/Android$Builder;->gm_price_percent:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/windmill/sdk/models/Android$Builder;->gm_price_packages:Ljava/util/List;

    iget-object v13, v0, Lcom/windmill/sdk/models/Android$Builder;->gm_price_cache_switch:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/windmill/sdk/models/Android$Builder;->quick_app_schema:Ljava/util/List;

    iget-object v15, v0, Lcom/windmill/sdk/models/Android$Builder;->redirect_link_collection_switch:Ljava/lang/Boolean;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/Android$Builder;->redirect_link_collection_ratio:Ljava/lang/Integer;

    move-object/from16 v16, v1

    invoke-super/range {p0 .. p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v17

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/windmill/sdk/models/Android;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v18
.end method

.method public disable_boot_mark(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable_boot_mark"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->disable_boot_mark:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public disable_up_oaid(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable_up_oaid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->disable_up_oaid:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public enable_ndk_crash(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_ndk_crash"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->enable_ndk_crash:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public enable_permission(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_permission"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->enable_permission:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public enable_report_crash(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_report_crash"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->enable_report_crash:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public enable_reward_ndk(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_reward_ndk"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->enable_reward_ndk:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public gm_price_cache_switch(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gm_price_cache_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->gm_price_cache_switch:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public gm_price_packages(Ljava/util/List;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gm_price_packages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/Android$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->gm_price_packages:Ljava/util/List;

    .line 5
    .line 6
    return-object p0
.end method

.method public gm_price_percent(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gm_price_percent"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->gm_price_percent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public init_sync_timeout(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "init_sync_timeout"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->init_sync_timeout:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public oaid_api_is_disable(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oaid_api_is_disable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->oaid_api_is_disable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public quick_app_schema(Ljava/util/List;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quick_app_schema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/windmill/sdk/models/Android$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->quick_app_schema:Ljava/util/List;

    .line 5
    .line 6
    return-object p0
.end method

.method public redirect_link_collection_ratio(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirect_link_collection_ratio"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->redirect_link_collection_ratio:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public redirect_link_collection_switch(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirect_link_collection_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->redirect_link_collection_switch:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public report_log(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Android$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "report_log"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/Android$Builder;->report_log:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

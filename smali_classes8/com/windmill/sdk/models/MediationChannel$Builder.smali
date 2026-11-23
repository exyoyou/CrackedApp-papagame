.class public final Lcom/windmill/sdk/models/MediationChannel$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/MediationChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/windmill/sdk/models/MediationChannel;",
        "Lcom/windmill/sdk/models/MediationChannel$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_class:Ljava/lang/String;

.field public ad_expire_time:Ljava/lang/Integer;

.field public ad_init_class:Ljava/lang/String;

.field public adapter_config:Lcom/windmill/sdk/models/AdapterConfig;

.field public channel_id:Ljava/lang/Integer;

.field public countdown_auto_close_timer:Ljava/lang/Integer;

.field public cur:Ljava/lang/String;

.field public enable_click_auto_close:Ljava/lang/Boolean;

.field public enable_extra_close_callback:Ljava/lang/Boolean;

.field public fill_type:Ljava/lang/Integer;

.field public is_custom:Ljava/lang/Boolean;

.field public is_ready:Ljava/lang/Integer;

.field public is_saas_adx:Ljava/lang/Boolean;

.field public module_name:Ljava/lang/String;

.field public name:Ljava/lang/String;

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

.field public ratio:Ljava/lang/Integer;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_CHANNEL_ID:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->channel_id:Ljava/lang/Integer;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->name:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v1, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_AD_EXPIRE_TIME:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_expire_time:Ljava/lang/Integer;

    .line 15
    .line 16
    sget-object v1, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_ENABLE_EXTRA_CLOSE_CALLBACK:Ljava/lang/Boolean;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->enable_extra_close_callback:Ljava/lang/Boolean;

    .line 19
    .line 20
    sget-object v1, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_IS_READY:Ljava/lang/Integer;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_ready:Ljava/lang/Integer;

    .line 23
    .line 24
    sget-object v1, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_IS_CUSTOM:Ljava/lang/Boolean;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_custom:Ljava/lang/Boolean;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_init_class:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_class:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v1, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_FILL_TYPE:Ljava/lang/Integer;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->fill_type:Ljava/lang/Integer;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->cur:Ljava/lang/String;

    .line 37
    .line 38
    sget-object v1, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_RATIO:Ljava/lang/Integer;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ratio:Ljava/lang/Integer;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->module_name:Ljava/lang/String;

    .line 43
    .line 44
    sget-object v0, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_ENABLE_CLICK_AUTO_CLOSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->enable_click_auto_close:Ljava/lang/Boolean;

    .line 47
    .line 48
    sget-object v0, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_COUNTDOWN_AUTO_CLOSE_TIMER:Ljava/lang/Integer;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->countdown_auto_close_timer:Ljava/lang/Integer;

    .line 51
    .line 52
    sget-object v0, Lcom/windmill/sdk/models/MediationChannel;->DEFAULT_IS_SAAS_ADX:Ljava/lang/Boolean;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_saas_adx:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->saas_options:Ljava/util/Map;

    .line 61
    .line 62
    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->options:Ljava/util/Map;

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public ad_class(Ljava/lang/String;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_class"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_class:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public ad_expire_time(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_expire_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_expire_time:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public ad_init_class(Ljava/lang/String;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_init_class"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_init_class:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public adapter_config(Lcom/windmill/sdk/models/AdapterConfig;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter_config"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->adapter_config:Lcom/windmill/sdk/models/AdapterConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/models/MediationChannel$Builder;->build()Lcom/windmill/sdk/models/MediationChannel;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/windmill/sdk/models/MediationChannel;
    .locals 23

    move-object/from16 v0, p0

    .line 2
    new-instance v21, Lcom/windmill/sdk/models/MediationChannel;

    move-object/from16 v1, v21

    iget-object v2, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->channel_id:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_expire_time:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->enable_extra_close_callback:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_custom:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_init_class:Ljava/lang/String;

    iget-object v8, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ad_class:Ljava/lang/String;

    iget-object v9, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->fill_type:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->cur:Ljava/lang/String;

    iget-object v11, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ratio:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->module_name:Ljava/lang/String;

    iget-object v13, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->enable_click_auto_close:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->countdown_auto_close_timer:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_ready:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_saas_adx:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->saas_options:Ljava/util/Map;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->adapter_config:Lcom/windmill/sdk/models/AdapterConfig;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/windmill/sdk/models/MediationChannel$Builder;->options:Ljava/util/Map;

    move-object/from16 v19, v1

    invoke-super/range {p0 .. p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v20

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lcom/windmill/sdk/models/MediationChannel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/Map;Lcom/windmill/sdk/models/AdapterConfig;Ljava/util/Map;Lcom/czhj/wire/okio/ByteString;)V

    return-object v21
.end method

.method public channel_id(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->channel_id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public countdown_auto_close_timer(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countdown_auto_close_timer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->countdown_auto_close_timer:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public cur(Ljava/lang/String;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cur"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->cur:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public enable_click_auto_close(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_click_auto_close"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->enable_click_auto_close:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public enable_extra_close_callback(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_extra_close_callback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->enable_extra_close_callback:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public fill_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationChannel$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->fill_type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public is_custom(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_custom"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_custom:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public is_ready(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_ready"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_ready:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public is_saas_adx(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_saas_adx"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->is_saas_adx:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public module_name(Ljava/lang/String;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->module_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public options(Ljava/util/Map;)Lcom/windmill/sdk/models/MediationChannel$Builder;
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
            "Lcom/windmill/sdk/models/MediationChannel$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->options:Ljava/util/Map;

    .line 5
    .line 6
    return-object p0
.end method

.method public ratio(Ljava/lang/Integer;)Lcom/windmill/sdk/models/MediationChannel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->ratio:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public saas_options(Ljava/util/Map;)Lcom/windmill/sdk/models/MediationChannel$Builder;
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
            "Lcom/windmill/sdk/models/MediationChannel$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/models/MediationChannel$Builder;->saas_options:Ljava/util/Map;

    .line 5
    .line 6
    return-object p0
.end method

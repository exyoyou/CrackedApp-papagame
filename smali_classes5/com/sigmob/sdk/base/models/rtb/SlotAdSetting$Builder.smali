.class public final Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
.super Lcom/czhj/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;",
        "Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public apk_download_type:Ljava/lang/Integer;

.field public click_lose_rate:Ljava/lang/Integer;

.field public disable_x_requested_with:Ljava/lang/Boolean;

.field public enable_deeplink_and_landing_page:Ljava/lang/Boolean;

.field public interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

.field public link_actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/rtb/LinkAction;",
            ">;"
        }
    .end annotation
.end field

.field public market_package_name:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

.field public resumable_download:Ljava/lang/Boolean;

.field public retry_count:Ljava/lang/Integer;

.field public rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

.field public splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

.field public use_downloaded_apk:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_RETRY_COUNT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->retry_count:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_DISABLE_X_REQUESTED_WITH:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->disable_x_requested_with:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_APK_DOWNLOAD_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->apk_download_type:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_RESUMABLE_DOWNLOAD:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->resumable_download:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_USE_DOWNLOADED_APK:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->use_downloaded_apk:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_ENABLE_DEEPLINK_AND_LANDING_PAGE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->enable_deeplink_and_landing_page:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->DEFAULT_CLICK_LOSE_RATE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->click_lose_rate:Ljava/lang/Integer;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->market_package_name:Ljava/util/List;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->link_actions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apk_download_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apk_download_type"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->apk_download_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;
    .locals 17

    .line 2
    move-object/from16 v0, p0

    new-instance v16, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    iget-object v4, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    iget-object v5, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->retry_count:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->disable_x_requested_with:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    iget-object v8, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->apk_download_type:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->resumable_download:Ljava/lang/Boolean;

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->use_downloaded_apk:Ljava/lang/Boolean;

    iget-object v11, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->enable_deeplink_and_landing_page:Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->market_package_name:Ljava/util/List;

    iget-object v13, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->link_actions:Ljava/util/List;

    iget-object v14, v0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->click_lose_rate:Ljava/lang/Integer;

    invoke-super/range {p0 .. p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v15

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;-><init>(Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v16
.end method

.method public click_lose_rate(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "click_lose_rate"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->click_lose_rate:Ljava/lang/Integer;

    return-object p0
.end method

.method public disable_x_requested_with(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable_x_requested_with"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->disable_x_requested_with:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_deeplink_and_landing_page(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable_deeplink_and_landing_page"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->enable_deeplink_and_landing_page:Ljava/lang/Boolean;

    return-object p0
.end method

.method public interstitial_setting(Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interstitial_setting"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    return-object p0
.end method

.method public link_actions(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link_actions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/rtb/LinkAction;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->link_actions:Ljava/util/List;

    return-object p0
.end method

.method public market_package_name(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "market_package_name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->market_package_name:Ljava/util/List;

    return-object p0
.end method

.method public native_setting(Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "native_setting"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    return-object p0
.end method

.method public resumable_download(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resumable_download"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->resumable_download:Ljava/lang/Boolean;

    return-object p0
.end method

.method public retry_count(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retry_count"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->retry_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public rv_setting(Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rv_setting"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    return-object p0
.end method

.method public splash_setting(Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splash_setting"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    return-object p0
.end method

.method public use_downloaded_apk(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "use_downloaded_apk"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->use_downloaded_apk:Ljava/lang/Boolean;

    return-object p0
.end method

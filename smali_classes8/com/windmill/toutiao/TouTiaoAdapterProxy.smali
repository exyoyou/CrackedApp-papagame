.class public Lcom/windmill/toutiao/TouTiaoAdapterProxy;
.super Lcom/windmill/sdk/custom/WMCustomAdapterProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/toutiao/TouTiaoAdapterProxy$a;
    }
.end annotation


# static fields
.field private static b:Lcom/bytedance/sdk/openadsdk/TTAdNative;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

.field private c:Lcom/windmill/sdk/WMCustomController;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/windmill/toutiao/TouTiaoAdapterProxy;)Lcom/windmill/sdk/WMCustomController;
    .locals 0

    iget-object p0, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->c:Lcom/windmill/sdk/WMCustomController;

    return-object p0
.end method

.method static synthetic b(Lcom/windmill/toutiao/TouTiaoAdapterProxy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static castBiddingInfo(ZLjava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    sget-object p0, Lcom/windmill/sdk/base/WMBidUtil;->LOSS_ECPM:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "auctionBidToWin"

    :goto_0
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_0
    sget-object p0, Lcom/windmill/sdk/base/WMBidUtil;->ECPM:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "auctionPrice"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/windmill/sdk/base/WMBidUtil;->REASON:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v8, "102"

    if-nez v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v9, "100"

    sparse-switch v1, :sswitch_data_0

    :goto_1
    const/4 p0, -0x1

    goto :goto_2

    :sswitch_0
    const-string v1, "900"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x4

    goto :goto_2

    :sswitch_1
    const-string v1, "204"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x3

    goto :goto_2

    :sswitch_2
    const-string v1, "203"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v1, "202"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    goto :goto_2

    :sswitch_4
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_2
    packed-switch p0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v8, "1"

    goto :goto_3

    :pswitch_1
    const-string v8, "201"

    goto :goto_3

    :pswitch_2
    move-object v8, v9

    goto :goto_3

    :pswitch_3
    const-string v8, "2"

    :cond_6
    :goto_3
    :pswitch_4
    const-string p0, "lossReason"

    invoke-interface {v0, p0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/windmill/sdk/base/WMBidUtil;->ADN:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    :goto_4
    const/4 v2, -0x1

    goto :goto_5

    :sswitch_5
    const-string p1, "21"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x7

    goto :goto_5

    :sswitch_6
    const-string p1, "19"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x6

    goto :goto_5

    :sswitch_7
    const-string p1, "16"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v2, 0x5

    goto :goto_5

    :sswitch_8
    const-string p1, "15"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_4

    :sswitch_9
    const-string p1, "12"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x3

    goto :goto_5

    :sswitch_a
    const-string p1, "11"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x2

    goto :goto_5

    :sswitch_b
    const-string p1, "7"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_4

    :cond_c
    const/4 v2, 0x1

    goto :goto_5

    :sswitch_c
    const-string p1, "5"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    :cond_e
    :goto_5
    packed-switch v2, :pswitch_data_1

    goto :goto_6

    :pswitch_5
    const-string p0, "bqt"

    goto :goto_7

    :pswitch_6
    const-string p0, "kuai"

    goto :goto_7

    :pswitch_7
    const-string p0, "ylh"

    goto :goto_7

    :pswitch_8
    const-string p0, "fan"

    goto :goto_7

    :pswitch_9
    const-string p0, "tapjoy"

    goto :goto_7

    :pswitch_a
    const-string p0, "admob"

    goto :goto_7

    :pswitch_b
    const-string p0, "is"

    goto :goto_7

    :pswitch_c
    const-string p0, "applovin"

    goto :goto_7

    :cond_f
    :goto_6
    const-string p0, ""

    :goto_7
    const-string p1, "winBidder"

    goto/16 :goto_0

    :goto_8
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xbdf1 -> :sswitch_4
        0xc1b4 -> :sswitch_3
        0xc1b5 -> :sswitch_2
        0xc1b6 -> :sswitch_1
        0xdbf9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x35 -> :sswitch_c
        0x37 -> :sswitch_b
        0x620 -> :sswitch_a
        0x621 -> :sswitch_9
        0x624 -> :sswitch_8
        0x625 -> :sswitch_7
        0x628 -> :sswitch_6
        0x63f -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static getReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "reason:[\\ ]*(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getTTAdNative()Lcom/bytedance/sdk/openadsdk/TTAdNative;
    .locals 1

    sget-object v0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    return-object v0
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

.method public getBiddingToken(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string p1, "placementId"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----loadBidding getBiddingToken localExtra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x7

    if-eqz p2, :cond_1

    :try_start_1
    const-string v1, "TB_UserId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/String;

    move-object p3, v1

    :cond_0
    const-string v1, "adtype"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----loadBidding getBiddingToken codeId: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " adtype "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userid:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    invoke-interface {p3, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getBiddingToken(Lcom/bytedance/sdk/openadsdk/AdSlot;ZI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "token"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeADN(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
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

    const-string v0, "unknown"

    const-string v1, "useMediation"

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "appId"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "---initializeADN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    :catch_0
    :catchall_0
    :try_start_2
    const-string v4, "[{\"name\":\"personal_ads_type\",\"value\":\"0\"}]"

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/windmill/sdk/WindMillAd;->isPersonalizedAdvertisingOn()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "[{\"name\":\"personal_ads_type\",\"value\":\"1\"}]"

    :cond_1
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/windmill/sdk/WindMillAd;->getAdConfig()Lcom/windmill/sdk/WMAdConfig;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/windmill/sdk/WMAdConfig;->getCustomController()Lcom/windmill/sdk/WMCustomController;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/windmill/sdk/WMAdConfig;->getCustomController()Lcom/windmill/sdk/WMCustomController;

    move-result-object v5

    iput-object v5, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->c:Lcom/windmill/sdk/WMCustomController;

    :cond_2
    new-instance v5, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->data(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v4

    const/4 v7, 0x6

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-virtual {v5, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillAd;->isSupportMultiProcess()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    new-instance v2, Lcom/windmill/toutiao/TouTiaoAdapterProxy$1;

    invoke-direct {v2, p0}, Lcom/windmill/toutiao/TouTiaoAdapterProxy$1;-><init>(Lcom/windmill/toutiao/TouTiaoAdapterProxy;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->customController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-class v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    :try_start_4
    const-string p2, "not support useMediation method"

    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitBefore(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->a:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->isSdkReady()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitSuccess()V

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--initializeADN:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/windmill/sdk/base/WMInitManager;->sharedInstance()Lcom/windmill/sdk/base/WMInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/base/WMInitManager;->isInitiating()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/windmill/sdk/base/WMInitManager;->sharedInstance()Lcom/windmill/sdk/base/WMInitManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/windmill/sdk/base/WMInitManager;->isInitiating()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/windmill/sdk/base/WMInitManager;->sharedInstance()Lcom/windmill/sdk/base/WMInitManager;

    move-result-object p2

    new-instance v0, Lcom/windmill/toutiao/TouTiaoAdapterProxy$2;

    invoke-direct {v0, p0}, Lcom/windmill/toutiao/TouTiaoAdapterProxy$2;-><init>(Lcom/windmill/toutiao/TouTiaoAdapterProxy;)V

    invoke-virtual {p2, p0, v0}, Lcom/windmill/sdk/base/WMInitManager;->addInitListener(Lcom/windmill/sdk/custom/WMCustomAdapterProxy;Lcom/windmill/sdk/base/WMInitManager$InitListener;)V

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--initializeADN: start"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/windmill/sdk/base/WMInitManager;->sharedInstance()Lcom/windmill/sdk/base/WMInitManager;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/windmill/sdk/base/WMInitManager;->setInitiating(Z)V

    iget-object p2, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->a:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Z

    new-instance p2, Lcom/windmill/toutiao/TouTiaoAdapterProxy$3;

    invoke-direct {p2, p0}, Lcom/windmill/toutiao/TouTiaoAdapterProxy$3;-><init>(Lcom/windmill/toutiao/TouTiaoAdapterProxy;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->start(Lcom/bytedance/sdk/openadsdk/TTAdSdk$Callback;)V

    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    sput-object p1, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitFail(ILjava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x6
        0x5
        0x3
        0x2
        0x1
    .end array-data
.end method

.method public notifyPrivacyStatusChange()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " notifyPrivacyStatusChange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->a:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->isPersonalizedAdvertisingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[{\"name\":\"personal_ads_type\",\"value\":\"1\"}]"

    goto :goto_0

    :cond_0
    const-string v0, "[{\"name\":\"personal_ads_type\",\"value\":\"0\"}]"

    :goto_0
    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->a:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/CSJConfig;->setData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->a:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->updateAdConfig(Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    :cond_1
    return-void
.end method

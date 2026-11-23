.class public Lcom/papa91/activity/EmuMenuBaseActivity;
.super Lcom/papa91/activity/EmuBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/view/MenuViewListener;
.implements Lcom/papa91/arc/view/IEmulator;


# static fields
.field public static lastWindow:I

.field public static saveSnapFrom:I


# instance fields
.field achievementDialog:Lcom/papa91/arc/dialog/SettingAchievementDialog;

.field activityQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

.field ad_host_url:Ljava/lang/String;

.field private appInfo:Landroid/content/pm/PackageInfo;

.field protected autoSlotTime:I

.field cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field gameDir:Ljava/lang/String;

.field gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

.field gson:Lcom/google/gson/Gson;

.field private isDestroyed:Z

.field private isRecreate:Z

.field private lastClickStartTime:J

.field private lastCountTime:I

.field liveTime:J

.field protected menuView:Lcom/papa91/arc/view/MenuView;

.field oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

.field performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

.field protected rolesBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;"
        }
    .end annotation
.end field

.field private rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/papa91/arc/bean/EndgameChallengeLevelBean;",
            ">;"
        }
    .end annotation
.end field

.field shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

.field showTip:I

.field skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

.field slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

.field sp:Landroid/content/SharedPreferences;

.field timeRunnable:Ljava/lang/Runnable;

.field timer:Ljava/util/Timer;

.field timerTask:Ljava/util/TimerTask;

.field url:Ljava/lang/String;

.field vipBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation
.end field

.field vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

.field vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x14

    .line 5
    .line 6
    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 10
    .line 11
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$3;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$3;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timeRunnable:Ljava/lang/Runnable;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    const-string v0, "http://anctapi.5fun.com"

    .line 35
    .line 36
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->ad_host_url:Ljava/lang/String;

    .line 37
    .line 38
    const-wide/16 v0, 0x0

    .line 39
    .line 40
    iput-wide v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    .line 41
    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/activity/EmuMenuBaseActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->isDestroyed:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/papa91/activity/EmuMenuBaseActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->lastCountTime:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/papa91/activity/EmuMenuBaseActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->lastCountTime:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/papa91/activity/EmuMenuBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showUploadRecordDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/papa91/activity/EmuMenuBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showCloseUploadRecordDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->download(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static download(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->y(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->G(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->I(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p0}, Lcom/facebook/imagepipeline/core/h;->U(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private getNextTip(Ljava/util/HashMap;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    const/4 v2, 0x2

    .line 23
    if-ge v1, v2, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 30
    .line 31
    if-le p2, v2, :cond_1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 p2, -0x1

    .line 57
    :goto_1
    return p2
.end method

.method private goVipShop(I)V
    .locals 13

    .line 11
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/VipBean;

    .line 14
    invoke-virtual {p1}, Lcom/papa91/arc/bean/VipBean;->getSub()Lcom/papa91/arc/bean/SubBean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&gameId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "4"

    const-string v3, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=4&gameName=\u5bf9\u6218\u7545\u73a9&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17
    :cond_2
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "4"

    const-string v9, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=5&gameName=\u5feb\u901f\u9009\u5173&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v12, ""

    invoke-static/range {v7 .. v12}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "4"

    const-string v2, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=3&gameName=\u66f4\u591a\u5b58\u6863&returnStatus=1&gameId="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "4"

    const-string v8, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=1&gameName=\u91d1\u624b\u6307&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v11, ""

    invoke-static/range {v6 .. v11}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "4"

    const-string v2, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=2&gameName=\u4e00\u952e\u6280\u80fd&returnStatus=1&gameId="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private synthetic lambda$restoreAdData$2(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->ad_host_url:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "/v5/game/simulatorGameInterfaceAd"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$14;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$14;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v0, v2, p1, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private synthetic lambda$restoreVipData$0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->url:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$4;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2, p1, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic lambda$showAdView$3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getHasShowAdInfo()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/gson/Gson;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Lcom/papa91/activity/EmuBaseActivity;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/papa91/arc/bean/AdInfoBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/papa91/arc/view/MenuView;->showAdImage(ZLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method private synthetic lambda$showUploadRecordDialog$4(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameOnPause()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/MenuView;->setRankTimeStop(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$showVipTip$1(II)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "_"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private showCloseUploadRecordDialog()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u662f\u5426\u4e0a\u4f20\u6392\u4f4d\u8d5b\u8bb0\u5f55\uff1f\n\u653e\u5f03\u4e0a\u4f20\u5219\u6b64\u6761\u901a\u5173\u8bb0\u5f55\u4e0d\u88ab\u8bb0\u5f55\u5230\u6392\u4f4d\u8d5b\u5185"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    .line 9
    .line 10
    .line 11
    const-string v1, "\u8fd4\u56de\u6e38\u620f"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setConfirmText(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    .line 14
    .line 15
    .line 16
    const-string v1, "\u7ee7\u7eed\u4e0a\u4f20"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setCancelText(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$17;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$17;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setListener(Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private showUploadRecordDialog()V
    .locals 8

    .line 1
    new-instance v0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/papa91/activity/u;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/papa91/activity/u;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$16;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$16;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->setListener(Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->rolesBeanList:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->setData(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/papa91/arc/view/MenuView;->getRankTime()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, p0, Lcom/papa91/activity/EmuBaseActivity;->rankPlayTime:I

    .line 34
    .line 35
    div-int/lit16 v2, v1, 0xe10

    .line 36
    .line 37
    mul-int/lit16 v3, v2, 0xe10

    .line 38
    .line 39
    sub-int v4, v1, v3

    .line 40
    .line 41
    div-int/lit8 v4, v4, 0x3c

    .line 42
    .line 43
    sub-int/2addr v1, v3

    .line 44
    mul-int/lit8 v3, v4, 0x3c

    .line 45
    .line 46
    sub-int/2addr v1, v3

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "\u901a\u5173\u7528\u65f6\uff1a"

    .line 53
    .line 54
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, "0"

    .line 58
    .line 59
    const/16 v6, 0x9

    .line 60
    .line 61
    if-le v2, v6, :cond_0

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, ":"

    .line 87
    .line 88
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    if-le v4, v6, :cond_1

    .line 92
    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    if-le v1, v6, :cond_2

    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorUploadDialog;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method private showVipTip(I)V
    .locals 3

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/papa91/arc/common/constants/StatIntents;->statShowVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 41
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    new-instance v1, Lcom/papa91/activity/x;

    invoke-direct {v1, p0}, Lcom/papa91/activity/x;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->setNoTipListener(Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;)V

    .line 42
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->show(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startTimeCount()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timeRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    const-wide/32 v2, 0xea60

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic t(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->lambda$restoreAdData$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->lambda$restoreVipData$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic w(Lcom/papa91/activity/EmuMenuBaseActivity;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuMenuBaseActivity;->lambda$showVipTip$1(II)V

    return-void
.end method

.method public static synthetic x(Lcom/papa91/activity/EmuMenuBaseActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->lambda$showUploadRecordDialog$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic y(Lcom/papa91/activity/EmuMenuBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->lambda$showAdView$3()V

    return-void
.end method


# virtual methods
.method public IsHapticFeedbackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public IsSoundEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ReadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v3, Ljava/io/FileReader;

    .line 12
    .line 13
    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    .line 19
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    move-object v1, v2

    .line 50
    goto :goto_3

    .line 51
    :catch_0
    move-exception v0

    .line 52
    move-object v1, v2

    .line 53
    goto :goto_1

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :catch_1
    move-exception v0

    .line 57
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 63
    .line 64
    .line 65
    :catch_2
    :cond_1
    :goto_2
    return-object p1

    .line 66
    :goto_3
    if-eqz v1, :cond_2

    .line 67
    .line 68
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 69
    .line 70
    .line 71
    :catch_3
    :cond_2
    throw p1
.end method

.method public addEditCheatInfo(Lorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->addEditCheat(Lorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected attachMenu()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isSingleGame:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/papa91/arc/view/MenuView;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/papa91/arc/view/MenuView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 16
    .line 17
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->setMenuViewListener()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showMenuView(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showAdView()V

    .line 30
    .line 31
    .line 32
    sget v1, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 33
    .line 34
    const/16 v2, 0x10

    .line 35
    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v0, v0}, Lcom/papa91/activity/EmuBaseActivity;->endGameAllow(ZI)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setSPVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method public cheatInfoEnable(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->cheatEnable(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public checkCheatCodeInfo(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->checkCheatCode(Ljava/lang/String;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public closeDialogWithOut(Lcom/papa91/arc/dialog/SettingDialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eq v0, p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-eq v0, p1, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    if-eq v0, p1, :cond_5

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->dismissOnly()V

    .line 55
    .line 56
    .line 57
    :cond_4
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 60
    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    if-eq v0, p1, :cond_7

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 74
    .line 75
    .line 76
    :cond_6
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 77
    .line 78
    :cond_7
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 79
    .line 80
    if-eqz v0, :cond_9

    .line 81
    .line 82
    if-eq v0, p1, :cond_9

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_8

    .line 89
    .line 90
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 93
    .line 94
    .line 95
    :cond_8
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 96
    .line 97
    :cond_9
    return-void
.end method

.method public deleteEditCheatInfo(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->deleteEditCheat(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public enableEidtCheat(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Custom_openGoldfinger"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->enableEidtCheat(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    if-eq p2, v0, :cond_2

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    if-ne p2, v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->enableEidtCheat(I)V

    .line 26
    .line 27
    .line 28
    const-string p1, "Custom_closeGoldfinger"

    .line 29
    .line 30
    invoke-virtual {p0, p1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    sget-object v3, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    if-ne p2, v0, :cond_3

    .line 39
    .line 40
    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v3, p0, p2, p1}, Lcom/papa91/arc/CContext$IVideoAdListener;->showGoldAdDialog(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->enableEidtCheat(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method

.method public endGameStartCountDown(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/papa91/arc/view/MenuView;->showEndGameCountdown()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public exitEndGame(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->isAfterFailedEndGame:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "2"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p1, "1"

    .line 11
    .line 12
    :goto_0
    const-string v0, "gameInExitVS"

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "com.emu.ad.result"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string v0, "adAction"

    .line 28
    .line 29
    const/16 v1, 0x64

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string v0, "exit"

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public forum()V
    .locals 0

    return-void
.end method

.method protected gameDestroy(Landroid/app/Activity;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Long;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    sub-long/2addr v1, v3

    .line 46
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-wide v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    .line 52
    .line 53
    add-long/2addr v3, v1

    .line 54
    iput-wide v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    .line 55
    .line 56
    :cond_2
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p1
.end method

.method public gameOnPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 3
    .line 4
    .line 5
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    .line 6
    .line 7
    return-void
.end method

.method public gameOnResume()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 3
    .line 4
    .line 5
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    .line 6
    .line 7
    return-void
.end method

.method protected gamePause(Landroid/app/Activity;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Long;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    sub-long/2addr v1, v3

    .line 48
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-wide v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    .line 62
    .line 63
    add-long/2addr v3, v1

    .line 64
    iput-wide v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    .line 65
    .line 66
    :cond_3
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1
.end method

.method protected gameResume(Landroid/app/Activity;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public getAdRequestParam()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "platform"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :try_start_0
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 10
    .line 11
    const/16 v4, 0x4000

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iput-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, "_"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 39
    .line 40
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 41
    .line 42
    const-string v4, "\'"

    .line 43
    .line 44
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    :catch_0
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, "gzRN53VWRF9BYUXomg2014"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p0, v2}, Lcom/papa91/activity/EmuBaseActivity;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v2, Lcom/papa91/arc/MyJson;

    .line 83
    .line 84
    invoke-direct {v2}, Lcom/papa91/arc/MyJson;-><init>()V

    .line 85
    .line 86
    .line 87
    :try_start_1
    const-string v3, "version"

    .line 88
    .line 89
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v3, "deviceid"

    .line 95
    .line 96
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    const-string v3, "sign"

    .line 102
    .line 103
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    .line 109
    .line 110
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/papa91/arc/MyJson;

    .line 118
    .line 119
    invoke-direct {v0}, Lcom/papa91/arc/MyJson;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v1, "simulatorType"

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getSimulatorType()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    const-string v1, "args"

    .line 132
    .line 133
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    return-object v0
.end method

.method public getAutoSlotStatus()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "_AUTO_SLOT_STATUS"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return v0
.end method

.method public getAutoStateMax()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getAutoStateTimeCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-boolean v1, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    .line 17
    .line 18
    :cond_1
    :goto_0
    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    .line 19
    .line 20
    return v0
.end method

.method public getAutoStateTimeGap()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getChangeDiskState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheatListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->cheatInfos:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCheatLoaded()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    .line 5
    return v0
.end method

.method public getCurrentChar()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->getCurChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getCustomCheatTip(Z)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getEditCheatListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getEditCheatList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getEndGameDesc()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->subTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndGameLimitTime()I
    .locals 1

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->endGameTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getEndGameScore(I)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->rules:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-gtz v1, :cond_1

    .line 15
    .line 16
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->rules:Ljava/util/ArrayList;

    .line 22
    .line 23
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->endGameLevelRules:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->endGameLevelRules:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/google/gson/JsonElement;

    .line 56
    .line 57
    const-class v3, Lcom/papa91/arc/bean/EndgameChallengeLevelBean;

    .line 58
    .line 59
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/papa91/arc/bean/EndgameChallengeLevelBean;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->rules:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "getEndGameScore: "

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->rules:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    mul-int/lit8 v0, p1, 0x64

    .line 91
    .line 92
    sget v2, Lcom/papa91/activity/EmuBaseActivity;->endGameTime:I

    .line 93
    .line 94
    mul-int/lit16 v2, v2, 0x3e8

    .line 95
    .line 96
    div-int/2addr v0, v2

    .line 97
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->rules:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v3, "C"

    .line 104
    .line 105
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Lcom/papa91/arc/bean/EndgameChallengeLevelBean;

    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/papa91/arc/bean/EndgameChallengeLevelBean;->getBoundary()Lcom/papa91/arc/bean/EndgameChallengeLevelBean$BoundaryBean;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lcom/papa91/arc/bean/EndgameChallengeLevelBean$BoundaryBean;->getLower()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-lt v0, v6, :cond_2

    .line 126
    .line 127
    invoke-virtual {v5}, Lcom/papa91/arc/bean/EndgameChallengeLevelBean$BoundaryBean;->getUpper()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-gt v0, v5, :cond_2

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/papa91/arc/bean/EndgameChallengeLevelBean;->getLevel()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p1, "  "

    .line 150
    .line 151
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    sget v1, Lcom/papa91/activity/EmuBaseActivity;->endGameTime:I

    .line 155
    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    return-object v3
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGamePlayTime()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getGameTime()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getGateData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/GateBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuTypes(I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/TypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "\u609f\u996d\u5b9a\u5236"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    sget v6, Lorg/ppsspp/ppsspp/R$drawable;->ic_cheat_vip:I

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    move v5, v6

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    const-string v9, "\u81ea\u5b9a\u4e49"

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, -0x1

    .line 31
    const/4 v12, -0x1

    .line 32
    move-object v7, p1

    .line 33
    invoke-direct/range {v7 .. v12}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x1

    .line 41
    if-ne p1, v1, :cond_1

    .line 42
    .line 43
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const-string v4, "\u6211\u7684\u5b58\u6863"

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    const/4 v6, -0x1

    .line 50
    const/4 v7, -0x1

    .line 51
    move-object v2, p1

    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 59
    .line 60
    const/4 v9, 0x1

    .line 61
    const-string v10, "\u81ea\u52a8\u5b58\u6863"

    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v12, -0x1

    .line 65
    const/4 v13, -0x1

    .line 66
    move-object v8, p1

    .line 67
    invoke-direct/range {v8 .. v13}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    const-string v3, "\u5b58\u6863\u5546\u5e97"

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->ic_slot_store_h:I

    .line 80
    .line 81
    sget v6, Lorg/ppsspp/ppsspp/R$drawable;->ic_slot_store_n:I

    .line 82
    .line 83
    move-object v1, p1

    .line 84
    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getMiniRankTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity;->miniRankTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getModSubfix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPassRewardPoint()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->getVideoAward(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getPlugVerCode()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->verCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestParam()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 6
    .line 7
    const/16 v2, 0x4000

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 23
    .line 24
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "_"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, "\'"

    .line 39
    .line 40
    const-string v3, ""

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, "gzRN53VWRF9BYUXomg2014"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v0, Lcom/papa91/arc/MyJson;

    .line 81
    .line 82
    invoke-direct {v0}, Lcom/papa91/arc/MyJson;-><init>()V

    .line 83
    .line 84
    .line 85
    :try_start_1
    const-string v1, "version"

    .line 86
    .line 87
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    const-string v1, "deviceid"

    .line 93
    .line 94
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    const-string v1, "sign"

    .line 100
    .line 101
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    new-instance v1, Lcom/papa91/arc/MyJson;

    .line 107
    .line 108
    invoke-direct {v1}, Lcom/papa91/arc/MyJson;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v2, Lorg/json/JSONArray;

    .line 112
    .line 113
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v3, "args"

    .line 117
    .line 118
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    const-string v2, "messages"

    .line 122
    .line 123
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_1
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    .line 130
    .line 131
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method

.method public getSimulatorType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSkillConfigData()Lcom/papa91/arc/bean/SkillConfigBean;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const-string v1, "/"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "/skill_config.json"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    new-instance v1, Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    .line 76
    .line 77
    const-class v2, Lcom/papa91/arc/bean/SkillConfigBean;

    .line 78
    .line 79
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/papa91/arc/bean/SkillConfigBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    return-object v0

    .line 86
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 87
    return-object v0
.end method

.method public getSkillTableData()Lcom/papa91/arc/bean/SkillTableDataBean;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "/"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "/skill_table.json"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    .line 52
    .line 53
    const-class v2, Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 64
    .line 65
    return-object v0
.end method

.method public getSpBindImages(I)[I
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget p1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_1_h:I

    .line 4
    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_2_h:I

    .line 6
    .line 7
    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_3_h:I

    .line 8
    .line 9
    sget v2, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_4_h:I

    .line 10
    .line 11
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_5_h:I

    .line 12
    .line 13
    filled-new-array {p1, v0, v1, v2, v3}, [I

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    sget p1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_1_n:I

    .line 22
    .line 23
    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_2_n:I

    .line 24
    .line 25
    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_3_n:I

    .line 26
    .line 27
    sget v2, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_4_n:I

    .line 28
    .line 29
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_5_n:I

    .line 30
    .line 31
    filled-new-array {p1, v0, v1, v2, v3}, [I

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    const/4 v0, 0x2

    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    sget p1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_1_h:I

    .line 40
    .line 41
    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_2_h:I

    .line 42
    .line 43
    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_3_h:I

    .line 44
    .line 45
    sget v2, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_4_h:I

    .line 46
    .line 47
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_5_h:I

    .line 48
    .line 49
    filled-new-array {p1, v0, v1, v2, v3}, [I

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_2
    const/4 v0, 0x3

    .line 55
    if-ne p1, v0, :cond_3

    .line 56
    .line 57
    sget p1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_1_n:I

    .line 58
    .line 59
    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_2_n:I

    .line 60
    .line 61
    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_3_n:I

    .line 62
    .line 63
    sget v2, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_4_n:I

    .line 64
    .line 65
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_5_n:I

    .line 66
    .line 67
    filled-new-array {p1, v0, v1, v2, v3}, [I

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_3
    const/4 p1, 0x5

    .line 73
    new-array p1, p1, [I

    .line 74
    .line 75
    return-object p1
.end method

.method public getSpBindsData()Lcom/papa91/arc/bean/SpBindsDataBean;
    .locals 6

    .line 1
    const-class v0, Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 2
    .line 3
    const-string v1, "/sp_binds.json"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ugcPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0, v2}, Lcom/papa91/activity/EmuMenuBaseActivity;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    .line 35
    .line 36
    invoke-virtual {v3, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 41
    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ugcPath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ugcPath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v5, "/"

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p0, v2}, Lcom/papa91/activity/EmuMenuBaseActivity;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    .line 83
    .line 84
    invoke-virtual {v3, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 89
    .line 90
    :cond_0
    if-nez v2, :cond_1

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ugcPath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p0, v1}, Lcom/papa91/activity/EmuMenuBaseActivity;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    .line 116
    .line 117
    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object v2, v0

    .line 122
    check-cast v2, Lcom/papa91/arc/bean/SpBindsDataBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    :cond_1
    return-object v2

    .line 125
    :catch_0
    :cond_2
    const/4 v0, 0x0

    .line 126
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVip()I
    .locals 1

    const/16 v0, 0xa

    return v0

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/SnkConfig;->isSnkGame(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 13
    .line 14
    return v0
.end method

.method public getVipData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public goLogin()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->sign()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public goSlotShop()V
    .locals 6

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "3"

    .line 6
    .line 7
    const-string v2, "35"

    .line 8
    .line 9
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    move-object v3, v4

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public goVipShop(IZ)V
    .locals 7

    if-eqz p2, :cond_6

    const-string p2, "&gameId="

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorCheckpointUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->goVipShop(I)V

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "4"

    const-string v3, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorCheckpointUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorGoldenFingerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->goVipShop(I)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "4"

    const-string v3, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorGoldenFingerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorOneSkillUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->goVipShop(I)V

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "4"

    const-string v3, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorOneSkillUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_6
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->goVipShop(I)V

    :goto_0
    return-void
.end method

.method protected handleAdError(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->handleAdError(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "adAction"

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    const-string p1, "extras"

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/4 v0, -0x1

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "state"

    .line 32
    .line 33
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_0
    const/4 p1, -0x1

    .line 43
    :goto_0
    iget-object p2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method protected handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "adAction"

    .line 5
    .line 6
    const/16 v0, 0x3f0

    .line 7
    .line 8
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-string v1, "extras"

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, -0x1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p2, "close"

    .line 32
    .line 33
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-string p2, "state"

    .line 38
    .line 39
    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p2

    .line 45
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 p2, -0x1

    .line 49
    :goto_0
    if-ne p1, v0, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    if-eq p2, v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/16 v0, 0x3ef

    .line 64
    .line 65
    if-ne p1, v0, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    if-eq p2, v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_1
    return-void
.end method

.method public hideAllView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->hideAllEndGameView()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public isEndGame()Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isNetAvailable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isRankAutoUpload()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity;->rankAutoUpload:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isRankGame()Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isSPVisible()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isSPVisible: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "spVisibleState: "

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 43
    .line 44
    const/16 v2, 0x10

    .line 45
    .line 46
    if-eq v0, v2, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, "_isSpVisible"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    :cond_0
    return v1
.end method

.method public isShowAchievementIcon()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "PrefDef"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 11
    .line 12
    const-string v3, "Papa_Stat_SharedPreferences"

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "isHasAchievement"

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v3, "pageVersion"

    .line 27
    .line 28
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v3, 0x2

    .line 33
    if-ne v0, v3, :cond_0

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->netState:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    :cond_0
    return v2
.end method

.method public isShowCheating()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isEndGame()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public isShowGate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowOnekey()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isEndGame()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "/"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, "/skill_table.json"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return v0

    .line 61
    :catch_0
    return v1
.end method

.method public isShowQuickSlot()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isEndGame()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public keysSetting()V
    .locals 0

    return-void
.end method

.method public loadAdVideo()V
    .locals 0

    return-void
.end method

.method public loadGateStage(I)V
    .locals 0

    return-void
.end method

.method public loadRomFinish()V
    .locals 4

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->attachMenu()V

    .line 14
    .line 15
    .line 16
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->showTimer()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 26
    .line 27
    const-wide/16 v1, 0x0

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/view/MenuView;->startTimer(J)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getAutoSlotStatus()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->setAutoSave(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$11;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$11;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v2, 0x1f4

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public loadSlotCheat(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "vba"

    .line 2
    .line 3
    const-string v1, "."

    .line 4
    .line 5
    const-string v2, "cheat"

    .line 6
    .line 7
    sget-object v3, Lcom/papa91/common/BaseAppConfig;->EMU_NAME:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "gba"

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_d

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-gtz v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_0
    :try_start_0
    new-instance v3, Lorg/ppsspp/ppsspp/d;

    .line 26
    .line 27
    invoke-direct {v3}, Lorg/ppsspp/ppsspp/d;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v3, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v5, Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-direct {v5, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Ljava/io/File;

    .line 49
    .line 50
    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, 0x0

    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_1

    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Ljava/io/File;

    .line 107
    .line 108
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance v1, Ljava/io/File;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v3, Ljava/io/File;

    .line 125
    .line 126
    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_2

    .line 134
    .line 135
    return-void

    .line 136
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p1}, Lcom/papa91/arc/util/FileUtils;->read(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_3

    .line 149
    .line 150
    return-void

    .line 151
    :cond_3
    new-instance v0, Lcom/google/gson/Gson;

    .line 152
    .line 153
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v1, ""

    .line 157
    .line 158
    invoke-static {p1, v1}, Lcom/papa91/utils/AESUtilV2;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_4

    .line 167
    .line 168
    return-void

    .line 169
    :cond_4
    const-class v1, Lorg/ppsspp/ppsspp/d;

    .line 170
    .line 171
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Lorg/ppsspp/ppsspp/d;

    .line 176
    .line 177
    if-nez p1, :cond_5

    .line 178
    .line 179
    return-void

    .line 180
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getCheatListData()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/d;->a()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-nez v1, :cond_6

    .line 189
    .line 190
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/d;->a()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-lez v1, :cond_7

    .line 199
    .line 200
    :cond_6
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/d;->a()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-interface {v1, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/d;->a()Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_7

    .line 220
    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 226
    .line 227
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    iget v4, v2, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 232
    .line 233
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    check-cast v6, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 238
    .line 239
    invoke-virtual {v6}, Lorg/ppsspp/ppsspp/CheatInfo;->getOff()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    iget v4, v2, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 244
    .line 245
    invoke-virtual {p0, v3, v4}, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatInfoEnable(II)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    check-cast v3, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 253
    .line 254
    iget v2, v2, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 255
    .line 256
    invoke-virtual {v3, v2}, Lorg/ppsspp/ppsspp/CheatInfo;->setOff(I)V

    .line 257
    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_7
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getEditCheatListData()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/d;->b()Ljava/util/List;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    if-nez v1, :cond_8

    .line 269
    .line 270
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/d;->b()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-lez v1, :cond_c

    .line 279
    .line 280
    :cond_8
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/d;->b()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-interface {v1, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/d;->b()Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    :cond_9
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_c

    .line 300
    .line 301
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 306
    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    iget-boolean v3, v1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 312
    .line 313
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    check-cast v4, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 318
    .line 319
    invoke-virtual {v4}, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable()Z

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    const/4 v6, 0x1

    .line 324
    if-eq v3, v4, :cond_a

    .line 325
    .line 326
    const/4 v3, 0x1

    .line 327
    goto :goto_2

    .line 328
    :cond_a
    const/4 v3, 0x0

    .line 329
    :goto_2
    if-eqz v3, :cond_9

    .line 330
    .line 331
    iget-boolean v3, v1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 332
    .line 333
    if-eqz v3, :cond_b

    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_b
    const/4 v6, 0x0

    .line 337
    :goto_3
    invoke-virtual {p0, v2, v6}, Lcom/papa91/activity/EmuMenuBaseActivity;->enableEidtCheat(II)V

    .line 338
    .line 339
    .line 340
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    check-cast v2, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 345
    .line 346
    iget-boolean v1, v1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 347
    .line 348
    invoke-virtual {v2, v1}, Lorg/ppsspp/ppsspp/EditCheatInfo;->setEnable(Z)V

    .line 349
    .line 350
    .line 351
    goto :goto_1

    .line 352
    :cond_c
    const-string p1, "\u5df2\u4e3a\u4f60\u540c\u6b65\u5f00\u542f\u5b58\u6863\u65f6\u542f\u7528\u7684\u91d1\u624b\u6307"

    .line 353
    .line 354
    invoke-static {p0, p1}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .line 356
    .line 357
    goto :goto_4

    .line 358
    :catch_0
    move-exception p1

    .line 359
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 360
    .line 361
    .line 362
    :cond_d
    :goto_4
    return-void
.end method

.method public loadSlotState(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->loadState(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$7;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity$7;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public modifyEditCheatInfo(ILorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->modifyEditCheat(ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected needResumeGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->needResumeGame()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public needShowBottomBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needShowTimer()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public onAdImageClick()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/gson/Gson;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->saveHasShowAdInfo(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/papa91/arc/bean/AdInfoBean;->getSub()Lcom/papa91/arc/bean/SubBean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    const-string v2, ""

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/view/MenuView;->showAdImage(ZLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public onChangeDisk()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "/"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gameDir:Ljava/lang/String;

    .line 25
    .line 26
    new-instance p1, Lcom/google/gson/GsonBuilder;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    .line 36
    .line 37
    new-instance p1, Ljava/lang/Thread;

    .line 38
    .line 39
    new-instance v0, Lcom/papa91/activity/EmuMenuBaseActivity$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$2;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Thread;->run()V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    .line 55
    .line 56
    const-string p1, ""

    .line 57
    .line 58
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreAdData()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->startTimeCount()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->isDestroyed:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timeRunnable:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->onDestroy()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->stopTimer()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->closeDialogWithOut(Lcom/papa91/arc/dialog/SettingDialog;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onHideMenu()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onLoadStageCompleted(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->onLoadStageCompleted(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/papa91/activity/EmuMenuBaseActivity$5;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1, p2}, Lcom/papa91/activity/EmuMenuBaseActivity$5;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method onMessengerConnected(Landroid/os/Messenger;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->onMessengerConnected(Landroid/os/Messenger;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/papa91/arc/common/constants/StatIntents;->setMessenger(Landroid/os/Messenger;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRankFinish(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity;->miniRankTime:I

    .line 2
    .line 3
    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/papa91/arc/dialog/SimulatorContinueDialog;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/papa91/arc/dialog/SimulatorContinueDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->setTipTitle(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorContinueDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setTipTitle(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/papa91/activity/EmuMenuBaseActivity$15;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$15;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setListener(Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method protected onRankRecordEnd(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 8
    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "\u8bb0\u5f55\u751f\u6210\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showUploadRecordDialog()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 26
    .line 27
    const-string v0, "com.join.android.app.mgsim.endgame_record_upload"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "challengeId"

    .line 33
    .line 34
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->challengeId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v0, "gameId"

    .line 40
    .line 41
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public onScreenShot()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput v3, Lcom/papa91/activity/EmuMenuBaseActivity;->saveSnapFrom:I

    .line 18
    .line 19
    invoke-static {v3}, Lcom/papa91/activity/EmuBaseActivity;->saveSnap(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onTimerTick(J)V
    .locals 0

    return-void
.end method

.method public onVipChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/papa91/activity/EmuMenuBaseActivity$13;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$13;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->onVipChanged()V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->onVipChanged()V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->onVipChanged()V

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void
.end method

.method public pauseGame()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 3
    .line 4
    .line 5
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    .line 6
    .line 7
    return-void
.end method

.method public playVideoForReward()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->scenario:I

    .line 3
    .line 4
    sget-object v0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 5
    .line 6
    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity;->sdkType:I

    .line 7
    .line 8
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Lcom/papa91/arc/CContext$IVideoAdListener;->showEndAd(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    instance-of v1, v0, Lcom/papa91/activity/EmuBaseActivity;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/papa91/activity/EmuBaseActivity;

    .line 20
    .line 21
    const-string v1, "clickGameVSAdVideo"

    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public quickSlot()V
    .locals 0

    return-void
.end method

.method public reload()V
    .locals 0

    return-void
.end method

.method public restartEndGame()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->netState:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->resetEndGame(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->endGameStart()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public restoreAdData()V
    .locals 3

    .line 1
    const-string v0, "gameUrl"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lorg/json/JSONObject;

    .line 16
    .line 17
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->ad_host_url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getAdRequestParam()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 50
    .line 51
    new-instance v2, Lcom/papa91/activity/w;

    .line 52
    .line 53
    invoke-direct {v2, p0, v0}, Lcom/papa91/activity/w;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public restoreVipData()V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "http://anv9.ctapi.5fun.com/simulator/simulator_member_fun_type"

    .line 4
    .line 5
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->url:Ljava/lang/String;

    .line 6
    .line 7
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lorg/json/JSONObject;

    .line 18
    .line 19
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "appContent"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "/simulator/simulator_member_fun_type"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getRequestParam()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 67
    .line 68
    new-instance v2, Lcom/papa91/activity/v;

    .line 69
    .line 70
    invoke-direct {v2, p0, v0}, Lcom/papa91/activity/v;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public resumeGame()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 3
    .line 4
    .line 5
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    .line 6
    .line 7
    return-void
.end method

.method public retryGetGoldFingerConfig()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->httpPostMemberInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public romPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public saveBindsFileData()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->saveBindsFile()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public saveGameConfig()V
    .locals 0

    return-void
.end method

.method public saveSlotCheat(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->EMU_NAME:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "gba"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    new-instance v0, Lorg/ppsspp/ppsspp/d;

    .line 19
    .line 20
    invoke-direct {v0}, Lorg/ppsspp/ppsspp/d;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getCheatListData()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lorg/ppsspp/ppsspp/d;->c(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getEditCheatListData()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lorg/ppsspp/ppsspp/d;->d(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v2, Ljava/io/File;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v3, "cheat"

    .line 53
    .line 54
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 71
    .line 72
    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lcom/google/gson/Gson;

    .line 76
    .line 77
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, ""

    .line 85
    .line 86
    invoke-static {p1, v0}, Lcom/papa91/utils/AESUtilV2;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0, p1}, Lcom/papa91/arc/util/FileUtils;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    return-void
.end method

.method public saveSlotState(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->jMenuSaveState(I)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$8;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity$8;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v0, Lcom/papa91/activity/EmuMenuBaseActivity$9;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$9;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v1, 0x12c

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public screenMode(I)V
    .locals 0

    return-void
.end method

.method public setAutoSlotStatus(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "_AUTO_SLOT_STATUS"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne p1, v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_0
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->stopTimer()V

    .line 42
    .line 43
    .line 44
    iput v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->startTimer()V

    .line 48
    .line 49
    .line 50
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->setAutoSave(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :goto_2
    return-void
.end method

.method public setMenuDirection(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "setMenuDirection "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/papa91/arc/view/MenuView;->setDirection(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method protected setMenuViewListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/papa91/arc/view/MenuView;->setMenuViewListener(Lcom/papa91/arc/view/MenuViewListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setSPBindData(III)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->setSPBind(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setSPMenuVisible(Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->setSPVisible(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "_isSpVisible"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public showAchievementDialog(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->achievementDialog:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 6
    .line 7
    sget-boolean v1, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, v1}, Lcom/papa91/arc/dialog/SettingAchievementDialog;-><init>(Landroid/content/Context;IZ)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->achievementDialog:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->achievementDialog:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->achievementDialog:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 20
    .line 21
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->setTourist(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->achievementDialog:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->achievementDialog:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->show()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public showAdVideo()V
    .locals 0

    return-void
.end method

.method public showAdView()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/papa91/activity/y;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/papa91/activity/y;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public showEndGameFailed(IZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/papa91/arc/view/MenuView;->endGameFailed(IZI)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public showEndGameStartView(ZIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/papa91/arc/view/MenuView;->showEndGameStart(ZIZ)V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "showVSTaskList"

    .line 11
    .line 12
    const-string p2, ""

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public showGGCodeButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMenuCheating()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->show()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-ge v3, v0, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/papa91/arc/bean/VipBean;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    return-void
.end method

.method public showMenuGate()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingGateDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingGateDialog;->show()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public showMenuOnekey()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->show()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public showMenuPerformance()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/papa91/arc/util/GameSettings;->init(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v2, v1, [Ljava/lang/String;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getGameSettingTotalLevel()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, ""

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v5, 0x0

    .line 42
    aput-object v3, v2, v5

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    sget v6, Lcom/papa91/activity/EmuMenuBaseActivity;->lastWindow:I

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    if-ne v6, v1, :cond_1

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    aput-object v1, v2, v7

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->show([Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 71
    .line 72
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$6;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$6;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public showMenuSlot()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x5

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 27
    .line 28
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 41
    .line 42
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "appContent"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setappContentUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->show()V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    const/4 v0, 0x0

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-ge v0, v1, :cond_5

    .line 109
    .line 110
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lcom/papa91/arc/bean/VipBean;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    return-void
.end method

.method public showMenuView(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget p1, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const/16 p1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_2
    :goto_0
    return-void
.end method

.method public showReceivePointDialog()V
    .locals 0

    return-void
.end method

.method public showShare(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingShareDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingShareDialog;->setIamge(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 27
    .line 28
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$12;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity$12;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingShareDialog;->setShareListener(Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public showTimeLimitedDialog1()V
    .locals 0

    return-void
.end method

.method public showTimeLimitedDialog2()V
    .locals 0

    return-void
.end method

.method public varargs showVip([Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingVipDialog;->updateVipDatas(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingVipDialog;->show([Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public showVipTip()V
    .locals 11

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getCheatListData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getCheatListData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowGate()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    move-result v1

    if-gtz v1, :cond_7

    .line 29
    sget-object v1, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v1}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorStartAdCount()I

    move-result v1

    .line 30
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_start_count"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v1, :cond_6

    if-lt v2, v1, :cond_6

    .line 31
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_has_show_tip"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "_start_time"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getDay()I

    move-result v9

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getDay()I

    move-result v8

    if-eq v1, v8, :cond_6

    .line 32
    :cond_3
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_show_tip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    invoke-interface {v1, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v5

    const/4 v8, 0x3

    if-lt v1, v8, :cond_4

    goto :goto_3

    :cond_4
    move v4, v1

    .line 33
    :goto_3
    invoke-direct {p0, v0, v4}, Lcom/papa91/activity/EmuMenuBaseActivity;->getNextTip(Ljava/util/HashMap;I)I

    move-result v0

    if-eq v0, v10, :cond_5

    .line 34
    invoke-direct {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showVipTip(I)V

    move v4, v0

    .line 35
    :cond_5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getDay()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    :cond_6
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    return-void
.end method

.method public showVipTip(II)V
    .locals 7

    const-string p1, "_show_tip"

    const-string v0, "_"

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getCheatListData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getCheatListData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowGate()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    .line 9
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    if-nez v0, :cond_3

    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    new-instance v2, Lcom/papa91/activity/EmuMenuBaseActivity$10;

    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$10;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-virtual {v0, v2}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->setNoTipListener(Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;)V

    .line 12
    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_4

    .line 13
    iput v4, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    .line 14
    :cond_4
    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    invoke-direct {p0, v1, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getNextTip(Ljava/util/HashMap;I)I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 15
    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    .line 16
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v1, v0, p2}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->show(II)V

    .line 17
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p2

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    iget v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statShowVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->resumeGame()V

    .line 19
    :goto_3
    iget-object p2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public startEndGame()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->lastClickStartTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->lastClickStartTime:J

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->endGameStart()V

    .line 22
    .line 23
    .line 24
    const-string v0, "gameInStartVS"

    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public startTimer()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timer:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/Timer;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timer:Ljava/util/Timer;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timerTask:Ljava/util/TimerTask;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 20
    .line 21
    .line 22
    :cond_1
    new-instance v2, Lcom/papa91/activity/EmuMenuBaseActivity$1;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$1;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timerTask:Ljava/util/TimerTask;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timer:Ljava/util/Timer;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    const-wide/16 v5, 0x3e8

    .line 36
    .line 37
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timer:Ljava/util/Timer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timer:Ljava/util/Timer;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timerTask:Ljava/util/TimerTask;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timerTask:Ljava/util/TimerTask;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public ugcPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public updateEndGameResultSuccess(IILcom/papa91/arc/bean/EndGameAllowBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p2, p3}, Lcom/papa91/arc/view/MenuView;->endGameSuccess(ILcom/papa91/arc/bean/EndGameAllowBean;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "gameVSSuccess"

    .line 13
    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p0, p2, p1}, Lcom/papa91/activity/EmuBaseActivity;->endGameAllow(ZI)V

    .line 20
    .line 21
    .line 22
    const-string p1, "gameVSFail"

    .line 23
    .line 24
    invoke-virtual {p0, p1, v1}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public vibrate(Z)V
    .locals 0

    return-void
.end method

.method public voice(Z)V
    .locals 0

    return-void
.end method

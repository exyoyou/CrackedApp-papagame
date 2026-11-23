.class public Lcom/windmill/sdk/WindMillAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/windmill/sdk/WindMillAd; = null

.field public static mAppId:Ljava/lang/String; = ""

.field private static o:Landroid/os/HandlerThread;


# instance fields
.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Lcom/windmill/sdk/WindMillUserAgeStatus;

.field private g:Lcom/windmill/sdk/WindMillConsentStatus;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Lcom/windmill/sdk/WMAdConfig;

.field private m:Lcom/windmill/sdk/WMNetworkInitListener;

.field private n:Ljava/lang/StringBuffer;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Lcom/windmill/sdk/WMNetworkConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/WindMillAd;->b:Z

    .line 6
    .line 7
    sget-object v1, Lcom/windmill/sdk/WindMillUserAgeStatus;->WindAgeRestrictedStatusUnknown:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/windmill/sdk/WindMillAd;->f:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 10
    .line 11
    sget-object v1, Lcom/windmill/sdk/WindMillConsentStatus;->UNKNOWN:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/windmill/sdk/WindMillAd;->g:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/windmill/sdk/WindMillAd;->h:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/windmill/sdk/WindMillAd;->i:Z

    .line 19
    .line 20
    iput v0, p0, Lcom/windmill/sdk/WindMillAd;->j:I

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuffer;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/windmill/sdk/WindMillAd;->n:Ljava/lang/StringBuffer;

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/windmill/sdk/WindMillAd;->p:Z

    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAd;->q:Ljava/lang/String;

    .line 34
    .line 35
    sput-object v0, Lcom/windmill/sdk/WindMillAd;->mAppId:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v0, Landroid/os/Handler;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAd;->e:Landroid/os/Handler;

    .line 47
    .line 48
    return-void
.end method

.method private a()V
    .locals 7

    .line 2
    new-instance v0, Lcom/windmill/sdk/point/PointEntityWMCommon;

    invoke-direct {v0}, Lcom/windmill/sdk/point/PointEntityWMCommon;-><init>()V

    const-string v1, "666"

    .line 3
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string v1, "aggre_init"

    .line 4
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    const-string v1, "1"

    .line 5
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setIs_mediation(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/WMSdkConfig;->isDisable_up_location()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/czhj/sdk/common/ClientMetadata;->setEnableLocation(Z)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v5, p0, Lcom/windmill/sdk/WindMillAd;->l:Lcom/windmill/sdk/WMAdConfig;

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v5}, Lcom/windmill/sdk/WMAdConfig;->getCustomController()Lcom/windmill/sdk/WMCustomController;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v5}, Lcom/windmill/sdk/WMCustomController;->isCanUseLocation()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/windmill/sdk/WMCustomController;->getLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v3, 0x1

    .line 11
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 12
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/d;->b()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 13
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/d;->b()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "custom_info"

    .line 15
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, v4}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 17
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setLocation_switch(Ljava/lang/String;)V

    .line 19
    iget-boolean v2, p0, Lcom/windmill/sdk/WindMillAd;->i:Z

    const-string v3, "0"

    if-eqz v2, :cond_5

    move-object v2, v3

    goto :goto_3

    :cond_5
    move-object v2, v1

    :goto_3
    const-string v5, "is_minor"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-boolean v2, p0, Lcom/windmill/sdk/WindMillAd;->h:Z

    if-eqz v2, :cond_6

    move-object v1, v3

    :cond_6
    const-string v2, "is_unpersonalized"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v0, v4}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    .line 22
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/network/Networking;->AddSigmobServerURL(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getLogUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/network/Networking;->AddSigmobServerURL(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getStrategyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/network/Networking;->AddSigmobServerURL(Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeMill(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/WindMillAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/WindMillAd;->c()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 2
    new-instance v0, Lcom/czhj/sdk/common/network/JsonRequest;

    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getGDPRRegionURL()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/windmill/sdk/WindMillAd$1;

    invoke-direct {v2, p0}, Lcom/windmill/sdk/WindMillAd$1;-><init>(Lcom/windmill/sdk/WindMillAd;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/czhj/sdk/common/network/JsonRequest;-><init>(Ljava/lang/String;Lcom/czhj/sdk/common/network/JsonRequest$Listener;I)V

    .line 3
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;

    return-void
.end method

.method static synthetic b(Lcom/windmill/sdk/WindMillAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/WindMillAd;->a()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/windmill/sdk/WindMillAd;->i:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/c;->a(ZZ)V

    .line 3
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/windmill/sdk/WindMillAd;->h:Z

    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/c;->b(ZZ)V

    .line 4
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAd;->getUserAge()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/c;->a(IZ)V

    .line 5
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAd;->getAgeRestrictedStatus()Lcom/windmill/sdk/WindMillUserAgeStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillUserAgeStatus;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/c;->b(IZ)V

    .line 6
    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v0

    new-instance v1, Lcom/windmill/sdk/WindMillAd$2;

    invoke-direct {v1, p0}, Lcom/windmill/sdk/WindMillAd$2;-><init>(Lcom/windmill/sdk/WindMillAd;)V

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/windmill/sdk/WindMillAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/WindMillAd;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/czhj/sdk/common/utils/ImageManager;->clearCache()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private e()Lcom/windmill/sdk/WindMillConsentStatus;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAd;->getUserGDPRConsentStatus()Lcom/windmill/sdk/WindMillConsentStatus;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->g:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/WindMillConsentStatus;->UNKNOWN:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 7
    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getConsentStatus()Lcom/sigmob/windad/consent/ConsentStatus;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v2, Lcom/windmill/sdk/WindMillAd$3;->a:[I

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ConsentStatus;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    aget v0, v2, v0

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v0, v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq v0, v2, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    if-eq v0, v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0, v1}, Lcom/windmill/sdk/WindMillAd;->setUserGDPRConsentStatus(Lcom/windmill/sdk/WindMillConsentStatus;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lcom/windmill/sdk/WindMillConsentStatus;->DENIED:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/WindMillAd;->setUserGDPRConsentStatus(Lcom/windmill/sdk/WindMillConsentStatus;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Lcom/windmill/sdk/WindMillConsentStatus;->ACCEPT:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/WindMillAd;->setUserGDPRConsentStatus(Lcom/windmill/sdk/WindMillConsentStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->g:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 54
    .line 55
    return-object v0
.end method

.method private f()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->r:Lcom/windmill/sdk/WMNetworkConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/windmill/sdk/common/h;->a()Lcom/windmill/sdk/common/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/windmill/sdk/WindMillAd;->r:Lcom/windmill/sdk/WMNetworkConfig;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/windmill/sdk/WMNetworkConfig;->getAdnInitConfigList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/h;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getUserId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.8.7"

    return-object v0
.end method

.method public static isMainUI()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public static requestPermission(Landroid/app/Activity;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x17

    .line 6
    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/czhj/sdk/common/ClientMetadata;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 16
    .line 17
    invoke-static {p0, v2}, Lcom/czhj/sdk/common/ClientMetadata;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 22
    .line 23
    invoke-static {p0, v4}, Lcom/czhj/sdk/common/ClientMetadata;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    :cond_0
    filled-new-array {v0, v2, v4}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {p0, v0, v1}, Lq0/h;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/czhj/sdk/common/ClientMetadata;->setUserId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static sharedAds()Lcom/windmill/sdk/WindMillAd;
    .locals 2

    .line 1
    sget-object v0, Lcom/windmill/sdk/WindMillAd;->a:Lcom/windmill/sdk/WindMillAd;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/windmill/sdk/WindMillAd;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/windmill/sdk/WindMillAd;->a:Lcom/windmill/sdk/WindMillAd;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/windmill/sdk/WindMillAd;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/windmill/sdk/WindMillAd;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/windmill/sdk/WindMillAd;->a:Lcom/windmill/sdk/WindMillAd;

    .line 18
    .line 19
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/windmill/sdk/WindMillAd;->a:Lcom/windmill/sdk/WindMillAd;

    .line 30
    .line 31
    return-object v0
.end method


# virtual methods
.method public addFilter(Lcom/windmill/sdk/models/WMFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/windmill/sdk/WMWaterfallFilter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/d;->a(Lcom/windmill/sdk/models/WMFilter;)V

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1

    .line 18
    :cond_0
    :goto_0
    return-void
.end method

.method public addQuickAppScheme(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scheme"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/windmill/sdk/utils/g;->a(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public canCollectPersonalInformation()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/windmill/sdk/common/c;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public enableQuickAppCheck(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableQuickAppCheck"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/windmill/sdk/utils/g;->a(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getAdConfig()Lcom/windmill/sdk/WMAdConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->l:Lcom/windmill/sdk/WMAdConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAgeRestrictedStatus()Lcom/windmill/sdk/WindMillUserAgeStatus;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->f:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/windmill/sdk/WindMillUserAgeStatus;->WindAgeRestrictedStatusUnknown:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "age_restricted_status"

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillUserAgeStatus;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget-object v2, Lcom/windmill/sdk/WindMillUserAgeStatus;->WindAgeRestrictedStatusNO:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillUserAgeStatus;->getValue()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v0, v3, :cond_0

    .line 32
    .line 33
    iput-object v2, p0, Lcom/windmill/sdk/WindMillAd;->f:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v2, Lcom/windmill/sdk/WindMillUserAgeStatus;->WindAgeRestrictedStatusYES:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillUserAgeStatus;->getValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ne v0, v3, :cond_1

    .line 43
    .line 44
    iput-object v2, p0, Lcom/windmill/sdk/WindMillAd;->f:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput-object v1, p0, Lcom/windmill/sdk/WindMillAd;->f:Lcom/windmill/sdk/WindMillUserAgeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :catchall_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->f:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 50
    .line 51
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/windmill/sdk/WindMillAd;->mAppId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->e:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAd;->e:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->e:Landroid/os/Handler;

    .line 17
    .line 18
    return-object v0
.end method

.method public getNetworkInitListener()Lcom/windmill/sdk/WMNetworkInitListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->m:Lcom/windmill/sdk/WMNetworkInitListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOaidVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTobidHandlerLooper()Landroid/os/Looper;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/WindMillAd;->o:Landroid/os/HandlerThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    .line 7
    .line 8
    const-string v1, "Tobid_HandlerThread"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/windmill/sdk/WindMillAd;->o:Landroid/os/HandlerThread;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/windmill/sdk/WindMillAd;->o:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lcom/windmill/sdk/WindMillAd;->o:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-object v0, Lcom/windmill/sdk/WindMillAd;->o:Landroid/os/HandlerThread;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    monitor-exit p0

    .line 35
    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v0
.end method

.method public getUserAge()I
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/windmill/sdk/WindMillAd;->j:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "user_age"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/windmill/sdk/WindMillAd;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :catchall_0
    :cond_0
    iget v0, p0, Lcom/windmill/sdk/WindMillAd;->j:I

    .line 23
    .line 24
    return v0
.end method

.method public getUserGDPRConsentStatus()Lcom/windmill/sdk/WindMillConsentStatus;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->g:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/windmill/sdk/WindMillConsentStatus;->UNKNOWN:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "consent_status"

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillConsentStatus;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget-object v2, Lcom/windmill/sdk/WindMillConsentStatus;->ACCEPT:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillConsentStatus;->getValue()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v0, v3, :cond_0

    .line 32
    .line 33
    iput-object v2, p0, Lcom/windmill/sdk/WindMillAd;->g:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v2, Lcom/windmill/sdk/WindMillConsentStatus;->DENIED:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillConsentStatus;->getValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ne v0, v3, :cond_1

    .line 43
    .line 44
    iput-object v2, p0, Lcom/windmill/sdk/WindMillAd;->g:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput-object v1, p0, Lcom/windmill/sdk/WindMillAd;->g:Lcom/windmill/sdk/WindMillConsentStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :catchall_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->g:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 50
    .line 51
    return-object v0
.end method

.method public getWxOpenAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public initCustomMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/d;->a(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public initPlacementCustomMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "placementId",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/windmill/sdk/strategy/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public initSDK(Landroid/content/Context;Ljava/lang/String;Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appId",
            "initListener"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p1, :cond_a

    .line 4
    .line 5
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/windmill/sdk/utils/l;->a()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0xca

    .line 18
    .line 19
    if-lt v2, v1, :cond_9

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/windmill/sdk/WindMillAd;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    .line 23
    if-nez v1, :cond_7

    .line 24
    .line 25
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "-----initSDK:version "

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->getVersion()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " c_version"

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object p2, Lcom/windmill/sdk/WindMillAd;->mAppId:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/d;->b()Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "installTime"

    .line 74
    .line 75
    iget-object v3, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v3}, Lcom/windmill/sdk/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 85
    .line 86
    const-string v2, "windmill"

    .line 87
    .line 88
    invoke-static {v1, v2}, Lcom/windmill/sdk/utils/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_1

    .line 97
    .line 98
    iget-object v2, p0, Lcom/windmill/sdk/WindMillAd;->n:Ljava/lang/StringBuffer;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/ClientMetadata;->initialize(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v1}, Lcom/windmill/sdk/WindMillAd;->a(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/windmill/sdk/WindMillAd;->l:Lcom/windmill/sdk/WMAdConfig;

    .line 118
    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/windmill/sdk/WMAdConfig;->getCustomController()Lcom/windmill/sdk/WMCustomController;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    iget-object v1, p0, Lcom/windmill/sdk/WindMillAd;->l:Lcom/windmill/sdk/WMAdConfig;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/windmill/sdk/WMAdConfig;->getCustomController()Lcom/windmill/sdk/WMCustomController;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2, v1}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/WMCustomController;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const/4 v2, 0x0

    .line 146
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/WMCustomController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    .line 149
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/windmill/sdk/strategy/i;->a()Lcom/windmill/sdk/strategy/i;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/i;->a(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lcom/windmill/sdk/strategy/c;->a()Lcom/windmill/sdk/strategy/c;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/c;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_0
    move-exception v1

    .line 167
    :try_start_3
    iget-object v2, p0, Lcom/windmill/sdk/WindMillAd;->n:Ljava/lang/StringBuffer;

    .line 168
    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v4, "WMFrequencyManager: "

    .line 175
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    .line 192
    .line 193
    :goto_1
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/common/c;->a(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iget-boolean v2, p0, Lcom/windmill/sdk/WindMillAd;->i:Z

    .line 207
    .line 208
    invoke-virtual {v1, v2, v0}, Lcom/windmill/sdk/common/c;->a(ZZ)V

    .line 209
    .line 210
    .line 211
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iget-boolean v2, p0, Lcom/windmill/sdk/WindMillAd;->h:Z

    .line 216
    .line 217
    invoke-virtual {v1, v2, v0}, Lcom/windmill/sdk/common/c;->b(ZZ)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAd;->getUserAge()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-virtual {v1, v2, v0}, Lcom/windmill/sdk/common/c;->a(IZ)V

    .line 229
    .line 230
    .line 231
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAd;->getAgeRestrictedStatus()Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillUserAgeStatus;->getValue()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    invoke-virtual {v1, v2, v0}, Lcom/windmill/sdk/common/c;->b(IZ)V

    .line 244
    .line 245
    .line 246
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-direct {p0}, Lcom/windmill/sdk/WindMillAd;->e()Lcom/windmill/sdk/WindMillConsentStatus;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillConsentStatus;->getValue()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    invoke-virtual {v1, v2, v0}, Lcom/windmill/sdk/common/c;->c(IZ)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Landroid/app/Application;

    .line 266
    .line 267
    invoke-static {v0}, Lcom/windmill/sdk/common/o;->a(Landroid/app/Application;)Lcom/windmill/sdk/common/o;

    .line 268
    .line 269
    .line 270
    invoke-direct {p0}, Lcom/windmill/sdk/WindMillAd;->f()V

    .line 271
    .line 272
    .line 273
    invoke-direct {p0}, Lcom/windmill/sdk/WindMillAd;->b()V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->c:Landroid/content/Context;

    .line 277
    .line 278
    invoke-static {v0}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    const-string v1, "init_status"

    .line 283
    .line 284
    const-string v2, ""

    .line 285
    .line 286
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_3

    .line 295
    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    const-string v1, "init_status"

    .line 301
    .line 302
    const-string v2, "1"

    .line 303
    .line 304
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    .line 306
    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_3
    const-string v2, "1"

    .line 312
    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_4

    .line 318
    .line 319
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    const-string v1, "init_status"

    .line 324
    .line 325
    const-string v2, "2"

    .line 326
    .line 327
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    .line 329
    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    .line 332
    .line 333
    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/windmill/sdk/WindMillAd;->b:Z

    .line 335
    .line 336
    if-eqz p3, :cond_5

    .line 337
    .line 338
    invoke-interface {p3}, Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;->onInitSuccess()V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->n:Ljava/lang/StringBuffer;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-nez v0, :cond_5

    .line 352
    .line 353
    const-string v1, "error"

    .line 354
    .line 355
    const-string v2, "init_exception"

    .line 356
    .line 357
    const/4 v3, 0x0

    .line 358
    const/4 v4, 0x0

    .line 359
    const/4 v5, 0x0

    .line 360
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_INIT_FAIL:Lcom/windmill/sdk/WindMillError;

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    const-string v7, ""

    .line 367
    .line 368
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->n:Ljava/lang/StringBuffer;

    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v8

    .line 374
    const/4 v9, 0x0

    .line 375
    invoke-static/range {v1 .. v9}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V

    .line 376
    .line 377
    .line 378
    :cond_5
    invoke-static {p1, p2}, Lcom/windmill/sdk/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    .line 380
    .line 381
    goto :goto_3

    .line 382
    :catchall_0
    move-exception p1

    .line 383
    :try_start_4
    new-instance p2, Ljava/io/StringWriter;

    .line 384
    .line 385
    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 386
    .line 387
    .line 388
    new-instance v0, Ljava/io/PrintWriter;

    .line 389
    .line 390
    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    iget-boolean p2, p0, Lcom/windmill/sdk/WindMillAd;->b:Z

    .line 401
    .line 402
    if-nez p2, :cond_6

    .line 403
    .line 404
    if-eqz p3, :cond_6

    .line 405
    .line 406
    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_INIT_FAIL:Lcom/windmill/sdk/WindMillError;

    .line 407
    .line 408
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 409
    .line 410
    .line 411
    move-result p2

    .line 412
    invoke-interface {p3, p2, v8}, Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;->onInitFailed(ILjava/lang/String;)V

    .line 413
    .line 414
    .line 415
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    const-string p3, "----startWithOptions throwable:"

    .line 421
    .line 422
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string p1, " "

    .line 433
    .line 434
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    const-string v1, "error"

    .line 448
    .line 449
    const-string v2, "init"

    .line 450
    .line 451
    const/4 v3, 0x0

    .line 452
    const/4 v4, 0x0

    .line 453
    const/4 v5, 0x0

    .line 454
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_INIT_FAIL:Lcom/windmill/sdk/WindMillError;

    .line 455
    .line 456
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    const-string v7, ""

    .line 461
    .line 462
    const/4 v9, 0x0

    .line 463
    invoke-static/range {v1 .. v9}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 464
    .line 465
    .line 466
    goto :goto_3

    .line 467
    :catchall_1
    move-exception p1

    .line 468
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 469
    .line 470
    .line 471
    goto :goto_3

    .line 472
    :cond_7
    if-eqz p3, :cond_8

    .line 473
    .line 474
    invoke-interface {p3}, Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;->onInitSuccess()V

    .line 475
    .line 476
    .line 477
    :cond_8
    :goto_3
    const-string p1, "already startWithOptions"

    .line 478
    .line 479
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget-boolean p1, p0, Lcom/windmill/sdk/WindMillAd;->b:Z

    .line 483
    .line 484
    monitor-exit p0

    .line 485
    return p1

    .line 486
    :cond_9
    new-instance p1, Ljava/lang/SecurityException;

    .line 487
    .line 488
    new-instance p2, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .line 492
    .line 493
    const-string p3, "please integration right common version and must be equal or higher than "

    .line 494
    .line 495
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-static {}, Lcom/windmill/sdk/utils/l;->a()I

    .line 499
    .line 500
    .line 501
    move-result p3

    .line 502
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p2

    .line 509
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    throw p1

    .line 513
    :cond_a
    :goto_4
    const-string p1, "startWithOptions with invalid parameter!"

    .line 514
    .line 515
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    if-eqz p3, :cond_b

    .line 519
    .line 520
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_INIT_FAIL:Lcom/windmill/sdk/WindMillError;

    .line 521
    .line 522
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 523
    .line 524
    .line 525
    move-result p1

    .line 526
    const-string p2, "AppId \u4e3a\u7a7a\u6216\u8005context\u4e3a\u7a7a"

    .line 527
    .line 528
    invoke-interface {p3, p1, p2}, Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;->onInitFailed(ILjava/lang/String;)V

    .line 529
    .line 530
    .line 531
    :cond_b
    monitor-exit p0

    .line 532
    return v0

    .line 533
    :catchall_2
    move-exception p1

    .line 534
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 535
    throw p1
.end method

.method public isAdult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/WindMillAd;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/WindMillAd;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized isNeedInit(Ljava/lang/Integer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelId"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {}, Lcom/windmill/sdk/common/h;->a()Lcom/windmill/sdk/common/h;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/h;->a(Ljava/lang/Integer;)Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getInitStatus()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, -0x1

    .line 20
    if-eq v2, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getInitStatus()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ne p1, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    .line 32
    return v1

    .line 33
    :cond_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    monitor-exit p0

    .line 35
    return v1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 39
    :catchall_1
    monitor-exit p0

    .line 40
    return v0
.end method

.method public isPersonalizedAdvertisingOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/WindMillAd;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public isQuickApp(Landroid/content/Intent;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/windmill/sdk/utils/g;->a(Landroid/content/Intent;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isSupportMultiProcess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/WindMillAd;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public varargs removeFilterWithPlacementIds([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tobidIds"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/d;->a([Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public removeFilters()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/d;->g()V

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v0
.end method

.method public varargs removeIdsFilter([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tobidIds"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/d;->a([Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public reportSceneExposure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sceneId",
            "sceneDesc"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/windmill/sdk/point/PointEntityWMCommon;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/windmill/sdk/point/PointEntityWMCommon;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "608"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "scene_show"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/point/PointEntityWMCommon;->setSceneId(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Lcom/windmill/sdk/point/PointEntityWMCommon;->setSceneId(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const-string p1, "1"

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setIs_mediation(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1
.end method

.method public setAdult(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAdult"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/WindMillAd;->i:Z

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/windmill/sdk/WindMillAd;->b:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-boolean v0, p0, Lcom/windmill/sdk/WindMillAd;->i:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/windmill/sdk/common/c;->a(ZZ)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setDebugEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    sput-boolean p1, Lcom/windmill/sdk/base/WMLogUtil;->isEnableLog:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 9
    .line 10
    :goto_0
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setFilterNetworkFirmIdList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "placementId",
            "networkFirmIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/windmill/sdk/strategy/d;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public setInitNetworkConfig(Lcom/windmill/sdk/WMNetworkConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkConfig"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAd;->r:Lcom/windmill/sdk/WMNetworkConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setIsAgeRestrictedUser(Lcom/windmill/sdk/WindMillUserAgeStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ageRestrictedUserStatus"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAd;->f:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/windmill/sdk/WindMillAd;->b:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd;->f:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillUserAgeStatus;->getValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/windmill/sdk/common/c;->b(IZ)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setLocalStrategyAssetPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dirName"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/windmill/sdk/strategy/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public setNetworkInitListener(Lcom/windmill/sdk/WMNetworkInitListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/windmill/sdk/utils/f;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/windmill/sdk/utils/f;-><init>(Lcom/windmill/sdk/WMNetworkInitListener;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAd;->m:Lcom/windmill/sdk/WMNetworkInitListener;

    .line 7
    .line 8
    return-void
.end method

.method public setOAIDCertPem(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certPem"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/czhj/sdk/common/ClientMetadata;->setOAIDCertPem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    const-string p1, "not support OAID Module"

    .line 6
    .line 7
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public setOaidVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oaidVersion"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAd;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPersonalizedAdvertisingOn(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPersonalizedAdvertisingOn"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/WindMillAd;->h:Z

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/windmill/sdk/WindMillAd;->b:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-boolean v0, p0, Lcom/windmill/sdk/WindMillAd;->h:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/windmill/sdk/common/c;->b(ZZ)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setSupportMultiProcess(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multiProcess"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/WindMillAd;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUserAge(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "age"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/WindMillAd;->j:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/windmill/sdk/WindMillAd;->b:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/windmill/sdk/common/c;->a(IZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setUserGDPRConsentStatus(Lcom/windmill/sdk/WindMillConsentStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAd;->g:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/windmill/sdk/WindMillAd;->b:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillConsentStatus;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/windmill/sdk/common/c;->c(IZ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setWxOpenAppId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wxOpenAppId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAd;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public startWithAppId(Landroid/content/Context;Ljava/lang/String;Lcom/windmill/sdk/WMAdConfig;Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appId",
            "adConfig",
            "initListener"
        }
    .end annotation

    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/WindMillAd;->l:Lcom/windmill/sdk/WMAdConfig;

    .line 6
    invoke-virtual {p0, p1, p2, p4}, Lcom/windmill/sdk/WindMillAd;->startWithAppId(Landroid/content/Context;Ljava/lang/String;Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;)V

    return-void
.end method

.method public startWithAppId(Landroid/content/Context;Ljava/lang/String;Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appId",
            "initListener"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/windmill/sdk/WindMillAd;->initSDK(Landroid/content/Context;Ljava/lang/String;Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;)Z

    return-void
.end method

.method public startWithAppId(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "appId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/windmill/sdk/WindMillAd;->initSDK(Landroid/content/Context;Ljava/lang/String;Lcom/windmill/sdk/WindMillAd$WindMillAdInitListener;)Z

    move-result p1

    return p1
.end method

.method public startWithAppId(Landroid/content/Context;Ljava/lang/String;Lcom/windmill/sdk/WMAdConfig;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appId",
            "adConfig"
        }
    .end annotation

    .line 3
    iput-object p3, p0, Lcom/windmill/sdk/WindMillAd;->l:Lcom/windmill/sdk/WMAdConfig;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/WindMillAd;->startWithAppId(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

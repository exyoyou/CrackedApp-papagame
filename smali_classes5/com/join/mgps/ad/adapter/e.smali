.class public Lcom/join/mgps/ad/adapter/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Le6/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appId",
            "callback"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-boolean v0, Lcom/join/mgps/ad/adapter/e;->a:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/16 v1, 0x12

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAd;->setUserAge(I)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAd;->setAdult(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAd;->setPersonalizedAdvertisingOn(Z)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/windmill/sdk/WindMillUserAgeStatus;->WindAgeRestrictedStatusNO:Lcom/windmill/sdk/WindMillUserAgeStatus;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/WindMillAd;->setIsAgeRestrictedUser(Lcom/windmill/sdk/WindMillUserAgeStatus;)V

    .line 46
    .line 47
    .line 48
    sget-object v2, Lcom/windmill/sdk/WindMillConsentStatus;->ACCEPT:Lcom/windmill/sdk/WindMillConsentStatus;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/WindMillAd;->setUserGDPRConsentStatus(Lcom/windmill/sdk/WindMillConsentStatus;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0, p1}, Lcom/windmill/sdk/WindMillAd;->startWithAppId(Landroid/content/Context;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAd;->setSupportMultiProcess(Z)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    invoke-virtual {v0, p0}, Lcom/windmill/sdk/WindMillAd;->setDebugEnable(Z)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Lcom/join/mgps/ad/adapter/e$a;

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/join/mgps/ad/adapter/e$a;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Lcom/windmill/sdk/WindMillAd;->setNetworkInitListener(Lcom/windmill/sdk/WMNetworkInitListener;)V

    .line 69
    .line 70
    .line 71
    sput-boolean v1, Lcom/join/mgps/ad/adapter/e;->a:Z

    .line 72
    .line 73
    :cond_1
    if-eqz p2, :cond_2

    .line 74
    .line 75
    invoke-interface {p2}, Le6/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    return-void
.end method

.class public Lcom/windmill/sdk/splash/WMSplashAdRequest;
.super Lcom/windmill/sdk/WindMillAdRequest;
.source "SourceFile"


# instance fields
.field private appDesc:Ljava/lang/String;

.field private appTitle:Ljava/lang/String;

.field private disableAutoHideAd:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "placementId",
            "userId",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/windmill/sdk/WindMillAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/windmill/sdk/splash/WMSplashAdRequest;->disableAutoHideAd:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "placementId",
            "userId",
            "options",
            "appTitle",
            "appDesc",
            "disableAutoHideAd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/windmill/sdk/WindMillAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 6
    iput-object p4, p0, Lcom/windmill/sdk/splash/WMSplashAdRequest;->appTitle:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/windmill/sdk/splash/WMSplashAdRequest;->appDesc:Ljava/lang/String;

    .line 8
    iput-boolean p6, p0, Lcom/windmill/sdk/splash/WMSplashAdRequest;->disableAutoHideAd:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "placementId",
            "userId",
            "options",
            "disableAutoHideAd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/windmill/sdk/WindMillAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 4
    iput-boolean p4, p0, Lcom/windmill/sdk/splash/WMSplashAdRequest;->disableAutoHideAd:Z

    return-void
.end method


# virtual methods
.method public getAppDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAdRequest;->appDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAdRequest;->appTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDisableAutoHideAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/splash/WMSplashAdRequest;->disableAutoHideAd:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAppDesc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appDesc"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/splash/WMSplashAdRequest;->appDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAppTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appTitle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/splash/WMSplashAdRequest;->appTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDisableAutoHideAd(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disableAutoHideAd"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/splash/WMSplashAdRequest;->disableAutoHideAd:Z

    .line 2
    .line 3
    return-void
.end method

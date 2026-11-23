.class public Lcom/join/mgps/ad/e;
.super Lcom/join/mgps/ad/c;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/ad/c<",
        "Lcom/qq/e/ads/nativ/NativeExpressADView;",
        ">;",
        "Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;"
    }
.end annotation


# static fields
.field public static q:Z


# instance fields
.field private m:Lcom/qq/e/ads/nativ/NativeExpressAD;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field protected p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "appId",
            "posId"
        }
    .end annotation

    .line 1
    const-string v0, "GDT"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/join/mgps/ad/c;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/ad/e;->n:Ljava/util/List;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/join/mgps/ad/e;->o:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/ad/e;->p:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/ad/c;->g:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-boolean v0, Lcom/join/mgps/ad/e;->q:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/ad/c;->g:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/ad/c;->h:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/qq/e/comm/managers/GDTAdSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setChannel(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setEnableMediationTool(Z)V

    .line 41
    .line 42
    .line 43
    sput-boolean v0, Lcom/join/mgps/ad/e;->q:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/ad/o;->onInitSuccess()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/ad/o;->onInitSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public b(III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "width",
            "height"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ad/e;->o:Z

    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/ad/c;->g:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/ad/e;->p:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/join/mgps/ad/e;->p:Z

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/ad/e;->m:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/ad/c;->g:Landroid/content/Context;

    .line 43
    .line 44
    new-instance v2, Lcom/qq/e/ads/nativ/ADSize;

    .line 45
    .line 46
    invoke-direct {v2, p2, p3}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/join/mgps/ad/c;->i:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {v0, v1, v2, p2, p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/ad/e;->m:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 55
    .line 56
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/ad/e;->m:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    const/4 p1, -0x1

    .line 67
    const-string p2, "\u5e7f\u544a\u521d\u59cb\u5316\u9519\u8bef"

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/ad/e;->onError(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/e;->n:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->destroy()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/join/mgps/ad/e;->n:Ljava/util/List;

    .line 27
    .line 28
    return-void
.end method

.method public onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ad/c;->k:Lcom/join/mgps/ad/c$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/join/mgps/ad/c$a;->onAdClick()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/c;->k:Lcom/join/mgps/ad/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/join/mgps/ad/c$a;->a(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ad/c;->k:Lcom/join/mgps/ad/c$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/join/mgps/ad/c$a;->onAdShow()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ad/e;->o:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/ad/e;->p:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/e;->n:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/ad/c;->k:Lcom/join/mgps/ad/c$a;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/join/mgps/ad/c$a;->onADLoaded(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "err",
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/ad/o;->onError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/ad/e;->o:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/ad/e;->p:Z

    .line 8
    .line 9
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/ad/e;->o:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/ad/e;->p:Z

    .line 5
    .line 6
    return-void
.end method

.method public onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    return-void
.end method

.method public onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    return-void
.end method

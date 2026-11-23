.class public Lcom/join/mgps/ad/w;
.super Lcom/join/mgps/ad/c;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/ad/c<",
        "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
        ">;",
        "Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;",
        "Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;"
    }
.end annotation


# instance fields
.field private m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field protected p:Z

.field private q:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
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
    const-string v0, "TT"

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
    iput-object p1, p0, Lcom/join/mgps/ad/w;->n:Ljava/util/List;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/join/mgps/ad/w;->o:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/ad/w;->p:Z

    .line 17
    .line 18
    return-void
.end method

.method private f(III)V
    .locals 2
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
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/ad/c;->i:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    int-to-float p2, p2

    .line 17
    int-to-float p3, p3

    .line 18
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/join/mgps/ad/w;->q:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
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
    iget-object v0, p0, Lcom/join/mgps/ad/c;->g:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/ad/c;->h:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Lcom/join/mgps/ad/v;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lcom/join/mgps/ad/v;-><init>(Lcom/join/mgps/ad/w;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lcom/join/mgps/ad/adapter/f;->d(Landroid/content/Context;Ljava/lang/String;Le6/a;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public b(III)V
    .locals 5
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
    const-string v0, "\u5e7f\u544a\u52a0\u8f7d\u9519\u8bef"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/join/mgps/ad/c;->g:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v3, v4}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iput-boolean v2, p0, Lcom/join/mgps/ad/w;->o:Z

    .line 30
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/ad/w;->f(III)V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/join/mgps/ad/w;->p:Z

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/join/mgps/ad/w;->p:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/ad/w;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/join/mgps/ad/c;->g:Landroid/content/Context;

    .line 57
    .line 58
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/join/mgps/ad/w;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/ad/w;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget-object p2, p0, Lcom/join/mgps/ad/w;->q:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 69
    .line 70
    invoke-interface {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/w;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    iput-boolean v2, p0, Lcom/join/mgps/ad/w;->p:Z

    .line 83
    .line 84
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/w;->onError(ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/w;->n:Ljava/util/List;

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
    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/join/mgps/ad/w;->n:Ljava/util/List;

    .line 27
    .line 28
    return-void
.end method

.method public fail(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/ad/w;->onError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 3
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
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/o;->onADLoaded(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/ad/w;->o:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/ad/w;->p:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/ad/w;->n:Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 31
    .line 32
    new-instance v2, Lcom/join/mgps/ad/w$a;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/join/mgps/ad/w$a;-><init>(Lcom/join/mgps/ad/w;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/w;->n:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/ad/c;->k:Lcom/join/mgps/ad/c$a;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {v0, p1}, Lcom/join/mgps/ad/c$a;->onADLoaded(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    :cond_1
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
    iput-boolean p1, p0, Lcom/join/mgps/ad/w;->o:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/ad/w;->p:Z

    .line 8
    .line 9
    return-void
.end method

.method public onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/ad/w;->onADLoaded(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public success()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/ad/o;->onInitSuccess()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

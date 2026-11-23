.class Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$viewGroup",
            "val$splashActivity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;->c:Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;->b:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;->a:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;->c:Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;->b:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;->a:Landroid/view/ViewGroup;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->a(Lcom/windmill/sdk/custom/WMCustomSplashAdapter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;->c:Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;->b:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;->b:Landroid/app/Activity;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;->a:Landroid/view/ViewGroup;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v2, v3, v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;->c:Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;->b:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 63
    .line 64
    new-instance v2, Lcom/windmill/sdk/base/WMAdapterError;

    .line 65
    .line 66
    sget-object v3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {v2, v3, v0}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

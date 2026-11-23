.class Lcom/windmill/sdk/custom/WMCustomSplashAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->showCustomAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/windmill/sdk/strategy/a;

.field final synthetic c:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/custom/WMCustomSplashAdapter;Landroid/app/Activity;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity",
            "val$adStrategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$2;->c:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$2;->a:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$2;->b:Lcom/windmill/sdk/strategy/a;

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
    sget-object v0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->aPageVGroup:Landroid/widget/FrameLayout;

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
    sget-object v0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->aPageVGroup:Landroid/widget/FrameLayout;

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
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$2;->c:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    sget-object v2, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->aPageVGroup:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->a(Lcom/windmill/sdk/custom/WMCustomSplashAdapter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$2;->c:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$2;->a:Landroid/app/Activity;

    .line 42
    .line 43
    sget-object v2, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->aPageVGroup:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$2;->b:Lcom/windmill/sdk/strategy/a;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v1, v2, v3}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :catchall_0
    return-void
.end method

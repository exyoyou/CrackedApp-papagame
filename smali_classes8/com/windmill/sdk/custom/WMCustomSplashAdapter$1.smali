.class Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/widget/SpecialActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->showCustomAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/custom/WMCustomSplashAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adStrategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;->b:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;->b:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    invoke-static {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->a(Lcom/windmill/sdk/custom/WMCustomSplashAdapter;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "splashActivity",
            "viewGroup"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----showCustomAd--vg--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1$1;-><init>(Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;Landroid/view/ViewGroup;Landroid/app/Activity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.class public Lcom/sigmob/sdk/base/common/AdActivity;
.super Lcom/sigmob/sdk/base/BaseAdActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/k;


# static fields
.field private static final k:Ljava/lang/String; = "AdActivity"


# instance fields
.field private l:Lcom/sigmob/sdk/base/common/j;

.field private m:Ljava/lang/String;

.field private n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/base/BaseAdActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)Lcom/sigmob/sdk/base/common/j;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseAdUnit",
            "savedInstanceState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_view_class_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/AdActivity;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "mraid_two"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "mraid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "new_interstitial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "reward"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "DisLike"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "LandPage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "LandNative"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return-object v2

    :pswitch_0
    new-instance v0, Lcom/sigmob/sdk/mraid2/s;

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/AdActivity;->m:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/sdk/mraid2/s;-><init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/sigmob/sdk/mraid/s;

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/AdActivity;->m:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/sdk/mraid/s;-><init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/sigmob/sdk/newInterstitial/i;

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/AdActivity;->m:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/sdk/newInterstitial/i;-><init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/sigmob/sdk/videoAd/j;

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/AdActivity;->m:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/sdk/videoAd/j;-><init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/sigmob/sdk/nativead/w;

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/AdActivity;->m:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/sdk/nativead/w;-><init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/sigmob/sdk/base/common/w;

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/AdActivity;->m:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/sdk/base/common/w;-><init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    return-object v0

    :pswitch_6
    if-nez v5, :cond_8

    return-object v2

    :cond_8
    new-instance v0, Lcom/sigmob/sdk/nativead/z;

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/AdActivity;->m:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/sdk/nativead/z;-><init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x74ecb1fe -> :sswitch_6
        -0x5c8e20c6 -> :sswitch_5
        -0x3932b6db -> :sswitch_4
        -0x37b0b0d1 -> :sswitch_3
        0x501cb6b -> :sswitch_2
        0x6354d77 -> :sswitch_1
        0x2780ab84 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 2
    const-string v0, "broadcastIdentifier"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 6
    instance-of v0, p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    :cond_0
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 2
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
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->m:Ljava/lang/String;

    const-string v1, "action.rewardedvideo.playFail"

    invoke-static {p0, v0, p1, v1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    instance-of v1, v0, Lcom/sigmob/sdk/mraid/s;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sigmob/sdk/mraid/s;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/s;->a(Z)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/sigmob/sdk/mraid2/s;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sigmob/sdk/mraid2/s;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid2/s;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->o:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->p:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    instance-of v0, v0, Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v1, "ad_close"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v2, Lcom/sigmob/sdk/base/common/b0;

    invoke-direct {v2}, Lcom/sigmob/sdk/base/common/b0;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setSessionManager(Lcom/sigmob/sdk/base/common/ag;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/common/AdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 3

    .line 2
    sget-object v0, Lcom/sigmob/sdk/base/common/AdActivity;->k:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onCreate#onTimerFinished"

    invoke-static {v0, v2, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->p:Z

    new-instance v0, Lcom/sigmob/sdk/base/common/a0;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/common/a0;-><init>(Lcom/sigmob/sdk/base/common/AdActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/common/AdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->d()V

    return-void
.end method

.method private synthetic d()V
    .locals 3

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->o:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/AdActivity;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableSmallWindow(Ljava/lang/Integer;)Z

    move-result v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->b()V

    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/base/common/AdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->b()V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "requestedOrientation"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/AdActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public a(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "requestCode",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 5
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p3}, Lcom/sigmob/sdk/base/utils/g;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p3

    :try_start_0
    invoke-virtual {p0, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Activity "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/j;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->i()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newConfig"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    const-string v0, "uuid is empty"

    const-string v1, "error"

    invoke-static {p0}, Lcom/sigmob/sdk/videoplayer/c;->e(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/sdk/base/common/AdActivity;->m:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "adUnit_requestId_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/sigmob/sdk/base/common/h;->c(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/AdActivity;->m:Ljava/lang/String;

    const-string v3, "dislike_broadcastIdentifier"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "playAdUnit is null"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    return-void

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)Lcom/sigmob/sdk/base/common/j;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/j;->e()V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->allowClickToAutoClose()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->a(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    new-instance v2, Lcom/sigmob/sdk/base/common/c0;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/base/common/c0;-><init>(Lcom/sigmob/sdk/base/common/AdActivity;)V

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/base/common/j;->a(Lcom/sigmob/sdk/base/common/j$a;)V

    :cond_3
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->allowCountdownEndsClose()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->a(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    instance-of v2, v0, Lcom/sigmob/sdk/newInterstitial/i;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v2, Lcom/sigmob/sdk/base/common/d0;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/base/common/d0;-><init>(Lcom/sigmob/sdk/base/common/AdActivity;)V

    invoke-virtual {v0, p1, v2}, Lcom/sigmob/sdk/newInterstitial/i;->a(ILcom/sigmob/sdk/base/utils/p$a;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdActivity onCreate Throwable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const-string v0, "RewardVideoAdPlayerActivity onDestroy() called"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->h()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->b()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSetContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->l:Lcom/sigmob/sdk/base/common/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestedOrientation"
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/sigmob/sdk/videoplayer/c;->g(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestedOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

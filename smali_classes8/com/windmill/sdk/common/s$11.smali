.class Lcom/windmill/sdk/common/s$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/common/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/s;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/common/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/WindMillError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    iget-object v1, v0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->s()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    iget-object v1, v1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    instance-of v2, v1, Lcom/windmill/sdk/splash/WMSplashAdRequest;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Lcom/windmill/sdk/splash/WMSplashAdRequest;

    invoke-virtual {v1}, Lcom/windmill/sdk/splash/WMSplashAdRequest;->getAppTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 4
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    invoke-static {v1}, Lcom/windmill/sdk/common/s;->f(Lcom/windmill/sdk/common/s;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_3

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    invoke-static {v1}, Lcom/windmill/sdk/common/s;->g(Lcom/windmill/sdk/common/s;)V

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    invoke-static {v1}, Lcom/windmill/sdk/common/s;->h(Lcom/windmill/sdk/common/s;)V

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    invoke-static {v1}, Lcom/windmill/sdk/common/s;->i(Lcom/windmill/sdk/common/s;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    invoke-static {v1}, Lcom/windmill/sdk/common/s;->i(Lcom/windmill/sdk/common/s;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_4
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aF()V

    .line 10
    iget-object v1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s;J)J

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    const-string v2, "vopen"

    invoke-static {v1, v3, v2, p2, v3}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    invoke-static {v1, p2, p1}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    goto :goto_1

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    new-instance v2, Lcom/windmill/sdk/common/s$11$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/windmill/sdk/common/s$11$1;-><init>(Lcom/windmill/sdk/common/s$11;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/Runnable;)V

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    sget-object p2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object p2, p1, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 16
    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    invoke-static {p2}, Lcom/windmill/sdk/WindMillError;->getWindAdError(I)Lcom/windmill/sdk/WindMillError;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    iget-object v1, p1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    :cond_6
    return v0
.end method

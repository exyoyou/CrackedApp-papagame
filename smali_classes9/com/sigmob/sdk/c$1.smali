.class Lcom/sigmob/sdk/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/videoAd/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/c;->a(Ljava/util/HashMap;Lcom/sigmob/sdk/videoAd/m;Lcom/sigmob/sdk/videoAd/l;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/m;

.field final synthetic b:Lcom/sigmob/sdk/c;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/c;Lcom/sigmob/sdk/videoAd/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$showListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iput-object p2, p0, Lcom/sigmob/sdk/c$1;->a:Lcom/sigmob/sdk/videoAd/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/base/utils/d$a;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/m;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/d;->a(Lcom/sigmob/sdk/base/utils/d$a;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAdClicked: placementId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/videoAd/m;->onAdClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcom/sigmob/sdk/videoAd/m;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/sigmob/sdk/videoAd/m;->onAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object p1, p1, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object p1, p1, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object p1, p1, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/manager/f;->s()V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object p2, p1, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    iput-object p2, p1, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    sget-object p2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/c;->g(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    iget-object p1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    :cond_2
    return-void
.end method

.method private synthetic a(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/videoAd/m;->onAdClosed(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object p1, p1, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object p1, p1, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object p1, p1, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/manager/f;->s()V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object p2, p1, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    iput-object p2, p1, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    sget-object p2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/c;->h(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    iget-object p1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/sigmob/sdk/c;->d:Lcom/sigmob/sdk/manager/f;

    :cond_2
    return-void
.end method

.method private static synthetic b(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lcom/sigmob/sdk/videoAd/m;->onVideoAdPlayEnd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic c(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lcom/sigmob/sdk/videoAd/m;->onVideoAdPlayComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic d(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lcom/sigmob/sdk/videoAd/m;->onAdShow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/c$1;->c(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/c$1;Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/c$1;->a(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/sigmob/sdk/base/utils/d$a;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/m;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/c$1;->a(Lcom/sigmob/sdk/base/utils/d$a;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/m;)V

    return-void
.end method

.method public static synthetic h(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/c$1;->d(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/sigmob/sdk/c$1;Lcom/sigmob/sdk/videoAd/m;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/c$1;->a(Lcom/sigmob/sdk/videoAd/m;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/c$1;->b(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    invoke-static {v0}, Lcom/sigmob/sdk/c;->g(Lcom/sigmob/sdk/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v1, v1, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sigmob/sdk/manager/f;->i()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/utils/d;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/utils/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v1, v1, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/sigmob/sdk/base/utils/d$a;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_2

    sget v3, Lcom/sigmob/sdk/base/utils/d;->b:I

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/sigmob/sdk/base/utils/d$a;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "click_lose_rate"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "click_cb_state"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v2, v2, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    const-string v3, "click_callback"

    invoke-virtual {v2, v3, v1}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    iget-object v1, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v1, v1, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sigmob/sdk/c$1;->a:Lcom/sigmob/sdk/videoAd/m;

    new-instance v3, Lcom/sigmob/sdk/m;

    invoke-direct {v3, v0, p1, v2}, Lcom/sigmob/sdk/m;-><init>(Lcom/sigmob/sdk/base/utils/d$a;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/m;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdClosed(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdClosed: placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/c;->e(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    const-string v1, "close_callback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/c$1;->a:Lcom/sigmob/sdk/videoAd/m;

    new-instance v2, Lcom/sigmob/sdk/l;

    invoke-direct {v2, p0, v1, p1}, Lcom/sigmob/sdk/l;-><init>(Lcom/sigmob/sdk/c$1;Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdShow(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdShow: placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/c;->d(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->c:Lcom/sigmob/sdk/manager/f;

    const-string v1, "show_callback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/c$1;->a:Lcom/sigmob/sdk/videoAd/m;

    new-instance v2, Lcom/sigmob/sdk/o;

    invoke-direct {v2, v1, p1}, Lcom/sigmob/sdk/o;-><init>(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdShowError: error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/c;->f(Lcom/sigmob/sdk/c;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/c$1;->a:Lcom/sigmob/sdk/videoAd/m;

    new-instance v2, Lcom/sigmob/sdk/q;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/sigmob/sdk/q;-><init>(Lcom/sigmob/sdk/c$1;Lcom/sigmob/sdk/videoAd/m;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdPlayComplete(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPlayComplete: placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/c$1;->a:Lcom/sigmob/sdk/videoAd/m;

    new-instance v2, Lcom/sigmob/sdk/p;

    invoke-direct {v2, v1, p1}, Lcom/sigmob/sdk/p;-><init>(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdPlayEnd(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPlayEnd: placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/c$1;->b:Lcom/sigmob/sdk/c;

    iget-object v0, v0, Lcom/sigmob/sdk/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/c$1;->a:Lcom/sigmob/sdk/videoAd/m;

    new-instance v2, Lcom/sigmob/sdk/n;

    invoke-direct {v2, v1, p1}, Lcom/sigmob/sdk/n;-><init>(Lcom/sigmob/sdk/videoAd/m;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lcom/sigmob/sdk/splash/h;
.super Lcom/sigmob/sdk/splash/b;
.source "SourceFile"


# instance fields
.field private final b:Lcom/sigmob/sdk/base/views/b;

.field private final c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "adUnit"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/b;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/sigmob/sdk/base/views/b;

    invoke-direct {v1, p1}, Lcom/sigmob/sdk/base/views/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/base/views/b;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iput-object p2, p0, Lcom/sigmob/sdk/splash/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic a(Lcom/sigmob/sdk/splash/b$a;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sigmob/sdk/splash/b;->a:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    iget-boolean p2, p0, Lcom/sigmob/sdk/splash/h;->d:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sigmob/sdk/splash/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sigmob/sdk/splash/h;->d:Z

    const-string p2, "video onPrepared"

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/b$a;->onAdWillShow()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/splash/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object p2

    const-string v0, "action.interstitial.show"

    invoke-static {p1, p2, v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/splash/h;Lcom/sigmob/sdk/splash/b$a;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/splash/b$a;Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v1, "video showAd"

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/b;->d()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/splash/b$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "listener"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "adUnit is null."

    :goto_0
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "filePath is null."

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {v1, v0, v0}, Lcom/sigmob/sdk/base/views/b;->a(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/base/views/b;

    new-instance v1, Lcom/sigmob/sdk/splash/t;

    invoke-direct {v1, p0, p2}, Lcom/sigmob/sdk/splash/t;-><init>(Lcom/sigmob/sdk/splash/h;Lcom/sigmob/sdk/splash/b$a;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/b;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p2, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/views/b;->setVideoPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/b;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/b;->b()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/base/views/b;

    if-eqz v0, :cond_0

    const-string v0, "video GONE"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/b;->c()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set splash ad video content error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

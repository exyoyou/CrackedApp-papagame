.class public Lm6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/f;


# instance fields
.field private downInfo:Lcom/join/kotlin/base/impl/Downloadable;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "info"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm6/c;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lm6/c;->downInfo:Lcom/join/kotlin/base/impl/Downloadable;

    .line 7
    .line 8
    return-void
.end method

.method private a(Lcom/join/mgps/customview/DownloadNormalView;Lcom/join/mgps/dto/TipNew;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downView",
            "showTip"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lm6/c;->downInfo:Lcom/join/kotlin/base/impl/Downloadable;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/Downloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, ""

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v2, v1}, Lcom/join/mgps/customview/DownloadNormalView;->h(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/join/mgps/dto/TipNew;->getCoin()Lcom/join/mgps/dto/TipBean;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/customview/DownloadNormalView;->h(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1, v2, v1}, Lcom/join/mgps/customview/DownloadNormalView;->h(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method


# virtual methods
.method public onButtonClicked(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downView"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    iget-object v0, p0, Lm6/c;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lm6/c;->downInfo:Lcom/join/kotlin/base/impl/Downloadable;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/utils/DlTaskManager;->performDownloadClick(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onViewAttached(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downView"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lm6/c;->onViewUpdate(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewClicked(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downView"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lm6/c;->onButtonClicked(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewDetached()V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewUpdate(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm6/c;->downInfo:Lcom/join/kotlin/base/impl/Downloadable;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isHmCloud()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lm6/c;->downInfo:Lcom/join/kotlin/base/impl/Downloadable;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/Downloadable;->hasGInfo()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lm6/c;->downInfo:Lcom/join/kotlin/base/impl/Downloadable;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/join/mgps/Util/w0;->m(Ljava/util/List;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/join/mgps/Util/w0;->k(Ljava/util/List;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    :cond_0
    const v0, 0x7f080923

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->p(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lm6/c;->downInfo:Lcom/join/kotlin/base/impl/Downloadable;

    .line 51
    .line 52
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isCpsGame()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lm6/c;->downInfo:Lcom/join/kotlin/base/impl/Downloadable;

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/join/mgps/Util/d1;->a(Ljava/util/List;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    const/4 v0, 0x5

    .line 75
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->i(I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    iget-object v0, p0, Lm6/c;->downInfo:Lcom/join/kotlin/base/impl/Downloadable;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->b(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lm6/c;->downInfo:Lcom/join/kotlin/base/impl/Downloadable;

    .line 85
    .line 86
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/Downloadable;->hasGInfo()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lm6/c;->downInfo:Lcom/join/kotlin/base/impl/Downloadable;

    .line 93
    .line 94
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {p0, p1, v0}, Lm6/c;->a(Lcom/join/mgps/customview/DownloadNormalView;Lcom/join/mgps/dto/TipNew;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void
.end method

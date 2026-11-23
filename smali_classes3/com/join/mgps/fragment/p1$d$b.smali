.class Lcom/join/mgps/fragment/p1$d$b;
.super Lm6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p1$d;->z(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/customview/DownloadNormalView;

.field final synthetic d:Lcom/join/mgps/fragment/p1$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p1$d;Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "ctx",
            "info",
            "val$item",
            "val$downloadTask",
            "val$dv_view"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p1$d$b;->d:Lcom/join/mgps/fragment/p1$d;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/join/mgps/fragment/p1$d$b;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/join/mgps/fragment/p1$d$b;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/join/mgps/fragment/p1$d$b;->c:Lcom/join/mgps/customview/DownloadNormalView;

    .line 8
    .line 9
    invoke-direct {p0, p2, p3}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onViewUpdate(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downView"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/p1$d$b;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/p1$d$b;->a:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5VmGame()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/p1$d$b;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSingleGame()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/fragment/p1$d$b;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v0, 0xb

    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/fragment/p1$d$b;->c:Lcom/join/mgps/customview/DownloadNormalView;

    .line 38
    .line 39
    const-string v0, "\u5b89\u88c5"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->q(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/p1$d$b;->c:Lcom/join/mgps/customview/DownloadNormalView;

    .line 46
    .line 47
    const-string v0, "\u6253\u5f00"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->q(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/p1$d$b;->c:Lcom/join/mgps/customview/DownloadNormalView;

    .line 53
    .line 54
    const/4 v0, -0x1

    .line 55
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

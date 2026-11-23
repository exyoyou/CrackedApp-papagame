.class Lcom/join/mgps/fragment/o3$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o3;->e0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/dto/DetailResultBean;

.field final synthetic d:Lcom/join/mgps/fragment/o3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o3;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$downloadTask",
            "val$detailResultBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$g;->d:Lcom/join/mgps/fragment/o3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/o3$g;->c:Lcom/join/mgps/dto/DetailResultBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->d:Lcom/join/mgps/fragment/o3;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->S(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/customview/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->d:Lcom/join/mgps/fragment/o3;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->S(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->d:Lcom/join/mgps/fragment/o3;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->S(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/customview/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 v0, 0x5

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/16 v1, 0x9

    .line 42
    .line 43
    if-eq p1, v1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->d:Lcom/join/mgps/fragment/o3;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->M(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->d:Lcom/join/mgps/fragment/o3;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->M(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 65
    .line 66
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->c:Lcom/join/mgps/dto/DetailResultBean;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-ne p1, v0, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->d:Lcom/join/mgps/fragment/o3;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->M(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 88
    .line 89
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$g;->d:Lcom/join/mgps/fragment/o3;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/join/mgps/fragment/o3;->M(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 105
    .line 106
    const/4 v0, 0x2

    .line 107
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method

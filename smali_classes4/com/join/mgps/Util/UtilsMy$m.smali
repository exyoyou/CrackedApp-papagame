.class Lcom/join/mgps/Util/UtilsMy$m;
.super Lm6/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->V0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILcom/join/mgps/dto/DownloadGameArgsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/join/mgps/dto/DownloadGameArgsBean;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILcom/join/mgps/dto/DownloadGameArgsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$downloadTask",
            "val$downloadUrlBeans",
            "val$otherOpen",
            "val$cdnOpen",
            "val$downArgs"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$m;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$m;->c:Ljava/util/List;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/Util/UtilsMy$m;->d:I

    .line 8
    .line 9
    iput p5, p0, Lcom/join/mgps/Util/UtilsMy$m;->e:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/Util/UtilsMy$m;->f:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 12
    .line 13
    invoke-direct {p0}, Lm6/a;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lm6/a;->a(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lm6/a;->b(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$m;->a:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$m;->c:Ljava/util/List;

    .line 9
    .line 10
    iget v3, p0, Lcom/join/mgps/Util/UtilsMy$m;->d:I

    .line 11
    .line 12
    iget v4, p0, Lcom/join/mgps/Util/UtilsMy$m;->e:I

    .line 13
    .line 14
    iget-object v6, p0, Lcom/join/mgps/Util/UtilsMy$m;->f:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 15
    .line 16
    move-object v5, p1

    .line 17
    invoke-static/range {v0 .. v6}, Lcom/join/mgps/Util/UtilsMy;->v(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;IILandroid/content/Context;Lcom/join/mgps/dto/DownloadGameArgsBean;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

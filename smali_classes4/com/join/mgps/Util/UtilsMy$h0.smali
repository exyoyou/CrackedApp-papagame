.class Lcom/join/mgps/Util/UtilsMy$h0;
.super Le6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->f4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/dto/ExtBean;

.field final synthetic f:Lcom/papa91/wrapper/UserPrefs;

.field final synthetic g:I

.field final synthetic h:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;Lcom/papa91/wrapper/UserPrefs;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$gameId",
            "val$downloadTask",
            "val$from",
            "val$extBean",
            "val$userPrefs",
            "val$u",
            "val$adc"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$h0;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$h0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$h0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/UtilsMy$h0;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/UtilsMy$h0;->e:Lcom/join/mgps/dto/ExtBean;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/Util/UtilsMy$h0;->f:Lcom/papa91/wrapper/UserPrefs;

    .line 12
    .line 13
    iput p7, p0, Lcom/join/mgps/Util/UtilsMy$h0;->g:I

    .line 14
    .line 15
    iput p8, p0, Lcom/join/mgps/Util/UtilsMy$h0;->h:I

    .line 16
    .line 17
    invoke-direct {p0}, Le6/c;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$h0;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$h0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$h0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/join/mgps/Util/UtilsMy$h0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/join/mgps/Util/UtilsMy$h0;->d:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/join/mgps/Util/UtilsMy$h0;->e:Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/UtilsMy;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$h0;->f:Lcom/papa91/wrapper/UserPrefs;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$h0;->g:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$h0;->h:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onDirectLaunch()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$h0;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$h0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$h0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/join/mgps/Util/UtilsMy$h0;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/join/mgps/Util/UtilsMy$h0;->d:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/join/mgps/Util/UtilsMy$h0;->e:Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/UtilsMy;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

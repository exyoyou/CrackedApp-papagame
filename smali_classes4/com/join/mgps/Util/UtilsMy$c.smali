.class Lcom/join/mgps/Util/UtilsMy$c;
.super Le6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->M2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/papa91/wrapper/UserPrefs;

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa91/wrapper/UserPrefs;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$downloadTask",
            "val$userPrefs",
            "val$u",
            "val$adc"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$c;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$c;->c:Lcom/papa91/wrapper/UserPrefs;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/Util/UtilsMy$c;->d:I

    .line 8
    .line 9
    iput p5, p0, Lcom/join/mgps/Util/UtilsMy$c;->e:I

    .line 10
    .line 11
    invoke-direct {p0}, Le6/c;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$c;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->i0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$c;->c:Lcom/papa91/wrapper/UserPrefs;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$c;->d:I

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
    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$c;->e:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onDirectLaunch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$c;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->i0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

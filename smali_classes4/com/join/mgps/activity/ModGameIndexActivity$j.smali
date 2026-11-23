.class Lcom/join/mgps/activity/ModGameIndexActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->onlyOpenStandGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->c:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->a:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onSuccess(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "duration"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$j;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/APKUtils;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "duration",
            "buttonBean"
        }
    .end annotation

    .line 1
    return-void
.end method

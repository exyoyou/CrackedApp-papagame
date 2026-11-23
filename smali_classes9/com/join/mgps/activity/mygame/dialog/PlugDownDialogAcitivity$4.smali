.class Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/snowdream/android/app/downloader/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->initPreDownloadFactory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onFinish onStart - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/join/mgps/Util/h1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->access$100()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/github/snowdream/android/app/downloader/c;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->g()Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 74
    .line 75
    iget-object v2, v1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 76
    .line 77
    invoke-direct {v0, v1, v2, v1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;-><init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->access$100()Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "progress",
            "speed"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "PreDownloadPlug onProgress - "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " progress="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " speed"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    const/4 v1, 0x0

    .line 38
    aput-object p3, v0, v1

    .line 39
    .line 40
    const-string p3, "PreDownloadPlug"

    .line 41
    .line 42
    invoke-static {p3, v0}, Lcom/join/mgps/Util/h1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 46
    .line 47
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$2;

    .line 48
    .line 49
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$2;-><init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PreDownloadPlug onStart - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/join/mgps/Util/h1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$1;-><init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public onWait(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public updateSize(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "actualSize"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

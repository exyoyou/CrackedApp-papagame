.class Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->ok()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$2;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStartEmuGame()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$2;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCheckRes(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$2;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$2;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lcom/papa/sim/statistic/Event;->startAfterEmuLoad:Lcom/papa/sim/statistic/Event;

    .line 25
    .line 26
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$2;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

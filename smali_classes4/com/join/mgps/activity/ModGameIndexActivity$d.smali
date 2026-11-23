.class Lcom/join/mgps/activity/ModGameIndexActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->showCpuAbiIncompatiblePrompt(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$dialog",
            "val$downloadTask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->c:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->a:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public callback1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->a:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->c:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1600(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public callback2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->c:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->startStandGame()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->a:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

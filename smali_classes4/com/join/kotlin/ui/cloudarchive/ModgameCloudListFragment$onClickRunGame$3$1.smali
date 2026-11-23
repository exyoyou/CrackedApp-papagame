.class public final Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->onClickRunGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;",
        "onClickOkButn",
        "",
        "onClickCancleButn",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClickCancleButn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->access$showDownloadDialog(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onClickOkButn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;->$archive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->access$showDownloadDialog(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

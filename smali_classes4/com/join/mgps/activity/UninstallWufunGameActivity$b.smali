.class Lcom/join/mgps/activity/UninstallWufunGameActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/UninstallWufunGameActivity;->deleteGame(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/UninstallWufunGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UninstallWufunGameActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$b;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x7

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$b;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus2:Landroid/widget/TextView;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$b;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 31
    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$b;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$b;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->resetBtn()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$b;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->resetBtn2()V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

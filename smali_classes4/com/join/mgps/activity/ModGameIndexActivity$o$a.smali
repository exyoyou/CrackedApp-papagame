.class Lcom/join/mgps/activity/ModGameIndexActivity$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity$o;->a(Lcom/join/mgps/dialog/h1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/h1;

.field final synthetic b:Lcom/join/mgps/activity/ModGameIndexActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity$o;Lcom/join/mgps/dialog/h1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o$a;->b:Lcom/join/mgps/activity/ModGameIndexActivity$o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o$a;->a:Lcom/join/mgps/dialog/h1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(II)V
    .locals 1
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

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o$a;->b:Lcom/join/mgps/activity/ModGameIndexActivity$o;

    iget-object p1, p1, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o$a;->b:Lcom/join/mgps/activity/ModGameIndexActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->startDownload(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

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

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o$a;->a:Lcom/join/mgps/dialog/h1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o$a;->a:Lcom/join/mgps/dialog/h1;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/p;->dismiss()V

    :cond_0
    return-void
.end method

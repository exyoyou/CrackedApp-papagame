.class Lcom/join/mgps/activity/arena/GameRoomActivity$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/Util/g0$n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;->showKickInfoDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public onCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    const-string v1, "kick_info"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->onDialogDismiss(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    const-string v1, "kick_info"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->onDialogDismiss(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.class Lcom/join/mgps/activity/CheckInviteDialogActivity$c;
.super Lcom/join/mgps/socket/fight/arena/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CheckInviteDialogActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CheckInviteDialogActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$c;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/b$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$c;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->access$100(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$c;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->access$000(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

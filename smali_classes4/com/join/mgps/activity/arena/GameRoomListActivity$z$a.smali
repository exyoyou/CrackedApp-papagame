.class Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->c(Lcom/join/mgps/activity/arena/GameRoomListActivity$y;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity$z;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$3000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 15
    .line 16
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->b:I

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$3002(Lcom/join/mgps/activity/arena/GameRoomListActivity;I)I

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    .line 22
    .line 23
    iget-object v0, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$3000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->a(Lcom/join/mgps/activity/arena/GameRoomListActivity$z;)Lcom/join/mgps/activity/arena/GameRoomListActivity$w;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->b:I

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$w;->onItemClick(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

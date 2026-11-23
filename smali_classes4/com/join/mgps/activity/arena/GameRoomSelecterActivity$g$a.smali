.class Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->d(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;I)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->b:I

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
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->a(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    .line 11
    .line 12
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->b:I

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->b(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;I)I

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->a(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->c(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;)Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->b:I

    .line 33
    .line 34
    invoke-interface {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;->onItemClick(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

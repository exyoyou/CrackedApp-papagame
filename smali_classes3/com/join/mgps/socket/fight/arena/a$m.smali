.class Lcom/join/mgps/socket/fight/arena/a$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a;->q([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lapp/mgsim/arena/RoomSeatState;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a;Lapp/mgsim/arena/RoomSeatState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$state",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$m;->d:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$m;->b:Lapp/mgsim/arena/RoomSeatState;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/socket/fight/arena/a$m;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$m;->d:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$m;->b:Lapp/mgsim/arena/RoomSeatState;

    .line 8
    .line 9
    iget v1, p0, Lcom/join/mgps/socket/fight/arena/a$m;->c:I

    .line 10
    .line 11
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/socket/fight/arena/a$y;->onSeatSet(Lapp/mgsim/arena/RoomSeatState;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$m;->d:Lcom/join/mgps/socket/fight/arena/a;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

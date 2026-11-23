.class Lcom/join/mgps/socket/fight/arena/a$j;
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
.field final synthetic b:Lcom/papa91/battle/protocol/RoomPosition;

.field final synthetic c:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$roomPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$j;->c:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$j;->b:Lcom/papa91/battle/protocol/RoomPosition;

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
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$j;->c:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$j;->b:Lcom/papa91/battle/protocol/RoomPosition;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/join/mgps/socket/fight/arena/a$y;->onReport(Lcom/papa91/battle/protocol/RoomPosition;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$j;->c:Lcom/join/mgps/socket/fight/arena/a;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

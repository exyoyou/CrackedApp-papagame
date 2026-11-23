.class Lcom/join/mgps/fragment/v$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/input/InputNumView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v;->R0(Lcom/papa91/battle/protocol/GameRoom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/a;

.field final synthetic b:Lcom/papa91/battle/protocol/GameRoom;

.field final synthetic c:Lcom/join/mgps/fragment/v;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v;Lcom/join/mgps/customview/input/a;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mInputGameRoomPwdDialog",
            "val$gameRoom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v$i;->c:Lcom/join/mgps/fragment/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/v$i;->a:Lcom/join/mgps/customview/input/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/v$i;->b:Lcom/papa91/battle/protocol/GameRoom;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v$i;->a:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v$i;->a:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v$i;->c:Lcom/join/mgps/fragment/v;

    .line 14
    .line 15
    const-string v1, "\u6b63\u5728\u83b7\u53d6\u623f\u95f4..."

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/v;->Z(Lcom/join/mgps/fragment/v;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/v$i;->c:Lcom/join/mgps/fragment/v;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/fragment/v$i;->b:Lcom/papa91/battle/protocol/GameRoom;

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/fragment/v;->x0(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.class Lcom/join/mgps/activity/FullShareWebActivity_$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity_;->doJoinRoom(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa91/battle/protocol/GameRoom;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/activity/FullShareWebActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameRoom",
            "val$pwd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity_$l;->d:Lcom/join/mgps/activity/FullShareWebActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity_$l;->b:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/FullShareWebActivity_$l;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity_$l;->d:Lcom/join/mgps/activity/FullShareWebActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity_$l;->b:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity_$l;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/FullShareWebActivity_;->access$1301(Lcom/join/mgps/activity/FullShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

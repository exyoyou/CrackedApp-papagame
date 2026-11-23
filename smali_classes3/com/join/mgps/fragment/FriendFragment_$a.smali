.class Lcom/join/mgps/fragment/FriendFragment_$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/FriendFragment_;->Z0(Lcom/join/mgps/dto/FriendAccountInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/FriendAccountInfo;

.field final synthetic c:Lcom/join/mgps/fragment/FriendFragment_;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/FriendFragment_;Lcom/join/mgps/dto/FriendAccountInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/FriendFragment_$a;->c:Lcom/join/mgps/fragment/FriendFragment_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/FriendFragment_$a;->b:Lcom/join/mgps/dto/FriendAccountInfo;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/FriendFragment_$a;->c:Lcom/join/mgps/fragment/FriendFragment_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/FriendFragment_$a;->b:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/FriendFragment_;->c1(Lcom/join/mgps/fragment/FriendFragment_;Lcom/join/mgps/dto/FriendAccountInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

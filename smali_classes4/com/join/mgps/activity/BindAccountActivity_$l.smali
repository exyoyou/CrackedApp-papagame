.class Lcom/join/mgps/activity/BindAccountActivity_$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/BindAccountActivity_;->updateCodeUI(Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;

.field final synthetic c:Lcom/join/mgps/activity/BindAccountActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/BindAccountActivity_;Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/BindAccountActivity_$l;->c:Lcom/join/mgps/activity/BindAccountActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/BindAccountActivity_$l;->b:Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;

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
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity_$l;->c:Lcom/join/mgps/activity/BindAccountActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/BindAccountActivity_$l;->b:Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/activity/BindAccountActivity_;->access$001(Lcom/join/mgps/activity/BindAccountActivity_;Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.class Lcom/join/mgps/activity/CommentDetailActivity_$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity_;->resultShow(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/activity/CommentDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$msg",
            "val$b",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$g;->e:Lcom/join/mgps/activity/CommentDetailActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity_$g;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/activity/CommentDetailActivity_$g;->c:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/activity/CommentDetailActivity_$g;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_$g;->e:Lcom/join/mgps/activity/CommentDetailActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$g;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/join/mgps/activity/CommentDetailActivity_$g;->c:Z

    .line 6
    .line 7
    iget v3, p0, Lcom/join/mgps/activity/CommentDetailActivity_$g;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/CommentDetailActivity_;->access$1201(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;ZI)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

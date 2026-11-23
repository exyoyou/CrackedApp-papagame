.class Lcom/join/mgps/activity/CommentDetailActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$l;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$l;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$800(Lcom/join/mgps/activity/CommentDetailActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$l;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$900(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->getCommentList(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

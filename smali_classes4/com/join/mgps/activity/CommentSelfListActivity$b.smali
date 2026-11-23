.class Lcom/join/mgps/activity/CommentSelfListActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentSelfListActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CommentSelfListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentSelfListActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity$b;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$b;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->isNetWorkConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$b;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->stopXlistRefreshAndLoadMore()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$b;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->pageLoading:I

    .line 18
    .line 19
    iput v1, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->pageCount:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentSelfListActivity;->getHomepageRecommendLabel(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

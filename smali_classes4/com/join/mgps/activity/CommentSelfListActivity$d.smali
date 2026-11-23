.class Lcom/join/mgps/activity/CommentSelfListActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentSelfListActivity;->stopXlistRefreshAndLoadMore()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 19
    .line 20
    iget v1, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->pageLoading:I

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->access$100(Lcom/join/mgps/activity/CommentSelfListActivity;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->g()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/activity/CommentSelfListActivity;->access$100(Lcom/join/mgps/activity/CommentSelfListActivity;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/16 v1, 0xa

    .line 61
    .line 62
    if-ge v0, v1, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivity$d;->b:Lcom/join/mgps/activity/CommentSelfListActivity;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/join/mgps/activity/CommentSelfListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    return-void
.end method

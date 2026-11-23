.class Lcom/join/mgps/activity/ForumGroupMemberActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumGroupMemberActivity;->stopXlistRefreshAndLoadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumGroupMemberActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;->b:Lcom/join/mgps/activity/ForumGroupMemberActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;->b:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->listView:Lcom/join/mgps/customview/XListView2;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;->b:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->listView:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;->b:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    .line 19
    .line 20
    iget v1, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->listView:Lcom/join/mgps/customview/XListView2;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

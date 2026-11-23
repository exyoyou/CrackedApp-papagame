.class Lcom/join/mgps/activity/ForumProfileCommentActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumProfileCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileCommentActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$b;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$b;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mg_forum_profile_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$b;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mg_forum_profile_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$b;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->access$000(Lcom/join/mgps/activity/ForumProfileCommentActivity;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, -0x1

    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$b;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mg_forum_profile_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

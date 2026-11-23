.class Lcom/join/mgps/activity/ForumMyPostsActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyPostsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/activity/ForumMyPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumMyPostsActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$c;->c:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$c;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$c;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$c;->c:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 10
    .line 11
    const v1, 0x7f12031e

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showToast(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$c;->c:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$c;->c:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->access$002(Lcom/join/mgps/activity/ForumMyPostsActivity;I)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$c;->c:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->getForumProfileMessageData(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

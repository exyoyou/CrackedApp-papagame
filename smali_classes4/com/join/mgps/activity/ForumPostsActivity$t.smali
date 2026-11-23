.class Lcom/join/mgps/activity/ForumPostsActivity$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$t;->a:Lcom/join/mgps/activity/ForumPostsActivity;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$t;->a:Lcom/join/mgps/activity/ForumPostsActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$t;->a:Lcom/join/mgps/activity/ForumPostsActivity;

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
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$t;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$t;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->access$600(Lcom/join/mgps/activity/ForumPostsActivity;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2, v2, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->loadForumPostsData(ZZI)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$t;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->access$700(Lcom/join/mgps/activity/ForumPostsActivity;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, -0x1

    .line 46
    if-ne v0, v1, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$t;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method

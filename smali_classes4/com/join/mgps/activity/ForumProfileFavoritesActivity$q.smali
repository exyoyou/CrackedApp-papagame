.class Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->access$102(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;I)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->loadForumPostsData(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    .line 23
    .line 24
    const v1, 0x7f12031e

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->showToast(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    .line 35
    .line 36
    const/16 v1, 0x11

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->changeLoadingState(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->stopXlistRefreshAndLoadMore()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

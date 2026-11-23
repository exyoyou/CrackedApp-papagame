.class Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->access$200(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->loadForumPostsData(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->access$100(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->stopXlistRefreshAndLoadMore()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.class Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;
.super Lcom/join/mgps/adapter/ForumBaseAdapter$b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public i(Lcom/join/mgps/dto/RecommendLabelTag;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->i(Lcom/join/mgps/dto/RecommendLabelTag;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->selectedItems:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->selectedItems:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->selectedItems:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;->a:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->notifyDataChanged()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

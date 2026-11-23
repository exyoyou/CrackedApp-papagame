.class Lcom/join/mgps/activity/ForumPostsActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/ForumPostsActivity$f0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->initHListView()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "path"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$b;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 9
    .line 10
    iget-object p2, p1, Lcom/join/mgps/activity/ForumPostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->c(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->notifyDataSetChanged()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->goMyAlbumActivity4PickPic()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

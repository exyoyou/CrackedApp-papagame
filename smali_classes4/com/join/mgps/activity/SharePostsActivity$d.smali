.class Lcom/join/mgps/activity/SharePostsActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/SharePostsActivity$i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SharePostsActivity;->initHListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SharePostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

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
    .locals 2
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
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/join/mgps/activity/SharePostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/SharePostsActivity$i;->d(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/activity/SharePostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/activity/SharePostsActivity$i;->notifyDataSetChanged()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, p2, v1}, Lnet/bither/util/b;->j(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$d;->a:Lcom/join/mgps/activity/SharePostsActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/SharePostsActivity;->goMyAlbumActivity4PickPic()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

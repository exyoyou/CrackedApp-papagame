.class Lcom/join/mgps/activity/ForumMyPostsActivity$d;
.super Lcom/join/mgps/adapter/ForumBaseAdapter$b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyPostsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/activity/ForumMyPostsActivity;


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

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->access$200(Lcom/join/mgps/activity/ForumMyPostsActivity;Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->a:Landroid/content/Context;

    .line 14
    .line 15
    const v1, 0x7f120142

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showMessage(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->validAccount()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showDialog()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->refreshPraiseChanged(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->praisePosts(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fid"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->d(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/join/mgps/activity/ForumMyPostsActivity;->downloadGameWhenInfoGotcha:Z

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->downloadGameById(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

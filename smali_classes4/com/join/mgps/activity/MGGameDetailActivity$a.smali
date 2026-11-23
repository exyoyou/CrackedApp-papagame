.class Lcom/join/mgps/activity/MGGameDetailActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public b(Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/InformationCommentBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setUser_name(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_id()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setComment_id(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_id()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/InformationCommentBean;->setUser_id(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/join/mgps/activity/GameCommentActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameCommentActivity_$u;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/GameCommentActivity_$u;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GameCommentActivity_$u;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/GameCommentActivity_$u;->d(Z)Lcom/join/mgps/activity/GameCommentActivity_$u;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameCommentActivity_$u;->b(Lcom/join/mgps/dto/InformationCommentBean;)Lcom/join/mgps/activity/GameCommentActivity_$u;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method public c(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commitDataBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->onRootViewX(Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/high16 v1, 0x10000000

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->initPopowindow()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getGameFromList()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getForum_id()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    long-to-int v2, v1

    .line 17
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->changeGameFollow(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public onPraise(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/MGGameDetailActivity;->onPraiseX(Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRootView(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->onRootViewX(Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onUnPraise(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$a;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/MGGameDetailActivity;->onUnPraiseX(Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

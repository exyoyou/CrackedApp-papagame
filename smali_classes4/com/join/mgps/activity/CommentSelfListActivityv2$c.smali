.class Lcom/join/mgps/activity/CommentSelfListActivityv2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/CommentSelfListAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentSelfListActivityv2;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentSelfListActivityv2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cid",
            "gid",
            "depiseType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 2
    .line 3
    invoke-static {v0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->access$000(Lcom/join/mgps/activity/CommentSelfListActivityv2;Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 10
    .line 11
    const p2, 0x7f120142

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->showMessage(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->validAccount()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->showDialog()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->refreshDePraiseChanged(ILjava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 42
    .line 43
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->depraisePosts(ILjava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public b(ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cid",
            "gid",
            "praiseType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 2
    .line 3
    invoke-static {v0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->access$000(Lcom/join/mgps/activity/CommentSelfListActivityv2;Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 10
    .line 11
    const p2, 0x7f120142

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->showMessage(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->validAccount()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->showDialog()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->refreshPraiseChanged(ILjava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 42
    .line 43
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->praisePosts(ILjava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentId",
            "gameId",
            "commentScoreSwitch"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goCommentDetailActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

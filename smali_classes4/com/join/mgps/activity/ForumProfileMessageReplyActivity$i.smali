.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->validAccount()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showDialog()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$000(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->praisePosts()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cid",
            "rid",
            "rNickname"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->replyReply(IILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$102(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showPromptDialog(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public e(Landroid/view/View;III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "cid",
            "rid",
            "ruid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideExtensionFunction(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-static {v0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$102(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 14
    .line 15
    invoke-static {v0, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$202(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 19
    .line 20
    invoke-static {p2, p3}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$302(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 24
    .line 25
    invoke-virtual {p2, p1, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showPopupwindow(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-ne p4, p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 46
    .line 47
    invoke-virtual {p1, v1, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->setPopupWindowAttr(ZZ)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->setPopupWindowAttr(ZZ)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doForumPostReport(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public g(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "rid"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideExtensionFunction(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public h(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$102(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showPromptDialog(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public i(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cid",
            "cNickname"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentReply(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doForumPostReport(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public k(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cid",
            "rid",
            "rNickname"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideExtensionFunction(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$102(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$202(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$302(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 26
    .line 27
    const-string p2, ""

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 40
    .line 41
    iget-object p2, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSystemKeyBoard(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v0, "\u56de\u590d"

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p3, ":"

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public l(Landroid/view/View;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "cid",
            "uid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$202(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p2, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$302(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 10
    .line 11
    .line 12
    const p2, 0x7f0a03ea

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, p2, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showPopupwindow(Landroid/view/View;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ne p3, p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 43
    .line 44
    invoke-virtual {p1, v2, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->setPopupWindowAttr(ZZ)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 49
    .line 50
    invoke-virtual {p1, v0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->setPopupWindowAttr(ZZ)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

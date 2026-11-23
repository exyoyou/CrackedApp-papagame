.class Lcom/join/mgps/activity/GameCommentActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/GameCommentAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameCommentActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameCommentActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameCommentActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commitDataBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->handler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public b(Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "@"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "\uff1a"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "input_method"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getComment_id()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameCommentActivity;->access$102(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_id()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iput v1, v0, Lcom/join/mgps/activity/GameCommentActivity;->replyUserId:I

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_name()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->access$202(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public c(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "@"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "\uff1a"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "input_method"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameCommentActivity;->access$102(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_id()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iput v1, v0, Lcom/join/mgps/activity/GameCommentActivity;->replyUserId:I

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity$b;->a:Lcom/join/mgps/activity/GameCommentActivity;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->access$202(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

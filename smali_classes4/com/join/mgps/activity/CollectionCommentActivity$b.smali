.class Lcom/join/mgps/activity/CollectionCommentActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/InformationAdapter$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CollectionCommentActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CollectionCommentActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CollectionCommentActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->handler:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

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
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 81
    .line 82
    iget-object v1, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 83
    .line 84
    if-nez v1, :cond_0

    .line 85
    .line 86
    new-instance v1, Lcom/join/mgps/dto/InformationCommentBean;

    .line 87
    .line 88
    invoke-direct {v1}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v1, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 92
    .line 93
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getComment_id()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setComment_id(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_id()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setUser_id(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getUser_name()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/InformationCommentBean;->setUser_name(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

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
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$b;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 81
    .line 82
    iput-object p1, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 83
    .line 84
    return-void
.end method

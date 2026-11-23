.class Lcom/join/mgps/activity/CommentDetailActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->initHeadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "@"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1200(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "\uff1a"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v1, "input_method"

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 87
    .line 88
    iget-object v1, p1, Lcom/join/mgps/activity/CommentDetailActivity;->commentId:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$602(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 94
    .line 95
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$702(Lcom/join/mgps/activity/CommentDetailActivity;I)I

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1200(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$502(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1200(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$402(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$b;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 125
    .line 126
    const-string v0, ""

    .line 127
    .line 128
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1702(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    return-void
.end method

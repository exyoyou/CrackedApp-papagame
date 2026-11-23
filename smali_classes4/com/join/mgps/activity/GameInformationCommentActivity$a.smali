.class Lcom/join/mgps/activity/GameInformationCommentActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameInformationCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationCommentActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationCommentActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "input_method"

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 55
    .line 56
    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 65
    .line 66
    iput-object p1, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 67
    .line 68
    iget-object p1, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 104
    .line 105
    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v1, "@"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 123
    .line 124
    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getNickname()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ":"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 151
    .line 152
    invoke-static {v1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->access$000(Lcom/join/mgps/activity/GameInformationCommentActivity;)Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_3

    .line 161
    .line 162
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p1, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$a;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->sendParesed(Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 169
    .line 170
    .line 171
    :cond_3
    :goto_0
    return-void
.end method

.class Lcom/join/mgps/activity/CollectionCommentActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/CollectionCommentActivity;
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
    iput-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 55
    .line 56
    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lcom/join/mgps/dto/InformationCommentBean;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isTitle()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 72
    .line 73
    iput-object p1, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 74
    .line 75
    iget-object p1, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 111
    .line 112
    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v1, "@"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ":"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/join/mgps/activity/CollectionCommentActivity;->access$000(Lcom/join/mgps/activity/CollectionCommentActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-nez v0, :cond_3

    .line 160
    .line 161
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/join/mgps/activity/CollectionCommentActivity;->access$100(Lcom/join/mgps/activity/CollectionCommentActivity;)Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p1, Lcom/join/mgps/dto/InformationCommentBean;

    .line 178
    .line 179
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$a;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CollectionCommentActivity;->sendParesed(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 182
    .line 183
    .line 184
    :cond_4
    :goto_0
    return-void
.end method

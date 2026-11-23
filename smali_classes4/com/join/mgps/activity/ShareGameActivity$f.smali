.class Lcom/join/mgps/activity/ShareGameActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity;->showDialog(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/ShareGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$id",
            "val$message",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v1, v0, Lcom/join/mgps/activity/ShareGameActivity;->tagid:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->selectedMessage:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public b(Landroid/app/Dialog;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "OnRemarkShare"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->closeImg:Landroid/widget/ImageView;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->shareLayout:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->sharMainlayout:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->tipsLayout:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->back:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->commitLayout:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->shareLayout:Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->selectedMessage:Landroid/widget/TextView;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->b:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    iget v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->c:I

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    const/4 v2, 0x2

    .line 89
    if-ne v0, v1, :cond_1

    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-ne v0, v2, :cond_0

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 102
    .line 103
    iget-object v1, v0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar:Lcom/join/mgps/customview/MStarBar;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 110
    .line 111
    iget-object v2, v2, Lcom/join/mgps/activity/ShareGameActivity;->userNameEnd:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ShareGameActivity;->access$000(Lcom/join/mgps/activity/ShareGameActivity;FLandroid/widget/TextView;)V

    .line 114
    .line 115
    .line 116
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->a:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ShareGameActivity;->sendClickTag(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-ne v0, v2, :cond_2

    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 135
    .line 136
    iget-object v1, v0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar:Lcom/join/mgps/customview/MStarBar;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 143
    .line 144
    iget-object v2, v2, Lcom/join/mgps/activity/ShareGameActivity;->userNameEnd:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ShareGameActivity;->access$000(Lcom/join/mgps/activity/ShareGameActivity;FLandroid/widget/TextView;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$f;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 150
    .line 151
    iget-object v1, v0, Lcom/join/mgps/activity/ShareGameActivity;->editText:Landroid/widget/EditText;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ShareGameActivity;->sendComment(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 165
    .line 166
    .line 167
    return-void
.end method

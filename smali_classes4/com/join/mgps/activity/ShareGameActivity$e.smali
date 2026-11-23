.class Lcom/join/mgps/activity/ShareGameActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity;->updateUi(Lcom/join/mgps/dto/GameShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ShareGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->editText:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "\u8bc4\u4ef7\u4e0d\u80fd\u4e3a\u7a7a"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_boot_commented(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/4 v0, 0x2

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 85
    .line 86
    iget-object v1, p1, Lcom/join/mgps/activity/ShareGameActivity;->editText:Landroid/widget/EditText;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v2, "1"

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/activity/ShareGameActivity;->showDialog(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->commitLayout:Landroid/widget/LinearLayout;

    .line 105
    .line 106
    const/16 v1, 0x8

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 114
    .line 115
    const-string v1, "OnRemarkShare"

    .line 116
    .line 117
    invoke-static {p1, v1}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 129
    .line 130
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->shareLayout:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 136
    .line 137
    iget-object v1, p1, Lcom/join/mgps/activity/ShareGameActivity;->selectedMessage:Landroid/widget/TextView;

    .line 138
    .line 139
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->editText:Landroid/widget/EditText;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-ne p1, v0, :cond_2

    .line 157
    .line 158
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 159
    .line 160
    iget-object v0, p1, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar:Lcom/join/mgps/customview/MStarBar;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/join/mgps/activity/ShareGameActivity;->userNameEnd:Landroid/widget/TextView;

    .line 169
    .line 170
    invoke-static {p1, v0, v1}, Lcom/join/mgps/activity/ShareGameActivity;->access$000(Lcom/join/mgps/activity/ShareGameActivity;FLandroid/widget/TextView;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 174
    .line 175
    iget-object v0, p1, Lcom/join/mgps/activity/ShareGameActivity;->editText:Landroid/widget/EditText;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareGameActivity;->sendComment(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$e;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 189
    .line 190
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->editText:Landroid/widget/EditText;

    .line 191
    .line 192
    invoke-static {p1}, Lr7/a;->b(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

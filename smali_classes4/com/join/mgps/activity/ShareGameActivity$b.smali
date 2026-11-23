.class Lcom/join/mgps/activity/ShareGameActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zhy/view/flowlayout/TagFlowLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity;->updateUi(Lcom/join/mgps/dto/GameShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/activity/ShareGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/zhy/view/flowlayout/FlowLayout;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "parent"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 3
    .line 4
    .line 5
    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p3, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p3, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_boot_commented(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p3}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p3

    .line 30
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_0
    add-int/lit8 p3, p2, 0x1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    const/16 v2, 0x8

    .line 43
    .line 44
    if-ne p3, v0, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->startGameLayout:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->sharMainlayout:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->commitLayout:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->editText:Landroid/widget/EditText;

    .line 70
    .line 71
    invoke-static {p1}, Lr7/a;->c(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->closeImg:Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->notShow:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->back:Landroid/widget/ImageView;

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 98
    .line 99
    const-string p2, "OnRemarkInput"

    .line 100
    .line 101
    invoke-static {p1, p2}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 107
    .line 108
    iget-object p3, p3, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    if-eqz p3, :cond_1

    .line 119
    .line 120
    iget-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getContent()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Lcom/join/mgps/dto/TipBean;

    .line 141
    .line 142
    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p3, p1, v0, p2}, Lcom/join/mgps/activity/ShareGameActivity;->showDialog(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 153
    .line 154
    const-string p3, "OnRemarkShare"

    .line 155
    .line 156
    invoke-static {p1, p3}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->closeImg:Landroid/widget/ImageView;

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 174
    .line 175
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->back:Landroid/widget/ImageView;

    .line 176
    .line 177
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 181
    .line 182
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->shareLayout:Landroid/widget/LinearLayout;

    .line 183
    .line 184
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->sharMainlayout:Landroid/widget/LinearLayout;

    .line 190
    .line 191
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 195
    .line 196
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->tipsLayout:Landroid/widget/LinearLayout;

    .line 197
    .line 198
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 202
    .line 203
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->selectedMessage:Landroid/widget/TextView;

    .line 204
    .line 205
    iget-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    check-cast p3, Lcom/join/mgps/dto/TipBean;

    .line 212
    .line 213
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipBean;->getContent()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 221
    .line 222
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    const/4 p3, 0x2

    .line 229
    if-ne p1, p3, :cond_2

    .line 230
    .line 231
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 232
    .line 233
    iget-object p2, p1, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar:Lcom/join/mgps/customview/MStarBar;

    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    iget-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 240
    .line 241
    iget-object p3, p3, Lcom/join/mgps/activity/ShareGameActivity;->userNameEnd:Landroid/widget/TextView;

    .line 242
    .line 243
    invoke-static {p1, p2, p3}, Lcom/join/mgps/activity/ShareGameActivity;->access$000(Lcom/join/mgps/activity/ShareGameActivity;FLandroid/widget/TextView;)V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->b:Lcom/join/mgps/activity/ShareGameActivity;

    .line 248
    .line 249
    iget-object p3, p0, Lcom/join/mgps/activity/ShareGameActivity$b;->a:Ljava/util/List;

    .line 250
    .line 251
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    check-cast p2, Lcom/join/mgps/dto/TipBean;

    .line 256
    .line 257
    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ShareGameActivity;->sendClickTag(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_1
    return v1
.end method

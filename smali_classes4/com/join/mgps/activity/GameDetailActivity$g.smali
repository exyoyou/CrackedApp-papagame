.class Lcom/join/mgps/activity/GameDetailActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity;->showPopupWindow(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/activity/GameDetailActivity$k;

.field final synthetic f:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic g:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/GameDetailActivity$k;Lcom/join/mgps/dto/GameListItemBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$type",
            "val$text_content",
            "val$gameid",
            "val$myHolder",
            "val$searchDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->e:Lcom/join/mgps/activity/GameDetailActivity$k;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/dto/GameListItemBean;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

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
    invoke-static {p1}, Lcom/join/mgps/Util/t;->f(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, ""

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->mPopWindow:Landroid/widget/PopupWindow;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 54
    .line 55
    .line 56
    iget p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->b:I

    .line 57
    .line 58
    const/4 v0, 0x2

    .line 59
    if-ne p1, v0, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->c:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->textlist:Ljava/util/List;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->d:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, "|"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 105
    .line 106
    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->e:Lcom/join/mgps/activity/GameDetailActivity$k;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->l:Landroid/widget/TextView;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/dto/GameListItemBean;

    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 156
    .line 157
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CollectionBeanSub;->setInfo(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->f:Lcom/join/mgps/dto/GameListItemBean;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 177
    .line 178
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CollectionBeanSub;->setCustomer_info(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 197
    .line 198
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->c:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-nez p1, :cond_3

    .line 219
    .line 220
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 221
    .line 222
    iget-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 223
    .line 224
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iput-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->title_game:Ljava/lang/String;

    .line 237
    .line 238
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 239
    .line 240
    iget-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->title:Landroid/widget/TextView;

    .line 241
    .line 242
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->title_game:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 248
    .line 249
    iget-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->title:Landroid/widget/TextView;

    .line 250
    .line 251
    if-eqz v0, :cond_3

    .line 252
    .line 253
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->title_game:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$g;->g:Lcom/join/mgps/activity/GameDetailActivity;

    .line 260
    .line 261
    const-string v0, "\u4e0d\u80fd\u4e3a\u7a7a\u6216\u8005\u8868\u60c5"

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :cond_3
    :goto_1
    return-void
.end method

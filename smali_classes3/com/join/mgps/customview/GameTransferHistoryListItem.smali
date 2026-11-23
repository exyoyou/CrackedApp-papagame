.class public Lcom/join/mgps/customview/GameTransferHistoryListItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EViewGroup;
    value = 0x7f0d0308
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "GameTransferHistoryListItem"


# instance fields
.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a073e
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a073f
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0744
    .end annotation
.end field

.field e:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a073d
    .end annotation
.end field

.field f:Lcom/join/mgps/dto/GameTransferBean;

.field g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->g:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkpath"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->g:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->g:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Lcom/join/mgps/dto/GameTransferBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Lcom/join/mgps/dto/GameTransferBean;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->b:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getGameName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getSize()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, "M"

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Lcom/join/mgps/dto/GameTransferBean;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTransferBean;->getIconUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const v1, 0x7f080caf

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v0, "bind:  gameName:::"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->b:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, "::gameSize:::"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->c:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 103
    .line 104
    new-instance v0, Lcom/join/mgps/customview/GameTransferHistoryListItem$a;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/GameTransferHistoryListItem$a;-><init>(Lcom/join/mgps/customview/GameTransferHistoryListItem;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Lcom/join/mgps/dto/GameTransferBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTransferBean;->getTransferStatus()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 19
    .line 20
    new-instance v3, Landroid/graphics/Color;

    .line 21
    .line 22
    invoke-direct {v3}, Landroid/graphics/Color;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 30
    .line 31
    .line 32
    const v1, 0x7f1204ef

    .line 33
    .line 34
    .line 35
    const/high16 v2, -0x10000

    .line 36
    .line 37
    const v3, 0x7f060084

    .line 38
    .line 39
    .line 40
    packed-switch v0, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    :pswitch_0
    goto/16 :goto_0

    .line 44
    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 46
    .line 47
    const v1, 0x7f1204f1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->g:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 83
    .line 84
    const v1, 0x7f0802b5

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 91
    .line 92
    const v1, 0x7f1204f0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->g:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const v2, 0x7f060031

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 125
    .line 126
    const v1, 0x7f1204f2

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->g:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :pswitch_5
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :pswitch_6
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 160
    .line 161
    const v1, 0x7f120157

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 168
    .line 169
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->g:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :pswitch_7
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 184
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    iget-object v2, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->f:Lcom/join/mgps/dto/GameTransferBean;

    .line 191
    .line 192
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTransferBean;->getProgerss()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v2, "%"

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 212
    .line 213
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->g:Landroid/content/Context;

    .line 214
    .line 215
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :pswitch_8
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 228
    .line 229
    const v1, 0x7f120567

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->d:Landroid/widget/TextView;

    .line 236
    .line 237
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferHistoryListItem;->g:Landroid/content/Context;

    .line 238
    .line 239
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    const v2, 0x7f060081

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    .line 252
    .line 253
    :goto_0
    return-void

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

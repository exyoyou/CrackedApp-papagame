.class public Lcom/papa91/MessageVipCommonDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private ad_id:Ljava/lang/String;

.field private btn_l:Ljava/lang/String;

.field private btn_r:Ljava/lang/String;

.field private btn_url:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private count:Landroid/widget/TextView;

.field private dialogAdImg:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private emusVipCancelTv:Landroid/widget/TextView;

.field private emusVipContentTv:Landroid/widget/TextView;

.field private emusVipOkTv:Landroid/widget/TextView;

.field private flag:Landroid/view/View;

.field private iv_ad_place:Landroid/widget/ImageView;

.field private pic:Ljava/lang/String;

.field private rootLl:Landroid/widget/LinearLayout;

.field private times:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/papa91/MessageVipCommonDialog;->content:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/papa91/MessageVipCommonDialog;->url:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/papa91/MessageVipCommonDialog;->pic:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/papa91/MessageVipCommonDialog;->ad_id:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/papa91/MessageVipCommonDialog;->btn_l:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/papa91/MessageVipCommonDialog;->btn_r:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/papa91/MessageVipCommonDialog;->btn_url:Ljava/lang/String;

    .line 10
    iput p9, p0, Lcom/papa91/MessageVipCommonDialog;->times:I

    return-void
.end method


# virtual methods
.method public getBtn_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->btn_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x106000d

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x11

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 54
    .line 55
    .line 56
    sget v0, Lcom/papa91/mix/R$layout;->dialog_vip_common_view:I

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 59
    .line 60
    .line 61
    sget v0, Lcom/papa91/mix/R$id;->rootLl:I

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/LinearLayout;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->rootLl:Landroid/widget/LinearLayout;

    .line 70
    .line 71
    sget v0, Lcom/papa91/mix/R$id;->emusVipCancelTv:I

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipCancelTv:Landroid/widget/TextView;

    .line 80
    .line 81
    sget v0, Lcom/papa91/mix/R$id;->emusVipOkTv:I

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/TextView;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipOkTv:Landroid/widget/TextView;

    .line 90
    .line 91
    sget v0, Lcom/papa91/mix/R$id;->emusVipContentTv:I

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/TextView;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipContentTv:Landroid/widget/TextView;

    .line 100
    .line 101
    sget v0, Lcom/papa91/mix/R$id;->dialogAdImg:I

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->dialogAdImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 110
    .line 111
    sget v0, Lcom/papa91/mix/R$id;->flag:I

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->flag:Landroid/view/View;

    .line 118
    .line 119
    sget v0, Lcom/papa91/mix/R$id;->count:I

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/TextView;

    .line 126
    .line 127
    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->count:Landroid/widget/TextView;

    .line 128
    .line 129
    sget v0, Lcom/papa91/mix/R$id;->iv_ad_place:I

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/ImageView;

    .line 136
    .line 137
    iput-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->iv_ad_place:Landroid/widget/ImageView;

    .line 138
    .line 139
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->pic:Ljava/lang/String;

    .line 140
    .line 141
    const/16 v1, 0x8

    .line 142
    .line 143
    const-string v2, ""

    .line 144
    .line 145
    if-eqz v0, :cond_0

    .line 146
    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_0

    .line 152
    .line 153
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->dialogAdImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 154
    .line 155
    iget-object v3, p0, Lcom/papa91/MessageVipCommonDialog;->pic:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->dialogAdImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 161
    .line 162
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->iv_ad_place:Landroid/widget/ImageView;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->dialogAdImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->iv_ad_place:Landroid/widget/ImageView;

    .line 177
    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    :goto_0
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->btn_l:Ljava/lang/String;

    .line 182
    .line 183
    if-eqz v0, :cond_1

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_1

    .line 190
    .line 191
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipCancelTv:Landroid/widget/TextView;

    .line 192
    .line 193
    iget-object v3, p0, Lcom/papa91/MessageVipCommonDialog;->btn_l:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    :cond_1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->btn_r:Ljava/lang/String;

    .line 199
    .line 200
    if-eqz v0, :cond_2

    .line 201
    .line 202
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_2

    .line 207
    .line 208
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipOkTv:Landroid/widget/TextView;

    .line 209
    .line 210
    iget-object v3, p0, Lcom/papa91/MessageVipCommonDialog;->btn_r:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    :cond_2
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->content:Ljava/lang/String;

    .line 216
    .line 217
    if-eqz v0, :cond_3

    .line 218
    .line 219
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_3

    .line 224
    .line 225
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipContentTv:Landroid/widget/TextView;

    .line 226
    .line 227
    iget-object v2, p0, Lcom/papa91/MessageVipCommonDialog;->content:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    :cond_3
    iget v0, p0, Lcom/papa91/MessageVipCommonDialog;->times:I

    .line 233
    .line 234
    const/4 v2, -0x1

    .line 235
    if-ne v0, v2, :cond_4

    .line 236
    .line 237
    iget-object p1, p0, Lcom/papa91/MessageVipCommonDialog;->flag:Landroid/view/View;

    .line 238
    .line 239
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->flag:Landroid/view/View;

    .line 244
    .line 245
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/papa91/MessageVipCommonDialog;->count:Landroid/widget/TextView;

    .line 249
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v1, "\u5269\u4f59"

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget v1, p0, Lcom/papa91/MessageVipCommonDialog;->times:I

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v1, "\u6b21"

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    :goto_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public setCancelBtn(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipCancelTv:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEmusVipContentTv(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipContentTv:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setImgListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->dialogAdImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOkBtn(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/MessageVipCommonDialog;->emusVipOkTv:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.class public Lcom/papa91/arc/dialog/PerfectWarmDialog;
.super Lcom/papa91/arc/view/BaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/PerfectWarmDialog$UrlClickSpan;
    }
.end annotation


# instance fields
.field private btn_center:Landroid/widget/TextView;

.field private btn_left:Landroid/widget/TextView;

.field private btn_right:Landroid/widget/TextView;

.field iv_close:Landroid/widget/ImageView;

.field listener:Lcom/papa91/arc/interfaces/IDialogListener;

.field private pop_window:Lcom/papa91/arc/bean/PopwindowBean;

.field tv_title:Landroid/widget/TextView;

.field tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/papa91/arc/dialog/a;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/papa91/arc/dialog/a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 17
    .line 18
    .line 19
    sget p1, Lorg/ppsspp/ppsspp/R$layout;->dialog_perfect_warm:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setBackgroundDimEnabled(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$new$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/papa91/arc/dialog/PerfectWarmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$initViews$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/papa91/arc/dialog/PerfectWarmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$initViews$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/papa91/arc/dialog/PerfectWarmDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$initViews$5(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/papa91/arc/dialog/PerfectWarmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$initViews$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/papa91/arc/dialog/PerfectWarmDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->lambda$initViews$1(Landroid/view/View;)V

    return-void
.end method

.method private initViews()V
    .locals 5

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_warm:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 10
    .line 11
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btn_left:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_left:Landroid/widget/TextView;

    .line 20
    .line 21
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btn_center:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_center:Landroid/widget/TextView;

    .line 30
    .line 31
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btn_right:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_right:Landroid/widget/TextView;

    .line 40
    .line 41
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_title:Landroid/widget/TextView;

    .line 50
    .line 51
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->iv_close:Landroid/widget/ImageView;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 62
    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonClose()Lcom/papa91/arc/bean/ButtonBean;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x0

    .line 70
    const/16 v2, 0x8

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->iv_close:Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->iv_close:Landroid/widget/ImageView;

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->iv_close:Landroid/widget/ImageView;

    .line 86
    .line 87
    new-instance v3, Lcom/papa91/arc/dialog/b;

    .line 88
    .line 89
    invoke-direct {v3, p0}, Lcom/papa91/arc/dialog/b;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonLeft()Lcom/papa91/arc/bean/ButtonBean;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    .line 103
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_left:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_left:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_left:Landroid/widget/TextView;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonLeft()Lcom/papa91/arc/bean/ButtonBean;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonRight()Lcom/papa91/arc/bean/ButtonBean;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-nez v0, :cond_2

    .line 136
    .line 137
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_right:Landroid/widget/TextView;

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_right:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_right:Landroid/widget/TextView;

    .line 149
    .line 150
    iget-object v3, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonRight()Lcom/papa91/arc/bean/ButtonBean;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    :goto_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_3

    .line 170
    .line 171
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_center:Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_4

    .line 191
    .line 192
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_center:Landroid/widget/TextView;

    .line 193
    .line 194
    iget-object v3, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 195
    .line 196
    invoke-virtual {v3}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v3}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_center:Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_left:Landroid/widget/TextView;

    .line 214
    .line 215
    new-instance v3, Lcom/papa91/arc/dialog/c;

    .line 216
    .line 217
    invoke-direct {v3, p0}, Lcom/papa91/arc/dialog/c;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_center:Landroid/widget/TextView;

    .line 224
    .line 225
    new-instance v3, Lcom/papa91/arc/dialog/d;

    .line 226
    .line 227
    invoke-direct {v3, p0}, Lcom/papa91/arc/dialog/d;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->btn_right:Landroid/widget/TextView;

    .line 234
    .line 235
    new-instance v3, Lcom/papa91/arc/dialog/e;

    .line 236
    .line 237
    invoke-direct {v3, p0}, Lcom/papa91/arc/dialog/e;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getTitle()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_5

    .line 254
    .line 255
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_title:Landroid/widget/TextView;

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_title:Landroid/widget/TextView;

    .line 261
    .line 262
    iget-object v3, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 263
    .line 264
    invoke-virtual {v3}, Lcom/papa91/arc/bean/PopwindowBean;->getTitle()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_title:Landroid/widget/TextView;

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    :goto_4
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 278
    .line 279
    new-instance v3, Lcom/papa91/arc/dialog/PerfectWarmDialog$UrlClickSpan;

    .line 280
    .line 281
    const/4 v4, 0x0

    .line 282
    invoke-direct {v3, p0, v4}, Lcom/papa91/arc/dialog/PerfectWarmDialog$UrlClickSpan;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;Lcom/papa91/arc/dialog/PerfectWarmDialog$1;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 289
    .line 290
    new-instance v3, Lcom/papa91/arc/dialog/f;

    .line 291
    .line 292
    invoke-direct {v3, p0}, Lcom/papa91/arc/dialog/f;-><init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v3}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setOnClickATagListener(Lcom/papa91/arc/widget/htmltext/OnClickATagListener;)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    const v4, 0x106000d

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_6

    .line 329
    .line 330
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 331
    .line 332
    iget-object v2, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 333
    .line 334
    invoke-virtual {v2}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_6
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->tv_warm:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 348
    .line 349
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    .line 351
    .line 352
    :cond_7
    :goto_5
    return-void
.end method

.method private synthetic lambda$initViews$1(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->listener:Lcom/papa91/arc/interfaces/IDialogListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonClose()Lcom/papa91/arc/bean/ButtonBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, p0, v0}, Lcom/papa91/arc/interfaces/IDialogListener;->onCloseClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$2(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->listener:Lcom/papa91/arc/interfaces/IDialogListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonLeft()Lcom/papa91/arc/bean/ButtonBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, p0, v0}, Lcom/papa91/arc/interfaces/IDialogListener;->onLeftClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$3(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->listener:Lcom/papa91/arc/interfaces/IDialogListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, p0, v0}, Lcom/papa91/arc/interfaces/IDialogListener;->onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$4(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->listener:Lcom/papa91/arc/interfaces/IDialogListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonRight()Lcom/papa91/arc/bean/ButtonBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, p0, v0}, Lcom/papa91/arc/interfaces/IDialogListener;->onRightClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$5(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "4"

    .line 6
    .line 7
    const-string v2, "0"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    move-object v3, p3

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method private static synthetic lambda$new$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x4

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method


# virtual methods
.method public setData(Lcom/papa91/arc/bean/PopwindowBean;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setListener(Lcom/papa91/arc/interfaces/IDialogListener;)Lcom/papa91/arc/dialog/PerfectWarmDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/PerfectWarmDialog;->listener:Lcom/papa91/arc/interfaces/IDialogListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->initViews()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

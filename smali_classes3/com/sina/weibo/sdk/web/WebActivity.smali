.class public Lcom/sina/weibo/sdk/web/WebActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/sina/weibo/sdk/web/a;


# instance fields
.field private am:Landroid/widget/LinearLayout;

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/webkit/WebView;

.field private aq:Landroid/widget/ProgressBar;

.field private ar:Lcom/sina/weibo/sdk/web/b/b;

.field private as:Lcom/sina/weibo/sdk/web/a/b;

.field private at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/web/WebActivity;)Lcom/sina/weibo/sdk/web/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    return-object p0
.end method

.method private static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 2
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/web/WebActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/web/WebActivity;)Lcom/sina/weibo/sdk/web/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/sina/weibo/sdk/web/WebActivity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static synthetic e(Lcom/sina/weibo/sdk/web/WebActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->aq:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method private static j(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    const-string v0, "https://service.weibo.com/share/mobilesdk.php"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, "https://open.weibo.cn/oauth2/authorize?"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return v1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_2
    return v1
.end method

.method static synthetic k(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sina/weibo/sdk/web/WebActivity;->j(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x17

    .line 7
    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/16 v0, 0x2000

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, -0x1

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    .line 43
    .line 44
    const-string v3, "\u5173\u95ed"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    .line 50
    .line 51
    const/high16 v3, 0x41880000    # 17.0f

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    .line 57
    .line 58
    const/16 v3, -0x7e00

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    .line 64
    .line 65
    new-instance v3, Lcom/sina/weibo/sdk/web/WebActivity$2;

    .line 66
    .line 67
    invoke-direct {v3, p0}, Lcom/sina/weibo/sdk/web/WebActivity$2;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    .line 79
    .line 80
    const/high16 v3, 0x41900000    # 18.0f

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    .line 86
    .line 87
    const v3, -0xadadae

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .line 95
    const/4 v3, -0x2

    .line 96
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    .line 101
    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .line 103
    .line 104
    const/16 v5, 0xf

    .line 105
    .line 106
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    .line 108
    .line 109
    iget-object v5, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    .line 110
    .line 111
    const/16 v6, 0xa

    .line 112
    .line 113
    invoke-static {v6, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    invoke-static {v6, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    const/4 v8, 0x0

    .line 122
    invoke-virtual {v5, v7, v8, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 123
    .line 124
    .line 125
    const/16 v5, 0xd

    .line 126
    .line 127
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    .line 129
    .line 130
    iget-object v6, p0, Lcom/sina/weibo/sdk/web/WebActivity;->an:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    .line 142
    const/16 v4, 0x37

    .line 143
    .line 144
    invoke-static {v4, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    invoke-direct {v2, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    new-instance v1, Landroid/webkit/WebView;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    iput-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 164
    .line 165
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    .line 167
    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 168
    .line 169
    .line 170
    invoke-static {v4, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 175
    .line 176
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 177
    .line 178
    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Landroid/widget/ProgressBar;

    .line 182
    .line 183
    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 184
    .line 185
    .line 186
    iput-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->aq:Landroid/widget/ProgressBar;

    .line 187
    .line 188
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 189
    .line 190
    const/4 v2, 0x3

    .line 191
    invoke-static {v2, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    invoke-direct {v1, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 196
    .line 197
    .line 198
    invoke-static {v4, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 203
    .line 204
    iget-object v6, p0, Lcom/sina/weibo/sdk/web/WebActivity;->aq:Landroid/widget/ProgressBar;

    .line 205
    .line 206
    invoke-virtual {p1, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .line 208
    .line 209
    new-instance v1, Landroid/view/View;

    .line 210
    .line 211
    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    const-string v7, "weibosdk_common_shadow_top"

    .line 219
    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    const-string v10, "drawable"

    .line 225
    .line 226
    invoke-virtual {v6, v7, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 231
    .line 232
    .line 233
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 234
    .line 235
    invoke-static {v2, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    invoke-direct {v6, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    .line 241
    .line 242
    invoke-static {v4, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 247
    .line 248
    invoke-virtual {p1, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .line 250
    .line 251
    new-instance v1, Landroid/widget/LinearLayout;

    .line 252
    .line 253
    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    iput-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    .line 257
    .line 258
    const/4 v4, 0x1

    .line 259
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 260
    .line 261
    .line 262
    new-instance v1, Landroid/widget/ImageView;

    .line 263
    .line 264
    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    const-string v7, "weibosdk_empty_failed"

    .line 272
    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    invoke-virtual {v6, v7, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    .line 283
    .line 284
    iget-object v6, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    .line 285
    .line 286
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    new-instance v1, Landroid/widget/TextView;

    .line 290
    .line 291
    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 292
    .line 293
    .line 294
    const/high16 v6, 0x41600000    # 14.0f

    .line 295
    .line 296
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 297
    .line 298
    .line 299
    const v6, -0x424243

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    .line 304
    .line 305
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 306
    .line 307
    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 308
    .line 309
    .line 310
    const/16 v7, 0x12

    .line 311
    .line 312
    invoke-static {v7, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 317
    .line 318
    const/16 v7, 0x14

    .line 319
    .line 320
    invoke-static {v7, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 325
    .line 326
    iget-object v7, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    .line 327
    .line 328
    invoke-virtual {v7, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    .line 330
    .line 331
    const-string v6, "\u7f51\u7edc\u51fa\u9519\u5566\uff0c\u8bf7\u70b9\u51fb\u6309\u94ae\u91cd\u65b0\u52a0\u8f7d"

    .line 332
    .line 333
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    .line 335
    .line 336
    new-instance v1, Landroid/widget/Button;

    .line 337
    .line 338
    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 339
    .line 340
    .line 341
    const/high16 v6, 0x41800000    # 16.0f

    .line 342
    .line 343
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 344
    .line 345
    .line 346
    const v6, -0x878788

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    .line 351
    .line 352
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 353
    .line 354
    const/16 v7, 0x8e

    .line 355
    .line 356
    invoke-static {v7, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    const/16 v9, 0x2e

    .line 361
    .line 362
    invoke-static {v9, p0}, Lcom/sina/weibo/sdk/b/e;->a(ILandroid/content/Context;)I

    .line 363
    .line 364
    .line 365
    move-result v9

    .line 366
    invoke-direct {v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 367
    .line 368
    .line 369
    const/16 v7, 0x11

    .line 370
    .line 371
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 372
    .line 373
    iget-object v7, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    .line 374
    .line 375
    invoke-virtual {v7, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    const-string v7, "retry_btn_selector"

    .line 383
    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    invoke-virtual {v6, v7, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 393
    .line 394
    .line 395
    const-string v6, "\u91cd\u65b0\u52a0\u8f7d"

    .line 396
    .line 397
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    .line 399
    .line 400
    new-instance v6, Lcom/sina/weibo/sdk/web/WebActivity$3;

    .line 401
    .line 402
    invoke-direct {v6, p0}, Lcom/sina/weibo/sdk/web/WebActivity$3;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    .line 407
    .line 408
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 409
    .line 410
    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 414
    .line 415
    .line 416
    iget-object v3, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    .line 417
    .line 418
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    .line 420
    .line 421
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    .line 422
    .line 423
    const/16 v3, 0x8

    .line 424
    .line 425
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 429
    .line 430
    new-instance v3, Lcom/sina/weibo/sdk/web/WebActivity$4;

    .line 431
    .line 432
    invoke-direct {v3, p0}, Lcom/sina/weibo/sdk/web/WebActivity$4;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    if-nez p1, :cond_1

    .line 446
    .line 447
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 448
    .line 449
    .line 450
    return-void

    .line 451
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    if-nez v1, :cond_2

    .line 456
    .line 457
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 458
    .line 459
    .line 460
    return-void

    .line 461
    :cond_2
    const-string v3, "web_type"

    .line 462
    .line 463
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    if-ne p1, v0, :cond_3

    .line 468
    .line 469
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 470
    .line 471
    .line 472
    return-void

    .line 473
    :cond_3
    const/4 v0, 0x2

    .line 474
    if-eq p1, v4, :cond_6

    .line 475
    .line 476
    if-eq p1, v0, :cond_5

    .line 477
    .line 478
    if-eq p1, v2, :cond_4

    .line 479
    .line 480
    goto :goto_0

    .line 481
    :cond_4
    new-instance p1, Lcom/sina/weibo/sdk/web/b/c;

    .line 482
    .line 483
    invoke-direct {p1}, Lcom/sina/weibo/sdk/web/b/c;-><init>()V

    .line 484
    .line 485
    .line 486
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 487
    .line 488
    new-instance p1, Lcom/sina/weibo/sdk/web/a/c;

    .line 489
    .line 490
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 491
    .line 492
    invoke-direct {p1, p0, v2}, Lcom/sina/weibo/sdk/web/a/c;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;Lcom/sina/weibo/sdk/web/b/b;)V

    .line 493
    .line 494
    .line 495
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    .line 496
    .line 497
    goto :goto_0

    .line 498
    :cond_5
    const-string p1, "\u5fae\u535a\u767b\u5f55"

    .line 499
    .line 500
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->at:Ljava/lang/String;

    .line 501
    .line 502
    new-instance p1, Lcom/sina/weibo/sdk/web/b/a;

    .line 503
    .line 504
    invoke-direct {p1}, Lcom/sina/weibo/sdk/web/b/a;-><init>()V

    .line 505
    .line 506
    .line 507
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 508
    .line 509
    new-instance p1, Lcom/sina/weibo/sdk/web/a/a;

    .line 510
    .line 511
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 512
    .line 513
    invoke-direct {p1, p0, p0, v2}, Lcom/sina/weibo/sdk/web/a/a;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/web/a;Lcom/sina/weibo/sdk/web/b/b;)V

    .line 514
    .line 515
    .line 516
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    .line 517
    .line 518
    goto :goto_0

    .line 519
    :cond_6
    const-string p1, "\u5fae\u535a\u5206\u4eab"

    .line 520
    .line 521
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->at:Ljava/lang/String;

    .line 522
    .line 523
    new-instance p1, Lcom/sina/weibo/sdk/web/b/d;

    .line 524
    .line 525
    invoke-direct {p1, p0}, Lcom/sina/weibo/sdk/web/b/d;-><init>(Landroid/content/Context;)V

    .line 526
    .line 527
    .line 528
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 529
    .line 530
    new-instance p1, Lcom/sina/weibo/sdk/web/a/d;

    .line 531
    .line 532
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 533
    .line 534
    invoke-direct {p1, p0, p0, v2}, Lcom/sina/weibo/sdk/web/a/d;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/web/a;Lcom/sina/weibo/sdk/web/b/b;)V

    .line 535
    .line 536
    .line 537
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    .line 538
    .line 539
    :goto_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 540
    .line 541
    iget-object v2, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    .line 542
    .line 543
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 544
    .line 545
    .line 546
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 547
    .line 548
    invoke-virtual {p1, v1}, Lcom/sina/weibo/sdk/web/b/b;->readFromBundle(Landroid/os/Bundle;)V

    .line 549
    .line 550
    .line 551
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 552
    .line 553
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 561
    .line 562
    .line 563
    invoke-static {}, Lcom/sina/weibo/sdk/b/e;->o()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 580
    .line 581
    .line 582
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 583
    .line 584
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 585
    .line 586
    .line 587
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 588
    .line 589
    invoke-virtual {v1, v8}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 590
    .line 591
    .line 592
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 593
    .line 594
    const-string v2, "searchBoxJavaBridge_"

    .line 595
    .line 596
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/web/WebActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 600
    .line 601
    const-string v2, "accessibility"

    .line 602
    .line 603
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/web/WebActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 607
    .line 608
    const-string v2, "accessibilityTraversal"

    .line 609
    .line 610
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/web/WebActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 614
    .line 615
    .line 616
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 617
    .line 618
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/web/b/b;->t()Z

    .line 619
    .line 620
    .line 621
    move-result p1

    .line 622
    if-eqz p1, :cond_7

    .line 623
    .line 624
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 625
    .line 626
    new-instance v0, Lcom/sina/weibo/sdk/web/WebActivity$1;

    .line 627
    .line 628
    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/web/WebActivity$1;-><init>(Lcom/sina/weibo/sdk/web/WebActivity;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {p1, v0}, Lcom/sina/weibo/sdk/web/b/b;->a(Lcom/sina/weibo/sdk/web/b/b$a;)V

    .line 632
    .line 633
    .line 634
    goto :goto_1

    .line 635
    :cond_7
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ar:Lcom/sina/weibo/sdk/web/b/b;

    .line 636
    .line 637
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/web/b/b;->getUrl()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    if-nez v0, :cond_8

    .line 646
    .line 647
    invoke-static {p1}, Lcom/sina/weibo/sdk/web/WebActivity;->j(Ljava/lang/String;)Z

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-eqz v0, :cond_8

    .line 652
    .line 653
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 654
    .line 655
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ao:Landroid/widget/TextView;

    .line 659
    .line 660
    if-eqz p1, :cond_9

    .line 661
    .line 662
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->at:Ljava/lang/String;

    .line 663
    .line 664
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    .line 666
    .line 667
    :cond_9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->as:Lcom/sina/weibo/sdk/web/a/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/a/b;->s()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->am:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebActivity;->ap:Landroid/webkit/WebView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

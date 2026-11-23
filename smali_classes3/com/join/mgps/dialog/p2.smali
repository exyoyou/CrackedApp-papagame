.class public Lcom/join/mgps/dialog/p2;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/p2$g;,
        Lcom/join/mgps/dialog/p2$h;
    }
.end annotation


# instance fields
.field b:Landroid/app/Activity;

.field c:Landroid/widget/TextView;

.field d:Landroid/webkit/WebView;

.field e:Ljava/lang/String;

.field f:I

.field g:Lcom/join/mgps/dialog/p2$g;

.field h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Lcom/join/mgps/dialog/p2$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "from",
            "url",
            "hasPermissListener"
        }
    .end annotation

    .line 1
    const v0, 0x7f1301b0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/dialog/p2$e;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/p2$e;-><init>(Lcom/join/mgps/dialog/p2;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/dialog/p2;->h:Landroid/os/Handler;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/join/mgps/dialog/p2;->e:Ljava/lang/String;

    .line 17
    .line 18
    iput p2, p0, Lcom/join/mgps/dialog/p2;->f:I

    .line 19
    .line 20
    iput-object p4, p0, Lcom/join/mgps/dialog/p2;->g:Lcom/join/mgps/dialog/p2$g;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/dialog/p2$f;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/p2$f;-><init>(Lcom/join/mgps/dialog/p2;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Lcom/join/mgps/dialog/p2;->f:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 24
    .line 25
    const-string v1, "file:///android_asset/dialogxieyi1.html"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 32
    .line 33
    const-string v1, "file:///android_asset/dialogxieyi2.html"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txt"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/p2;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/join/mgps/dialog/p2;->f:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v1, Lcom/papa/sim/statistic/Event;->showPrivacyProtocol:Lcom/papa/sim/statistic/Event;

    .line 16
    .line 17
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v1, Lcom/papa/sim/statistic/Event;->showDisagreePrivacyProtocol:Lcom/papa/sim/statistic/Event;

    .line 33
    .line 34
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 35
    .line 36
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 43
    .line 44
    .line 45
    const/4 p1, -0x1

    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 57
    .line 58
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const v2, 0x7f0d020f

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v4, p0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Lcom/join/android/app/common/utils/q;->C(Landroid/app/Activity;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 83
    .line 84
    .line 85
    const v2, 0x7f0a094d

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Landroid/webkit/WebView;

    .line 93
    .line 94
    iput-object v2, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 95
    .line 96
    const v2, 0x7f0a1762

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroid/widget/TextView;

    .line 104
    .line 105
    const v2, 0x7f0a04b1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroid/widget/TextView;

    .line 113
    .line 114
    const v4, 0x7f0a04b8

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Landroid/widget/TextView;

    .line 122
    .line 123
    iget-object v5, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    .line 131
    iget v6, p0, Lcom/join/mgps/dialog/p2;->f:I

    .line 132
    .line 133
    if-ne v6, v0, :cond_1

    .line 134
    .line 135
    iget-object v6, p0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 136
    .line 137
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const v7, 0x7f0715c1

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    iget-object v6, p0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 152
    .line 153
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const v7, 0x7f071405

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 165
    .line 166
    :goto_1
    iget-object v6, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 167
    .line 168
    invoke-virtual {v6, v5}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    iget-object v5, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 172
    .line 173
    invoke-virtual {v5, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 174
    .line 175
    .line 176
    iget-object v5, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 177
    .line 178
    new-instance v6, Lcom/join/mgps/dialog/p2$h;

    .line 179
    .line 180
    iget-object v7, p0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 181
    .line 182
    invoke-direct {v6, p0, v7}, Lcom/join/mgps/dialog/p2$h;-><init>(Lcom/join/mgps/dialog/p2;Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 186
    .line 187
    .line 188
    iget-object v5, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 189
    .line 190
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v5, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 195
    .line 196
    .line 197
    iget-object v5, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 198
    .line 199
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v5, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 204
    .line 205
    .line 206
    iget-object v5, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 207
    .line 208
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v5, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 213
    .line 214
    .line 215
    iget-object v5, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 216
    .line 217
    invoke-virtual {v5, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 218
    .line 219
    .line 220
    iget-object v5, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 221
    .line 222
    invoke-virtual {v5, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 223
    .line 224
    .line 225
    iget-object v5, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 226
    .line 227
    invoke-virtual {v5, p1, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 228
    .line 229
    .line 230
    iget-object v5, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 231
    .line 232
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-virtual {v5, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5, p1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 243
    .line 244
    .line 245
    :try_start_0
    const-string v5, "android.webkit.WebView"

    .line 246
    .line 247
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    const-string v6, "setWebContentsDebuggingEnabled"

    .line 252
    .line 253
    new-array v7, v0, [Ljava/lang/Class;

    .line 254
    .line 255
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 256
    .line 257
    aput-object v8, v7, p1

    .line 258
    .line 259
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    if-eqz v5, :cond_2

    .line 264
    .line 265
    invoke-virtual {v5, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 266
    .line 267
    .line 268
    new-array v6, v0, [Ljava/lang/Object;

    .line 269
    .line 270
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 271
    .line 272
    aput-object v7, v6, p1

    .line 273
    .line 274
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :catch_0
    nop

    .line 279
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 280
    .line 281
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 282
    .line 283
    .line 284
    iget-object v3, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 285
    .line 286
    invoke-virtual {v3, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 287
    .line 288
    .line 289
    iget-object v3, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 290
    .line 291
    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lcom/join/mgps/dialog/p2;->d:Landroid/webkit/WebView;

    .line 295
    .line 296
    new-instance v3, Lcom/join/mgps/dialog/p2$a;

    .line 297
    .line 298
    invoke-direct {v3, p0}, Lcom/join/mgps/dialog/p2$a;-><init>(Lcom/join/mgps/dialog/p2;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 302
    .line 303
    .line 304
    iget p1, p0, Lcom/join/mgps/dialog/p2;->f:I

    .line 305
    .line 306
    if-ne p1, v0, :cond_3

    .line 307
    .line 308
    const-string p1, "\u4e0d\u540c\u610f"

    .line 309
    .line 310
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    const-string p1, "\u540c\u610f"

    .line 314
    .line 315
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_3
    const-string p1, "\u9000\u51fa\u5e94\u7528"

    .line 320
    .line 321
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    const-string p1, "\u6211\u518d\u60f3\u60f3"

    .line 325
    .line 326
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    :goto_3
    new-instance p1, Lcom/join/mgps/dialog/p2$b;

    .line 330
    .line 331
    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/p2$b;-><init>(Lcom/join/mgps/dialog/p2;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    .line 336
    .line 337
    new-instance p1, Lcom/join/mgps/dialog/p2$c;

    .line 338
    .line 339
    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/p2$c;-><init>(Lcom/join/mgps/dialog/p2;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    .line 344
    .line 345
    new-instance p1, Lcom/join/mgps/dialog/p2$d;

    .line 346
    .line 347
    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/p2$d;-><init>(Lcom/join/mgps/dialog/p2;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 354
    .line 355
    .line 356
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/dialog/p2;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

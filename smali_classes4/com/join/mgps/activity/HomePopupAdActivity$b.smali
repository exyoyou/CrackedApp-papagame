.class public Lcom/join/mgps/activity/HomePopupAdActivity$b;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HomePopupAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/activity/HomePopupAdActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/HomePopupAdActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->a:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    .line 1
    check-cast p3, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    instance-of v0, p2, Lcom/join/mgps/dto/RecomDatabean;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    check-cast p2, Lcom/join/mgps/dto/RecomDatabean;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const v7, 0x7f0d0392

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const v6, 0x7f0a0094

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    const v7, 0x7f0a0502

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    check-cast v8, Lcom/facebook/drawee/generic/a;

    .line 63
    .line 64
    const v9, 0x7f080caf

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v9}, Lcom/facebook/drawee/generic/a;->J(I)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    iget-object v9, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 75
    .line 76
    invoke-virtual {v9, v0}, Lcom/join/mgps/activity/HomePopupAdActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_0

    .line 81
    .line 82
    new-instance v9, Ljava/io/File;

    .line 83
    .line 84
    invoke-static {v5}, Lcom/join/mgps/Util/z;->b(Landroid/content/Context;)Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-static {v0}, Lcom/join/mgps/Util/o0;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v9}, Lcom/join/mgps/Util/t0;->j(Ljava/io/File;)Landroid/net/Uri;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    :goto_0
    invoke-virtual {v8, v9}, Lcom/facebook/drawee/backends/pipeline/e;->e0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v8, v0}, Lcom/facebook/drawee/backends/pipeline/e;->e0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->F(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v6, v0}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v3}, Landroid/view/View;->setClickable(Z)V

    .line 133
    .line 134
    .line 135
    :try_start_0
    invoke-virtual {p1, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    .line 147
    .line 148
    if-eqz p1, :cond_1

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    const/16 v2, 0x11

    .line 155
    .line 156
    if-ne v0, v2, :cond_1

    .line 157
    .line 158
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/AppBeanMain;->setLink_type(I)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;

    .line 162
    .line 163
    invoke-direct {v0, p0, v5, p1}, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    :cond_1
    new-instance p1, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;

    .line 170
    .line 171
    invoke-direct {p1, p0, p2}, Lcom/join/mgps/activity/HomePopupAdActivity$b$b;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;Lcom/join/mgps/dto/RecomDatabean;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    :goto_1
    return-object v1

    .line 183
    :cond_2
    instance-of v0, p2, Lcom/join/mgps/dto/EverdayLogin;

    .line 184
    .line 185
    if-eqz v0, :cond_3

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const v5, 0x7f0d0391

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 203
    .line 204
    const v6, 0x7f0a1bdc

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    check-cast v6, Landroid/webkit/WebView;

    .line 212
    .line 213
    invoke-static {v5, v6}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$002(Lcom/join/mgps/activity/HomePopupAdActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 214
    .line 215
    .line 216
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 217
    .line 218
    invoke-static {v5}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 223
    .line 224
    .line 225
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 226
    .line 227
    invoke-static {v5}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 236
    .line 237
    .line 238
    check-cast p2, Lcom/join/mgps/dto/EverdayLogin;

    .line 239
    .line 240
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 241
    .line 242
    invoke-static {v5}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 251
    .line 252
    .line 253
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 254
    .line 255
    invoke-static {v5}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {p2}, Lcom/join/mgps/dto/EverdayLogin;->getFilePath()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-virtual {v5, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 267
    .line 268
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p2, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 273
    .line 274
    .line 275
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 276
    .line 277
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-virtual {p2, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 282
    .line 283
    .line 284
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 285
    .line 286
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    new-instance v4, Lcom/join/mgps/activity/HomePopupAdActivity$b$c;

    .line 291
    .line 292
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/HomePopupAdActivity$b$c;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 296
    .line 297
    .line 298
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 299
    .line 300
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    new-instance v4, Lcom/join/mgps/activity/HomePopupAdActivity$b$d;

    .line 305
    .line 306
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/HomePopupAdActivity$b$d;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 310
    .line 311
    .line 312
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 313
    .line 314
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    new-instance v4, Lcom/join/mgps/activity/HomePopupAdActivity$c;

    .line 319
    .line 320
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 321
    .line 322
    invoke-direct {v4, v5}, Lcom/join/mgps/activity/HomePopupAdActivity$c;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity;)V

    .line 323
    .line 324
    .line 325
    const-string v5, "papa"

    .line 326
    .line 327
    invoke-virtual {p2, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 331
    .line 332
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    invoke-virtual {p2, v3, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 337
    .line 338
    .line 339
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 340
    .line 341
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdActivity;->access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->T3(Landroid/webkit/WebView;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 349
    .line 350
    .line 351
    return-object v0

    .line 352
    :cond_3
    new-instance p2, Landroid/widget/TextView;

    .line 353
    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 359
    .line 360
    .line 361
    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "object"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

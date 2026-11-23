.class public Lcom/join/mgps/activity/HomePopupAdQWActivity$c;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HomePopupAdQWActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
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

.field final synthetic b:Lcom/join/mgps/activity/HomePopupAdQWActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->a:Ljava/util/List;

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
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->a:Ljava/util/List;

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
    .locals 13
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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->a:Ljava/util/List;

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
    const/4 v2, 0x1

    .line 11
    const/4 v3, -0x1

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
    move-result-object v9

    .line 29
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const v6, 0x7f0d0392

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const v5, 0x7f0a0094

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    move-object v11, v5

    .line 48
    check-cast v11, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    .line 50
    const v5, 0x7f0a0502

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    move-object v12, v5

    .line 58
    check-cast v12, Landroid/widget/TextView;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 61
    .line 62
    const v6, 0x7f0a03b0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-instance v6, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$a;

    .line 70
    .line 71
    invoke-direct {v6, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$a;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/facebook/drawee/generic/a;

    .line 82
    .line 83
    const v6, 0x7f080caf

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v6}, Lcom/facebook/drawee/generic/a;->J(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v6, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 94
    .line 95
    invoke-virtual {v6, v0}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->k(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_0

    .line 100
    .line 101
    new-instance v6, Ljava/io/File;

    .line 102
    .line 103
    iget-object v7, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 104
    .line 105
    invoke-static {v7}, Lcom/join/mgps/Util/z;->b(Landroid/content/Context;)Ljava/io/File;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v0}, Lcom/join/mgps/Util/o0;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v6}, Lcom/join/mgps/Util/t0;->j(Ljava/io/File;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    goto :goto_0

    .line 121
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_0
    invoke-virtual {v5, v0}, Lcom/facebook/drawee/backends/pipeline/e;->e0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11}, Lcom/facebook/drawee/view/DraweeView;->getController()Ls3/a;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v5, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->Q(Ls3/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$b;

    .line 136
    .line 137
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$b;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->I(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v11, v0}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v11, v2}, Landroid/view/View;->setClickable(Z)V

    .line 151
    .line 152
    .line 153
    :try_start_0
    invoke-virtual {p1, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    move-object v10, p1

    .line 165
    check-cast v10, Lcom/join/mgps/dto/AppBeanMain;

    .line 166
    .line 167
    invoke-virtual {v10}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type_val()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {v10}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    const/16 v3, 0x11

    .line 176
    .line 177
    if-ne v0, v3, :cond_1

    .line 178
    .line 179
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/AppBeanMain;->setLink_type(I)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;

    .line 183
    .line 184
    move-object v5, v0

    .line 185
    move-object v6, p0

    .line 186
    move-object v7, p1

    .line 187
    move-object v8, p2

    .line 188
    invoke-direct/range {v5 .. v10}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$c;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;Ljava/lang/String;Lcom/join/mgps/dto/RecomDatabean;Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    :cond_1
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;

    .line 195
    .line 196
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$d;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;Ljava/lang/String;Lcom/join/mgps/dto/RecomDatabean;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    .line 206
    .line 207
    :goto_1
    return-object v1

    .line 208
    :cond_2
    instance-of v0, p2, Lcom/join/mgps/dto/EverdayLogin;

    .line 209
    .line 210
    if-eqz v0, :cond_3

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const v5, 0x7f0d0391

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 228
    .line 229
    const v5, 0x7f0a1bdc

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    check-cast v5, Landroid/webkit/WebView;

    .line 237
    .line 238
    invoke-static {v1, v5}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b(Lcom/join/mgps/activity/HomePopupAdQWActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 242
    .line 243
    invoke-static {v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 248
    .line 249
    .line 250
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 251
    .line 252
    invoke-static {v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 261
    .line 262
    .line 263
    check-cast p2, Lcom/join/mgps/dto/EverdayLogin;

    .line 264
    .line 265
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 266
    .line 267
    invoke-static {v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 276
    .line 277
    .line 278
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 279
    .line 280
    invoke-static {v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {p2}, Lcom/join/mgps/dto/EverdayLogin;->getFilePath()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 292
    .line 293
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-virtual {p2, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 298
    .line 299
    .line 300
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 301
    .line 302
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-virtual {p2, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 307
    .line 308
    .line 309
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 310
    .line 311
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    new-instance v1, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$e;

    .line 316
    .line 317
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$e;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 321
    .line 322
    .line 323
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 324
    .line 325
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    new-instance v1, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$f;

    .line 330
    .line 331
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$f;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 335
    .line 336
    .line 337
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 338
    .line 339
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    new-instance v1, Lcom/join/mgps/activity/HomePopupAdQWActivity$d;

    .line 344
    .line 345
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 346
    .line 347
    invoke-direct {v1, v2}, Lcom/join/mgps/activity/HomePopupAdQWActivity$d;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V

    .line 348
    .line 349
    .line 350
    const-string v2, "papa"

    .line 351
    .line 352
    invoke-virtual {p2, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-object p2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 356
    .line 357
    invoke-static {p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->T3(Landroid/webkit/WebView;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 365
    .line 366
    .line 367
    return-object v0

    .line 368
    :cond_3
    new-instance p2, Landroid/widget/TextView;

    .line 369
    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 375
    .line 376
    .line 377
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

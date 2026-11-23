.class public Lcom/join/mgps/activity/GameInformationActivityV2$n;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/activity/GameInformationActivityV2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$o;->b:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2$n;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webview:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 14
    .line 15
    iget-object v0, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$t;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$t;->d:Landroid/webkit/WebView;

    .line 26
    .line 27
    iput-object p1, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 35
    .line 36
    const/4 p2, -0x1

    .line 37
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 55
    .line 56
    new-instance v0, Landroid/webkit/WebChromeClient;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 67
    .line 68
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "papa"

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 79
    .line 80
    iget-object v0, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 81
    .line 82
    const-string v1, "about:blank"

    .line 83
    .line 84
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$300(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/GameInformationBean;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getContent()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v3, "text/html"

    .line 93
    .line 94
    const-string v4, "utf-8"

    .line 95
    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->T3(Landroid/webkit/WebView;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 110
    .line 111
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$n$b;

    .line 112
    .line 113
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$b;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :cond_1
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->TITLE:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-ne v0, v1, :cond_2

    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 137
    .line 138
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$s;

    .line 139
    .line 140
    invoke-virtual {v0, p2, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->getCommentTitle(ILcom/join/mgps/activity/GameInformationActivityV2$s;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_2
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->commentTitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ne v0, v1, :cond_3

    .line 152
    .line 153
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$m;

    .line 154
    .line 155
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$m;->d:Landroid/widget/TextView;

    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 163
    .line 164
    invoke-static {v1}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$400(Lcom/join/mgps/activity/GameInformationActivityV2;)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v1, "\u6761"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$m;->e:Landroid/widget/TextView;

    .line 184
    .line 185
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$n$c;

    .line 186
    .line 187
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$c;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_3
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->card:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-ne v0, v1, :cond_4

    .line 202
    .line 203
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;

    .line 204
    .line 205
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 206
    .line 207
    iget-object v0, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->m:Landroid/widget/Button;

    .line 208
    .line 209
    iput-object v0, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 210
    .line 211
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$500(Lcom/join/mgps/activity/GameInformationActivityV2;)V

    .line 212
    .line 213
    .line 214
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->f:Landroid/widget/TextView;

    .line 215
    .line 216
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 217
    .line 218
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$100(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getGame_name()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 230
    .line 231
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 232
    .line 233
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$100(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getIco_remote()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {p2, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 245
    .line 246
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$100(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    iget-object v0, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->k:Landroid/widget/TextView;

    .line 255
    .line 256
    invoke-static {p2, v0}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 257
    .line 258
    .line 259
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 260
    .line 261
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$n$d;

    .line 262
    .line 263
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$d;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->l:Landroid/widget/TextView;

    .line 270
    .line 271
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$n$e;

    .line 272
    .line 273
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$e;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 280
    .line 281
    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 282
    .line 283
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$n$f;

    .line 284
    .line 285
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$f;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .line 290
    .line 291
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->i:Landroid/widget/TextView;

    .line 292
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 299
    .line 300
    invoke-static {v1}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$100(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_count()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->b(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v1, "\u70ed\u5ea6"

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->h:Landroid/widget/TextView;

    .line 328
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v1, "/"

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 340
    .line 341
    invoke-static {v1}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$100(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getSize()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v1, "M"

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    .line 363
    .line 364
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->j:Landroid/widget/TextView;

    .line 365
    .line 366
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 367
    .line 368
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$100(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBean;->getInfo()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_4
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->COMMENT:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 382
    .line 383
    invoke-virtual {v1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-ne v0, v1, :cond_5

    .line 388
    .line 389
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 390
    .line 391
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$l;

    .line 392
    .line 393
    invoke-virtual {v0, p2, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->getCommentView(ILcom/join/mgps/activity/GameInformationActivityV2$l;)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_0

    .line 397
    .line 398
    :cond_5
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 399
    .line 400
    invoke-virtual {v1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-ne v0, v1, :cond_6

    .line 405
    .line 406
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 407
    .line 408
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$q;

    .line 409
    .line 410
    invoke-static {v0, p2, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$600(Lcom/join/mgps/activity/GameInformationActivityV2;ILcom/join/mgps/activity/GameInformationActivityV2$q;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_6
    sget-object p2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webtitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 416
    .line 417
    invoke-virtual {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 418
    .line 419
    .line 420
    move-result p2

    .line 421
    if-ne v0, p2, :cond_7

    .line 422
    .line 423
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$u;

    .line 424
    .line 425
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$u;->a(Lcom/join/mgps/activity/GameInformationActivityV2$u;)Landroid/widget/TextView;

    .line 426
    .line 427
    .line 428
    move-result-object p2

    .line 429
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 430
    .line 431
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$300(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/GameInformationBean;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInformationBean;->getTitle()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    .line 441
    .line 442
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$u;->b(Lcom/join/mgps/activity/GameInformationActivityV2$u;)Landroid/widget/TextView;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .line 450
    .line 451
    const-string v1, "\u4f5c\u8005:"

    .line 452
    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 457
    .line 458
    invoke-static {v1}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$300(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/GameInformationBean;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getAuthor()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    .line 475
    .line 476
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$u;->c(Lcom/join/mgps/activity/GameInformationActivityV2$u;)Landroid/widget/TextView;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 481
    .line 482
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$300(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/GameInformationBean;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameInformationBean;->getRelease_time()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p2

    .line 490
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    .line 492
    .line 493
    goto :goto_0

    .line 494
    :cond_7
    sget-object p2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->sendcomment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 495
    .line 496
    invoke-virtual {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 497
    .line 498
    .line 499
    move-result p2

    .line 500
    if-ne v0, p2, :cond_9

    .line 501
    .line 502
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$r;

    .line 503
    .line 504
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 505
    .line 506
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$r;->a(Lcom/join/mgps/activity/GameInformationActivityV2$r;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    iput-object v0, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->usericonMe:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 511
    .line 512
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$r;->a(Lcom/join/mgps/activity/GameInformationActivityV2$r;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 513
    .line 514
    .line 515
    move-result-object p2

    .line 516
    const v0, 0x7f081323

    .line 517
    .line 518
    .line 519
    invoke-virtual {p2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 520
    .line 521
    .line 522
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 523
    .line 524
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$1100(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 525
    .line 526
    .line 527
    move-result-object p2

    .line 528
    if-eqz p2, :cond_8

    .line 529
    .line 530
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 531
    .line 532
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$000(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/content/Context;

    .line 533
    .line 534
    .line 535
    move-result-object p2

    .line 536
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 537
    .line 538
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$1100(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$r;->a(Lcom/join/mgps/activity/GameInformationActivityV2$r;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-static {p2, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 551
    .line 552
    .line 553
    :cond_8
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$r;->b(Lcom/join/mgps/activity/GameInformationActivityV2$r;)Landroid/widget/TextView;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$n$g;

    .line 558
    .line 559
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$g;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    .line 564
    .line 565
    :cond_9
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webview:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    new-instance p2, Landroid/webkit/WebView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    const/4 v1, -0x2

    .line 22
    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/join/mgps/activity/GameInformationActivityV2$t;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 31
    .line 32
    invoke-direct {p1, v0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2$t;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->TITLE:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    if-ne p2, v0, :cond_1

    .line 44
    .line 45
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const v0, 0x7f0d0356

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$s;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 63
    .line 64
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$s;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    return-object p2

    .line 68
    :cond_1
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->commentTitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-ne p2, v0, :cond_2

    .line 75
    .line 76
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 77
    .line 78
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$000(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const v0, 0x7f0d02fe

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$m;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 96
    .line 97
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$m;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    return-object p2

    .line 101
    :cond_2
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->card:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-ne p2, v0, :cond_3

    .line 108
    .line 109
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 110
    .line 111
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$000(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    const v0, 0x7f0d0355

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$k;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 129
    .line 130
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$k;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    return-object p2

    .line 134
    :cond_3
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->COMMENT:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-ne p2, v0, :cond_4

    .line 141
    .line 142
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 143
    .line 144
    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    const v0, 0x7f0d0357

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$l;

    .line 158
    .line 159
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 160
    .line 161
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$l;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    return-object p2

    .line 165
    :cond_4
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-ne p2, v0, :cond_5

    .line 172
    .line 173
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 174
    .line 175
    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    const v0, 0x7f0d06f6

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$q;

    .line 189
    .line 190
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 191
    .line 192
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$q;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    return-object p2

    .line 196
    :cond_5
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webtitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-ne p2, v0, :cond_6

    .line 203
    .line 204
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 205
    .line 206
    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    const v0, 0x7f0d0359

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$u;

    .line 220
    .line 221
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 222
    .line 223
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$u;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    .line 224
    .line 225
    .line 226
    return-object p2

    .line 227
    :cond_6
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->sendcomment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-ne p2, v0, :cond_7

    .line 234
    .line 235
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 236
    .line 237
    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->mContext:Landroid/content/Context;

    .line 238
    .line 239
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    const v0, 0x7f0d02ff

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$r;

    .line 251
    .line 252
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 253
    .line 254
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$r;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    .line 255
    .line 256
    .line 257
    return-object p2

    .line 258
    :cond_7
    const/4 p1, 0x0

    .line 259
    return-object p1
.end method

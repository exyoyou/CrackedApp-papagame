.class public Lcom/beizi/ad/internal/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/AdActivity$a;


# static fields
.field public static a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/ImageView;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/beizi/ad/internal/activity/a;->a:Ljava/util/LinkedList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/beizi/ad/internal/activity/a;->e:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/beizi/ad/internal/activity/a;->f:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/beizi/ad/internal/activity/a;->g:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    if-ne p5, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-boolean p1, p0, Lcom/beizi/ad/internal/activity/a;->j:Z

    .line 18
    .line 19
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/internal/activity/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/a;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 34
    iget-boolean v0, p0, Lcom/beizi/ad/internal/activity/a;->j:Z

    if-eqz v0, :cond_1

    .line 35
    iget-boolean v0, p0, Lcom/beizi/ad/internal/activity/a;->h:Z

    if-eqz v0, :cond_0

    .line 36
    iget-boolean v0, p0, Lcom/beizi/ad/internal/activity/a;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/beizi/ad/internal/activity/a;->h:Z

    .line 38
    :cond_1
    invoke-static {p1}, Lcom/beizi/ad/internal/e/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 39
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 40
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    :try_start_0
    iget-object p1, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0}, Lcom/beizi/ad/internal/activity/a;->c()V

    .line 43
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/internal/activity/a;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/ad/internal/activity/a;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/beizi/ad/internal/activity/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/ad/internal/activity/a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/beizi/ad/internal/activity/a;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic b(Lcom/beizi/ad/internal/activity/a;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/ad/internal/activity/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/beizi/ad/internal/activity/a;->c(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 9
    :cond_0
    iget-boolean p1, p0, Lcom/beizi/ad/internal/activity/a;->e:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method static synthetic c(Lcom/beizi/ad/internal/activity/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/a;->f()V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .line 5
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/internal/c;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e()V
    .locals 8

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/internal/activity/a;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/ad/internal/activity/a;->h:Z

    .line 7
    .line 8
    if-nez v0, :cond_9

    .line 9
    .line 10
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->g:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/beizi/ad/internal/activity/a;->h:Z

    .line 22
    .line 23
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/a;->g:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/high16 v3, 0x10000000

    .line 34
    .line 35
    if-eqz v2, :cond_6

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v4, "bzopen"

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_6

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_6

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-lez v2, :cond_6

    .line 68
    .line 69
    new-instance v2, Landroid/content/Intent;

    .line 70
    .line 71
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v4, "android.intent.action.MAIN"

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string v3, "android.intent.category.LAUNCHER"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const-string v3, "flags"

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    const/4 v5, 0x2

    .line 98
    if-nez v4, :cond_4

    .line 99
    .line 100
    :try_start_1
    const-string v4, "0x"

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_3

    .line 107
    .line 108
    const-string v4, "0X"

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_2

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const/16 v4, 0x10

    .line 130
    .line 131
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catch_0
    move-exception v3

    .line 140
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_1
    new-instance v3, Landroid/content/ComponentName;

    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const/4 v7, 0x0

    .line 154
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    check-cast v6, Ljava/lang/String;

    .line 159
    .line 160
    invoke-direct {v3, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    const-string v3, "rect"

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    if-nez v3, :cond_5

    .line 177
    .line 178
    :try_start_3
    const-string v3, ":"

    .line 179
    .line 180
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    array-length v3, v1

    .line 185
    const/4 v4, 0x4

    .line 186
    if-ne v3, v4, :cond_5

    .line 187
    .line 188
    new-instance v3, Landroid/graphics/Rect;

    .line 189
    .line 190
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 191
    .line 192
    .line 193
    aget-object v4, v1, v7

    .line 194
    .line 195
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    aget-object v0, v1, v0

    .line 200
    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    aget-object v5, v1, v5

    .line 206
    .line 207
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    const/4 v6, 0x3

    .line 212
    aget-object v1, v1, v6

    .line 213
    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :catch_1
    move-exception v0

    .line 226
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_6
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/a;->g:Ljava/lang/String;

    .line 236
    .line 237
    const-string v4, "hwpps://landingpage"

    .line 238
    .line 239
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_7

    .line 244
    .line 245
    new-instance v0, Landroid/content/Intent;

    .line 246
    .line 247
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    .line 257
    .line 258
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_7
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/a;->g:Ljava/lang/String;

    .line 263
    .line 264
    const-string v4, "intent"

    .line 265
    .line 266
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_8

    .line 271
    .line 272
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/a;->g:Ljava/lang/String;

    .line 273
    .line 274
    invoke-static {v1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    .line 282
    .line 283
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 284
    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_8
    new-instance v0, Landroid/content/Intent;

    .line 288
    .line 289
    const-string v2, "android.intent.action.VIEW"

    .line 290
    .line 291
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 292
    .line 293
    .line 294
    const v1, 0x30008000

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    .line 299
    .line 300
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    .line 301
    .line 302
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_9
    :goto_3
    return-void

    .line 307
    :catchall_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    .line 310
    .line 311
    :goto_4
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    sget v1, Lcom/beizi/fusion/R$style;->BeiZiTheme:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    sget v1, Lcom/beizi/fusion/R$layout;->activity_in_app_browser:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 6
    sget-object v0, Lcom/beizi/ad/internal/activity/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/content/MutableContextWrapper;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/MutableContextWrapper;

    iget-object v1, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    sget v1, Lcom/beizi/fusion/R$id;->web_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 11
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 15
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/beizi/ad/internal/e/t;->a(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 20
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 21
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 22
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 23
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 24
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    sget v1, Lcom/beizi/fusion/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 25
    :try_start_0
    iget-boolean v1, p0, Lcom/beizi/ad/internal/activity/a;->j:Z

    if-eqz v1, :cond_2

    .line 26
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/beizi/ad/internal/activity/a$1;

    invoke-direct {v2, p0}, Lcom/beizi/ad/internal/activity/a$1;-><init>(Lcom/beizi/ad/internal/activity/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/beizi/ad/internal/activity/a$2;

    invoke-direct {v2, p0}, Lcom/beizi/ad/internal/activity/a$2;-><init>(Lcom/beizi/ad/internal/activity/a;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 29
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/beizi/ad/internal/activity/a$3;

    invoke-direct {v2, p0}, Lcom/beizi/ad/internal/activity/a$3;-><init>(Lcom/beizi/ad/internal/activity/a;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 30
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/beizi/ad/internal/activity/a$4;

    iget-object v3, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v0}, Lcom/beizi/ad/internal/activity/a$4;-><init>(Lcom/beizi/ad/internal/activity/a;Landroid/app/Activity;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 31
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->b:Landroid/app/Activity;

    sget v1, Lcom/beizi/fusion/R$id;->close_iv:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/a;->d:Landroid/widget/ImageView;

    .line 32
    new-instance v1, Lcom/beizi/ad/internal/activity/a$5;

    invoke-direct {v1, p0}, Lcom/beizi/ad/internal/activity/a$5;-><init>(Lcom/beizi/ad/internal/activity/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 33
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/a;->f()V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "...........................backPressed..........................."

    const-string v1, "lance"

    .line 3
    invoke-static {v1, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const-string v0, " mWebView.goBack()"

    .line 6
    invoke-static {v1, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/a;->f()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/beizi/ad/internal/e/t;->a(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public d()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/a;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object v0
.end method

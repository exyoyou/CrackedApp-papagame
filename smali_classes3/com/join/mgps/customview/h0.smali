.class public Lcom/join/mgps/customview/h0;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/h0$e;,
        Lcom/join/mgps/customview/h0$f;
    }
.end annotation


# instance fields
.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/ImageView;

.field i:Landroid/widget/ImageView;

.field j:Landroid/widget/ImageView;

.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field m:Landroid/view/View;

.field n:Landroid/widget/TextView;

.field o:Landroid/view/View;

.field p:Landroid/widget/ListView;

.field q:Lcom/join/mgps/customview/h0$e;

.field r:Lcom/join/mgps/customview/h0$f;

.field s:Landroid/os/Handler;

.field t:Landroid/content/Context;

.field public u:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/customview/h0$e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/customview/h0$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/h0$a;-><init>(Lcom/join/mgps/customview/h0;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/h0;->s:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/customview/h0;->t:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0d07dc

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v1, 0x7f0a1b8b

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->b:Landroid/view/View;

    .line 33
    .line 34
    const v1, 0x7f0a1b95

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->c:Landroid/view/View;

    .line 42
    .line 43
    const v1, 0x7f0a1b8d

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->d:Landroid/view/View;

    .line 51
    .line 52
    const v1, 0x7f0a1929

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->e:Landroid/widget/TextView;

    .line 62
    .line 63
    const v1, 0x7f0a1a1d

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->f:Landroid/widget/TextView;

    .line 73
    .line 74
    const v1, 0x7f0a1980

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroid/widget/TextView;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->g:Landroid/widget/TextView;

    .line 84
    .line 85
    const v1, 0x7f0a0a3c

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/widget/ImageView;

    .line 93
    .line 94
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->j:Landroid/widget/ImageView;

    .line 95
    .line 96
    const v1, 0x7f0a0a7c

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Landroid/widget/ImageView;

    .line 104
    .line 105
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->i:Landroid/widget/ImageView;

    .line 106
    .line 107
    const v1, 0x7f0a0a16

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroid/widget/ImageView;

    .line 115
    .line 116
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->h:Landroid/widget/ImageView;

    .line 117
    .line 118
    const v1, 0x7f0a13f9

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->k:Landroid/view/View;

    .line 126
    .line 127
    const v1, 0x7f0a13ca

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->l:Landroid/view/View;

    .line 135
    .line 136
    const v1, 0x7f0a13dc

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->m:Landroid/view/View;

    .line 144
    .line 145
    const v1, 0x7f0a011b

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Landroid/widget/TextView;

    .line 153
    .line 154
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->n:Landroid/widget/TextView;

    .line 155
    .line 156
    const v1, 0x7f0a0a0c

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->o:Landroid/view/View;

    .line 164
    .line 165
    const v1, 0x7f0a0e8e

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Landroid/widget/ListView;

    .line 173
    .line 174
    iput-object v1, p0, Lcom/join/mgps/customview/h0;->p:Landroid/widget/ListView;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/join/mgps/customview/h0;->k:Landroid/view/View;

    .line 177
    .line 178
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    iput-object p2, p0, Lcom/join/mgps/customview/h0;->q:Lcom/join/mgps/customview/h0$e;

    .line 182
    .line 183
    const v1, 0x7f0a13d1

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    const v1, 0x7f0a13fc

    .line 194
    .line 195
    .line 196
    invoke-static {v0, v1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    const v1, 0x7f0a13dd

    .line 204
    .line 205
    .line 206
    invoke-static {v0, v1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    const v1, 0x7f0a057c

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    new-instance v2, Lcom/join/mgps/customview/h0$b;

    .line 221
    .line 222
    invoke-direct {v2, p0}, Lcom/join/mgps/customview/h0$b;-><init>(Lcom/join/mgps/customview/h0;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 240
    .line 241
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 242
    .line 243
    .line 244
    const/4 p1, -0x2

    .line 245
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 249
    .line 250
    .line 251
    invoke-direct {p0}, Lcom/join/mgps/customview/h0;->e()V

    .line 252
    .line 253
    .line 254
    new-instance p1, Lcom/join/mgps/customview/h0$f;

    .line 255
    .line 256
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/h0$f;-><init>(Lcom/join/mgps/customview/h0;)V

    .line 257
    .line 258
    .line 259
    iput-object p1, p0, Lcom/join/mgps/customview/h0;->r:Lcom/join/mgps/customview/h0$f;

    .line 260
    .line 261
    iget-object v0, p0, Lcom/join/mgps/customview/h0;->p:Landroid/widget/ListView;

    .line 262
    .line 263
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/join/mgps/customview/h0;->p:Landroid/widget/ListView;

    .line 267
    .line 268
    new-instance v0, Lcom/join/mgps/customview/h0$c;

    .line 269
    .line 270
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/customview/h0$c;-><init>(Lcom/join/mgps/customview/h0;Lcom/join/mgps/customview/h0$e;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 274
    .line 275
    .line 276
    return-void
.end method

.method private d(Landroid/view/View;ZLandroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "isHighPing",
            "recView",
            "isCurrentArea"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const p2, 0x7f080267

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const p2, 0x7f080265

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    .line 12
    .line 13
    if-eqz p4, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/16 p1, 0x8

    .line 18
    .line 19
    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/join/mgps/customview/h0$d;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/h0$d;-><init>(Lcom/join/mgps/customview/h0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/papa91/battle/protocol/BattleArea;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mBattleArea",
            "isAll"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/customview/h0;->k:Landroid/view/View;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/customview/h0;->k:Landroid/view/View;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/customview/h0;->n:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->d(Lcom/papa91/battle/protocol/BattleArea;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public b(Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "areas",
            "currentArea"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;",
            "Lapp/mgsim/arena/AreaInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lapp/mgsim/arena/AreaInfo;

    .line 16
    .line 17
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "\u4eba"

    .line 23
    .line 24
    const-string v4, "\u5728\u7ebf\uff1a"

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    if-ne v1, v5, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/customview/h0;->e:Landroid/widget/TextView;

    .line 30
    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getOnLinePeopleCounts()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/customview/h0;->b:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    invoke-static {v3, v4}, Lcom/join/mgps/socket/fight/arena/c;->m(J)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v4, p0, Lcom/join/mgps/customview/h0;->h:Landroid/widget/ImageView;

    .line 67
    .line 68
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-ne v6, v7, :cond_1

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    :cond_1
    invoke-direct {p0, v1, v3, v4, v2}, Lcom/join/mgps/customview/h0;->d(Landroid/view/View;ZLandroid/view/View;Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-ne v0, v1, :cond_0

    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/customview/h0;->n:Landroid/widget/TextView;

    .line 93
    .line 94
    const-string v1, "\u5317\u4eac\u533a"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/4 v6, 0x2

    .line 105
    if-ne v1, v6, :cond_4

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/customview/h0;->f:Landroid/widget/TextView;

    .line 108
    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getOnLinePeopleCounts()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/join/mgps/customview/h0;->c:Landroid/view/View;

    .line 135
    .line 136
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    invoke-static {v3, v4}, Lcom/join/mgps/socket/fight/arena/c;->m(J)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iget-object v4, p0, Lcom/join/mgps/customview/h0;->i:Landroid/widget/ImageView;

    .line 145
    .line 146
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-ne v6, v7, :cond_3

    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    :cond_3
    invoke-direct {p0, v1, v3, v4, v2}, Lcom/join/mgps/customview/h0;->d(Landroid/view/View;ZLandroid/view/View;Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-ne v0, v1, :cond_0

    .line 169
    .line 170
    iget-object v0, p0, Lcom/join/mgps/customview/h0;->n:Landroid/widget/TextView;

    .line 171
    .line 172
    const-string v1, "\u4e0a\u6d77\u533a"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_4
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    const/4 v6, 0x3

    .line 184
    if-ne v1, v6, :cond_0

    .line 185
    .line 186
    iget-object v1, p0, Lcom/join/mgps/customview/h0;->g:Landroid/widget/TextView;

    .line 187
    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getOnLinePeopleCounts()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, p0, Lcom/join/mgps/customview/h0;->d:Landroid/view/View;

    .line 214
    .line 215
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    .line 216
    .line 217
    .line 218
    move-result-wide v3

    .line 219
    invoke-static {v3, v4}, Lcom/join/mgps/socket/fight/arena/c;->m(J)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    iget-object v4, p0, Lcom/join/mgps/customview/h0;->j:Landroid/widget/ImageView;

    .line 224
    .line 225
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-ne v6, v7, :cond_5

    .line 234
    .line 235
    const/4 v2, 0x1

    .line 236
    :cond_5
    invoke-direct {p0, v1, v3, v4, v2}, Lcom/join/mgps/customview/h0;->d(Landroid/view/View;ZLandroid/view/View;Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-ne v0, v1, :cond_0

    .line 248
    .line 249
    iget-object v0, p0, Lcom/join/mgps/customview/h0;->n:Landroid/widget/TextView;

    .line 250
    .line 251
    const-string v1, "\u5e7f\u4e1c\u533a"

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_6
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameConfigs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h0;->r:Lcom/join/mgps/customview/h0$f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/h0$f;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/h0$f;-><init>(Lcom/join/mgps/customview/h0;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/h0;->r:Lcom/join/mgps/customview/h0$f;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/h0;->p:Landroid/widget/ListView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/h0;->r:Lcom/join/mgps/customview/h0$f;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/h0$f;->c(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/customview/h0;->r:Lcom/join/mgps/customview/h0$f;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h0;->o:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/h0;->s:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h0;->o:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/h0;->s:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h0;->o:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/h0;->f()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/h0;->g()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a13f9

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/h0;->h()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v0, 0x7f0a13d1

    .line 15
    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/h0;->q:Lcom/join/mgps/customview/h0$e;

    .line 20
    .line 21
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->BJ:Lcom/papa91/battle/protocol/BattleArea;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/h0$e;->a(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const v0, 0x7f0a13fc

    .line 31
    .line 32
    .line 33
    if-ne p1, v0, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/customview/h0;->q:Lcom/join/mgps/customview/h0$e;

    .line 36
    .line 37
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->SH:Lcom/papa91/battle/protocol/BattleArea;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/h0$e;->a(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const v0, 0x7f0a13dd

    .line 47
    .line 48
    .line 49
    if-ne p1, v0, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/customview/h0;->q:Lcom/join/mgps/customview/h0$e;

    .line 52
    .line 53
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->GZ:Lcom/papa91/battle/protocol/BattleArea;

    .line 54
    .line 55
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/h0$e;->a(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/h0;->u:Landroid/view/View;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/customview/h0;->u:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/customview/h0;->u:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 30
    .line 31
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    sub-int/2addr v1, v0

    .line 34
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "gravity",
            "x",
            "y"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/h0;->u:Landroid/view/View;

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

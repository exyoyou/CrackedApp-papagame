.class public Lcom/join/mgps/dialog/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/app/Dialog;

.field c:Landroid/app/Activity;

.field d:I

.field e:I

.field f:Landroid/widget/RadioGroup;

.field g:Landroid/widget/RadioGroup;

.field private h:Lcom/join/mgps/fragment/roomlist/c$m;

.field i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;"
        }
    .end annotation
.end field

.field j:Lapp/mgsim/arena/AreaInfo;

.field k:I

.field l:Landroid/widget/ImageView;

.field m:Landroid/widget/ImageView;

.field n:Landroid/widget/ImageView;

.field o:Landroid/view/View;

.field p:Landroid/view/View;

.field q:Landroid/view/View;

.field r:Landroid/view/View;

.field s:Landroid/view/View;

.field t:Landroid/view/View;

.field u:Lcom/join/mgps/customview/h0$e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/fragment/roomlist/c$m;Lcom/join/mgps/customview/h0$e;Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback",
            "callbackServer",
            "areas",
            "currentArea",
            "recomendNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/join/mgps/fragment/roomlist/c$m;",
            "Lcom/join/mgps/customview/h0$e;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;",
            "Lapp/mgsim/arena/AreaInfo;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/dialog/j;->d:I

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/join/mgps/dialog/j;->e:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/mgps/dialog/j;->c:Landroid/app/Activity;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/join/mgps/dialog/j;->u:Lcom/join/mgps/customview/h0$e;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/join/mgps/dialog/j;->h:Lcom/join/mgps/fragment/roomlist/c$m;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/j;->b(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    iput p6, p0, Lcom/join/mgps/dialog/j;->k:I

    .line 20
    .line 21
    invoke-virtual {p0, p4, p5}, Lcom/join/mgps/dialog/j;->c(Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;)V

    .line 22
    .line 23
    .line 24
    iput-object p4, p0, Lcom/join/mgps/dialog/j;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/join/mgps/dialog/j;->j:Lapp/mgsim/arena/AreaInfo;

    .line 27
    .line 28
    return-void
.end method

.method private e(Landroid/view/View;ZLandroid/view/View;Z)V
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


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->b:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method b(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    const v1, 0x7f130584

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/dialog/j;->b:Landroid/app/Dialog;

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1c

    .line 14
    .line 15
    if-lt v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/dialog/j;->b:Landroid/app/Dialog;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const v0, 0x7f0d0219

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const v0, 0x7f0a0a22

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a18eb

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    const v0, 0x7f0a1394

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/RadioGroup;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/join/mgps/dialog/j;->f:Landroid/widget/RadioGroup;

    .line 80
    .line 81
    const v0, 0x7f0a1393

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/RadioGroup;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/join/mgps/dialog/j;->g:Landroid/widget/RadioGroup;

    .line 91
    .line 92
    const v0, 0x7f0a1b8b

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/join/mgps/dialog/j;->o:Landroid/view/View;

    .line 100
    .line 101
    const v0, 0x7f0a1b95

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/join/mgps/dialog/j;->p:Landroid/view/View;

    .line 109
    .line 110
    const v0, 0x7f0a1b8d

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/join/mgps/dialog/j;->q:Landroid/view/View;

    .line 118
    .line 119
    const v0, 0x7f0a13fc

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iput-object v1, p0, Lcom/join/mgps/dialog/j;->s:Landroid/view/View;

    .line 127
    .line 128
    const v1, 0x7f0a13d1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iput-object v2, p0, Lcom/join/mgps/dialog/j;->r:Landroid/view/View;

    .line 136
    .line 137
    const v2, 0x7f0a13dd

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iput-object v3, p0, Lcom/join/mgps/dialog/j;->t:Landroid/view/View;

    .line 145
    .line 146
    const v3, 0x7f0a0a3c

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Landroid/widget/ImageView;

    .line 154
    .line 155
    iput-object v3, p0, Lcom/join/mgps/dialog/j;->n:Landroid/widget/ImageView;

    .line 156
    .line 157
    const v3, 0x7f0a0a7c

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Landroid/widget/ImageView;

    .line 165
    .line 166
    iput-object v3, p0, Lcom/join/mgps/dialog/j;->m:Landroid/widget/ImageView;

    .line 167
    .line 168
    const v3, 0x7f0a0a16

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Landroid/widget/ImageView;

    .line 176
    .line 177
    iput-object v3, p0, Lcom/join/mgps/dialog/j;->l:Landroid/widget/ImageView;

    .line 178
    .line 179
    invoke-static {p1, v1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v0}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    invoke-static {p1, v2}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->f:Landroid/widget/RadioGroup;

    .line 201
    .line 202
    new-instance v1, Lcom/join/mgps/dialog/j$a;

    .line 203
    .line 204
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/j$a;-><init>(Lcom/join/mgps/dialog/j;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->g:Landroid/widget/RadioGroup;

    .line 211
    .line 212
    new-instance v1, Lcom/join/mgps/dialog/j$b;

    .line 213
    .line 214
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/j$b;-><init>(Lcom/join/mgps/dialog/j;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->b:Landroid/app/Dialog;

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->b:Landroid/app/Dialog;

    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const/4 v1, -0x1

    .line 236
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 237
    .line 238
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 239
    .line 240
    const/16 v0, 0x11

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method public c(Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;)V
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
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->r:Landroid/view/View;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->s:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->t:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lapp/mgsim/arena/AreaInfo;

    .line 32
    .line 33
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    new-instance v2, Lapp/mgsim/arena/AreaInfo;

    .line 44
    .line 45
    invoke-direct {v2}, Lapp/mgsim/arena/AreaInfo;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/join/mgps/dialog/j;->j:Lapp/mgsim/arena/AreaInfo;

    .line 49
    .line 50
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v2, v3}, Lapp/mgsim/arena/AreaInfo;->setArea(I)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/join/mgps/dialog/j;->j:Lapp/mgsim/arena/AreaInfo;

    .line 58
    .line 59
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getHost()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Lapp/mgsim/arena/AreaInfo;->setHost(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/join/mgps/dialog/j;->j:Lapp/mgsim/arena/AreaInfo;

    .line 67
    .line 68
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getOnLinePeopleCounts()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v2, v3}, Lapp/mgsim/arena/AreaInfo;->setOnLinePeopleCounts(I)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/join/mgps/dialog/j;->j:Lapp/mgsim/arena/AreaInfo;

    .line 76
    .line 77
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    invoke-virtual {v2, v3, v4}, Lapp/mgsim/arena/AreaInfo;->setPingTime(J)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/join/mgps/dialog/j;->j:Lapp/mgsim/arena/AreaInfo;

    .line 85
    .line 86
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPort()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v2, v3}, Lapp/mgsim/arena/AreaInfo;->setPort(I)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/4 v3, 0x1

    .line 98
    if-ne v2, v3, :cond_3

    .line 99
    .line 100
    iget-object v2, p0, Lcom/join/mgps/dialog/j;->o:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    invoke-static {v4, v5}, Lcom/join/mgps/socket/fight/arena/c;->m(J)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    iget-object v5, p0, Lcom/join/mgps/dialog/j;->l:Landroid/widget/ImageView;

    .line 111
    .line 112
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    iget v7, p0, Lcom/join/mgps/dialog/j;->k:I

    .line 117
    .line 118
    if-ne v6, v7, :cond_2

    .line 119
    .line 120
    const/4 v6, 0x1

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    const/4 v6, 0x0

    .line 123
    :goto_1
    invoke-direct {p0, v2, v4, v5, v6}, Lcom/join/mgps/dialog/j;->e(Landroid/view/View;ZLandroid/view/View;Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-ne v0, v2, :cond_0

    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->r:Landroid/view/View;

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    const/4 v4, 0x2

    .line 147
    if-ne v2, v4, :cond_5

    .line 148
    .line 149
    iget-object v2, p0, Lcom/join/mgps/dialog/j;->p:Landroid/view/View;

    .line 150
    .line 151
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    invoke-static {v4, v5}, Lcom/join/mgps/socket/fight/arena/c;->m(J)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    iget-object v5, p0, Lcom/join/mgps/dialog/j;->m:Landroid/widget/ImageView;

    .line 160
    .line 161
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    iget v7, p0, Lcom/join/mgps/dialog/j;->k:I

    .line 166
    .line 167
    if-ne v6, v7, :cond_4

    .line 168
    .line 169
    const/4 v6, 0x1

    .line 170
    goto :goto_2

    .line 171
    :cond_4
    const/4 v6, 0x0

    .line 172
    :goto_2
    invoke-direct {p0, v2, v4, v5, v6}, Lcom/join/mgps/dialog/j;->e(Landroid/view/View;ZLandroid/view/View;Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-ne v0, v2, :cond_0

    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->s:Landroid/view/View;

    .line 186
    .line 187
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_5
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    const/4 v4, 0x3

    .line 197
    if-ne v2, v4, :cond_0

    .line 198
    .line 199
    iget-object v2, p0, Lcom/join/mgps/dialog/j;->q:Landroid/view/View;

    .line 200
    .line 201
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    .line 202
    .line 203
    .line 204
    move-result-wide v4

    .line 205
    invoke-static {v4, v5}, Lcom/join/mgps/socket/fight/arena/c;->m(J)Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    iget-object v5, p0, Lcom/join/mgps/dialog/j;->n:Landroid/widget/ImageView;

    .line 210
    .line 211
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    iget v7, p0, Lcom/join/mgps/dialog/j;->k:I

    .line 216
    .line 217
    if-ne v6, v7, :cond_6

    .line 218
    .line 219
    const/4 v6, 0x1

    .line 220
    goto :goto_3

    .line 221
    :cond_6
    const/4 v6, 0x0

    .line 222
    :goto_3
    invoke-direct {p0, v2, v4, v5, v6}, Lcom/join/mgps/dialog/j;->e(Landroid/view/View;ZLandroid/view/View;Z)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-ne v0, v2, :cond_0

    .line 234
    .line 235
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->t:Landroid/view/View;

    .line 236
    .line 237
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_7
    return-void
.end method

.method public d(ILjava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "roomType",
            "gameLists",
            "currentGameId",
            "currentPrioritySort"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameConfig;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/j;->d:I

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/dialog/j;->f:Landroid/widget/RadioGroup;

    .line 4
    .line 5
    const/4 p3, 0x2

    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const p1, 0x7f0a1312

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const p1, 0x7f0a1317

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 16
    .line 17
    .line 18
    iput p4, p0, Lcom/join/mgps/dialog/j;->e:I

    .line 19
    .line 20
    const/4 p1, 0x3

    .line 21
    const p2, 0x7f0a1314

    .line 22
    .line 23
    .line 24
    if-eq p4, p1, :cond_4

    .line 25
    .line 26
    const/4 p1, 0x4

    .line 27
    if-eq p4, p1, :cond_3

    .line 28
    .line 29
    const/4 p1, 0x5

    .line 30
    if-eq p4, p1, :cond_2

    .line 31
    .line 32
    const/4 p1, 0x6

    .line 33
    if-eq p4, p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->g:Landroid/widget/RadioGroup;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->g:Landroid/widget/RadioGroup;

    .line 42
    .line 43
    const p2, 0x7f0a1316

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->g:Landroid/widget/RadioGroup;

    .line 51
    .line 52
    const p2, 0x7f0a1318

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->g:Landroid/widget/RadioGroup;

    .line 60
    .line 61
    const p2, 0x7f0a1313

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->g:Landroid/widget/RadioGroup;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->b:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->b:Landroid/app/Dialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0a22

    .line 6
    .line 7
    .line 8
    if-eq p1, v0, :cond_5

    .line 9
    .line 10
    const v0, 0x7f0a18eb

    .line 11
    .line 12
    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const v0, 0x7f0a13d1

    .line 16
    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->u:Lcom/join/mgps/customview/h0$e;

    .line 21
    .line 22
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->BJ:Lcom/papa91/battle/protocol/BattleArea;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/h0$e;->a(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->j:Lapp/mgsim/arena/AreaInfo;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Lapp/mgsim/arena/AreaInfo;->setArea(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const v0, 0x7f0a13fc

    .line 35
    .line 36
    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->u:Lcom/join/mgps/customview/h0$e;

    .line 40
    .line 41
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->SH:Lcom/papa91/battle/protocol/BattleArea;

    .line 42
    .line 43
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/h0$e;->a(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->j:Lapp/mgsim/arena/AreaInfo;

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    invoke-virtual {p1, v0}, Lapp/mgsim/arena/AreaInfo;->setArea(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const v0, 0x7f0a13dd

    .line 54
    .line 55
    .line 56
    if-ne p1, v0, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->u:Lcom/join/mgps/customview/h0$e;

    .line 59
    .line 60
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->GZ:Lcom/papa91/battle/protocol/BattleArea;

    .line 61
    .line 62
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/h0$e;->a(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->j:Lapp/mgsim/arena/AreaInfo;

    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    invoke-virtual {p1, v0}, Lapp/mgsim/arena/AreaInfo;->setArea(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/dialog/j;->j:Lapp/mgsim/arena/AreaInfo;

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/dialog/j;->c(Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->h:Lcom/join/mgps/fragment/roomlist/c$m;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    iget v0, p0, Lcom/join/mgps/dialog/j;->e:I

    .line 84
    .line 85
    iget v1, p0, Lcom/join/mgps/dialog/j;->d:I

    .line 86
    .line 87
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/fragment/roomlist/c$m;->d(II)V

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/dialog/j;->a()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/dialog/j;->h:Lcom/join/mgps/fragment/roomlist/c$m;

    .line 95
    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    iget v0, p0, Lcom/join/mgps/dialog/j;->e:I

    .line 99
    .line 100
    iget v1, p0, Lcom/join/mgps/dialog/j;->d:I

    .line 101
    .line 102
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/fragment/roomlist/c$m;->d(II)V

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/dialog/j;->a()V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-void
.end method

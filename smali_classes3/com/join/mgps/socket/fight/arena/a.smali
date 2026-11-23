.class public Lcom/join/mgps/socket/fight/arena/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/fight/arena/a$y;,
        Lcom/join/mgps/socket/fight/arena/a$z;,
        Lcom/join/mgps/socket/fight/arena/a$a0;,
        Lcom/join/mgps/socket/fight/arena/a$b0;
    }
.end annotation


# static fields
.field public static final g:I = 0x100

.field public static final h:I = 0x101

.field public static final i:I = 0x102

.field public static final j:Ljava/lang/String; = "dialog_error_hint"

.field public static final k:Ljava/lang/String; = "leave_room"

.field public static final l:Ljava/lang/String; = "toast_move_in_spectator"

.field public static final m:Ljava/lang/String; = "toast_kic_out_room"

.field public static final n:Ljava/lang/String; = "net_archive"

.field public static final o:Ljava/lang/String; = "kick_info"

.field public static final p:Ljava/lang/String; = "kic_out_room_info"

.field public static final q:Ljava/lang/String; = "seat_set"

.field public static final r:Ljava/lang/String; = "set_challenge_gold"

.field public static final s:Ljava/lang/String; = "share_friends_1"

.field public static final t:Ljava/lang/String; = "share_friends_2"

.field public static final u:Ljava/lang/String; = "svr_play_mode"

.field private static final v:I

.field private static final w:I


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/app/Activity;

.field private c:Lcom/join/mgps/socket/fight/arena/a$y;

.field private d:I

.field private e:Lcom/join/mgps/socket/fight/arena/a$a0;

.field private final f:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "#ffffff"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/join/mgps/socket/fight/arena/a;->v:I

    .line 8
    .line 9
    const-string v0, "#0989BA"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/join/mgps/socket/fight/arena/a;->w:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/a;->d:I

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/socket/fight/arena/a$p;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/socket/fight/arena/a$p;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->f:Landroid/view/View$OnClickListener;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a;->c:Lcom/join/mgps/socket/fight/arena/a$y;

    .line 17
    .line 18
    return-void
.end method

.method private B(Landroid/view/View;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "gravity",
            "width",
            "height"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, -0x1

    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    const/4 p3, -0x1

    .line 20
    :cond_0
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 21
    .line 22
    if-nez p4, :cond_1

    .line 23
    .line 24
    const/4 p4, -0x1

    .line 25
    :cond_1
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a;->c:Lcom/join/mgps/socket/fight/arena/a$y;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/socket/fight/arena/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/join/mgps/socket/fight/arena/a;Landroid/view/View;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/socket/fight/arena/a;->v:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic f()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/socket/fight/arena/a;->w:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic g(Lcom/join/mgps/socket/fight/arena/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/socket/fight/arena/a;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/join/mgps/socket/fight/arena/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/socket/fight/arena/a;->d:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/socket/fight/arena/a;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object p1
.end method

.method private k(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0a22

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->f:Landroid/view/View$OnClickListener;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private varargs l([Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    const v2, 0x7f130584

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1c

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-lt v1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, v3}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v1, 0x7f0d01b7

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    aget-object v2, p1, v1

    .line 56
    .line 57
    check-cast v2, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    aget-object v3, p1, v3

    .line 64
    .line 65
    check-cast v3, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const v4, 0x7f0a04ba

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Landroid/widget/Button;

    .line 79
    .line 80
    const v5, 0x7f0a04b2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Landroid/widget/Button;

    .line 88
    .line 89
    const v6, 0x7f0a04b8

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Landroid/widget/Button;

    .line 97
    .line 98
    const v7, 0x7f0a04bb

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Landroid/widget/TextView;

    .line 106
    .line 107
    const v8, 0x7f0a1762

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    check-cast v8, Landroid/widget/TextView;

    .line 115
    .line 116
    const v9, 0x7f0a0a22

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    const/4 v10, 0x2

    .line 124
    aget-object v10, p1, v10

    .line 125
    .line 126
    check-cast v10, Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v10}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    if-eqz v11, :cond_1

    .line 133
    .line 134
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :cond_1
    const/16 v7, 0x101

    .line 138
    .line 139
    const/4 v10, 0x3

    .line 140
    const/16 v11, 0x8

    .line 141
    .line 142
    if-ne v2, v7, :cond_2

    .line 143
    .line 144
    aget-object p1, p1, v10

    .line 145
    .line 146
    check-cast p1, Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$r;

    .line 161
    .line 162
    invoke-direct {p1, p0}, Lcom/join/mgps/socket/fight/arena/a$r;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_2
    const/16 v7, 0x102

    .line 170
    .line 171
    if-ne v2, v7, :cond_3

    .line 172
    .line 173
    const-string v2, "\u7cfb\u7edf\u63d0\u793a"

    .line 174
    .line 175
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    aget-object p1, p1, v10

    .line 182
    .line 183
    check-cast p1, Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$s;

    .line 198
    .line 199
    invoke-direct {p1, p0}, Lcom/join/mgps/socket/fight/arena/a$s;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 206
    .line 207
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 208
    .line 209
    .line 210
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$t;

    .line 211
    .line 212
    invoke-direct {p1, p0}, Lcom/join/mgps/socket/fight/arena/a$t;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v9, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    aget-object v2, p1, v10

    .line 229
    .line 230
    check-cast v2, Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$u;

    .line 236
    .line 237
    invoke-direct {v2, p0, v3}, Lcom/join/mgps/socket/fight/arena/a$u;-><init>(Lcom/join/mgps/socket/fight/arena/a;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    .line 242
    .line 243
    const/4 v2, 0x5

    .line 244
    aget-object v2, p1, v2

    .line 245
    .line 246
    const/4 v4, 0x4

    .line 247
    aget-object p1, p1, v4

    .line 248
    .line 249
    check-cast p1, Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$v;

    .line 255
    .line 256
    invoke-direct {p1, p0, v3, v2}, Lcom/join/mgps/socket/fight/arena/a$v;-><init>(Lcom/join/mgps/socket/fight/arena/a;ILjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .line 261
    .line 262
    :goto_0
    const/16 p1, 0x11

    .line 263
    .line 264
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    .line 265
    .line 266
    .line 267
    return-void
.end method

.method private varargs m([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    const v2, 0x7f130584

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1c

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v1, 0x7f0d01e9

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f0a199a

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/TextView;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    aget-object p1, p1, v2

    .line 65
    .line 66
    check-cast p1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 72
    .line 73
    new-instance v1, Lcom/join/mgps/socket/fight/arena/a$z;

    .line 74
    .line 75
    const-string v3, "kick_info"

    .line 76
    .line 77
    invoke-direct {v1, p0, v3}, Lcom/join/mgps/socket/fight/arena/a$z;-><init>(Lcom/join/mgps/socket/fight/arena/a;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v0}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    const/16 p1, 0x11

    .line 87
    .line 88
    invoke-direct {p0, v0, p1, v2, v2}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private varargs n([Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    check-cast v1, Lcom/papa91/battle/protocol/KickInfo;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    aget-object p1, p1, v2

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-instance v3, Landroid/app/Dialog;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 18
    .line 19
    const v5, 0x7f130584

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 26
    .line 27
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v5, 0x1c

    .line 30
    .line 31
    if-lt v4, v5, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3, v2}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 54
    .line 55
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const v3, 0x7f0d01f7

    .line 60
    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const v3, 0x7f0a1a48

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/KickInfo;->getIsVIP()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const-string v5, "\u628a\""

    .line 81
    .line 82
    if-nez v4, :cond_1

    .line 83
    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/KickInfo;->getNickname()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v5, "\"\u8e22\u51fa\u623f\u95f4\n\u9700\u8981\u6d88\u8017"

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/KickInfo;->getCopper()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, "\u94dc\u677f,\u60a8\u786e\u5b9a\u8981\u8e22\u51fa\u561b\uff1f"

    .line 112
    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/KickInfo;->getNickname()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v5, "\"\u8e22\u51fa\u623f\u95f4\n\u7531\u4e8e\u5bf9\u65b9\u662fVIP\u7528\u6237\n\u9700\u8981\u6d88\u8017"

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/KickInfo;->getCopper()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, "\u94dc\u677f \u60a8\u786e\u5b9a\u8981\u8e22\u51fa\u561b\uff1f"

    .line 152
    .line 153
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    :goto_0
    const v1, 0x7f0a0282

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    new-instance v3, Lcom/join/mgps/socket/fight/arena/a$w;

    .line 171
    .line 172
    invoke-direct {v3, p0}, Lcom/join/mgps/socket/fight/arena/a$w;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    const v1, 0x7f0a02b0

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    new-instance v3, Lcom/join/mgps/socket/fight/arena/a$x;

    .line 186
    .line 187
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/socket/fight/arena/a$x;-><init>(Lcom/join/mgps/socket/fight/arena/a;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, v2}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    const/16 p1, 0x11

    .line 197
    .line 198
    invoke-direct {p0, v2, p1, v0, v0}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    const v2, 0x7f130584

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1c

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v1, 0x7f0d01f8

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f0a025c

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$o;

    .line 62
    .line 63
    invoke-direct {v2, p0}, Lcom/join/mgps/socket/fight/arena/a$o;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v0}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    const/16 v1, 0x11

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private varargs p([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/socket/fight/arena/a$a0;-><init>(Lcom/join/mgps/socket/fight/arena/a;Landroid/content/Context;[Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->e:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 9
    .line 10
    return-void
.end method

.method private varargs q([Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    check-cast v1, Ljava/lang/String;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    aget-object v3, p1, v2

    .line 8
    .line 9
    check-cast v3, Lapp/mgsim/arena/RoomSeatState;

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    aget-object v4, p1, v4

    .line 13
    .line 14
    check-cast v4, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    new-instance v5, Landroid/app/Dialog;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 23
    .line 24
    const v7, 0x7f130584

    .line 25
    .line 26
    .line 27
    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    iput-object v5, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 31
    .line 32
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v7, 0x1c

    .line 35
    .line 36
    if-lt v6, v7, :cond_0

    .line 37
    .line 38
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {v5, v2}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 59
    .line 60
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const v5, 0x7f0d01e7

    .line 65
    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const v5, 0x7f0a02b3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Landroid/widget/Button;

    .line 80
    .line 81
    const v6, 0x7f0a19f8

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    sget-object v1, Lapp/mgsim/arena/RoomSeatState;->OPEN:Lapp/mgsim/arena/RoomSeatState;

    .line 94
    .line 95
    if-ne v3, v1, :cond_1

    .line 96
    .line 97
    const-string p1, "\u5f00\u542f\u4f4d\u7f6e"

    .line 98
    .line 99
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_1
    sget-object v1, Lapp/mgsim/arena/RoomSeatState;->CLOSE:Lapp/mgsim/arena/RoomSeatState;

    .line 105
    .line 106
    if-ne v3, v1, :cond_2

    .line 107
    .line 108
    const-string p1, "\u5173\u95ed\u4f4d\u7f6e"

    .line 109
    .line 110
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_2
    sget-object v1, Lapp/mgsim/arena/RoomSeatState;->SEAT:Lapp/mgsim/arena/RoomSeatState;

    .line 116
    .line 117
    if-ne v3, v1, :cond_3

    .line 118
    .line 119
    const-string p1, "\u5750\u4e0b"

    .line 120
    .line 121
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_3
    sget-object v1, Lapp/mgsim/arena/RoomSeatState;->REPORT:Lapp/mgsim/arena/RoomSeatState;

    .line 127
    .line 128
    const v6, 0x7f0a02b9

    .line 129
    .line 130
    .line 131
    const/16 v7, 0xd

    .line 132
    .line 133
    const/high16 v8, 0x438f0000    # 286.0f

    .line 134
    .line 135
    const v9, 0x7f0a13e8

    .line 136
    .line 137
    .line 138
    const/4 v10, 0x3

    .line 139
    if-ne v3, v1, :cond_4

    .line 140
    .line 141
    aget-object p1, p1, v10

    .line 142
    .line 143
    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    .line 144
    .line 145
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 150
    .line 151
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 152
    .line 153
    iget-object v10, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 154
    .line 155
    invoke-static {v10, v8}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    iget-object v10, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 160
    .line 161
    const/high16 v11, 0x43060000    # 134.0f

    .line 162
    .line 163
    invoke-static {v10, v11}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    invoke-direct {v9, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Landroid/widget/Button;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    new-instance v6, Lcom/join/mgps/socket/fight/arena/a$i;

    .line 186
    .line 187
    invoke-direct {v6, p0, p1}, Lcom/join/mgps/socket/fight/arena/a$i;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/papa91/battle/protocol/RoomPosition;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    const/16 p1, 0x8

    .line 194
    .line 195
    invoke-virtual {v5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_4
    sget-object v1, Lapp/mgsim/arena/RoomSeatState;->REMOVE_AND_REPORT:Lapp/mgsim/arena/RoomSeatState;

    .line 200
    .line 201
    if-ne v3, v1, :cond_5

    .line 202
    .line 203
    aget-object p1, p1, v10

    .line 204
    .line 205
    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    .line 206
    .line 207
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 212
    .line 213
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 214
    .line 215
    iget-object v10, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 216
    .line 217
    invoke-static {v10, v8}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    iget-object v10, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 222
    .line 223
    const/high16 v11, 0x43340000    # 180.0f

    .line 224
    .line 225
    invoke-static {v10, v11}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    invoke-direct {v9, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Landroid/widget/Button;

    .line 243
    .line 244
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    new-instance v6, Lcom/join/mgps/socket/fight/arena/a$j;

    .line 248
    .line 249
    invoke-direct {v6, p0, p1}, Lcom/join/mgps/socket/fight/arena/a$j;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/papa91/battle/protocol/RoomPosition;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    .line 254
    .line 255
    new-instance v1, Lcom/join/mgps/socket/fight/arena/a$l;

    .line 256
    .line 257
    invoke-direct {v1, p0, p1, v4}, Lcom/join/mgps/socket/fight/arena/a$l;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/papa91/battle/protocol/RoomPosition;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .line 262
    .line 263
    const-string p1, "#FF4235"

    .line 264
    .line 265
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    .line 271
    .line 272
    const-string p1, "\u8e22\u51fa\u623f\u95f4"

    .line 273
    .line 274
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    const p1, 0x7f08024b

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 281
    .line 282
    .line 283
    :cond_5
    :goto_0
    sget-object p1, Lapp/mgsim/arena/RoomSeatState;->REMOVE_AND_REPORT:Lapp/mgsim/arena/RoomSeatState;

    .line 284
    .line 285
    if-eq v3, p1, :cond_6

    .line 286
    .line 287
    sget-object p1, Lapp/mgsim/arena/RoomSeatState;->REPORT:Lapp/mgsim/arena/RoomSeatState;

    .line 288
    .line 289
    if-eq v3, p1, :cond_6

    .line 290
    .line 291
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$m;

    .line 292
    .line 293
    invoke-direct {p1, p0, v3, v4}, Lcom/join/mgps/socket/fight/arena/a$m;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lapp/mgsim/arena/RoomSeatState;I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    :cond_6
    invoke-direct {p0, v2}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    .line 300
    .line 301
    .line 302
    const/16 p1, 0x11

    .line 303
    .line 304
    invoke-direct {p0, v2, p1, v0, v0}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    .line 305
    .line 306
    .line 307
    return-void
.end method

.method private varargs r([Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    const v2, 0x7f130584

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1c

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-lt v1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, v3}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v1, 0x7f0d021c

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f0a0f32

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/LinearLayout;

    .line 62
    .line 63
    const v2, 0x7f0a0f03

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroid/widget/LinearLayout;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    aget-object v5, p1, v4

    .line 74
    .line 75
    check-cast v5, Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getIsBattle()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    const/16 v7, 0x8

    .line 82
    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    aget-object p1, p1, v3

    .line 92
    .line 93
    check-cast p1, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const v1, 0x7f0a1949

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Landroid/widget/TextView;

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v6, "\u4f60\u7684\u8d26\u53f7\u94dc\u677f\u6570:  <font color=#000000>"

    .line 114
    .line 115
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getUserCopper()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v6, "</font>"

    .line 126
    .line 127
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    const v1, 0x7f0a0275

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Landroid/widget/Button;

    .line 149
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    aget v6, v6, v4

    .line 160
    .line 161
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v6, "\n\u94dc\u677f"

    .line 165
    .line 166
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$e;

    .line 177
    .line 178
    invoke-direct {v2, p0, v5}, Lcom/join/mgps/socket/fight/arena/a$e;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/join/mgps/dto/BattleChallengeConfig;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    const v2, 0x7f0a0276

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Landroid/widget/Button;

    .line 192
    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    aget v8, v8, v3

    .line 203
    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    new-instance v7, Lcom/join/mgps/socket/fight/arena/a$f;

    .line 218
    .line 219
    invoke-direct {v7, p0, v5}, Lcom/join/mgps/socket/fight/arena/a$f;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/join/mgps/dto/BattleChallengeConfig;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    .line 224
    .line 225
    const v7, 0x7f0a0277

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    check-cast v7, Landroid/widget/Button;

    .line 233
    .line 234
    new-instance v8, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    const/4 v10, 0x2

    .line 244
    aget v9, v9, v10

    .line 245
    .line 246
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    new-instance v8, Lcom/join/mgps/socket/fight/arena/a$g;

    .line 260
    .line 261
    invoke-direct {v8, p0, v5}, Lcom/join/mgps/socket/fight/arena/a$g;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/join/mgps/dto/BattleChallengeConfig;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    const v8, 0x7f0a0278

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    check-cast v8, Landroid/widget/Button;

    .line 275
    .line 276
    new-instance v9, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    const/4 v12, 0x3

    .line 286
    aget v11, v11, v12

    .line 287
    .line 288
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    new-instance v6, Lcom/join/mgps/socket/fight/arena/a$h;

    .line 302
    .line 303
    invoke-direct {v6, p0, v5}, Lcom/join/mgps/socket/fight/arena/a$h;-><init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/join/mgps/dto/BattleChallengeConfig;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v8, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    aget v6, v6, v4

    .line 314
    .line 315
    const v9, 0x7f080242

    .line 316
    .line 317
    .line 318
    const/4 v11, -0x1

    .line 319
    if-ne p1, v6, :cond_1

    .line 320
    .line 321
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_1
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    aget v1, v1, v3

    .line 334
    .line 335
    if-ne p1, v1, :cond_2

    .line 336
    .line 337
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :cond_2
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    aget v1, v1, v10

    .line 350
    .line 351
    if-ne p1, v1, :cond_3

    .line 352
    .line 353
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_3
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    aget v1, v1, v12

    .line 366
    .line 367
    if-ne p1, v1, :cond_5

    .line 368
    .line 369
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 373
    .line 374
    .line 375
    goto :goto_0

    .line 376
    :cond_4
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 380
    .line 381
    .line 382
    aget-object p1, p1, v3

    .line 383
    .line 384
    check-cast p1, Ljava/lang/String;

    .line 385
    .line 386
    const v1, 0x7f0a1991

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    check-cast v1, Landroid/widget/TextView;

    .line 394
    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    const-string v3, "\u3010"

    .line 401
    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const-string p1, "\u3011"

    .line 409
    .line 410
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    .line 419
    .line 420
    const p1, 0x7f0a1992

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    check-cast p1, Landroid/widget/TextView;

    .line 428
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    const-string v2, "\u6311\u6218\u91d1<font color=#3CA4FD>"

    .line 435
    .line 436
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getFixChallengeCopper()I

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v2, "\u94dc\u677f</font>"

    .line 447
    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    .line 461
    .line 462
    const p1, 0x7f0a1990

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    check-cast p1, Landroid/widget/TextView;

    .line 470
    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    const-string v2, "1\u3001\u8fdb\u5165\u6e38\u620f\u540e\u6263\u9664\u6311\u6218\u91d1\n2\u3001\u6bcf\u6b21\u6295\u5e01\u90fd\u6263\u9664\u6311\u6218\u91d1\n3\u3001\u8fbe\u5230"

    .line 477
    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v5}, Lcom/join/mgps/dto/BattleChallengeConfig;->getChallengeScore()I

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    const-string v2, " \u5206\u8fd4\u8fd8\u6311\u6218\u91d1\n4\u3001\u5b8c\u6574\u901a\u5173\u540e\u6709\u968f\u673a\u94dc\u677f\u5956\u52b1"

    .line 489
    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    .line 499
    .line 500
    :cond_5
    :goto_0
    invoke-direct {p0, v0}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    .line 501
    .line 502
    .line 503
    const/16 p1, 0x11

    .line 504
    .line 505
    invoke-direct {p0, v0, p1, v4, v4}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    .line 506
    .line 507
    .line 508
    return-void
.end method

.method private varargs s([Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    const v2, 0x7f130584

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1c

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-lt v1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, v3}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v1, 0x7f0d01f6

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f0a1a02

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/TextView;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    aget-object v4, p1, v2

    .line 65
    .line 66
    check-cast v4, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    aget-object v1, p1, v3

    .line 72
    .line 73
    check-cast v1, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const v3, 0x7f0a0290

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-instance v5, Lcom/join/mgps/socket/fight/arena/a$a;

    .line 87
    .line 88
    invoke-direct {v5, p0, p1, v1, v4}, Lcom/join/mgps/socket/fight/arena/a$a;-><init>(Lcom/join/mgps/socket/fight/arena/a;[Ljava/lang/Object;ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    const/16 p1, 0x11

    .line 98
    .line 99
    invoke-direct {p0, v0, p1, v2, v2}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private t()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    const v2, 0x7f130584

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1c

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v1, 0x7f0d05e3

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f0a12e4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const v2, 0x7f0a1be0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/4 v3, 0x0

    .line 69
    iput v3, p0, Lcom/join/mgps/socket/fight/arena/a;->d:I

    .line 70
    .line 71
    new-instance v3, Lcom/join/mgps/socket/fight/arena/a$b;

    .line 72
    .line 73
    invoke-direct {v3, p0}, Lcom/join/mgps/socket/fight/arena/a$b;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/join/mgps/socket/fight/arena/a$c;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/join/mgps/socket/fight/arena/a$c;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 88
    .line 89
    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$d;

    .line 90
    .line 91
    invoke-direct {v2, p0}, Lcom/join/mgps/socket/fight/arena/a$d;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, v0}, Lcom/join/mgps/socket/fight/arena/a;->k(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const v2, 0x7f0714a7

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const v3, 0x7f0713e6

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    const/16 v3, 0x11

    .line 127
    .line 128
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method private varargs u([Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    .line 4
    check-cast p1, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-instance v1, Landroid/app/Dialog;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 13
    .line 14
    const v3, 0x7f130584

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 21
    .line 22
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v3, 0x1c

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    if-lt v2, v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, v4}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 50
    .line 51
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const v2, 0x7f0d021a

    .line 56
    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const v2, 0x7f0a0a22

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Lcom/join/mgps/socket/fight/arena/a$k;

    .line 71
    .line 72
    invoke-direct {v3, p0}, Lcom/join/mgps/socket/fight/arena/a$k;-><init>(Lcom/join/mgps/socket/fight/arena/a;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    const v2, 0x7f0a1a4e

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/widget/TextView;

    .line 86
    .line 87
    const v3, 0x7f0a025e

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v3}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Landroid/widget/Button;

    .line 95
    .line 96
    if-ne p1, v4, :cond_1

    .line 97
    .line 98
    const-string v5, "\u5373\u5c06\u5173\u95ed\u6d41\u7545\u6a21\u5f0f"

    .line 99
    .line 100
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    const-string v2, "\u786e\u5b9a\u5173\u95ed"

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const-string v5, "\u5373\u5c06\u5f00\u542f\u6d41\u7545\u6a21\u5f0f"

    .line 110
    .line 111
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    const-string v2, "\u786e\u5b9a\u5f00\u542f"

    .line 115
    .line 116
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    if-ne p1, v4, :cond_2

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    :cond_2
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a$q;

    .line 123
    .line 124
    invoke-direct {p1, p0, v4}, Lcom/join/mgps/socket/fight/arena/a$q;-><init>(Lcom/join/mgps/socket/fight/arena/a;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    const/16 p1, 0x11

    .line 131
    .line 132
    invoke-direct {p0, v1, p1, v0, v0}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "type",
            "params"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    const v2, 0x7f130585

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1c

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v1, 0x7f0d01e8

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f0a1a4c    # 1.8357E38f

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/TextView;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    aget-object p2, p2, v2

    .line 65
    .line 66
    check-cast p2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 72
    .line 73
    new-instance v1, Lcom/join/mgps/socket/fight/arena/a$n;

    .line 74
    .line 75
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/socket/fight/arena/a$n;-><init>(Lcom/join/mgps/socket/fight/arena/a;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 82
    .line 83
    const p2, 0x43888000    # 273.0f

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iget-object p2, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 91
    .line 92
    const/high16 v1, 0x42580000    # 54.0f

    .line 93
    .line 94
    invoke-static {p2, v1}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    const/16 v1, 0x11

    .line 99
    .line 100
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/join/mgps/socket/fight/arena/a;->B(Landroid/view/View;III)V

    .line 101
    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->e:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/join/mgps/socket/fight/arena/a$a0;->x:Z

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public declared-synchronized C()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
.end method

.method public varargs declared-synchronized D(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialogType",
            "params"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 3
    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_d

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->b:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 23
    .line 24
    .line 25
    const-string v0, "dialog_error_hint"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->l([Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :cond_1
    :try_start_1
    const-string v0, "kic_out_room_info"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->n([Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :cond_2
    :try_start_2
    const-string v0, "leave_room"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/a;->o()V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :cond_3
    :try_start_3
    const-string v0, "toast_move_in_spectator"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_c

    .line 86
    .line 87
    const-string v0, "toast_kic_out_room"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_4
    const-string v0, "net_archive"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->p([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    .line 107
    .line 108
    monitor-exit p0

    .line 109
    return-void

    .line 110
    :cond_5
    :try_start_4
    const-string v0, "kick_info"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->m([Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    .line 125
    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 128
    :cond_6
    :try_start_5
    const-string v0, "seat_set"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_7

    .line 135
    .line 136
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->q([Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    .line 143
    .line 144
    monitor-exit p0

    .line 145
    return-void

    .line 146
    :cond_7
    :try_start_6
    const-string v0, "set_challenge_gold"

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_8

    .line 153
    .line 154
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->r([Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    .line 161
    .line 162
    monitor-exit p0

    .line 163
    return-void

    .line 164
    :cond_8
    :try_start_7
    const-string v0, "share_friends_1"

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_9

    .line 171
    .line 172
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/a;->t()V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 178
    .line 179
    .line 180
    monitor-exit p0

    .line 181
    return-void

    .line 182
    :cond_9
    :try_start_8
    const-string v0, "share_friends_2"

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_a

    .line 189
    .line 190
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->s([Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 196
    .line 197
    .line 198
    monitor-exit p0

    .line 199
    return-void

    .line 200
    :cond_a
    :try_start_9
    const-string v0, "svr_play_mode"

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_b

    .line 207
    .line 208
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a;->u([Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 214
    .line 215
    .line 216
    monitor-exit p0

    .line 217
    return-void

    .line 218
    :cond_b
    monitor-exit p0

    .line 219
    return-void

    .line 220
    :cond_c
    :goto_0
    :try_start_a
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/socket/fight/arena/a;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 226
    .line 227
    .line 228
    monitor-exit p0

    .line 229
    return-void

    .line 230
    :cond_d
    :goto_1
    monitor-exit p0

    .line 231
    return-void

    .line 232
    :catchall_0
    move-exception p1

    .line 233
    monitor-exit p0

    .line 234
    throw p1
.end method

.method public declared-synchronized w()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public x()Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized y()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->a:Landroid/app/Dialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return v0

    .line 12
    :cond_0
    monitor-exit p0

    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a;->e:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a$a0;->n()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

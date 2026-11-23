.class public Lcom/join/mgps/dialog/n;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/n$d;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/RadioButton;

.field private e:I

.field private f:Lcom/join/mgps/dialog/n$d;

.field private g:Landroid/view/View;

.field h:Landroid/view/View;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/RadioButton;

.field o:Landroid/widget/RadioButton;

.field p:Landroid/widget/RadioButton;

.field q:Landroid/widget/RadioButton;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Lcom/papa91/battle/protocol/GameRoom;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const v0, 0x7f130584

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/join/mgps/dialog/n;->e:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/dialog/n;->s:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/n;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "themeResId"
        }
    .end annotation

    const p2, 0x7f130584

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x2

    .line 7
    iput p2, p0, Lcom/join/mgps/dialog/n;->e:I

    const-string p2, ""

    .line 8
    iput-object p2, p0, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/join/mgps/dialog/n;->s:Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/n;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/n;)Lcom/join/mgps/dialog/n$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/n;->f:Lcom/join/mgps/dialog/n$d;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(IZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomType",
            "roomxingzhi",
            "allowSee"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->d:Landroid/widget/RadioButton;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->d:Landroid/widget/RadioButton;

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const-string p1, ""

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->n:Landroid/widget/RadioButton;

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->q:Landroid/widget/RadioButton;

    .line 27
    .line 28
    invoke-virtual {p2, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->s:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->s:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    .line 65
    .line 66
    mul-double v3, v3, v5

    .line 67
    .line 68
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 69
    .line 70
    add-double/2addr v3, v5

    .line 71
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    mul-double v3, v3, v5

    .line 77
    .line 78
    double-to-int v0, v3

    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 90
    .line 91
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->n:Landroid/widget/RadioButton;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->q:Landroid/widget/RadioButton;

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 99
    .line 100
    .line 101
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->l:Landroid/widget/TextView;

    .line 110
    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v0, "\u623f\u95f4\u6027\u8d28\uff08\u5bc6\u7801"

    .line 117
    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, ")"

    .line 127
    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->l:Landroid/widget/TextView;

    .line 140
    .line 141
    const-string p2, "\u623f\u95f4\u6027\u8d28"

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    :goto_3
    if-eqz p3, :cond_5

    .line 147
    .line 148
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->o:Landroid/widget/RadioButton;

    .line 149
    .line 150
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->p:Landroid/widget/RadioButton;

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->p:Landroid/widget/RadioButton;

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->o:Landroid/widget/RadioButton;

    .line 165
    .line 166
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 167
    .line 168
    .line 169
    :goto_4
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/n;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d01bb

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x1c

    .line 21
    .line 22
    if-lt v1, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const v1, 0x7f0a1412

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/widget/RadioButton;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->c:Landroid/widget/RadioButton;

    .line 53
    .line 54
    const v1, 0x7f0a1411

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/RadioButton;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->d:Landroid/widget/RadioButton;

    .line 64
    .line 65
    const v1, 0x7f0a0a22

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->g:Landroid/view/View;

    .line 73
    .line 74
    const v1, 0x7f0a1a13

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
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->i:Landroid/widget/TextView;

    .line 84
    .line 85
    const v1, 0x7f0a043e

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/widget/TextView;

    .line 93
    .line 94
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->j:Landroid/widget/TextView;

    .line 95
    .line 96
    const v1, 0x7f0a13fa

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Landroid/widget/RadioButton;

    .line 104
    .line 105
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->n:Landroid/widget/RadioButton;

    .line 106
    .line 107
    const v1, 0x7f0a13fb

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroid/widget/RadioButton;

    .line 115
    .line 116
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->q:Landroid/widget/RadioButton;

    .line 117
    .line 118
    const v1, 0x7f0a0a89

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroid/widget/RadioButton;

    .line 126
    .line 127
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->o:Landroid/widget/RadioButton;

    .line 128
    .line 129
    const v1, 0x7f0a0632

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Landroid/widget/TextView;

    .line 137
    .line 138
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->k:Landroid/widget/TextView;

    .line 139
    .line 140
    const v1, 0x7f0a0a8a

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Landroid/widget/RadioButton;

    .line 148
    .line 149
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->p:Landroid/widget/RadioButton;

    .line 150
    .line 151
    const v1, 0x7f0a13ee

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->h:Landroid/view/View;

    .line 159
    .line 160
    const v1, 0x7f0a191e

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Landroid/widget/TextView;

    .line 168
    .line 169
    iput-object v1, p0, Lcom/join/mgps/dialog/n;->m:Landroid/widget/TextView;

    .line 170
    .line 171
    const v1, 0x7f0a1414

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object v0, p0, Lcom/join/mgps/dialog/n;->l:Landroid/widget/TextView;

    .line 181
    .line 182
    iget-object v0, p0, Lcom/join/mgps/dialog/n;->j:Landroid/widget/TextView;

    .line 183
    .line 184
    new-instance v1, Lcom/join/mgps/dialog/n$a;

    .line 185
    .line 186
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/dialog/n$a;-><init>(Lcom/join/mgps/dialog/n;Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->n:Landroid/widget/RadioButton;

    .line 200
    .line 201
    new-instance v0, Lcom/join/mgps/dialog/n$b;

    .line 202
    .line 203
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/n$b;-><init>(Lcom/join/mgps/dialog/n;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->h:Landroid/view/View;

    .line 210
    .line 211
    if-eqz p1, :cond_1

    .line 212
    .line 213
    new-instance v0, Lcom/join/mgps/dialog/n$c;

    .line 214
    .line 215
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/n$c;-><init>(Lcom/join/mgps/dialog/n;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    :cond_1
    return-void
.end method

.method private varargs d(Z[Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selected",
            "views"
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p2, v1

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/n;->m:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/dialog/n$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mGameRoom",
            "l"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    xor-int/2addr v1, v2

    .line 16
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v0, p0, Lcom/join/mgps/dialog/n;->e:I

    .line 21
    .line 22
    iput-object p2, p0, Lcom/join/mgps/dialog/n;->f:Lcom/join/mgps/dialog/n$d;

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/join/mgps/dialog/n;->u:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/join/mgps/dialog/n;->t:Z

    .line 27
    .line 28
    iput-object p1, p0, Lcom/join/mgps/dialog/n;->v:Lcom/papa91/battle/protocol/GameRoom;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->i:Landroid/widget/TextView;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, ""

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 69
    .line 70
    .line 71
    move-result-wide v4

    .line 72
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p2, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_1

    .line 119
    .line 120
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->h:Landroid/view/View;

    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->h:Landroid/view/View;

    .line 128
    .line 129
    const/16 v0, 0x8

    .line 130
    .line 131
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->c:Landroid/widget/RadioButton;

    .line 135
    .line 136
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->d:Landroid/widget/RadioButton;

    .line 140
    .line 141
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->g:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->k:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-eqz p2, :cond_2

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-eqz p2, :cond_2

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iput-object p2, p0, Lcom/join/mgps/dialog/n;->s:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    iput-object p2, p0, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 181
    .line 182
    iget-object p2, p0, Lcom/join/mgps/dialog/n;->l:Landroid/widget/TextView;

    .line 183
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v3, "\u623f\u95f4\u6027\u8d28\uff08\u5bc6\u7801"

    .line 190
    .line 191
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p1, ")"

    .line 202
    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->l:Landroid/widget/TextView;

    .line 215
    .line 216
    const-string p2, "\u623f\u95f4\u6027\u8d28"

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    :goto_2
    iget p1, p0, Lcom/join/mgps/dialog/n;->e:I

    .line 222
    .line 223
    invoke-direct {p0, p1, v1, v2}, Lcom/join/mgps/dialog/n;->b(IZZ)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
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
    const v0, 0x7f0a1412

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const v0, 0x7f0a1411

    .line 12
    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const v0, 0x7f0a0a22

    .line 18
    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const v0, 0x7f0a0632

    .line 27
    .line 28
    .line 29
    if-ne p1, v0, :cond_5

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->f:Lcom/join/mgps/dialog/n$d;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->c:Landroid/widget/RadioButton;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput p1, p0, Lcom/join/mgps/dialog/n;->e:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 p1, 0x2

    .line 48
    iput p1, p0, Lcom/join/mgps/dialog/n;->e:I

    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/n;->f:Lcom/join/mgps/dialog/n$d;

    .line 51
    .line 52
    iget v0, p0, Lcom/join/mgps/dialog/n;->e:I

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/dialog/n;->n:Landroid/widget/RadioButton;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, p0, Lcom/join/mgps/dialog/n;->o:Landroid/widget/RadioButton;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iget-object v3, p0, Lcom/join/mgps/dialog/n;->r:Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/join/mgps/dialog/n$d;->b(IZZLjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_1
    return-void
.end method

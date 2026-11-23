.class public Lcom/join/mgps/adapter/x;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/content/Context;

.field d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "dataBeans",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/x;->b:Ljava/util/List;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/adapter/x;->c:Landroid/content/Context;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/adapter/x;->d:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    const/4 p3, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/join/mgps/adapter/x;->c:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const v0, 0x7f0d0346

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_0
    const v0, 0x7f0a0fee

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    const v1, 0x7f0a1767

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/TextView;

    .line 34
    .line 35
    const v2, 0x7f0a0858

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    const v3, 0x7f0a10d8

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroid/widget/TextView;

    .line 52
    .line 53
    const v4, 0x7f0a0674

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroid/widget/TextView;

    .line 61
    .line 62
    const v5, 0x7f0a117a

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Landroid/widget/TextView;

    .line 70
    .line 71
    iget-object v6, p0, Lcom/join/mgps/adapter/x;->b:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 78
    .line 79
    new-instance v7, Lcom/join/mgps/adapter/x$a;

    .line 80
    .line 81
    invoke-direct {v7, p0, v6}, Lcom/join/mgps/adapter/x$a;-><init>(Lcom/join/mgps/adapter/x;Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getTitle()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getNick_name()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getBook_count()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v3, "\u8ba2\u9605"

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_count()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v3, "\u6b3e"

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_1

    .line 165
    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 171
    .line 172
    iget-object v4, p0, Lcom/join/mgps/adapter/x;->c:Landroid/content/Context;

    .line 173
    .line 174
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    const v5, 0x7f0d0362

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v5, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    const v5, 0x7f0a084f

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 193
    .line 194
    const v6, 0x7f080caf

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v5, v6, v3}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_1
    rem-int/lit8 p1, p1, 0x5

    .line 209
    .line 210
    if-eqz p1, :cond_6

    .line 211
    .line 212
    const/4 p3, 0x1

    .line 213
    if-eq p1, p3, :cond_5

    .line 214
    .line 215
    const/4 p3, 0x2

    .line 216
    if-eq p1, p3, :cond_4

    .line 217
    .line 218
    const/4 p3, 0x3

    .line 219
    if-eq p1, p3, :cond_3

    .line 220
    .line 221
    const/4 p3, 0x4

    .line 222
    if-eq p1, p3, :cond_2

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_2
    const p1, 0x7f080641

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_3
    const p1, 0x7f080640

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_4
    const p1, 0x7f08063f

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_5
    const p1, 0x7f08063e

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_6
    const p1, 0x7f08063d

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 257
    .line 258
    .line 259
    :goto_1
    return-object p2
.end method

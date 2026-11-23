.class public Lcom/join/mgps/fragment/j3$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/fragment/j3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/j3;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/j3;->n:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/j3;->n:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/fragment/j3$g;

    .line 12
    .line 13
    iget p1, p1, Lcom/join/mgps/fragment/j3$g;->b:I

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, -0x1

    .line 17
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8
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
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/j3$c;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v0, v3, :cond_1

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-ne v0, v1, :cond_9

    .line 14
    .line 15
    check-cast p1, Lcom/join/mgps/fragment/j3$f;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/join/mgps/fragment/j3$f;->d:Lit/sephiroth/android/library/widget/HListView;

    .line 18
    .line 19
    new-instance p2, Lcom/join/mgps/fragment/j3$e;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 22
    .line 23
    invoke-direct {p2, v0}, Lcom/join/mgps/fragment/j3$e;-><init>(Lcom/join/mgps/fragment/j3;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/join/mgps/fragment/j3;->n:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/join/mgps/fragment/j3$g;

    .line 40
    .line 41
    iget-object v4, v4, Lcom/join/mgps/fragment/j3$g;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 44
    .line 45
    check-cast p1, Lcom/join/mgps/fragment/j3$d;

    .line 46
    .line 47
    iget-object v5, p1, Lcom/join/mgps/fragment/j3$d;->d:Landroid/view/View;

    .line 48
    .line 49
    new-instance v6, Lcom/join/mgps/fragment/j3$c$a;

    .line 50
    .line 51
    invoke-direct {v6, p0, v4}, Lcom/join/mgps/fragment/j3$c$a;-><init>(Lcom/join/mgps/fragment/j3$c;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    if-ne v0, v2, :cond_2

    .line 58
    .line 59
    iget-object p2, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 60
    .line 61
    iget-object p2, p2, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

    .line 62
    .line 63
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 64
    .line 65
    invoke-static {p2, p1, v4}, Lcom/join/mgps/adapter/a3;->d(Landroid/content/Context;Landroid/view/View;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/fragment/j3$d;->e:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getTitle()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p1, Lcom/join/mgps/fragment/j3$d;->g:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getNick_name()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p1, Lcom/join/mgps/fragment/j3$d;->i:Landroid/widget/TextView;

    .line 89
    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getBook_count()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v6, "\u8ba2\u9605"

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p1, Lcom/join/mgps/fragment/j3$d;->h:Landroid/widget/TextView;

    .line 115
    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getGame_count()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v6, "\u6b3e"

    .line 129
    .line 130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p1, Lcom/join/mgps/fragment/j3$d;->f:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getGame_list()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_3

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;

    .line 164
    .line 165
    iget-object v5, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 166
    .line 167
    iget-object v5, v5, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    const v6, 0x7f0d0362

    .line 174
    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    const v6, 0x7f0a084f

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 189
    .line 190
    const v7, 0x7f080caf

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-static {v6, v7, v4}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v4, p1, Lcom/join/mgps/fragment/j3$d;->f:Landroid/widget/LinearLayout;

    .line 201
    .line 202
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_3
    rem-int/lit8 p2, p2, 0x5

    .line 207
    .line 208
    if-eqz p2, :cond_8

    .line 209
    .line 210
    if-eq p2, v3, :cond_7

    .line 211
    .line 212
    if-eq p2, v1, :cond_6

    .line 213
    .line 214
    if-eq p2, v2, :cond_5

    .line 215
    .line 216
    const/4 v0, 0x4

    .line 217
    if-eq p2, v0, :cond_4

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_4
    iget-object p1, p1, Lcom/join/mgps/fragment/j3$d;->d:Landroid/view/View;

    .line 221
    .line 222
    const p2, 0x7f080641

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_5
    iget-object p1, p1, Lcom/join/mgps/fragment/j3$d;->d:Landroid/view/View;

    .line 230
    .line 231
    const p2, 0x7f080640

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_6
    iget-object p1, p1, Lcom/join/mgps/fragment/j3$d;->d:Landroid/view/View;

    .line 239
    .line 240
    const p2, 0x7f08063f

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_7
    iget-object p1, p1, Lcom/join/mgps/fragment/j3$d;->d:Landroid/view/View;

    .line 248
    .line 249
    const p2, 0x7f08063e

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_8
    iget-object p1, p1, Lcom/join/mgps/fragment/j3$d;->d:Landroid/view/View;

    .line 257
    .line 258
    const p2, 0x7f08063d

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 262
    .line 263
    .line 264
    :cond_9
    :goto_2
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
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const v0, 0x7f0d035e

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Lcom/join/mgps/fragment/j3$d;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 23
    .line 24
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/j3$d;-><init>(Lcom/join/mgps/fragment/j3;Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_0
    const/4 v0, 0x3

    .line 29
    if-ne p2, v0, :cond_1

    .line 30
    .line 31
    iget-object p2, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const v0, 0x7f0d0360

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Lcom/join/mgps/fragment/j3$d;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 49
    .line 50
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/j3$d;-><init>(Lcom/join/mgps/fragment/j3;Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    return-object p2

    .line 54
    :cond_1
    const/4 v0, 0x2

    .line 55
    if-ne p2, v0, :cond_2

    .line 56
    .line 57
    iget-object p2, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 58
    .line 59
    iget-object p2, p2, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const v0, 0x7f0d035f

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Lcom/join/mgps/fragment/j3$f;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 75
    .line 76
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/j3$f;-><init>(Lcom/join/mgps/fragment/j3;Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    return-object p2

    .line 80
    :cond_2
    const/4 p1, 0x0

    .line 81
    return-object p1
.end method

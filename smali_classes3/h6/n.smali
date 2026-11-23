.class public final Lh6/n;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Lcom/join/mgps/dto/hmcloud/HandleCfg;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onItemUse"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onItemDelete"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onItemSelected"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lh6/n;->e:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    iput-object p2, p0, Lh6/n;->f:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    iput-object p3, p0, Lh6/n;->g:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lh6/n;->i:Ljava/util/List;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic a(Lh6/n;Lcom/join/mgps/dto/hmcloud/HandleCfg;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lh6/n;->i(Lh6/n;Lcom/join/mgps/dto/hmcloud/HandleCfg;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lh6/n;ILcom/join/mgps/dto/hmcloud/HandleCfg;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lh6/n;->k(Lh6/n;ILcom/join/mgps/dto/hmcloud/HandleCfg;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lh6/n;Lcom/join/mgps/dto/hmcloud/HandleCfg;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lh6/n;->j(Lh6/n;Lcom/join/mgps/dto/hmcloud/HandleCfg;Landroid/view/View;)V

    return-void
.end method

.method private static final i(Lh6/n;Lcom/join/mgps/dto/hmcloud/HandleCfg;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lh6/n;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final j(Lh6/n;Lcom/join/mgps/dto/hmcloud/HandleCfg;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lh6/n;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final k(Lh6/n;ILcom/join/mgps/dto/hmcloud/HandleCfg;Landroid/view/View;)V
    .locals 0

    .line 1
    iput p1, p0, Lh6/n;->j:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lh6/n;->g:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d()Lcom/join/mgps/dto/hmcloud/HandleCfg;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/n;->h:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lh6/n;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/n;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/n;->g:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lh6/n;->i:Ljava/util/List;

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

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/n;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/n;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lh6/n;->h:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 2
    .line 3
    return-void
.end method

.method public final m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lh6/n;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh6/n;->i:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 13
    .line 14
    sget-object v1, Lcom/join/mgps/dto/hmcloud/HandleCfg;->Companion:Lcom/join/mgps/dto/hmcloud/HandleCfg$Companion;

    .line 15
    .line 16
    iget-object v2, p0, Lh6/n;->h:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg$Companion;->isEquals(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    instance-of v2, p1, Lh6/o;

    .line 23
    .line 24
    if-eqz v2, :cond_d

    .line 25
    .line 26
    check-cast p1, Lh6/o;

    .line 27
    .line 28
    invoke-virtual {p1}, Lh6/o;->a()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget v3, p0, Lh6/n;->j:I

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-ne v3, p2, :cond_0

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lh6/o;->d()Landroid/widget/TextView;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getOffical()Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v2, 0x0

    .line 67
    :goto_1
    const/4 v3, -0x1

    .line 68
    if-nez v2, :cond_6

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getSource()Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    const/4 v2, -0x1

    .line 82
    :goto_2
    sget-object v6, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->OFFICIAL:Lcom/join/mgps/dto/hmcloud/HandleCfgSource;

    .line 83
    .line 84
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eq v2, v6, :cond_6

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getSource()Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    const/4 v2, -0x1

    .line 102
    :goto_3
    sget-object v6, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->DEFAULT:Lcom/join/mgps/dto/hmcloud/HandleCfgSource;

    .line 103
    .line 104
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eq v2, v6, :cond_6

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getSource()Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    goto :goto_4

    .line 121
    :cond_4
    const/4 v2, -0x1

    .line 122
    :goto_4
    sget-object v6, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->CUSTOM:Lcom/join/mgps/dto/hmcloud/HandleCfgSource;

    .line 123
    .line 124
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-ne v2, v6, :cond_5

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_5
    const/4 v4, 0x0

    .line 132
    :cond_6
    :goto_5
    invoke-virtual {p1}, Lh6/o;->e()Landroid/widget/ImageView;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const/16 v6, 0x8

    .line 137
    .line 138
    if-eqz v4, :cond_7

    .line 139
    .line 140
    const/4 v4, 0x0

    .line 141
    goto :goto_6

    .line 142
    :cond_7
    const/16 v4, 0x8

    .line 143
    .line 144
    :goto_6
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getSource()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v2, :cond_8

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    :cond_8
    sget-object v2, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->CUSTOM:Lcom/join/mgps/dto/hmcloud/HandleCfgSource;

    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-ne v3, v4, :cond_9

    .line 164
    .line 165
    invoke-virtual {p1}, Lh6/o;->e()Landroid/widget/ImageView;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    const v4, 0x7f08094d

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_9
    invoke-virtual {p1}, Lh6/o;->e()Landroid/widget/ImageView;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    const v4, 0x7f08094e

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    .line 185
    .line 186
    :goto_7
    invoke-virtual {p1}, Lh6/o;->b()Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getSource()Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-nez v4, :cond_a

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-ne v4, v2, :cond_b

    .line 206
    .line 207
    const/4 v2, 0x0

    .line 208
    goto :goto_9

    .line 209
    :cond_b
    :goto_8
    const/16 v2, 0x8

    .line 210
    .line 211
    :goto_9
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lh6/o;->c()Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    if-eqz v1, :cond_c

    .line 219
    .line 220
    goto :goto_a

    .line 221
    :cond_c
    const/16 v5, 0x8

    .line 222
    .line 223
    :goto_a
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Lh6/o;->b()Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    new-instance v2, Lh6/k;

    .line 231
    .line 232
    invoke-direct {v2, p0, v0}, Lh6/k;-><init>(Lh6/n;Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Lh6/o;->f()Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    new-instance v2, Lh6/l;

    .line 243
    .line 244
    invoke-direct {v2, p0, v0}, Lh6/l;-><init>(Lh6/n;Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Lh6/o;->a()Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    new-instance v1, Lh6/m;

    .line 255
    .line 256
    invoke-direct {v1, p0, p2, v0}, Lh6/m;-><init>(Lh6/n;ILcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .line 261
    .line 262
    :cond_d
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const v0, 0x7f0d038a

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lh6/o;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, p1}, Lh6/o;-><init>(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    return-object p2
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lh6/n;->i:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

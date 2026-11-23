.class Lcom/join/mgps/fragment/n$j;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/fragment/n$h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/fragment/n;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/n;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/fragment/n$h;I)V
    .locals 20
    .param p1    # Lcom/join/mgps/fragment/n$h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lcom/join/mgps/fragment/n$h;->d:Lcom/join/mgps/customview/ClouldItemView3;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Lcom/join/mgps/customview/ClouldItemView3;->setCloudItemListener(Lw6/c;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, v0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/lit8 v3, v3, -0x1

    .line 23
    .line 24
    if-ne v3, v2, :cond_0

    .line 25
    .line 26
    iget-object v4, v1, Lcom/join/mgps/fragment/n$h;->d:Lcom/join/mgps/customview/ClouldItemView3;

    .line 27
    .line 28
    iget-object v3, v0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 29
    .line 30
    iget-object v5, v3, Lcom/join/mgps/fragment/n;->n:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    move-object v6, v3

    .line 39
    check-cast v6, Lcom/join/mgps/dto/CloudListDataBean;

    .line 40
    .line 41
    iget-object v11, v0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 42
    .line 43
    iget v7, v11, Lcom/join/mgps/fragment/n;->m:I

    .line 44
    .line 45
    iget v8, v11, Lcom/join/mgps/fragment/n;->l:I

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x1

    .line 49
    invoke-virtual/range {v4 .. v11}, Lcom/join/mgps/customview/ClouldItemView3;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v12, v1, Lcom/join/mgps/fragment/n$h;->d:Lcom/join/mgps/customview/ClouldItemView3;

    .line 54
    .line 55
    iget-object v3, v0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 56
    .line 57
    iget-object v13, v3, Lcom/join/mgps/fragment/n;->n:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    move-object v14, v3

    .line 66
    check-cast v14, Lcom/join/mgps/dto/CloudListDataBean;

    .line 67
    .line 68
    iget-object v3, v0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 69
    .line 70
    iget v15, v3, Lcom/join/mgps/fragment/n;->m:I

    .line 71
    .line 72
    iget v4, v3, Lcom/join/mgps/fragment/n;->l:I

    .line 73
    .line 74
    const/16 v17, 0x0

    .line 75
    .line 76
    const/16 v18, 0x0

    .line 77
    .line 78
    move/from16 v16, v4

    .line 79
    .line 80
    move-object/from16 v19, v3

    .line 81
    .line 82
    invoke-virtual/range {v12 .. v19}, Lcom/join/mgps/customview/ClouldItemView3;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v3, v1, Lcom/join/mgps/fragment/n$h;->d:Lcom/join/mgps/customview/ClouldItemView3;

    .line 86
    .line 87
    iget-object v4, v0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 88
    .line 89
    iget-object v4, v4, Lcom/join/mgps/fragment/n;->u:Lcom/join/mgps/activity/GameMainActivity4;

    .line 90
    .line 91
    iget-boolean v4, v4, Lcom/join/mgps/activity/GameMainActivity4;->isVBA:Z

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Lcom/join/mgps/customview/ClouldItemView3;->setGBAType(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v3, v1, Lcom/join/mgps/fragment/n$h;->d:Lcom/join/mgps/customview/ClouldItemView3;

    .line 97
    .line 98
    iget-object v4, v0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 99
    .line 100
    iget-object v4, v4, Lcom/join/mgps/fragment/n;->u:Lcom/join/mgps/activity/GameMainActivity4;

    .line 101
    .line 102
    iget-boolean v5, v4, Lcom/join/mgps/activity/GameMainActivity4;->marcketDownEnable:Z

    .line 103
    .line 104
    iget-boolean v4, v4, Lcom/join/mgps/activity/GameMainActivity4;->marcketPGNEnable:Z

    .line 105
    .line 106
    invoke-virtual {v3, v5, v4}, Lcom/join/mgps/customview/ClouldItemView3;->setPGN(ZZ)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 110
    .line 111
    iget v3, v3, Lcom/join/mgps/fragment/n;->l:I

    .line 112
    .line 113
    const/4 v4, 0x4

    .line 114
    if-ne v3, v4, :cond_1

    .line 115
    .line 116
    iget-object v3, v1, Lcom/join/mgps/fragment/n$h;->e:Landroid/widget/LinearLayout;

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    iget-object v3, v1, Lcom/join/mgps/fragment/n$h;->f:Landroid/widget/TextView;

    .line 123
    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v5, v0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 130
    .line 131
    iget-object v5, v5, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    .line 138
    .line 139
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getTodayCoin()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v5, ""

    .line 147
    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v1, Lcom/join/mgps/fragment/n$h;->g:Landroid/widget/TextView;

    .line 159
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    iget-object v4, v0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 166
    .line 167
    iget-object v4, v4, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lcom/join/mgps/dto/CloudListDataBean;

    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getTotalCoin()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_1
    iget-object v1, v1, Lcom/join/mgps/fragment/n$h;->e:Landroid/widget/LinearLayout;

    .line 194
    .line 195
    const/16 v2, 0x8

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :goto_1
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/join/mgps/fragment/n$h;
    .locals 4
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
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/join/mgps/fragment/n$h;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f0d03c8

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/n$h;-><init>(Lcom/join/mgps/fragment/n;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/n$j;->e:Lcom/join/mgps/fragment/n;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/fragment/n$h;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/n$j;->a(Lcom/join/mgps/fragment/n$h;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/n$j;->b(Landroid/view/ViewGroup;I)Lcom/join/mgps/fragment/n$h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

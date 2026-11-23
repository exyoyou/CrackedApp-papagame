.class public Lcom/join/mgps/adapter/InformationAdapterV2;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/InformationAdapterV2$l;,
        Lcom/join/mgps/adapter/InformationAdapterV2$n;,
        Lcom/join/mgps/adapter/InformationAdapterV2$o;,
        Lcom/join/mgps/adapter/InformationAdapterV2$p;,
        Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;,
        Lcom/join/mgps/adapter/InformationAdapterV2$m;,
        Lcom/join/mgps/adapter/InformationAdapterV2$k;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/InformationAdapterV2$n;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/join/mgps/adapter/InformationAdapterV2$l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "handler",
            "viewBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/InformationAdapterV2$n;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->e:Lcom/join/mgps/adapter/InformationAdapterV2$l;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->b:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->c:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->d:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/InformationAdapterV2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/InformationAdapterV2;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/InformationAdapterV2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->c:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/InformationAdapterV2$m;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d06f6

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a03ee

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->l:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    const v0, 0x7f0a03f0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->m:Landroid/view/View;

    .line 48
    .line 49
    const v0, 0x7f0a03ef

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->n:Landroid/widget/TextView;

    .line 59
    .line 60
    const v0, 0x7f0a03f1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->o:Landroid/widget/TextView;

    .line 70
    .line 71
    const v0, 0x7f0a0e61

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->p:Landroid/view/View;

    .line 79
    .line 80
    const v0, 0x7f0a0215

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->q:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/InformationAdapterV2;->getItem(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

    .line 97
    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    return-object p2

    .line 101
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 102
    .line 103
    if-nez v1, :cond_2

    .line 104
    .line 105
    return-object p2

    .line 106
    :cond_2
    iget-boolean v1, v0, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->d:Z

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    const/16 v3, 0x8

    .line 110
    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    iget-object v1, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->m:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->m:Landroid/view/View;

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :goto_1
    iget-boolean v1, v0, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->g:Z

    .line 125
    .line 126
    if-nez v1, :cond_4

    .line 127
    .line 128
    iget-object v1, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->p:Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->q:Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    iget-object v1, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->p:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->q:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getReplyList()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    iget-object p3, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->l:Landroid/widget/LinearLayout;

    .line 164
    .line 165
    const/4 v1, 0x1

    .line 166
    invoke-direct {p0, p3, v0, v1, p1}, Lcom/join/mgps/adapter/InformationAdapterV2;->j(Landroid/view/View;Lcom/join/mgps/adapter/InformationAdapterV2$n$b;ZI)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/InformationAdapterV2$m;->l:Landroid/widget/LinearLayout;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :goto_3
    return-object p2
.end method

.method private j(Landroid/view/View;Lcom/join/mgps/adapter/InformationAdapterV2$n$b;ZI)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "parent",
            "commentMessageReply",
            "hideMore",
            "position"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    iget-object v10, v9, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget v11, v9, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->e:I

    .line 8
    .line 9
    iget-boolean v12, v9, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->f:Z

    .line 10
    .line 11
    iget-object v13, v9, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 12
    .line 13
    invoke-virtual {v13}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getReplyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v14

    .line 17
    move-object/from16 v15, p1

    .line 18
    .line 19
    check-cast v15, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v15}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_0
    add-int/lit8 v0, v7, 0x1

    .line 30
    .line 31
    if-ge v5, v0, :cond_7

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    if-le v5, v0, :cond_0

    .line 35
    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    move/from16 v16, v11

    .line 39
    .line 40
    move/from16 v17, v12

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    move v11, v5

    .line 44
    move v12, v7

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_0
    iget-object v1, v8, Lcom/join/mgps/adapter/InformationAdapterV2;->b:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const v2, 0x7f0d016e

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .line 63
    const/4 v2, -0x1

    .line 64
    const/4 v3, -0x2

    .line 65
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    const v1, 0x7f0a03ef

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/widget/TextView;

    .line 79
    .line 80
    const v2, 0x7f0a03f1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroid/widget/TextView;

    .line 88
    .line 89
    const v3, 0x7f0a18cf

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroid/widget/TextView;

    .line 97
    .line 98
    const/16 v6, 0x8

    .line 99
    .line 100
    if-ne v5, v7, :cond_1

    .line 101
    .line 102
    if-gt v7, v0, :cond_2

    .line 103
    .line 104
    :cond_1
    if-lez v11, :cond_3

    .line 105
    .line 106
    if-eqz v12, :cond_3

    .line 107
    .line 108
    if-ne v5, v7, :cond_3

    .line 109
    .line 110
    :cond_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    const-string v0, "\u6536\u8d77"

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Lcom/join/mgps/adapter/InformationAdapterV2$j;

    .line 126
    .line 127
    move-object v1, v0

    .line 128
    move-object/from16 v2, p0

    .line 129
    .line 130
    move v3, v11

    .line 131
    move-object v9, v4

    .line 132
    move/from16 v4, p4

    .line 133
    .line 134
    move/from16 v16, v11

    .line 135
    .line 136
    move v11, v5

    .line 137
    move-object v5, v10

    .line 138
    move/from16 v17, v12

    .line 139
    .line 140
    const/4 v12, 0x0

    .line 141
    move-object/from16 v6, p2

    .line 142
    .line 143
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/InformationAdapterV2$j;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;IILjava/lang/String;Lcom/join/mgps/adapter/InformationAdapterV2$n$b;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    move v12, v7

    .line 150
    :goto_1
    const/4 v4, 0x0

    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :cond_3
    move-object v9, v4

    .line 154
    move/from16 v16, v11

    .line 155
    .line 156
    move/from16 v17, v12

    .line 157
    .line 158
    const/4 v12, 0x0

    .line 159
    move v11, v5

    .line 160
    if-ne v11, v0, :cond_4

    .line 161
    .line 162
    if-eqz p3, :cond_4

    .line 163
    .line 164
    if-le v7, v0, :cond_4

    .line 165
    .line 166
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/4 v1, 0x1

    .line 180
    new-array v1, v1, [Ljava/lang/Object;

    .line 181
    .line 182
    add-int/lit8 v3, v7, -0x3

    .line 183
    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    aput-object v3, v1, v12

    .line 189
    .line 190
    const v3, 0x7f1200b4

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lcom/join/mgps/adapter/InformationAdapterV2$a;

    .line 201
    .line 202
    move-object v1, v0

    .line 203
    move-object/from16 v2, p0

    .line 204
    .line 205
    move v3, v7

    .line 206
    move-object v4, v13

    .line 207
    move-object v5, v10

    .line 208
    move-object/from16 v6, p2

    .line 209
    .line 210
    move v12, v7

    .line 211
    move/from16 v7, p4

    .line 212
    .line 213
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/InformationAdapterV2$a;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;ILcom/join/mgps/dto/InformationCommentBeanV2;Ljava/lang/String;Lcom/join/mgps/adapter/InformationAdapterV2$n$b;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_4
    move v12, v7

    .line 221
    if-ge v11, v12, :cond_6

    .line 222
    .line 223
    if-lt v11, v0, :cond_5

    .line 224
    .line 225
    if-eqz p3, :cond_5

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_5
    const/4 v4, 0x0

    .line 229
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getMsg()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getCommentId()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    :try_start_0
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getNickname()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v2, ":"

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    invoke-direct {v8, v9, v0}, Lcom/join/mgps/adapter/InformationAdapterV2;->n(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 288
    .line 289
    .line 290
    :goto_2
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_6
    :goto_3
    const/4 v4, 0x0

    .line 295
    :goto_4
    add-int/lit8 v5, v11, 0x1

    .line 296
    .line 297
    move-object/from16 v9, p2

    .line 298
    .line 299
    move v7, v12

    .line 300
    move/from16 v11, v16

    .line 301
    .line 302
    move/from16 v12, v17

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_7
    return-void
.end method

.method private n(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "sub"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/InformationAdapterV2$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/InformationAdapterV2$h;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private o(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "commitDataBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/InformationAdapterV2$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/InformationAdapterV2$g;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private p(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "commitDataBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/InformationAdapterV2$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/InformationAdapterV2$i;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method d(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBeanV2;IZ)Lcom/join/mgps/adapter/InformationAdapterV2$n;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pid",
            "bean",
            "myAuth",
            "showDivider"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/InformationAdapterV2$n;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;->REPLY:Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;

    .line 4
    .line 5
    new-instance v2, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

    .line 6
    .line 7
    invoke-direct {v2, p1, p2, p3, p4}, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBeanV2;IZ)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/InformationAdapterV2$n;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
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
    new-instance p2, Lcom/join/mgps/adapter/InformationAdapterV2$k;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/InformationAdapterV2$k;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->b:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0d0357

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v1, 0x7f0a0fee

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->p(Lcom/join/mgps/adapter/InformationAdapterV2$k;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    .line 34
    const v1, 0x7f0a1b1a

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    .line 43
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->r(Lcom/join/mgps/adapter/InformationAdapterV2$k;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    .line 45
    .line 46
    const v1, 0x7f0a1219

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->t(Lcom/join/mgps/adapter/InformationAdapterV2$k;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 56
    .line 57
    .line 58
    const v1, 0x7f0a1b1d

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->v(Lcom/join/mgps/adapter/InformationAdapterV2$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0a174b

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->x(Lcom/join/mgps/adapter/InformationAdapterV2$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 80
    .line 81
    .line 82
    const v1, 0x7f0a0424

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->z(Lcom/join/mgps/adapter/InformationAdapterV2$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 92
    .line 93
    .line 94
    const v1, 0x7f0a121a

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->B(Lcom/join/mgps/adapter/InformationAdapterV2$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 104
    .line 105
    .line 106
    const v1, 0x7f0a0e59

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/join/mgps/customview/VipView;

    .line 114
    .line 115
    invoke-static {p2, v1}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->C(Lcom/join/mgps/adapter/InformationAdapterV2$k;Lcom/join/mgps/customview/VipView;)Lcom/join/mgps/customview/VipView;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/join/mgps/adapter/InformationAdapterV2$k;

    .line 127
    .line 128
    move-object v3, v0

    .line 129
    move-object v0, p2

    .line 130
    move-object p2, v3

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/InformationAdapterV2;->getItem(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Lcom/join/mgps/adapter/InformationAdapterV2$n$a;

    .line 136
    .line 137
    if-nez p1, :cond_1

    .line 138
    .line 139
    return-object p3

    .line 140
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/adapter/InformationAdapterV2$n$a;->a:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getCreateTime()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v1

    .line 150
    invoke-static {p2}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->w(Lcom/join/mgps/adapter/InformationAdapterV2$k;)Landroid/widget/TextView;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p2}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->y(Lcom/join/mgps/adapter/InformationAdapterV2$k;)Landroid/widget/TextView;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getMsg()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    invoke-static {p2}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->A(Lcom/join/mgps/adapter/InformationAdapterV2$k;)Landroid/widget/TextView;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getLike()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v2, ""

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getPraise()Ljava/lang/Boolean;

    .line 201
    .line 202
    .line 203
    move-result-object p3

    .line 204
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 205
    .line 206
    .line 207
    move-result p3

    .line 208
    if-eqz p3, :cond_2

    .line 209
    .line 210
    invoke-static {p2}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->s(Lcom/join/mgps/adapter/InformationAdapterV2$k;)Landroid/widget/ImageView;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    const v1, 0x7f080c51

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_2
    invoke-static {p2}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->s(Lcom/join/mgps/adapter/InformationAdapterV2$k;)Landroid/widget/ImageView;

    .line 222
    .line 223
    .line 224
    move-result-object p3

    .line 225
    const v1, 0x7f081320

    .line 226
    .line 227
    .line 228
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    .line 230
    .line 231
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getAvatar()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p3

    .line 235
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result p3

    .line 239
    if-eqz p3, :cond_3

    .line 240
    .line 241
    iget-object p3, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->b:Landroid/content/Context;

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getAvatar()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {p2}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->q(Lcom/join/mgps/adapter/InformationAdapterV2$k;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {p3, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 252
    .line 253
    .line 254
    :cond_3
    invoke-static {p2}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->u(Lcom/join/mgps/adapter/InformationAdapterV2$k;)Landroid/widget/TextView;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getNickname()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    invoke-static {p2}, Lcom/join/mgps/adapter/InformationAdapterV2$k;->s(Lcom/join/mgps/adapter/InformationAdapterV2$k;)Landroid/widget/ImageView;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/adapter/InformationAdapterV2;->o(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 274
    .line 275
    .line 276
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/adapter/InformationAdapterV2;->p(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 277
    .line 278
    .line 279
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/InformationAdapterV2$n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

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

.method public getItem(I)Ljava/lang/Object;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/adapter/InformationAdapterV2$n;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/InformationAdapterV2$n;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
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
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/adapter/InformationAdapterV2$n;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/InformationAdapterV2$n;->b()Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, -0x1

    .line 21
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/InformationAdapterV2;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;->COMMENT:Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/InformationAdapterV2;->h(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;->TITLE:Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/InformationAdapterV2;->h(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;->REPLY:Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/InformationAdapterV2;->g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    :cond_2
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;->values()[Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public h(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "view",
            "viewGroup",
            "type"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/InformationAdapterV2;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/InformationAdapterV2$n$a;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/InformationAdapterV2$n$a;->a:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 8
    .line 9
    const/4 p3, 0x2

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    if-eq p4, v0, :cond_1

    .line 15
    .line 16
    if-eq p4, p3, :cond_0

    .line 17
    .line 18
    :goto_0
    move-object v2, v1

    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/InformationAdapterV2$p;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/InformationAdapterV2$p;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->b:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const v3, 0x7f0d0357

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const v3, 0x7f0a0fee

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 47
    .line 48
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->b(Lcom/join/mgps/adapter/InformationAdapterV2$p;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    .line 51
    const v3, 0x7f0a1b1a

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->d(Lcom/join/mgps/adapter/InformationAdapterV2$p;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    .line 63
    const v3, 0x7f0a1219

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->f(Lcom/join/mgps/adapter/InformationAdapterV2$p;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 73
    .line 74
    .line 75
    const v3, 0x7f0a1b1d

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->h(Lcom/join/mgps/adapter/InformationAdapterV2$p;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 85
    .line 86
    .line 87
    const v3, 0x7f0a174b

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->j(Lcom/join/mgps/adapter/InformationAdapterV2$p;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 97
    .line 98
    .line 99
    const v3, 0x7f0a0424

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->l(Lcom/join/mgps/adapter/InformationAdapterV2$p;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 109
    .line 110
    .line 111
    const v3, 0x7f0a121a

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->n(Lcom/join/mgps/adapter/InformationAdapterV2$p;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 121
    .line 122
    .line 123
    const v3, 0x7f0a0e59

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->o(Lcom/join/mgps/adapter/InformationAdapterV2$p;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 133
    .line 134
    .line 135
    const v3, 0x7f0a0e5b

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Lcom/join/mgps/customview/VipView;

    .line 143
    .line 144
    iput-object v3, p2, Lcom/join/mgps/adapter/InformationAdapterV2$p;->i:Lcom/join/mgps/customview/VipView;

    .line 145
    .line 146
    const v3, 0x7f0a1087

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Landroid/widget/TextView;

    .line 154
    .line 155
    iput-object v3, p2, Lcom/join/mgps/adapter/InformationAdapterV2$p;->j:Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    move-object v4, v2

    .line 161
    move-object v2, p2

    .line 162
    move-object p2, v4

    .line 163
    goto :goto_1

    .line 164
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/InformationAdapterV2$o;

    .line 165
    .line 166
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/InformationAdapterV2$o;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;)V

    .line 167
    .line 168
    .line 169
    iget-object v2, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->b:Landroid/content/Context;

    .line 170
    .line 171
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const v3, 0x7f0d0356

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const v3, 0x7f0a1767

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/InformationAdapterV2$o;->b(Lcom/join/mgps/adapter/InformationAdapterV2$o;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    move-object v4, v1

    .line 198
    move-object v1, p2

    .line 199
    move-object p2, v2

    .line 200
    move-object v2, v4

    .line 201
    goto :goto_1

    .line 202
    :cond_2
    if-eq p4, v0, :cond_4

    .line 203
    .line 204
    if-eq p4, p3, :cond_3

    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Lcom/join/mgps/adapter/InformationAdapterV2$p;

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Lcom/join/mgps/adapter/InformationAdapterV2$o;

    .line 220
    .line 221
    move-object v4, v2

    .line 222
    move-object v2, v1

    .line 223
    move-object v1, v4

    .line 224
    :goto_1
    if-eq p4, v0, :cond_8

    .line 225
    .line 226
    if-eq p4, p3, :cond_5

    .line 227
    .line 228
    goto/16 :goto_3

    .line 229
    .line 230
    :cond_5
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->g(Lcom/join/mgps/adapter/InformationAdapterV2$p;)Landroid/widget/TextView;

    .line 231
    .line 232
    .line 233
    move-result-object p3

    .line 234
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getNickname()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p4

    .line 238
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 239
    .line 240
    .line 241
    move-result-object p4

    .line 242
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getCreateTime()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p3

    .line 249
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 250
    .line 251
    .line 252
    move-result-wide p3

    .line 253
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->i(Lcom/join/mgps/adapter/InformationAdapterV2$p;)Landroid/widget/TextView;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {p3, p4}, Lcom/join/android/app/common/utils/i;->b(J)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p3

    .line 261
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->k(Lcom/join/mgps/adapter/InformationAdapterV2$p;)Landroid/widget/TextView;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getMsg()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p4

    .line 272
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->m(Lcom/join/mgps/adapter/InformationAdapterV2$p;)Landroid/widget/TextView;

    .line 276
    .line 277
    .line 278
    move-result-object p3

    .line 279
    new-instance p4, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getLike()I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v0, ""

    .line 292
    .line 293
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p4

    .line 300
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getPraise()Ljava/lang/Boolean;

    .line 304
    .line 305
    .line 306
    move-result-object p3

    .line 307
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 308
    .line 309
    .line 310
    move-result p3

    .line 311
    if-eqz p3, :cond_6

    .line 312
    .line 313
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->e(Lcom/join/mgps/adapter/InformationAdapterV2$p;)Landroid/widget/ImageView;

    .line 314
    .line 315
    .line 316
    move-result-object p3

    .line 317
    const p4, 0x7f080c51

    .line 318
    .line 319
    .line 320
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_6
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->e(Lcom/join/mgps/adapter/InformationAdapterV2$p;)Landroid/widget/ImageView;

    .line 325
    .line 326
    .line 327
    move-result-object p3

    .line 328
    const p4, 0x7f081320

    .line 329
    .line 330
    .line 331
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    .line 333
    .line 334
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getAvatar()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p3

    .line 338
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result p3

    .line 342
    if-eqz p3, :cond_7

    .line 343
    .line 344
    iget-object p3, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->b:Landroid/content/Context;

    .line 345
    .line 346
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getAvatar()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p4

    .line 350
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->c(Lcom/join/mgps/adapter/InformationAdapterV2$p;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {p3, p4, v0}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 355
    .line 356
    .line 357
    :cond_7
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->a(Lcom/join/mgps/adapter/InformationAdapterV2$p;)Landroid/widget/RelativeLayout;

    .line 358
    .line 359
    .line 360
    move-result-object p3

    .line 361
    new-instance p4, Lcom/join/mgps/adapter/InformationAdapterV2$b;

    .line 362
    .line 363
    invoke-direct {p4, p0, p1}, Lcom/join/mgps/adapter/InformationAdapterV2$b;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->e(Lcom/join/mgps/adapter/InformationAdapterV2$p;)Landroid/widget/ImageView;

    .line 370
    .line 371
    .line 372
    move-result-object p3

    .line 373
    new-instance p4, Lcom/join/mgps/adapter/InformationAdapterV2$c;

    .line 374
    .line 375
    invoke-direct {p4, p0, p1}, Lcom/join/mgps/adapter/InformationAdapterV2$c;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    .line 380
    .line 381
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->k(Lcom/join/mgps/adapter/InformationAdapterV2$p;)Landroid/widget/TextView;

    .line 382
    .line 383
    .line 384
    move-result-object p3

    .line 385
    new-instance p4, Lcom/join/mgps/adapter/InformationAdapterV2$d;

    .line 386
    .line 387
    invoke-direct {p4, p0, v2}, Lcom/join/mgps/adapter/InformationAdapterV2$d;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;Lcom/join/mgps/adapter/InformationAdapterV2$p;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p3, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 391
    .line 392
    .line 393
    iget-object p3, v2, Lcom/join/mgps/adapter/InformationAdapterV2$p;->j:Landroid/widget/TextView;

    .line 394
    .line 395
    new-instance p4, Lcom/join/mgps/adapter/InformationAdapterV2$e;

    .line 396
    .line 397
    invoke-direct {p4, p0, v2}, Lcom/join/mgps/adapter/InformationAdapterV2$e;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;Lcom/join/mgps/adapter/InformationAdapterV2$p;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    .line 402
    .line 403
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$p;->c(Lcom/join/mgps/adapter/InformationAdapterV2$p;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 404
    .line 405
    .line 406
    move-result-object p3

    .line 407
    new-instance p4, Lcom/join/mgps/adapter/InformationAdapterV2$f;

    .line 408
    .line 409
    invoke-direct {p4, p0, p1}, Lcom/join/mgps/adapter/InformationAdapterV2$f;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    .line 414
    .line 415
    goto :goto_3

    .line 416
    :cond_8
    invoke-static {v1}, Lcom/join/mgps/adapter/InformationAdapterV2$o;->a(Lcom/join/mgps/adapter/InformationAdapterV2$o;)Landroid/widget/TextView;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    const-string p3, "\u6700\u65b0\u8bc4\u8bba"

    .line 421
    .line 422
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    .line 424
    .line 425
    :goto_3
    return-object p2
.end method

.method public i()Lcom/join/mgps/adapter/InformationAdapterV2$l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->e:Lcom/join/mgps/adapter/InformationAdapterV2$l;

    .line 2
    .line 3
    return-object v0
.end method

.method k(Lcom/join/mgps/adapter/InformationAdapterV2$n;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bean",
            "hideBottom"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/adapter/InformationAdapterV2$n;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

    .line 9
    .line 10
    iput-boolean p2, p1, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/InformationAdapterV2$n;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->d:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->d:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->d:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public m(Lcom/join/mgps/adapter/InformationAdapterV2$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mListenr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/InformationAdapterV2;->e:Lcom/join/mgps/adapter/InformationAdapterV2$l;

    .line 2
    .line 3
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

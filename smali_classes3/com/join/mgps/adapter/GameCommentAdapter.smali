.class public Lcom/join/mgps/adapter/GameCommentAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/GameCommentAdapter$j;,
        Lcom/join/mgps/adapter/GameCommentAdapter$l;,
        Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;,
        Lcom/join/mgps/adapter/GameCommentAdapter$k;,
        Lcom/join/mgps/adapter/GameCommentAdapter$m;,
        Lcom/join/mgps/adapter/GameCommentAdapter$i;,
        Lcom/join/mgps/adapter/GameCommentAdapter$n;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/join/mgps/adapter/GameCommentAdapter$j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->d:Lcom/join/mgps/adapter/GameCommentAdapter$j;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Landroid/content/Context;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/GameCommentAdapter$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mContext",
            "itemBeans",
            "mListenr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
            ">;",
            "Lcom/join/mgps/adapter/GameCommentAdapter$j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->d:Lcom/join/mgps/adapter/GameCommentAdapter$j;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/GameCommentAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/GameCommentAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/GameCommentAdapter$k;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Landroid/content/Context;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->b:Landroid/widget/LinearLayout;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->c:Landroid/view/View;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->d:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->e:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->f:Landroid/view/View;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->g:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->getItem(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;

    .line 97
    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    return-object p2

    .line 101
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->b:Lcom/join/mgps/dto/InformationCommentBean;

    .line 102
    .line 103
    if-nez v1, :cond_2

    .line 104
    .line 105
    return-object p2

    .line 106
    :cond_2
    iget-boolean v1, v0, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->d:Z

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
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->c:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->c:Landroid/view/View;

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :goto_1
    iget-boolean v1, v0, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->g:Z

    .line 125
    .line 126
    if-nez v1, :cond_4

    .line 127
    .line 128
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->f:Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->g:Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->f:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->g:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->b:Lcom/join/mgps/dto/InformationCommentBean;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

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
    iget-object p3, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->b:Landroid/widget/LinearLayout;

    .line 164
    .line 165
    const/4 v1, 0x1

    .line 166
    invoke-direct {p0, p3, v0, v1, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->h(Landroid/view/View;Lcom/join/mgps/adapter/GameCommentAdapter$l$b;ZI)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->b:Landroid/widget/LinearLayout;

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

.method private h(Landroid/view/View;Lcom/join/mgps/adapter/GameCommentAdapter$l$b;ZI)V
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
    iget-object v10, v9, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget v11, v9, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->e:I

    .line 8
    .line 9
    iget-boolean v12, v9, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->f:Z

    .line 10
    .line 11
    iget-object v13, v9, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->b:Lcom/join/mgps/dto/InformationCommentBean;

    .line 12
    .line 13
    invoke-virtual {v13}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

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
    const/4 v6, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    add-int/lit8 v0, v7, 0x1

    .line 31
    .line 32
    if-ge v5, v0, :cond_7

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    if-le v5, v0, :cond_0

    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    move/from16 v16, v11

    .line 40
    .line 41
    move/from16 v17, v12

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    move v11, v5

    .line 45
    move v12, v7

    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_0
    iget-object v1, v8, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const v2, 0x7f0d016e

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    .line 64
    const/4 v2, -0x1

    .line 65
    const/4 v3, -0x2

    .line 66
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    const v1, 0x7f0a03ef

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/widget/TextView;

    .line 80
    .line 81
    const v2, 0x7f0a03f1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroid/widget/TextView;

    .line 89
    .line 90
    const/16 v3, 0x8

    .line 91
    .line 92
    if-ne v5, v7, :cond_1

    .line 93
    .line 94
    if-gt v7, v0, :cond_2

    .line 95
    .line 96
    :cond_1
    if-lez v11, :cond_3

    .line 97
    .line 98
    if-eqz v12, :cond_3

    .line 99
    .line 100
    if-ne v5, v7, :cond_3

    .line 101
    .line 102
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    const-string v0, "\u6536\u8d77"

    .line 109
    .line 110
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$g;

    .line 114
    .line 115
    move-object v1, v0

    .line 116
    move-object/from16 v2, p0

    .line 117
    .line 118
    move v3, v11

    .line 119
    move-object v9, v4

    .line 120
    move/from16 v4, p4

    .line 121
    .line 122
    move/from16 v16, v11

    .line 123
    .line 124
    move v11, v5

    .line 125
    move-object v5, v10

    .line 126
    move/from16 v17, v12

    .line 127
    .line 128
    const/4 v12, 0x0

    .line 129
    move-object/from16 v6, p2

    .line 130
    .line 131
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/GameCommentAdapter$g;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;IILjava/lang/String;Lcom/join/mgps/adapter/GameCommentAdapter$l$b;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    move v12, v7

    .line 138
    :goto_1
    const/4 v4, 0x0

    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :cond_3
    move-object v9, v4

    .line 142
    move/from16 v16, v11

    .line 143
    .line 144
    move/from16 v17, v12

    .line 145
    .line 146
    const/4 v12, 0x0

    .line 147
    move v11, v5

    .line 148
    if-ne v11, v0, :cond_4

    .line 149
    .line 150
    if-eqz p3, :cond_4

    .line 151
    .line 152
    if-le v7, v0, :cond_4

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const/4 v1, 0x1

    .line 165
    new-array v1, v1, [Ljava/lang/Object;

    .line 166
    .line 167
    add-int/lit8 v3, v7, -0x3

    .line 168
    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    aput-object v3, v1, v12

    .line 174
    .line 175
    const v3, 0x7f1200b4

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$h;

    .line 186
    .line 187
    move-object v1, v0

    .line 188
    move-object/from16 v2, p0

    .line 189
    .line 190
    move v3, v7

    .line 191
    move-object v4, v13

    .line 192
    move-object v5, v10

    .line 193
    move-object/from16 v6, p2

    .line 194
    .line 195
    move v12, v7

    .line 196
    move/from16 v7, p4

    .line 197
    .line 198
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/GameCommentAdapter$h;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;ILcom/join/mgps/dto/InformationCommentBean;Ljava/lang/String;Lcom/join/mgps/adapter/GameCommentAdapter$l$b;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_4
    move v12, v7

    .line 206
    if-ge v11, v12, :cond_6

    .line 207
    .line 208
    if-lt v11, v0, :cond_5

    .line 209
    .line 210
    if-eqz p3, :cond_5

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_5
    const/4 v4, 0x0

    .line 214
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Lcom/join/mgps/dto/InformationCommentBean$Sub;

    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getContent()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getComment_id()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    :try_start_0
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    invoke-direct {v8, v9, v0}, Lcom/join/mgps/adapter/GameCommentAdapter;->l(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    .line 247
    .line 248
    :goto_2
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_6
    :goto_3
    const/4 v4, 0x0

    .line 253
    :goto_4
    add-int/lit8 v5, v11, 0x1

    .line 254
    .line 255
    move-object/from16 v9, p2

    .line 256
    .line 257
    move v7, v12

    .line 258
    move/from16 v11, v16

    .line 259
    .line 260
    move/from16 v12, v17

    .line 261
    .line 262
    const/4 v6, 0x0

    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_7
    return-void
.end method

.method private l(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
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
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/GameCommentAdapter$e;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private m(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/GameCommentAdapter$d;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private n(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/GameCommentAdapter$f;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/dto/InformationCommentBean;)V

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
.method c(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/GameCommentAdapter$l;
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
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    .line 4
    .line 5
    new-instance v2, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;

    .line 6
    .line 7
    invoke-direct {v2, p1, p2, p3, p4}, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public d(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "view",
            "viewGroup",
            "type"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;

    .line 6
    .line 7
    const/4 p3, 0x2

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p2, :cond_2

    .line 11
    .line 12
    if-eq p4, v0, :cond_1

    .line 13
    .line 14
    if-eq p4, p3, :cond_0

    .line 15
    .line 16
    :goto_0
    move-object v3, p2

    .line 17
    move-object p2, v1

    .line 18
    move-object v2, p2

    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/GameCommentAdapter$i;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/GameCommentAdapter$i;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Landroid/content/Context;

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
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->a(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

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
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->c(Lcom/join/mgps/adapter/GameCommentAdapter$i;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

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
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->e(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/ImageView;)Landroid/widget/ImageView;

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
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->g(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/TextView;)Landroid/widget/TextView;

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
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->i(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/TextView;)Landroid/widget/TextView;

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
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->k(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/TextView;)Landroid/widget/TextView;

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
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->m(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/TextView;)Landroid/widget/TextView;

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
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->o(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/TextView;)Landroid/widget/TextView;

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
    iput-object v3, p2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->l:Lcom/join/mgps/customview/VipView;

    .line 145
    .line 146
    const v3, 0x7f0a0e61

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iput-object v3, p2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->j:Landroid/view/View;

    .line 154
    .line 155
    const v3, 0x7f0a1087

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    check-cast v3, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object v3, p2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->k:Landroid/widget/TextView;

    .line 165
    .line 166
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    move-object v3, v2

    .line 170
    move-object v2, p2

    .line 171
    :goto_1
    move-object p2, v1

    .line 172
    goto :goto_3

    .line 173
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/GameCommentAdapter$m;

    .line 174
    .line 175
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/GameCommentAdapter$m;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;)V

    .line 176
    .line 177
    .line 178
    iget-object v2, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Landroid/content/Context;

    .line 179
    .line 180
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    const v3, 0x7f0d0356

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const v3, 0x7f0a1767

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Landroid/widget/TextView;

    .line 199
    .line 200
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$m;->b(Lcom/join/mgps/adapter/GameCommentAdapter$m;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    move-object v3, v2

    .line 207
    :goto_2
    move-object v2, v1

    .line 208
    goto :goto_3

    .line 209
    :cond_2
    if-eq p4, v0, :cond_4

    .line 210
    .line 211
    if-eq p4, p3, :cond_3

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Lcom/join/mgps/adapter/GameCommentAdapter$i;

    .line 220
    .line 221
    move-object v3, p2

    .line 222
    goto :goto_1

    .line 223
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Lcom/join/mgps/adapter/GameCommentAdapter$m;

    .line 228
    .line 229
    move-object v3, p2

    .line 230
    move-object p2, v2

    .line 231
    goto :goto_2

    .line 232
    :goto_3
    if-eq p4, v0, :cond_a

    .line 233
    .line 234
    if-eq p4, p3, :cond_5

    .line 235
    .line 236
    goto/16 :goto_6

    .line 237
    .line 238
    :cond_5
    if-nez p1, :cond_6

    .line 239
    .line 240
    return-object v1

    .line 241
    :cond_6
    iget-object p1, p1, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;->a:Lcom/join/mgps/dto/InformationCommentBean;

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    if-eqz p2, :cond_7

    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 254
    .line 255
    .line 256
    move-result p2

    .line 257
    if-lez p2, :cond_7

    .line 258
    .line 259
    iget-object p2, v2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->j:Landroid/view/View;

    .line 260
    .line 261
    const/16 p3, 0x8

    .line 262
    .line 263
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_7
    iget-object p2, v2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->j:Landroid/view/View;

    .line 268
    .line 269
    const/4 p3, 0x0

    .line 270
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getTimes()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p3

    .line 282
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string p3, "000"

    .line 286
    .line 287
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 295
    .line 296
    .line 297
    move-result-wide p2

    .line 298
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->h(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    .line 299
    .line 300
    .line 301
    move-result-object p4

    .line 302
    invoke-static {p2, p3}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->j(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getContent()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p3

    .line 317
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->l(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    new-instance p3, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p4

    .line 333
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string p4, ""

    .line 337
    .line 338
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p3

    .line 345
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    .line 349
    .line 350
    .line 351
    move-result p2

    .line 352
    if-eqz p2, :cond_8

    .line 353
    .line 354
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->d(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/ImageView;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    const p3, 0x7f080c51

    .line 359
    .line 360
    .line 361
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    .line 363
    .line 364
    goto :goto_5

    .line 365
    :cond_8
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->d(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/ImageView;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    const p3, 0x7f081320

    .line 370
    .line 371
    .line 372
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    .line 374
    .line 375
    :goto_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getHead_portrait()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result p2

    .line 383
    if-eqz p2, :cond_9

    .line 384
    .line 385
    iget-object p2, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Landroid/content/Context;

    .line 386
    .line 387
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getHead_portrait()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p3

    .line 391
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->b(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 392
    .line 393
    .line 394
    move-result-object p4

    .line 395
    invoke-static {p2, p3, p4}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 396
    .line 397
    .line 398
    :cond_9
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_level()I

    .line 399
    .line 400
    .line 401
    move-result p2

    .line 402
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->n(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    .line 403
    .line 404
    .line 405
    move-result-object p3

    .line 406
    invoke-static {p2, p3}, Lcom/join/mgps/Util/w;->h(ILandroid/widget/TextView;)V

    .line 407
    .line 408
    .line 409
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->n(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    new-instance p3, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    const-string p4, "LV."

    .line 419
    .line 420
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_level()I

    .line 424
    .line 425
    .line 426
    move-result p4

    .line 427
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p3

    .line 434
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->f(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    .line 438
    .line 439
    .line 440
    move-result-object p2

    .line 441
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p3

    .line 445
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 446
    .line 447
    .line 448
    move-result-object p3

    .line 449
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    .line 451
    .line 452
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->f(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    .line 453
    .line 454
    .line 455
    move-result-object p2

    .line 456
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 457
    .line 458
    .line 459
    move-result-object p2

    .line 460
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->f(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    .line 461
    .line 462
    .line 463
    move-result-object p3

    .line 464
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_vip_level()I

    .line 465
    .line 466
    .line 467
    move-result p4

    .line 468
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_svip_level()I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    invoke-static {p2, p3, p4, v0}, Lcom/join/mgps/Util/UtilsMy;->Q3(Landroid/content/Context;Landroid/widget/TextView;II)Z

    .line 473
    .line 474
    .line 475
    iget-object p2, v2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->l:Lcom/join/mgps/customview/VipView;

    .line 476
    .line 477
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_vip_level()I

    .line 478
    .line 479
    .line 480
    move-result p3

    .line 481
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_svip_level()I

    .line 482
    .line 483
    .line 484
    move-result p4

    .line 485
    invoke-virtual {p2, p3, p4}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 486
    .line 487
    .line 488
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->d(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/ImageView;

    .line 489
    .line 490
    .line 491
    move-result-object p2

    .line 492
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->m(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 493
    .line 494
    .line 495
    invoke-direct {p0, v3, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->n(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 496
    .line 497
    .line 498
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->b(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 499
    .line 500
    .line 501
    move-result-object p2

    .line 502
    new-instance p3, Lcom/join/mgps/adapter/GameCommentAdapter$a;

    .line 503
    .line 504
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/GameCommentAdapter$a;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    .line 509
    .line 510
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->j(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    new-instance p2, Lcom/join/mgps/adapter/GameCommentAdapter$b;

    .line 515
    .line 516
    invoke-direct {p2, p0, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$b;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/adapter/GameCommentAdapter$i;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 520
    .line 521
    .line 522
    iget-object p1, v2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->k:Landroid/widget/TextView;

    .line 523
    .line 524
    new-instance p2, Lcom/join/mgps/adapter/GameCommentAdapter$c;

    .line 525
    .line 526
    invoke-direct {p2, p0, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$c;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/adapter/GameCommentAdapter$i;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    .line 531
    .line 532
    goto :goto_6

    .line 533
    :cond_a
    iget-object p1, p1, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;->a:Lcom/join/mgps/dto/InformationCommentBean;

    .line 534
    .line 535
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getIs_hot()I

    .line 536
    .line 537
    .line 538
    move-result p1

    .line 539
    if-ne p1, v0, :cond_b

    .line 540
    .line 541
    invoke-static {p2}, Lcom/join/mgps/adapter/GameCommentAdapter$m;->a(Lcom/join/mgps/adapter/GameCommentAdapter$m;)Landroid/widget/TextView;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    const-string p2, "\u70ed\u95e8\u8bc4\u8bba"

    .line 546
    .line 547
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    .line 549
    .line 550
    goto :goto_6

    .line 551
    :cond_b
    invoke-static {p2}, Lcom/join/mgps/adapter/GameCommentAdapter$m;->a(Lcom/join/mgps/adapter/GameCommentAdapter$m;)Landroid/widget/TextView;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    const-string p2, "\u6700\u65b0\u8bc4\u8bba"

    .line 556
    .line 557
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    .line 559
    .line 560
    :goto_6
    return-object v3
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lcom/join/mgps/adapter/GameCommentAdapter$j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->d:Lcom/join/mgps/adapter/GameCommentAdapter$j;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter$l;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter$l;->b()Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

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
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/GameCommentAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

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
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/GameCommentAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GameCommentAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

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
    invoke-static {}, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->values()[Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method i(Lcom/join/mgps/adapter/GameCommentAdapter$l;Z)V
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
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter$l;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;

    .line 9
    .line 10
    iput-boolean p2, p1, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->g:Z
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

.method public j(Ljava/util/List;)V
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
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public k(Lcom/join/mgps/adapter/GameCommentAdapter$j;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->d:Lcom/join/mgps/adapter/GameCommentAdapter$j;

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

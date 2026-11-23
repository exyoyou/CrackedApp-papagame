.class public Lcom/join/mgps/adapter/d2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/d2$c1;,
        Lcom/join/mgps/adapter/d2$z0;,
        Lcom/join/mgps/adapter/d2$e2;,
        Lcom/join/mgps/adapter/d2$u1;,
        Lcom/join/mgps/adapter/d2$b2;,
        Lcom/join/mgps/adapter/d2$d2;,
        Lcom/join/mgps/adapter/d2$g2;,
        Lcom/join/mgps/adapter/d2$v1;,
        Lcom/join/mgps/adapter/d2$w1;,
        Lcom/join/mgps/adapter/d2$r1;,
        Lcom/join/mgps/adapter/d2$t1;,
        Lcom/join/mgps/adapter/d2$j1;,
        Lcom/join/mgps/adapter/d2$y1;,
        Lcom/join/mgps/adapter/d2$x1;,
        Lcom/join/mgps/adapter/d2$s1;,
        Lcom/join/mgps/adapter/d2$n1;,
        Lcom/join/mgps/adapter/d2$l1;,
        Lcom/join/mgps/adapter/d2$o1;,
        Lcom/join/mgps/adapter/d2$m1;,
        Lcom/join/mgps/adapter/d2$a2;,
        Lcom/join/mgps/adapter/d2$p1;,
        Lcom/join/mgps/adapter/d2$q1;,
        Lcom/join/mgps/adapter/d2$k1;,
        Lcom/join/mgps/adapter/d2$f2;,
        Lcom/join/mgps/adapter/d2$c2;,
        Lcom/join/mgps/adapter/d2$z1;,
        Lcom/join/mgps/adapter/d2$m2;,
        Lcom/join/mgps/adapter/d2$a1;,
        Lcom/join/mgps/adapter/d2$j2;,
        Lcom/join/mgps/adapter/d2$g1;,
        Lcom/join/mgps/adapter/d2$i1;,
        Lcom/join/mgps/adapter/d2$i2;,
        Lcom/join/mgps/adapter/d2$h2;,
        Lcom/join/mgps/adapter/d2$f1;,
        Lcom/join/mgps/adapter/d2$l2;,
        Lcom/join/mgps/adapter/d2$e1;,
        Lcom/join/mgps/adapter/d2$h1;,
        Lcom/join/mgps/adapter/d2$n2;,
        Lcom/join/mgps/adapter/d2$k2;,
        Lcom/join/mgps/adapter/d2$b1;,
        Lcom/join/mgps/adapter/d2$d1;,
        Lcom/join/mgps/adapter/d2$o2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final w:Ljava/lang/String; = "GameDetialModleThreeAda"


# instance fields
.field private e:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field private f:Z

.field private g:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

.field private h:Landroid/content/Context;

.field i:Z

.field j:Lcom/join/mgps/adapter/d2$c1;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/danikula/videocache/i;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:Z

.field private q:I

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/d2$b1;",
            ">;"
        }
    .end annotation
.end field

.field s:J

.field private t:Landroid/view/View;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field v:Lcom/join/mgps/adapter/d2$z0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "ac",
            "modleFourBean"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/adapter/d2;->i:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/join/mgps/adapter/d2;->j:Lcom/join/mgps/adapter/d2$c1;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/adapter/d2;->p:Z

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/join/mgps/adapter/d2;->s:J

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/adapter/d2;->u:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/adapter/d2$z0;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/d2$z0;-><init>(Lcom/join/mgps/adapter/d2;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/adapter/d2;->v:Lcom/join/mgps/adapter/d2$z0;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 33
    .line 34
    new-instance p3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    .line 40
    .line 41
    new-instance p3, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p3, p0, Lcom/join/mgps/adapter/d2;->k:Ljava/util/List;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/d2;->v(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/join/mgps/adapter/d2;->l:Lcom/danikula/videocache/i;

    .line 55
    .line 56
    new-instance p1, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/join/mgps/adapter/d2;->m:Ljava/util/Map;

    .line 62
    .line 63
    iput-object p2, p0, Lcom/join/mgps/adapter/d2;->g:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 64
    .line 65
    return-void
.end method

.method private synthetic A(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;->a(Ljava/lang/String;)Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private synthetic B(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 4
    .line 5
    const-class v1, Lcom/join/kotlin/ui/notice/NoticeListActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "gameId"

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private synthetic C(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "jinshouzhi"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/t;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "\u91d1\u624b\u6307"

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/adapter/d2;->r(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private E(Landroid/view/View;Lcom/join/mgps/adapter/d2$d1;ZI)V
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
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    iget-object v9, v8, Lcom/join/mgps/adapter/d2$d1;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget v10, v8, Lcom/join/mgps/adapter/d2$d1;->e:I

    .line 8
    .line 9
    iget-boolean v11, v8, Lcom/join/mgps/adapter/d2$d1;->f:Z

    .line 10
    .line 11
    iget-object v12, v8, Lcom/join/mgps/adapter/d2$d1;->b:Lcom/join/mgps/dto/InformationCommentBean;

    .line 12
    .line 13
    invoke-virtual {v12}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v13

    .line 17
    move-object/from16 v14, p1

    .line 18
    .line 19
    check-cast v14, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v15

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    add-int/lit8 v0, v15, 0x1

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
    move/from16 v16, v10

    .line 40
    .line 41
    move/from16 v17, v11

    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    move v10, v5

    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_0
    iget-object v1, v7, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

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
    const/16 v3, 0x8

    .line 90
    .line 91
    if-ne v5, v15, :cond_1

    .line 92
    .line 93
    if-gt v15, v0, :cond_2

    .line 94
    .line 95
    :cond_1
    if-lez v10, :cond_3

    .line 96
    .line 97
    if-eqz v11, :cond_3

    .line 98
    .line 99
    if-ne v5, v15, :cond_3

    .line 100
    .line 101
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    const-string v0, "\u6536\u8d77"

    .line 108
    .line 109
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lcom/join/mgps/adapter/d2$n0;

    .line 113
    .line 114
    move-object v1, v0

    .line 115
    move-object/from16 v2, p0

    .line 116
    .line 117
    move v3, v10

    .line 118
    move-object v8, v4

    .line 119
    move/from16 v4, p4

    .line 120
    .line 121
    move/from16 v16, v10

    .line 122
    .line 123
    move v10, v5

    .line 124
    move-object v5, v9

    .line 125
    move/from16 v17, v11

    .line 126
    .line 127
    const/4 v11, 0x0

    .line 128
    move-object/from16 v6, p2

    .line 129
    .line 130
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/d2$n0;-><init>(Lcom/join/mgps/adapter/d2;IILjava/lang/String;Lcom/join/mgps/adapter/d2$d1;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :cond_3
    move-object v8, v4

    .line 139
    move/from16 v16, v10

    .line 140
    .line 141
    move/from16 v17, v11

    .line 142
    .line 143
    const/4 v11, 0x0

    .line 144
    move v10, v5

    .line 145
    if-ne v10, v0, :cond_4

    .line 146
    .line 147
    if-eqz p3, :cond_4

    .line 148
    .line 149
    if-le v15, v0, :cond_4

    .line 150
    .line 151
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const/4 v1, 0x1

    .line 162
    new-array v1, v1, [Ljava/lang/Object;

    .line 163
    .line 164
    add-int/lit8 v3, v15, -0x3

    .line 165
    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    aput-object v3, v1, v11

    .line 171
    .line 172
    const v3, 0x7f1200b4

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Lcom/join/mgps/adapter/d2$o0;

    .line 183
    .line 184
    move-object v1, v0

    .line 185
    move-object/from16 v2, p0

    .line 186
    .line 187
    move v3, v15

    .line 188
    move-object v4, v12

    .line 189
    move-object v5, v9

    .line 190
    move/from16 v6, p4

    .line 191
    .line 192
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/d2$o0;-><init>(Lcom/join/mgps/adapter/d2;ILcom/join/mgps/dto/InformationCommentBean;Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_4
    if-ge v10, v15, :cond_6

    .line 200
    .line 201
    if-lt v10, v0, :cond_5

    .line 202
    .line 203
    if-eqz p3, :cond_5

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_5
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Lcom/join/mgps/dto/InformationCommentBean$Sub;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getContent()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getComment_id()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    :try_start_0
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    invoke-direct {v7, v8, v0}, Lcom/join/mgps/adapter/d2;->K(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    .line 239
    .line 240
    :goto_1
    invoke-virtual {v14, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    .line 242
    .line 243
    :cond_6
    :goto_2
    add-int/lit8 v5, v10, 0x1

    .line 244
    .line 245
    move-object/from16 v8, p2

    .line 246
    .line 247
    move/from16 v10, v16

    .line 248
    .line 249
    move/from16 v11, v17

    .line 250
    .line 251
    const/4 v6, 0x0

    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_7
    return-void
.end method

.method private K(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
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
    new-instance v0, Lcom/join/mgps/adapter/d2$p0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/d2$p0;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private L(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/d2$q0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/d2$q0;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private M(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "tv",
            "commitDataBean",
            "position"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/d2$s0;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p3

    .line 6
    move v3, p4

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/d2$s0;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private N(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/d2$m0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/d2$m0;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private O(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "tv",
            "commitDataBean",
            "position"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/d2$t0;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p3

    .line 6
    move v3, p4

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/d2$t0;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/d2;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/d2;->z(Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/d2;->B(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/d2;->C(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/d2;->A(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/d2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/d2;->g:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/adapter/d2;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/d2;->m:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/adapter/d2;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/adapter/d2;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/d2;->u:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/adapter/d2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/d2;->n:I

    .line 2
    .line 3
    return p1
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 4
    .line 5
    const-class v1, Lcom/join/kotlin/ui/coupon/CouponListActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "gameId"

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method static synthetic m(Lcom/join/mgps/adapter/d2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/d2;->o:I

    .line 2
    .line 3
    return p1
.end method

.method private t(I)Lcom/join/mgps/dto/CommentBaseBean;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/adapter/d2$b1;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/join/mgps/dto/CommentBaseBean;

    .line 12
    .line 13
    return-object p1
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 23
    .line 24
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "com.tencent.qqlite"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_0
    const-string v2, "com.tencent.mobileqq"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method private synthetic z(Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/BTActivityBean;->getJump_url()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public D(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewDatas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailOneTouchSkill;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->u:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/join/mgps/adapter/d2;->o:I

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/adapter/d2;->n:I

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/d2;->v:Lcom/join/mgps/adapter/d2$z0;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_3

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const v3, 0x7f0d0324

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const v3, 0x7f0a10d8

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/widget/TextView;

    .line 48
    .line 49
    const v5, 0x7f0a0e84

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Lcom/join/mgps/dto/GameDetailOneTouchSkill;

    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetailOneTouchSkill;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetailOneTouchSkill;->getSkill()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    :goto_1
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetailOneTouchSkill;->getSkill()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-ge v4, v7, :cond_2

    .line 87
    .line 88
    const/4 v7, 0x5

    .line 89
    if-ne v4, v7, :cond_1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    iget-object v7, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    const v8, 0x7f0d0325

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v8, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetailOneTouchSkill;->getSkill()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    check-cast v8, Ljava/lang/CharSequence;

    .line 123
    .line 124
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/join/mgps/adapter/d2;->u:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/d2;->v:Lcom/join/mgps/adapter/d2$z0;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public F(II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "state"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/d2;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, ""

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    if-ne v2, v6, :cond_1

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 30
    .line 31
    .line 32
    sub-long/2addr v0, v4

    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    cmp-long p2, v0, v4

    .line 36
    .line 37
    if-gez p2, :cond_0

    .line 38
    .line 39
    const-string p2, "0"

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    if-eq p2, v6, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1, v6}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 67
    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    add-long/2addr v0, v4

    .line 75
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public G(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "state"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/d2;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-wide/16 v3, 0x1

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    if-ne v2, v5, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 20
    .line 21
    .line 22
    sub-long/2addr v0, v3

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    cmp-long p2, v0, v2

    .line 26
    .line 27
    if-gez p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eq p2, v5, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 40
    .line 41
    .line 42
    add-long/2addr v0, v3

    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method H(Lcom/join/mgps/adapter/d2$b1;Z)V
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
    iget-object p1, p1, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lcom/join/mgps/adapter/d2$d1;

    .line 7
    .line 8
    iput-boolean p2, p1, Lcom/join/mgps/adapter/d2$d1;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public I(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modleFourBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-void
.end method

.method public J(Lcom/join/mgps/adapter/d2$c1;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/d2;->j:Lcom/join/mgps/adapter/d2$c1;

    .line 2
    .line 3
    return-void
.end method

.method public P(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneTouchSkillView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d2;->u:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public Q(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_from_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/d2;->q:I

    .line 2
    .line 3
    return-void
.end method

.method R()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getShare_url()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setqZoneShareUrl(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatFriendUrl(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWeiboShareUrl(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getInfo()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIco_remote()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setImageUrl(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setGameId(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getShare_config()Lcom/join/mgps/dto/DetialShareData;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getShare_config()Lcom/join/mgps/dto/DetialShareData;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShareData;->getShare_switch()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v2, 0x1

    .line 86
    if-ne v1, v2, :cond_0

    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getShare_config()Lcom/join/mgps/dto/DetialShareData;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShareData;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setIntentData(Lcom/join/mgps/dto/BannerBean;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v1, v0}, Lcom/join/mgps/Util/w;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method S(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public T(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/d2;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    sub-long/2addr v0, v2

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-gez v4, :cond_0

    .line 29
    .line 30
    const-string v0, "0"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ""

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public U(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/d2;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x1

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-gez v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/adapter/d2$b1;

    .line 8
    .line 9
    iget p1, p1, Lcom/join/mgps/adapter/d2$b1;->b:I

    .line 10
    .line 11
    return p1
.end method

.method public n(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/d2;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-wide/16 v3, 0x1

    .line 27
    .line 28
    add-long/2addr v0, v3

    .line 29
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public o(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/d2;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x1

    .line 14
    .line 15
    add-long/2addr v0, v2

    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16
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

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 1
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/d2;->getItemViewType(I)I

    move-result v2

    const-string v3, "\u542f\u52a8\u6570"

    const-string v4, "46"

    const-string v5, "1"

    const-string v6, "\u70ed\u5ea6"

    const/high16 v7, -0x1000000

    const v8, 0x7f120105

    const-string v9, "\u5b89\u88c5"

    const/4 v10, 0x4

    const-string v12, "M"

    const-string v15, ""

    const/4 v13, 0x1

    const/16 v11, 0x8

    const/4 v14, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2b

    .line 2
    :pswitch_1
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$k2;

    .line 3
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/d2$b1;

    .line 4
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/BTActivityBean;

    .line 5
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$k2;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BTActivityBean;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$k2;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BTActivityBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$k2;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BTActivityBean;->getSub_head()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, v2, Lcom/join/mgps/adapter/d2$k2;->g:Landroid/view/View;

    new-instance v3, Lcom/join/mgps/adapter/z1;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/z1;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/BTActivityBean;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    .line 9
    :pswitch_2
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$n2;

    .line 10
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/d2$b1;

    .line 11
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/ServiceState;

    .line 12
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$n2;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getType()I

    move-result v4

    if-ne v4, v13, :cond_0

    const-string v4, "\u5f00\u670d"

    goto :goto_0

    :cond_0
    const-string v4, "\u5408\u670d"

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$n2;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/e0;->I(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$n2;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v4

    const-string v6, "HH:mm"

    invoke-static {v4, v5, v6}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v2, v2, Lcom/join/mgps/adapter/d2$n2;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b

    .line 16
    :pswitch_3
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$h1;

    .line 17
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/d2$b1;

    .line 18
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 19
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$h1;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u5f20\u4ee3\u91d1\u5238\u53ef\u9886\u53d6"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$h1;->e:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/y1;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/y1;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    .line 21
    :pswitch_4
    :try_start_0
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$h2;

    .line 22
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/d2$b1;

    .line 23
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 24
    new-instance v3, Lcom/join/mgps/adapter/c2;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/c2;-><init>(Lcom/join/mgps/adapter/d2;)V

    const/4 v4, 0x0

    .line 25
    :goto_1
    iget-object v5, v2, Lcom/join/mgps/adapter/d2$h2;->h:[Landroid/widget/TextView;

    if-eqz v5, :cond_57

    array-length v5, v5

    if-ge v4, v5, :cond_57

    if-eqz v0, :cond_2

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_1

    goto :goto_2

    .line 27
    :cond_1
    iget-object v5, v2, Lcom/join/mgps/adapter/d2$h2;->h:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v5, v2, Lcom/join/mgps/adapter/d2$h2;->h:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v5, v2, Lcom/join/mgps/adapter/d2$h2;->h:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 30
    :cond_2
    :goto_2
    iget-object v5, v2, Lcom/join/mgps/adapter/d2$h2;->h:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    .line 32
    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$x1;

    .line 33
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$x1;->g:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/d2$q;

    invoke-direct {v5, v1, v0}, Lcom/join/mgps/adapter/d2$q;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$x1;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info_switch()I

    move-result v2

    if-ne v2, v13, :cond_3

    .line 35
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$x1;->d:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_3
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 37
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    .line 38
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->k:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSize()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->i:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v10

    invoke-static {v10}, Lcom/join/mgps/Util/t2;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 42
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->o:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 44
    :cond_4
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :goto_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 46
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 48
    :cond_5
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :goto_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 50
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 52
    :cond_6
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :goto_6
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$x1;->n:Landroid/widget/TextView;

    new-instance v6, Lcom/join/mgps/adapter/d2$r;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/d2$r;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 56
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$x1;->p:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$x1;->p:Landroid/widget/TextView;

    new-instance v5, Lcom/join/mgps/adapter/d2$s;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/d2$s;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_7
    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_57

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 59
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$x1;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$x1;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$x1;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$x1;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v2

    invoke-static {v2}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b

    .line 63
    :pswitch_6
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$e1;

    .line 64
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$e1;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/w;

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getCheck_point()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5, v13}, Lcom/join/mgps/adapter/w;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$e1;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v2, Lcom/join/mgps/adapter/d2$f0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/d2$f0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2b

    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    .line 67
    :pswitch_7
    :try_start_2
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$l2;

    .line 68
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getOne_touch_skill()Ljava/util/List;

    move-result-object v2

    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v13, :cond_8

    iget-object v3, v0, Lcom/join/mgps/adapter/d2$l2;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_8
    iget-object v3, v0, Lcom/join/mgps/adapter/d2$l2;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-virtual {v3, v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setData(Ljava/util/List;)V

    .line 71
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$l2;->e:Landroidx/viewpager/widget/ViewPager;

    instance-of v3, v2, Lcom/join/mgps/customview/MViewpagerV4;

    if-eqz v3, :cond_9

    .line 72
    check-cast v2, Lcom/join/mgps/customview/MViewpagerV4;

    invoke-virtual {v2, v14}, Lcom/join/mgps/customview/MViewpagerV4;->setIntercept(Z)V

    .line 73
    :cond_9
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$l2;->e:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->v:Lcom/join/mgps/adapter/d2$z0;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 74
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$l2;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    iget-object v3, v0, Lcom/join/mgps/adapter/d2$l2;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 75
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_a

    .line 76
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$l2;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    iget v3, v1, Lcom/join/mgps/adapter/d2;->n:I

    invoke-virtual {v2, v3, v14}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 77
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$l2;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    new-instance v3, Lcom/join/mgps/adapter/d2$d0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/d2$d0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-static {v2, v3}, Lcom/join/mgps/adapter/r1;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;Landroid/view/View$OnScrollChangeListener;)V

    .line 78
    :cond_a
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$l2;->e:Landroidx/viewpager/widget/ViewPager;

    iget v3, v1, Lcom/join/mgps/adapter/d2;->o:I

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 79
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$l2;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    new-instance v3, Lcom/join/mgps/adapter/d2$e0;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/d2$e0;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$l2;)V

    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2b

    :catch_2
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    .line 81
    :pswitch_8
    :try_start_3
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$f1;

    .line 82
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/d2$b1;

    .line 83
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/GameDetailCloudArchive;

    if-nez v0, :cond_b

    return-void

    .line 84
    :cond_b
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getHideTop()I

    move-result v3

    if-ne v3, v13, :cond_c

    .line 85
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$f1;->e:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 86
    :cond_c
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$f1;->e:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_7
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$f1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getPic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 88
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$f1;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$f1;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getAuth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$f1;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getPraise_count()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getDivider()I

    move-result v0

    if-ne v0, v13, :cond_d

    .line 92
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$f1;->d:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 93
    :cond_d
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$f1;->d:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_8
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/join/mgps/adapter/d2$i0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/d2$i0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2b

    :catch_3
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    .line 96
    :pswitch_9
    :try_start_4
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$i2;

    .line 97
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/d2$b1;

    .line 98
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 99
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$i2;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$i2;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/d2$h0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/d2$h0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2b

    :catch_4
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    .line 102
    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$i1;

    .line 103
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$i1;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v2, Lcom/join/mgps/adapter/x;

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_favorites_top5()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4, v13}, Lcom/join/mgps/adapter/x;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_2b

    .line 104
    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$g2;

    .line 105
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object v2

    .line 106
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_e

    .line 107
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$g2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2b

    .line 108
    :cond_e
    iget-object v3, v0, Lcom/join/mgps/adapter/d2$g2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_position()I

    .line 110
    new-instance v3, Lcom/join/mgps/adapter/l1;

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/l1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 111
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$g2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v4, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$g2;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/d2$f;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/d2$f;-><init>(Lcom/join/mgps/adapter/d2;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    goto/16 :goto_2b

    .line 113
    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$g1;

    .line 114
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$g1;->d:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/d2$y;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/d2$y;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$g1;->f:Landroid/widget/TextView;

    const-string v3, "\u5199\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$g1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$g1;->g:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$g1;->h:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2b

    .line 119
    :pswitch_d
    :try_start_5
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$a1;

    .line 120
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/d2$b1;

    .line 121
    iget-object v3, v3, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/dto/CommentBaseBean;

    .line 122
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->s(Lcom/join/mgps/adapter/d2$a1;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->t(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v4

    if-lez v4, :cond_f

    .line 125
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->t(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v6, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0604f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    :cond_f
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v4

    if-lez v4, :cond_10

    .line 127
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->t(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v6, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0604f8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    :cond_10
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->u(Lcom/join/mgps/adapter/d2$a1;)Lcom/join/mgps/customview/VipView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v6

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 129
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-static {v6}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 130
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->a(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 131
    :cond_11
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->a(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :goto_9
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->b(Lcom/join/mgps/adapter/d2$a1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    new-instance v6, Lcom/join/mgps/adapter/d2$j0;

    invoke-direct {v6, v1, v3}, Lcom/join/mgps/adapter/d2$j0;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 134
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameScore;->getSgc_switch()I

    move-result v4

    if-ne v4, v13, :cond_13

    .line 135
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v4

    if-nez v4, :cond_12

    .line 136
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->c(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->c(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u542f\u52a8\u6e38\u620f "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStart_game_count()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u6b21"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 138
    :cond_12
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->c(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 139
    :cond_13
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->c(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :goto_a
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->d(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->t(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v4

    if-eq v4, v13, :cond_15

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 143
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_b

    .line 144
    :cond_14
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->e(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->e(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 146
    :cond_15
    :goto_b
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->e(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :goto_c
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->f(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->g(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->h(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getReply_count()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getAdd_times()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "000"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 151
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->i(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v6, v7}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v4

    if-eq v4, v13, :cond_17

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_17

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 153
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_d

    .line 154
    :cond_16
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->j(Lcom/join/mgps/adapter/d2$a1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->j(Lcom/join/mgps/adapter/d2$a1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 156
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->j(Lcom/join/mgps/adapter/d2$a1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    goto :goto_e

    .line 157
    :cond_17
    :goto_d
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->j(Lcom/join/mgps/adapter/d2$a1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :goto_e
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->j(Lcom/join/mgps/adapter/d2$a1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 159
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 160
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x4051800000000000L    # 70.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_18

    .line 161
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->k(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    .line 162
    :cond_18
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->k(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    :goto_f
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 164
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->l(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10

    .line 165
    :cond_19
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->l(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    :goto_10
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->m(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result v4

    if-ne v4, v13, :cond_1a

    .line 168
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->n(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f081329

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    .line 169
    :cond_1a
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->n(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f081324

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    :goto_11
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result v4

    if-ne v4, v13, :cond_1b

    .line 171
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->o(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f080511

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_12

    .line 172
    :cond_1b
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->o(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f08050f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    :goto_12
    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->b(Lcom/join/mgps/adapter/d2$a1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 174
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->n(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->f(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/join/mgps/adapter/d2;->M(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 175
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->o(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->g(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/join/mgps/adapter/d2;->O(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 176
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->p(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/join/mgps/adapter/d2;->L(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 177
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->q(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/join/mgps/adapter/d2;->L(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 178
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->d(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/d2$k0;

    invoke-direct {v5, v1, v2, v0}, Lcom/join/mgps/adapter/d2$k0;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$a1;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 179
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$a1;->r(Lcom/join/mgps/adapter/d2$a1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/d2$l0;

    invoke-direct {v5, v1, v2, v0, v3}, Lcom/join/mgps/adapter/d2$l0;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$a1;ILcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_2b

    :catch_5
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    .line 181
    :pswitch_e
    :try_start_6
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$m2;

    .line 182
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$m2;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u609f\u996d\u73a9\u5bb6\u4ea4\u6d41\u7fa4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$m2;->d:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/d2$c0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/d2$c0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2b

    :catch_6
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    .line 185
    :pswitch_f
    :try_start_7
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$z1;

    .line 186
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_handle_entrance()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    .line 188
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$z1;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$z1;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    .line 191
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$z1;->d:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/d2$b0;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/d2$b0;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/AppBeanMain;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_2b

    :catch_7
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    .line 193
    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$c2;

    .line 194
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$c2;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2b

    .line 195
    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$q1;

    .line 196
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v2

    .line 197
    new-instance v3, Lcom/join/mgps/adapter/o1;

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->k:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/o1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 198
    iget v4, v1, Lcom/join/mgps/adapter/d2;->q:I

    invoke-virtual {v3, v4}, Lcom/join/mgps/adapter/o1;->f(I)V

    .line 199
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$q1;->e:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v2, :cond_57

    .line 200
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_57

    .line 201
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2b

    .line 204
    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$p1;

    .line 205
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v2

    .line 206
    new-instance v3, Lcom/join/mgps/adapter/o1;

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->k:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/o1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 207
    iget v4, v1, Lcom/join/mgps/adapter/d2;->q:I

    invoke-virtual {v3, v4}, Lcom/join/mgps/adapter/o1;->f(I)V

    .line 208
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$p1;->e:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v2, :cond_57

    .line 209
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_57

    .line 210
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2b

    .line 213
    :pswitch_13
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$f2;

    .line 214
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$f2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3, v14}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 215
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 217
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$f2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08018d

    invoke-static {v4, v6, v5}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 218
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$f2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$f2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_1c
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 221
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$f2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v4, v4, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 222
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$f2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v14}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 223
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$f2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    const-string v5, "GameDetialModleThreeAdapter"

    invoke-virtual {v4, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 224
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$f2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 225
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$f2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    sget v2, Lcom/join/android/app/component/video/StandardVideoView;->D:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v15, v4, v14

    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 226
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    .line 227
    invoke-virtual {v0, v3, v2, v4}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_2b

    .line 228
    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$k1;

    goto/16 :goto_2b

    .line 229
    :pswitch_15
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$a2;

    .line 230
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/d2$b1;

    .line 231
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v3

    .line 232
    iget v4, v1, Lcom/join/mgps/adapter/d2;->q:I

    .line 233
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v13, :cond_20

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1f

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1e

    if-eq v0, v10, :cond_1d

    goto :goto_13

    .line 234
    :cond_1d
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBt_game_recommend()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f8

    goto :goto_13

    .line 235
    :cond_1e
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f6

    goto :goto_13

    .line 236
    :cond_1f
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_and_down()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f7

    goto :goto_13

    .line 237
    :cond_20
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f5

    .line 238
    :goto_13
    new-instance v0, Lcom/join/mgps/adapter/o1;

    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-direct {v0, v5, v3}, Lcom/join/mgps/adapter/o1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 239
    invoke-virtual {v0, v4}, Lcom/join/mgps/adapter/o1;->f(I)V

    .line 240
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$a2;->e:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v3, :cond_21

    .line 241
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_21

    .line 242
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 243
    :cond_21
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$a2;->f:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2b

    .line 244
    :pswitch_16
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$m1;

    .line 245
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_switch()I

    move-result v2

    if-ne v2, v13, :cond_22

    .line 246
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$m1;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14

    .line 247
    :cond_22
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$m1;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :goto_14
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$m1;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/join/mgps/adapter/d2$z;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/d2$z;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$m1;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/d2$a0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/d2$a0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    .line 250
    :pswitch_17
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$o1;

    .line 251
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/d2$b1;

    .line 252
    iget-object v3, v3, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/adapter/d2$d1;

    .line 253
    iget-boolean v4, v3, Lcom/join/mgps/adapter/d2$d1;->g:Z

    if-eqz v4, :cond_23

    .line 254
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$o1;->h:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$o1;->i:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    .line 256
    :cond_23
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$o1;->h:Landroid/view/View;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$o1;->i:Landroid/view/View;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_15
    iget-object v4, v3, Lcom/join/mgps/adapter/d2$d1;->b:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 259
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_24

    .line 260
    iget-object v2, v2, Lcom/join/mgps/adapter/d2$o1;->d:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2, v3, v13, v0}, Lcom/join/mgps/adapter/d2;->E(Landroid/view/View;Lcom/join/mgps/adapter/d2$d1;ZI)V

    goto/16 :goto_2b

    .line 261
    :cond_24
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$o1;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_2b

    .line 262
    :pswitch_18
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$n1;

    .line 263
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_comment_count()Ljava/lang/String;

    .line 264
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$n1;->f:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$n1;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$n1;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$n1;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/join/mgps/adapter/d2$x;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/d2$x;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    .line 268
    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$s1;

    .line 269
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$s1;->g:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/d2$t;

    invoke-direct {v5, v1, v0}, Lcom/join/mgps/adapter/d2$t;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$s1;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    .line 271
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->p:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u7248\u672c:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    \u66f4\u65b0\u65f6\u95f4:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSize()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v10

    invoke-static {v10}, Lcom/join/mgps/Util/t2;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 276
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 278
    :cond_25
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :goto_16
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 280
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    .line 282
    :cond_26
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :goto_17
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 284
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 286
    :cond_27
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :goto_18
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$s1;->m:Landroid/widget/TextView;

    new-instance v6, Lcom/join/mgps/adapter/d2$u;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/d2$u;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 290
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$s1;->o:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$s1;->o:Landroid/widget/TextView;

    new-instance v5, Lcom/join/mgps/adapter/d2$w;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/d2$w;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    :cond_28
    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_57

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 293
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$s1;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$s1;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$s1;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$s1;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v2

    invoke-static {v2}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b

    .line 297
    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$y1;

    .line 298
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$y1;->f:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/d2$p;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/d2$p;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$y1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$y1;->d:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b

    .line 300
    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$j1;

    .line 301
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAuxiliary_tool()Lcom/join/mgps/dto/GameDetialAuxiliaryBean;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 302
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 303
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->getData()Ljava/util/List;

    move-result-object v3

    .line 304
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_29

    .line 305
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$j1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080caf

    invoke-static {v4, v6, v5}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 306
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$j1;->k:Landroid/widget/TextView;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$j1;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_29
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v13, :cond_2a

    .line 309
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$j1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080caf

    invoke-static {v4, v6, v5}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 310
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$j1;->l:Landroid/widget/TextView;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$j1;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_2a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2b

    .line 313
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$j1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080caf

    invoke-static {v4, v7, v6}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 314
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$j1;->m:Landroid/widget/TextView;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$j1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :cond_2b
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$j1;->g:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/d2$l;

    invoke-direct {v5, v1, v3, v2}, Lcom/join/mgps/adapter/d2$l;-><init>(Lcom/join/mgps/adapter/d2;Ljava/util/List;Lcom/join/mgps/dto/GameDetialAuxiliaryBean;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$j1;->h:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/d2$m;

    invoke-direct {v4, v1, v3}, Lcom/join/mgps/adapter/d2$m;-><init>(Lcom/join/mgps/adapter/d2;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$j1;->i:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/d2$n;

    invoke-direct {v4, v1, v3}, Lcom/join/mgps/adapter/d2$n;-><init>(Lcom/join/mgps/adapter/d2;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$j1;->j:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/d2$o;

    invoke-direct {v2, v1, v3}, Lcom/join/mgps/adapter/d2$o;-><init>(Lcom/join/mgps/adapter/d2;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    .line 320
    :pswitch_1c
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$t1;

    .line 321
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/d2$b1;

    .line 322
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 323
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$t1;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_content()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$t1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080caf

    invoke-static {v3, v5, v4}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 325
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$t1;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result v3

    if-nez v3, :cond_2c

    .line 327
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$t1;->g:Landroid/widget/TextView;

    const-string v4, "\u9886\u53d6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 328
    :cond_2c
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$t1;->g:Landroid/widget/TextView;

    const-string v4, "\u67e5\u770b"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :goto_19
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$t1;->g:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/d2$i;

    invoke-direct {v4, v1, v0}, Lcom/join/mgps/adapter/d2$i;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v2, v2, Lcom/join/mgps/adapter/d2$t1;->h:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/d2$j;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/d2$j;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    .line 331
    :pswitch_1d
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$r1;

    .line 332
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/d2$b1;

    .line 333
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$r1;->d:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$r1;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 335
    iget v4, v0, Lcom/join/mgps/adapter/d2$b1;->c:I

    if-ne v4, v13, :cond_2d

    .line 336
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$r1;->d:Landroid/widget/TextView;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 337
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$r1;->e:Landroid/widget/TextView;

    const-string v5, "\u6536\u8d77"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 338
    :cond_2d
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$r1;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 339
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$r1;->e:Landroid/widget/TextView;

    const-string v5, "\u5c55\u5f00"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :goto_1a
    new-instance v4, Lcom/join/mgps/adapter/d2$g;

    invoke-direct {v4, v1, v2, v2}, Lcom/join/mgps/adapter/d2$g;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$r1;Lcom/join/mgps/adapter/d2$r1;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 341
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$r1;->e:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/d2$h;

    invoke-direct {v4, v1, v2, v0}, Lcom/join/mgps/adapter/d2$h;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$r1;Lcom/join/mgps/adapter/d2$b1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    .line 342
    :pswitch_1e
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$w1;

    .line 343
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/d2$b1;

    .line 344
    iget-object v2, v2, Lcom/join/mgps/adapter/d2$w1;->d:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b

    .line 345
    :pswitch_1f
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$v1;

    .line 346
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_prompt()Ljava/util/List;

    move-result-object v2

    .line 347
    iget-object v3, v0, Lcom/join/mgps/adapter/d2$v1;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 348
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x24

    .line 349
    invoke-virtual {v3, v4, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v4, 0x13

    .line 350
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 351
    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0805e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 352
    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0805e8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 353
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v4, v14, v14, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 354
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v5, v14, v14, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v2, :cond_57

    .line 355
    :goto_1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_57

    .line 356
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GamePromptBean;

    if-eqz v6, :cond_2f

    .line 357
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 358
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamePromptBean;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamePromptBean;->getId()I

    move-result v6

    if-ne v6, v13, :cond_2e

    const/4 v6, 0x0

    .line 360
    invoke-virtual {v7, v4, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c

    :cond_2e
    const/4 v6, 0x0

    .line 361
    invoke-virtual {v7, v5, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1c
    const/16 v6, 0xa

    .line 362
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 363
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v6, 0x41400000    # 12.0f

    .line 364
    invoke-virtual {v7, v13, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const v6, -0x757576

    .line 365
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    iget-object v6, v0, Lcom/join/mgps/adapter/d2$v1;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2f
    add-int/lit8 v14, v14, 0x1

    goto :goto_1b

    .line 367
    :pswitch_20
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$g2;

    .line 368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 369
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 370
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iput-boolean v13, v1, Lcom/join/mgps/adapter/d2;->f:Z

    goto :goto_1d

    .line 372
    :cond_30
    iput-boolean v14, v1, Lcom/join/mgps/adapter/d2;->f:Z

    .line 373
    :goto_1d
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_31

    const/4 v4, 0x0

    .line 374
    :goto_1e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_31

    .line 375
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 376
    :cond_31
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_32

    .line 377
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$g2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2b

    .line 378
    :cond_32
    iget-object v3, v0, Lcom/join/mgps/adapter/d2$g2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_position()I

    move-result v3

    .line 380
    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGif_slide_pic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 381
    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGif_slide_pic()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v14, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 382
    :cond_33
    new-instance v4, Lcom/join/mgps/adapter/h1;

    iget-object v5, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    iget-boolean v6, v1, Lcom/join/mgps/adapter/d2;->f:Z

    invoke-direct {v4, v5, v3, v2, v6}, Lcom/join/mgps/adapter/h1;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 383
    iget-object v3, v0, Lcom/join/mgps/adapter/d2$g2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 384
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$g2;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/d2$e;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/d2$e;-><init>(Lcom/join/mgps/adapter/d2;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    goto/16 :goto_2b

    .line 385
    :pswitch_21
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$d2;

    .line 386
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$d2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 387
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 388
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TipBean;

    .line 389
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "7"

    if-eq v4, v5, :cond_34

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "23"

    if-ne v4, v5, :cond_35

    :cond_34
    const-string v4, "\u5b89\u5353"

    .line 390
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/TipBean;->setName(Ljava/lang/String;)V

    .line 391
    :cond_35
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 392
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "44"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "45"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "47"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "48"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "25"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "154"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_20

    .line 393
    :cond_36
    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d032a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 394
    iget-object v5, v0, Lcom/join/mgps/adapter/d2$d2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v5, 0x7f0a175d

    .line 395
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 396
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    new-instance v5, Lcom/join/mgps/adapter/d2$d;

    invoke-direct {v5, v1, v3}, Lcom/join/mgps/adapter/d2$d;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/TipBean;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1f

    :cond_37
    :goto_20
    const/4 v6, 0x0

    goto/16 :goto_1f

    .line 398
    :pswitch_22
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/d2$b2;

    .line 399
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_38

    .line 400
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/join/mgps/adapter/d2$b2;->d:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->A(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    goto :goto_21

    .line 401
    :cond_38
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$b2;->f:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :goto_21
    iget-object v2, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    move-result v2

    if-ne v2, v13, :cond_39

    .line 403
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$b2;->e:Landroid/widget/Button;

    const-string v3, "\u5df2\u9884\u7ea6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$b2;->e:Landroid/widget/Button;

    invoke-virtual {v2, v14}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_22

    .line 405
    :cond_39
    iget-object v2, v0, Lcom/join/mgps/adapter/d2$b2;->e:Landroid/widget/Button;

    const-string v3, "\u9884\u7ea6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :goto_22
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$b2;->e:Landroid/widget/Button;

    new-instance v2, Lcom/join/mgps/adapter/d2$c;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/d2$c;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    .line 407
    :pswitch_23
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$u1;

    .line 408
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIco_remote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 409
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->e:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->f:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->l:Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/join/mgps/adapter/d2;->t:Landroid/view/View;

    .line 412
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    move-result v0

    if-ne v0, v13, :cond_3c

    .line 413
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0.00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 414
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_23

    .line 416
    :cond_3a
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :goto_23
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 418
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->h:Landroid/widget/TextView;

    const-string v3, "\u5df2\u67090\u4eba\u9884\u7ea6"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 419
    :cond_3b
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u6709"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u4eba\u9884\u7ea6"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 420
    :cond_3c
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->h:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_count()I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :try_start_8
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3d

    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 424
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->h:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_24

    :catch_8
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 426
    :cond_3d
    :goto_24
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 427
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->h:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_count()I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_3e
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object v0

    .line 430
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v3, "0.0"

    .line 431
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "0"

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_25

    .line 432
    :cond_3f
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$u1;->a(Lcom/join/mgps/adapter/d2$u1;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 433
    :cond_40
    :goto_25
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$u1;->a(Lcom/join/mgps/adapter/d2$u1;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u6682\u65e0\u8bc4\u5206"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$u1;->a(Lcom/join/mgps/adapter/d2$u1;)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 435
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$u1;->a(Lcom/join/mgps/adapter/d2$u1;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "#8a8a8a"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    :goto_26
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$u1;->i:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v3, v14}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 437
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$u1;->i:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v3, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 438
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$u1;->i:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getTotal_stars()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 439
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$u1;->b(Lcom/join/mgps/adapter/d2$u1;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_27

    .line 440
    :cond_41
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$u1;->b(Lcom/join/mgps/adapter/d2$u1;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :goto_27
    invoke-static {v2}, Lcom/join/mgps/adapter/d2$u1;->b(Lcom/join/mgps/adapter/d2$u1;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v3, Lcom/join/mgps/adapter/d2$y0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/d2$y0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 443
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    .line 444
    :cond_42
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->k:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/d2$a;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/d2$a;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    :goto_28
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$u1;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/d2$b;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/d2$b;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    .line 447
    :pswitch_24
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/d2$e2;

    .line 448
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/d2$b1;

    .line 449
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->e:Landroid/widget/TextView;

    const-string v4, "\u66f4\u591a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->e:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071395

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v14, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 453
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->i:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 454
    iput v14, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 455
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    iget-object v3, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_57

    .line 457
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$e2;->d:Landroid/widget/TextView;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    const-string v3, "\u7b80\u4ecb"

    .line 459
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 460
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->h:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_43
    const-string v3, "\u7f16\u8f91\u63a8\u8350"

    .line 461
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 462
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->h:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_44
    const-string v3, "\u51fa\u62db\u8868"

    .line 463
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "\u9009\u5173"

    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 464
    :cond_45
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 465
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$e2;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0711b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_46
    const-string v3, "\u91d1\u624b\u6307"

    .line 466
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "#FFEFEFEF"

    const-string v5, ")"

    const-string v6, "\u5168\u90e8("

    if-eqz v3, :cond_47

    .line 467
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->e:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getGolden_finger()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->g:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->g:Landroid/view/View;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 472
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/join/mgps/adapter/d2$k;

    invoke-direct {v7, v1}, Lcom/join/mgps/adapter/d2$k;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_47
    const-string v3, "\u5f00\u5408\u670d"

    .line 473
    iget-object v7, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 474
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_server_state()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x3

    if-le v3, v7, :cond_48

    .line 475
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/join/mgps/adapter/a2;

    invoke-direct {v7, v1}, Lcom/join/mgps/adapter/a2;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_48
    const-string v3, "\u6d3b\u52a8\u516c\u544a"

    .line 477
    iget-object v7, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 478
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isHas_more_activities()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 479
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/join/mgps/adapter/b2;

    invoke-direct {v7, v1}, Lcom/join/mgps/adapter/b2;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_49
    const-string v3, "\u4e91\u5b58\u6863"

    .line 481
    iget-object v7, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 482
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->e:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getCloud_archive_count()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->g:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->g:Landroid/view/View;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 486
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/d2$v;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/d2$v;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    :cond_4a
    iget-object v3, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    const-string v4, "\u798f\u5229\u793c\u5305"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 488
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->h:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :cond_4b
    iget-object v3, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 490
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/d2$g0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/d2$g0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4c
    const-string v3, "\u540c\u5382\u5546\u63a8\u8350"

    .line 492
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 493
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4d

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_4d

    .line 494
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/d2$r0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/d2$r0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4d
    const-string v3, "\u540c\u5382\u5546\u63a8\u8350"

    .line 496
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 497
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->g:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->h:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_4e
    const-string v3, "\u4e0b\u4e86\u8fd8\u4f1a\u4e0b"

    .line 499
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 500
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->g:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->h:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_4f
    const-string v3, "\u6e38\u620f\u5355"

    .line 502
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 503
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/d2$u0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/d2$u0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_50
    const-string v3, "\u652f\u6301\u624b\u67c4"

    .line 505
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 506
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->i:Landroid/widget/ImageView;

    const v4, 0x7f080d5e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 509
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->i:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 510
    iget-object v4, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07131b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 511
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->e:Landroid/widget/TextView;

    const-string v4, "\u70b9\u51fb\u8d2d\u4e70"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_handle_entrance()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v3

    .line 513
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    .line 514
    iget-object v4, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/d2$v0;

    invoke-direct {v5, v1, v3}, Lcom/join/mgps/adapter/d2$v0;-><init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/AppBeanMain;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_51
    const-string v3, "\u793e\u533a\u8ba8\u8bba"

    .line 515
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 516
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/d2$w0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/d2$w0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_52
    const-string v3, "\u540c\u7c7b\u6e38\u620f"

    .line 518
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 519
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->h:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->g:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    .line 521
    :cond_53
    iget-object v3, v2, Lcom/join/mgps/adapter/d2$e2;->g:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_29
    const-string v3, "\u4e13\u5c5e\u798f\u5229"

    .line 522
    iget-object v4, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 523
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$e2;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$e2;->j:Landroid/widget/ImageView;

    const v3, 0x7f080364

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2a

    :cond_54
    const-string v3, "\u5145\u503c\u8fd4\u5229"

    .line 525
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$b1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 526
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$e2;->j:Landroid/widget/ImageView;

    const v3, 0x7f080362

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 527
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$e2;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, v1, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_exclusive_benefits_qq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 529
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$e2;->e:Landroid/widget/TextView;

    const-string v3, "\u8054\u7cfb\u5ba2\u670d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$e2;->e:Landroid/widget/TextView;

    const-string v3, "#f47500"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 531
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$e2;->e:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0713c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v14, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 532
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$e2;->f:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/d2$x0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/d2$x0;-><init>(Lcom/join/mgps/adapter/d2;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2a

    .line 534
    :cond_55
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$e2;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    :cond_56
    :goto_2a
    iget-object v0, v2, Lcom/join/mgps/adapter/d2$e2;->h:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_57
    :goto_2b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
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
    const/4 v0, 0x0

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const v1, 0x7f0d0341

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lcom/join/mgps/adapter/d2$k2;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$k2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const v1, 0x7f0d0342

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance p2, Lcom/join/mgps/adapter/d2$n2;

    .line 46
    .line 47
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$n2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const v1, 0x7f0d0340

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p2, Lcom/join/mgps/adapter/d2$h1;

    .line 68
    .line 69
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$h1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    const v1, 0x7f0d01a3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance p2, Lcom/join/mgps/adapter/d2$h2;

    .line 90
    .line 91
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$h2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const v1, 0x7f0d0333

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance p2, Lcom/join/mgps/adapter/d2$x1;

    .line 112
    .line 113
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$x1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    const v1, 0x7f0d019e

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance p2, Lcom/join/mgps/adapter/d2$e1;

    .line 134
    .line 135
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$e1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const v1, 0x7f0d01aa

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance p2, Lcom/join/mgps/adapter/d2$l2;

    .line 156
    .line 157
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$l2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    const v1, 0x7f0d019f

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance p2, Lcom/join/mgps/adapter/d2$f1;

    .line 178
    .line 179
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$f1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    const v1, 0x7f0d01a4

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    new-instance p2, Lcom/join/mgps/adapter/d2$i2;

    .line 200
    .line 201
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$i2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    const v1, 0x7f0d01a1

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    new-instance p2, Lcom/join/mgps/adapter/d2$i1;

    .line 222
    .line 223
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$i1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    const v1, 0x7f0d0339

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    new-instance p2, Lcom/join/mgps/adapter/d2$g2;

    .line 244
    .line 245
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$g2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    const v1, 0x7f0d0344

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    new-instance p2, Lcom/join/mgps/adapter/d2$g1;

    .line 266
    .line 267
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$g1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    const v1, 0x7f0d0352

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    new-instance p2, Lcom/join/mgps/adapter/d2$j2;

    .line 288
    .line 289
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$j2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    const v1, 0x7f0d016c

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    new-instance p2, Lcom/join/mgps/adapter/d2$a1;

    .line 310
    .line 311
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$a1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    const v1, 0x7f0d0353

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    new-instance p2, Lcom/join/mgps/adapter/d2$m2;

    .line 332
    .line 333
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$m2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :pswitch_f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    const v1, 0x7f0d01a5

    .line 347
    .line 348
    .line 349
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    new-instance p2, Lcom/join/mgps/adapter/d2$z1;

    .line 354
    .line 355
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$z1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    const v1, 0x7f0d0329

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    new-instance p2, Lcom/join/mgps/adapter/d2$c2;

    .line 376
    .line 377
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$c2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_0

    .line 381
    .line 382
    :pswitch_11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 387
    .line 388
    .line 389
    move-result-object p2

    .line 390
    const v1, 0x7f0d0313

    .line 391
    .line 392
    .line 393
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    new-instance p2, Lcom/join/mgps/adapter/d2$q1;

    .line 398
    .line 399
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$q1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_0

    .line 403
    .line 404
    :pswitch_12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 405
    .line 406
    .line 407
    move-result-object p2

    .line 408
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 409
    .line 410
    .line 411
    move-result-object p2

    .line 412
    const v1, 0x7f0d0311

    .line 413
    .line 414
    .line 415
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    new-instance p2, Lcom/join/mgps/adapter/d2$p1;

    .line 420
    .line 421
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$p1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_0

    .line 425
    .line 426
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 427
    .line 428
    .line 429
    move-result-object p2

    .line 430
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    const v1, 0x7f0d0334

    .line 435
    .line 436
    .line 437
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    new-instance p2, Lcom/join/mgps/adapter/d2$f2;

    .line 442
    .line 443
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$f2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 453
    .line 454
    .line 455
    move-result-object p2

    .line 456
    const v1, 0x7f0d030b

    .line 457
    .line 458
    .line 459
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    new-instance p2, Lcom/join/mgps/adapter/d2$k1;

    .line 464
    .line 465
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$k1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_0

    .line 469
    .line 470
    :pswitch_15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 471
    .line 472
    .line 473
    move-result-object p2

    .line 474
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 475
    .line 476
    .line 477
    move-result-object p2

    .line 478
    const v1, 0x7f0d0316

    .line 479
    .line 480
    .line 481
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    new-instance p2, Lcom/join/mgps/adapter/d2$a2;

    .line 486
    .line 487
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$a2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_0

    .line 491
    .line 492
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 493
    .line 494
    .line 495
    move-result-object p2

    .line 496
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 497
    .line 498
    .line 499
    move-result-object p2

    .line 500
    const v1, 0x7f0d030e

    .line 501
    .line 502
    .line 503
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    new-instance p2, Lcom/join/mgps/adapter/d2$m1;

    .line 508
    .line 509
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$m1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_0

    .line 513
    .line 514
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 515
    .line 516
    .line 517
    move-result-object p2

    .line 518
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 519
    .line 520
    .line 521
    move-result-object p2

    .line 522
    const v1, 0x7f0d030d

    .line 523
    .line 524
    .line 525
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    new-instance p2, Lcom/join/mgps/adapter/d2$o1;

    .line 530
    .line 531
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$o1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_0

    .line 535
    .line 536
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 537
    .line 538
    .line 539
    move-result-object p2

    .line 540
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 541
    .line 542
    .line 543
    move-result-object p2

    .line 544
    const v1, 0x7f0d030c

    .line 545
    .line 546
    .line 547
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    new-instance p2, Lcom/join/mgps/adapter/d2$l1;

    .line 552
    .line 553
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$l1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_0

    .line 557
    .line 558
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 559
    .line 560
    .line 561
    move-result-object p2

    .line 562
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 563
    .line 564
    .line 565
    move-result-object p2

    .line 566
    const v1, 0x7f0d0327

    .line 567
    .line 568
    .line 569
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    new-instance p2, Lcom/join/mgps/adapter/d2$n1;

    .line 574
    .line 575
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$n1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_0

    .line 579
    .line 580
    :pswitch_1a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 581
    .line 582
    .line 583
    move-result-object p2

    .line 584
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 585
    .line 586
    .line 587
    move-result-object p2

    .line 588
    const v1, 0x7f0d0314

    .line 589
    .line 590
    .line 591
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    new-instance p2, Lcom/join/mgps/adapter/d2$s1;

    .line 596
    .line 597
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$s1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 598
    .line 599
    .line 600
    goto/16 :goto_0

    .line 601
    .line 602
    :pswitch_1b
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 603
    .line 604
    .line 605
    move-result-object p2

    .line 606
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 607
    .line 608
    .line 609
    move-result-object p2

    .line 610
    const v1, 0x7f0d0332

    .line 611
    .line 612
    .line 613
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    new-instance p2, Lcom/join/mgps/adapter/d2$y1;

    .line 618
    .line 619
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$y1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_0

    .line 623
    .line 624
    :pswitch_1c
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 625
    .line 626
    .line 627
    move-result-object p2

    .line 628
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 629
    .line 630
    .line 631
    move-result-object p2

    .line 632
    const v1, 0x7f0d030a

    .line 633
    .line 634
    .line 635
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 636
    .line 637
    .line 638
    move-result-object p1

    .line 639
    new-instance p2, Lcom/join/mgps/adapter/d2$j1;

    .line 640
    .line 641
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$j1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 642
    .line 643
    .line 644
    goto/16 :goto_0

    .line 645
    .line 646
    :pswitch_1d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 647
    .line 648
    .line 649
    move-result-object p2

    .line 650
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 651
    .line 652
    .line 653
    move-result-object p2

    .line 654
    const v1, 0x7f0d0317

    .line 655
    .line 656
    .line 657
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 658
    .line 659
    .line 660
    move-result-object p1

    .line 661
    new-instance p2, Lcom/join/mgps/adapter/d2$t1;

    .line 662
    .line 663
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$t1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 664
    .line 665
    .line 666
    goto/16 :goto_0

    .line 667
    .line 668
    :pswitch_1e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 669
    .line 670
    .line 671
    move-result-object p2

    .line 672
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 673
    .line 674
    .line 675
    move-result-object p2

    .line 676
    const v1, 0x7f0d030f

    .line 677
    .line 678
    .line 679
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 680
    .line 681
    .line 682
    move-result-object p1

    .line 683
    new-instance p2, Lcom/join/mgps/adapter/d2$r1;

    .line 684
    .line 685
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$r1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_0

    .line 689
    .line 690
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 691
    .line 692
    .line 693
    move-result-object p2

    .line 694
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 695
    .line 696
    .line 697
    move-result-object p2

    .line 698
    const v1, 0x7f0d0326

    .line 699
    .line 700
    .line 701
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 702
    .line 703
    .line 704
    move-result-object p1

    .line 705
    new-instance p2, Lcom/join/mgps/adapter/d2$w1;

    .line 706
    .line 707
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$w1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_0

    .line 711
    .line 712
    :pswitch_20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 713
    .line 714
    .line 715
    move-result-object p2

    .line 716
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 717
    .line 718
    .line 719
    move-result-object p2

    .line 720
    const v1, 0x7f0d0315

    .line 721
    .line 722
    .line 723
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 724
    .line 725
    .line 726
    move-result-object p1

    .line 727
    new-instance p2, Lcom/join/mgps/adapter/d2$v1;

    .line 728
    .line 729
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$v1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 730
    .line 731
    .line 732
    goto :goto_0

    .line 733
    :pswitch_21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 734
    .line 735
    .line 736
    move-result-object p2

    .line 737
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 738
    .line 739
    .line 740
    move-result-object p2

    .line 741
    const v1, 0x7f0d0336

    .line 742
    .line 743
    .line 744
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 745
    .line 746
    .line 747
    move-result-object p1

    .line 748
    new-instance p2, Lcom/join/mgps/adapter/d2$g2;

    .line 749
    .line 750
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$g2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 751
    .line 752
    .line 753
    goto :goto_0

    .line 754
    :pswitch_22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 755
    .line 756
    .line 757
    move-result-object p2

    .line 758
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 759
    .line 760
    .line 761
    move-result-object p2

    .line 762
    const v1, 0x7f0d032e

    .line 763
    .line 764
    .line 765
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 766
    .line 767
    .line 768
    move-result-object p1

    .line 769
    new-instance p2, Lcom/join/mgps/adapter/d2$d2;

    .line 770
    .line 771
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$d2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 772
    .line 773
    .line 774
    goto :goto_0

    .line 775
    :pswitch_23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 776
    .line 777
    .line 778
    move-result-object p2

    .line 779
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 780
    .line 781
    .line 782
    move-result-object p2

    .line 783
    const v1, 0x7f0d0328

    .line 784
    .line 785
    .line 786
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 787
    .line 788
    .line 789
    move-result-object p1

    .line 790
    new-instance p2, Lcom/join/mgps/adapter/d2$b2;

    .line 791
    .line 792
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$b2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 793
    .line 794
    .line 795
    goto :goto_0

    .line 796
    :pswitch_24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 797
    .line 798
    .line 799
    move-result-object p2

    .line 800
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 801
    .line 802
    .line 803
    move-result-object p2

    .line 804
    const v1, 0x7f0d0319

    .line 805
    .line 806
    .line 807
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 808
    .line 809
    .line 810
    move-result-object p1

    .line 811
    new-instance p2, Lcom/join/mgps/adapter/d2$u1;

    .line 812
    .line 813
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$u1;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 814
    .line 815
    .line 816
    goto :goto_0

    .line 817
    :pswitch_25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 818
    .line 819
    .line 820
    move-result-object p2

    .line 821
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 822
    .line 823
    .line 824
    move-result-object p2

    .line 825
    const v1, 0x7f0d0330

    .line 826
    .line 827
    .line 828
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 829
    .line 830
    .line 831
    move-result-object p1

    .line 832
    new-instance p2, Lcom/join/mgps/adapter/d2$e2;

    .line 833
    .line 834
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/d2$e2;-><init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V

    .line 835
    .line 836
    .line 837
    :goto_0
    return-object p2

    .line 838
    nop

    .line 839
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method p(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/d2$b1;
    .locals 2
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
    new-instance v0, Lcom/join/mgps/adapter/d2$b1;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/adapter/d2$d1;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/join/mgps/adapter/d2$d1;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    .line 6
    .line 7
    .line 8
    const/16 p1, 0xf

    .line 9
    .line 10
    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/adapter/d2$b1;-><init>(Lcom/join/mgps/adapter/d2;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x5

    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->h:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget-object v4, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCdn_down_switch()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-static {v1, v0, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method r(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/d2;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x5

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-array v1, v4, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object p2, v1, v3

    .line 39
    .line 40
    const p2, 0x7f120149

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/d2;->S(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/16 v2, 0x2b

    .line 56
    .line 57
    if-eq v1, v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/16 v2, 0x9

    .line 64
    .line 65
    if-eq v1, v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-array v1, v4, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object p2, v1, v3

    .line 81
    .line 82
    const p2, 0x7f12014a

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/d2;->S(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/d2;->q()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/d2;->q()V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void
.end method

.method public s()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->t:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->u:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public v(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/MApplication;->q(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/d2;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/d2$b1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/d2;->r:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

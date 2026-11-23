.class public Lcom/join/mgps/adapter/x1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/x1$p1;,
        Lcom/join/mgps/adapter/x1$l1;,
        Lcom/join/mgps/adapter/x1$u2;,
        Lcom/join/mgps/adapter/x1$k2;,
        Lcom/join/mgps/adapter/x1$r2;,
        Lcom/join/mgps/adapter/x1$t2;,
        Lcom/join/mgps/adapter/x1$w2;,
        Lcom/join/mgps/adapter/x1$l2;,
        Lcom/join/mgps/adapter/x1$m2;,
        Lcom/join/mgps/adapter/x1$h2;,
        Lcom/join/mgps/adapter/x1$j2;,
        Lcom/join/mgps/adapter/x1$z1;,
        Lcom/join/mgps/adapter/x1$o2;,
        Lcom/join/mgps/adapter/x1$n2;,
        Lcom/join/mgps/adapter/x1$i2;,
        Lcom/join/mgps/adapter/x1$d2;,
        Lcom/join/mgps/adapter/x1$b2;,
        Lcom/join/mgps/adapter/x1$e2;,
        Lcom/join/mgps/adapter/x1$c2;,
        Lcom/join/mgps/adapter/x1$q2;,
        Lcom/join/mgps/adapter/x1$f2;,
        Lcom/join/mgps/adapter/x1$g2;,
        Lcom/join/mgps/adapter/x1$a2;,
        Lcom/join/mgps/adapter/x1$v2;,
        Lcom/join/mgps/adapter/x1$s2;,
        Lcom/join/mgps/adapter/x1$p2;,
        Lcom/join/mgps/adapter/x1$h3;,
        Lcom/join/mgps/adapter/x1$m1;,
        Lcom/join/mgps/adapter/x1$d3;,
        Lcom/join/mgps/adapter/x1$v1;,
        Lcom/join/mgps/adapter/x1$y1;,
        Lcom/join/mgps/adapter/x1$a3;,
        Lcom/join/mgps/adapter/x1$z2;,
        Lcom/join/mgps/adapter/x1$u1;,
        Lcom/join/mgps/adapter/x1$f3;,
        Lcom/join/mgps/adapter/x1$t1;,
        Lcom/join/mgps/adapter/x1$w1;,
        Lcom/join/mgps/adapter/x1$i3;,
        Lcom/join/mgps/adapter/x1$e3;,
        Lcom/join/mgps/adapter/x1$x1;,
        Lcom/join/mgps/adapter/x1$o1;,
        Lcom/join/mgps/adapter/x1$j3;,
        Lcom/join/mgps/adapter/x1$j1;,
        Lcom/join/mgps/adapter/x1$k1;,
        Lcom/join/mgps/adapter/x1$s1;,
        Lcom/join/mgps/adapter/x1$b3;,
        Lcom/join/mgps/adapter/x1$c3;,
        Lcom/join/mgps/adapter/x1$x2;,
        Lcom/join/mgps/adapter/x1$y2;,
        Lcom/join/mgps/adapter/x1$g3;,
        Lcom/join/mgps/adapter/x1$n1;,
        Lcom/join/mgps/adapter/x1$r1;,
        Lcom/join/mgps/adapter/x1$k3;,
        Lcom/join/mgps/adapter/x1$q1;
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
.field private static final x:Ljava/lang/String; = "GameDetialModleFourAda"


# instance fields
.field private e:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field private f:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

.field private g:Landroid/content/Context;

.field h:Z

.field i:Lcom/join/mgps/adapter/x1$p1;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcom/danikula/videocache/i;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field q:Lcom/join/mgps/callbacks/j;

.field r:Lcom/join/android/app/component/video/c;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/x1$n1;",
            ">;"
        }
    .end annotation
.end field

.field t:J

.field private u:Landroid/view/View;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field w:Lcom/join/mgps/adapter/x1$l1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/GamedetialModleFourBean;Lcom/join/android/app/component/video/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "modleFourBean",
            "helper"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/adapter/x1;->h:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/join/mgps/adapter/x1;->i:Lcom/join/mgps/adapter/x1$p1;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/adapter/x1;->o:Z

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/join/mgps/adapter/x1;->t:J

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/adapter/x1;->v:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/adapter/x1$l1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/x1$l1;-><init>(Lcom/join/mgps/adapter/x1;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/adapter/x1;->w:Lcom/join/mgps/adapter/x1$l1;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 33
    .line 34
    new-instance p2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    .line 40
    .line 41
    new-instance p2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/join/mgps/adapter/x1;->j:Ljava/util/List;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/x1;->w(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/join/mgps/adapter/x1;->k:Lcom/danikula/videocache/i;

    .line 55
    .line 56
    new-instance p1, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/join/mgps/adapter/x1;->l:Ljava/util/Map;

    .line 62
    .line 63
    iput-object p3, p0, Lcom/join/mgps/adapter/x1;->r:Lcom/join/android/app/component/video/c;

    .line 64
    .line 65
    return-void
.end method

.method private synthetic A(Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

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

.method private synthetic B(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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

.method private synthetic C(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    .line 4
    .line 5
    const-class v1, Lcom/join/kotlin/ui/notice/NoticeListActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private synthetic D(Landroid/view/View;)V
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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/adapter/x1;->r(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private F(Landroid/view/View;Lcom/join/mgps/adapter/x1$r1;ZI)V
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
    iget-object v9, v8, Lcom/join/mgps/adapter/x1$r1;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget v10, v8, Lcom/join/mgps/adapter/x1$r1;->e:I

    .line 8
    .line 9
    iget-boolean v11, v8, Lcom/join/mgps/adapter/x1$r1;->f:Z

    .line 10
    .line 11
    iget-object v12, v8, Lcom/join/mgps/adapter/x1$r1;->b:Lcom/join/mgps/dto/InformationCommentBean;

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
    iget-object v1, v7, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

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
    new-instance v0, Lcom/join/mgps/adapter/x1$y0;

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
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/x1$y0;-><init>(Lcom/join/mgps/adapter/x1;IILjava/lang/String;Lcom/join/mgps/adapter/x1$r1;)V

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
    new-instance v0, Lcom/join/mgps/adapter/x1$z0;

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
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/x1$z0;-><init>(Lcom/join/mgps/adapter/x1;ILcom/join/mgps/dto/InformationCommentBean;Ljava/lang/String;I)V

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
    invoke-direct {v7, v8, v0}, Lcom/join/mgps/adapter/x1;->N(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
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

.method private N(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
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
    new-instance v0, Lcom/join/mgps/adapter/x1$a1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/x1$a1;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private O(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/x1$b1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/x1$b1;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private P(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
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
    new-instance v6, Lcom/join/mgps/adapter/x1$d1;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/x1$d1;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

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

.method private Q(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/x1$x0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/x1$x0;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private R(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
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
    new-instance v6, Lcom/join/mgps/adapter/x1$e1;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/x1$e1;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

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

.method public static synthetic a(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x1;->A(Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x1;->D(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x1;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x1;->B(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x1;->C(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/adapter/x1;)Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/adapter/x1;)Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1;->f:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/adapter/x1;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1;->l:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/adapter/x1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/adapter/x1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1;->v:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/adapter/x1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/x1;->m:I

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
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    .line 4
    .line 5
    const-class v1, Lcom/join/kotlin/ui/coupon/CouponListActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method static synthetic m(Lcom/join/mgps/adapter/x1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/x1;->n:I

    .line 2
    .line 3
    return p1
.end method

.method private u(I)Lcom/join/mgps/dto/CommentBaseBean;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/adapter/x1$n1;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/join/mgps/dto/CommentBaseBean;

    .line 12
    .line 13
    return-object p1
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
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


# virtual methods
.method public E(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->v:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/join/mgps/adapter/x1;->n:I

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/adapter/x1;->m:I

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/x1;->w:Lcom/join/mgps/adapter/x1$l1;

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
    iget-object v2, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

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
    iget-object v7, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

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
    iget-object v3, p0, Lcom/join/mgps/adapter/x1;->v:Ljava/util/List;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/x1;->w:Lcom/join/mgps/adapter/x1$l1;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public G(II)V
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
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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

.method public H(II)V
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
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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

.method public I(Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1;->f:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 2
    .line 3
    return-void
.end method

.method J(Lcom/join/mgps/adapter/x1$n1;Z)V
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
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lcom/join/mgps/adapter/x1$r1;

    .line 7
    .line 8
    iput-boolean p2, p1, Lcom/join/mgps/adapter/x1$r1;->g:Z
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

.method public K(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-void
.end method

.method public L(Lcom/join/mgps/callbacks/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1;->q:Lcom/join/mgps/callbacks/j;

    .line 2
    .line 3
    return-void
.end method

.method public M(Lcom/join/mgps/adapter/x1$p1;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1;->i:Lcom/join/mgps/adapter/x1$p1;

    .line 2
    .line 3
    return-void
.end method

.method public S(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1;->v:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public T(I)V
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
    iput p1, p0, Lcom/join/mgps/adapter/x1;->p:I

    .line 2
    .line 3
    return-void
.end method

.method U()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v1, v0}, Lcom/join/mgps/Util/w;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method V(Landroid/content/Context;Ljava/lang/String;)V
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

.method public W(I)V
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
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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

.method public X(I)V
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
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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

.method Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "isNormal",
            "isZip",
            "isShowDesc"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/adapter/x1$j3;->f(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/LinearLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p1, Lcom/join/mgps/adapter/x1$j3;->h:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p1, Lcom/join/mgps/adapter/x1$j3;->g:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/adapter/x1$j3;->e(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/LinearLayout;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p1, Lcom/join/mgps/adapter/x1$j3;->q:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/16 p3, 0x8

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$j3;->t:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    const/16 v0, 0x8

    .line 58
    .line 59
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    iget-object p2, p1, Lcom/join/mgps/adapter/x1$j3;->q:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p1, Lcom/join/mgps/adapter/x1$j3;->t:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/join/mgps/adapter/x1$j3;->f(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/LinearLayout;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    iget-object p2, p1, Lcom/join/mgps/adapter/x1$j3;->h:Landroid/widget/ProgressBar;

    .line 87
    .line 88
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p1, Lcom/join/mgps/adapter/x1$j3;->g:Landroid/widget/ProgressBar;

    .line 92
    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object p2, p1, Lcom/join/mgps/adapter/x1$j3;->g:Landroid/widget/ProgressBar;

    .line 98
    .line 99
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p1, Lcom/join/mgps/adapter/x1$j3;->h:Landroid/widget/ProgressBar;

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-static {p1}, Lcom/join/mgps/adapter/x1$j3;->e(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/LinearLayout;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :goto_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/adapter/x1$n1;

    .line 8
    .line 9
    iget p1, p1, Lcom/join/mgps/adapter/x1$n1;->b:I

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
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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
    .locals 28
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
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/x1;->getItemViewType(I)I

    move-result v2

    const-string v3, "\u6e38\u620f\u7b80\u4ecb"

    const-string v5, "\u70ed\u5ea6"

    const-string v8, "\u5b89\u88c5"

    const-string v9, ")"

    const-string v10, "1"

    const/4 v12, 0x3

    const-string v13, "M"

    const v14, 0x7f080caf

    const/4 v15, 0x2

    const/4 v4, -0x2

    const-string v6, ""

    const/16 v7, 0x8

    const/4 v11, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_35

    .line 2
    :pswitch_1
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$g3;

    .line 3
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 4
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 5
    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/x1$g3;->a(Ljava/util/List;)V

    goto/16 :goto_35

    .line 6
    :pswitch_2
    move-object/from16 v3, p1

    check-cast v3, Lcom/join/mgps/adapter/x1$y2;

    .line 7
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 8
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/GameCfgBean;

    const-string v4, "\u6700\u4f4e\u6e38\u620f\u914d\u7f6e"

    const-string v5, "CPU\uff1a"

    const-string v6, "\u5185\u5b58\uff1a"

    const-string v7, "\u663e\u5361\uff1a"

    const-string v8, "\u64cd\u4f5c\u7cfb\u7edf: "

    const-string v9, "\u5b58\u50a8\u7a7a\u95f4\uff1a"

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameCfgBean;->getCpu_info()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameCfgBean;->getMemory_info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameCfgBean;->getVideo_card_info()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameCfgBean;->getSystem_info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameCfgBean;->getCapacity_info()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v3 .. v14}, Lcom/join/mgps/adapter/x1$y2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 10
    :pswitch_3
    move-object/from16 v15, p1

    check-cast v15, Lcom/join/mgps/adapter/x1$y2;

    .line 11
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 12
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/GameCfgBean;

    const-string v16, "\u6e38\u620f\u4fe1\u606f"

    const-string v17, "\u7c7b\u578b\uff1a"

    const-string v18, "\u9996\u53d1\u65e5\u671f\uff1a"

    const-string v19, "\u652f\u6301\u8bed\u8a00\uff1a"

    const-string v20, "\u6e38\u620f\u5927\u5c0f\uff1a"

    const-string v21, ""

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameCfgBean;->getGame_type()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameCfgBean;->getFirst_date()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameCfgBean;->getLanguage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameCfgBean;->getGame_size()Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v15 .. v26}, Lcom/join/mgps/adapter/x1$y2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 14
    :pswitch_4
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$x2;

    .line 15
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 16
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/x1$x2;->a(Ljava/lang/String;)V

    goto/16 :goto_35

    .line 18
    :pswitch_5
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$c3;

    .line 19
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    if-eqz v0, :cond_72

    .line 20
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/DomainInfoBean;

    .line 21
    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/x1$c3;->a(Lcom/join/mgps/dto/DomainInfoBean;)V

    goto/16 :goto_35

    .line 22
    :pswitch_6
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$b3;

    .line 23
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    if-eqz v0, :cond_72

    .line 24
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/DomainInfoBean;

    .line 25
    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/x1$b3;->a(Lcom/join/mgps/dto/DomainInfoBean;)V

    goto/16 :goto_35

    .line 26
    :pswitch_7
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$s1;

    .line 27
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 28
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->f:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/adapter/x1$s1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 29
    :pswitch_8
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$k1;

    .line 30
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$k1;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$k1;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 33
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_72

    .line 34
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f071293

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 35
    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07141a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/TipBean;

    .line 37
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v8, v3, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 40
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    iget-object v10, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0712fa

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-eqz v7, :cond_1

    .line 42
    iget-object v7, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f071326

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 43
    :cond_1
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, -0x1

    .line 44
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v7, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f071348

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v8, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 48
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 49
    invoke-virtual {v7, v11}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 50
    iget-object v9, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07141a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 51
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 52
    invoke-virtual {v8, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_2
    iget-object v6, v2, Lcom/join/mgps/adapter/x1$k1;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 54
    :pswitch_9
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$j1;

    .line 55
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 56
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 57
    check-cast v0, Lcom/join/mgps/dto/BtGameWelfare;

    .line 58
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$j1;->d:Lcom/join/mgps/customview/ActivityTabView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$j1;->d:Lcom/join/mgps/customview/ActivityTabView;

    invoke-virtual {v3, v0}, Lcom/join/mgps/customview/ActivityTabView;->update(Lcom/join/mgps/dto/BtGameWelfare;)V

    .line 60
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j1;->d:Lcom/join/mgps/customview/ActivityTabView;

    new-instance v2, Lcom/join/mgps/adapter/x1$w0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/x1$w0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/ActivityTabView;->setListener(Lcom/join/mgps/customview/ActivityTabView$d;)V

    goto/16 :goto_35

    .line 61
    :cond_3
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j1;->d:Lcom/join/mgps/customview/ActivityTabView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    .line 62
    :pswitch_a
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$j3;

    .line 63
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 64
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 65
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v6, 0x0

    .line 68
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 69
    new-instance v8, Lcom/join/mgps/dto/ImageInfo;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v9}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/join/mgps/dto/ImageInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 70
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 71
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$j3;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 72
    :cond_5
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$j3;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    move-result v5

    .line 74
    new-instance v6, Lcom/join/mgps/adapter/p1;

    iget-object v8, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-direct {v6, v8, v5, v4}, Lcom/join/mgps/adapter/p1;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 75
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$j3;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v5, v6}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$j3;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v6, Lcom/join/mgps/adapter/x1$t0;

    invoke-direct {v6, v1, v4}, Lcom/join/mgps/adapter/x1$t0;-><init>(Lcom/join/mgps/adapter/x1;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    .line 77
    :goto_2
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$j3;->a(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/x1$u0;

    invoke-direct {v5, v1, v0}, Lcom/join/mgps/adapter/x1$u0;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/CollectionBeanSub;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$j3;->b(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getRec_game_tags()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getRec_game_tags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    .line 80
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getRec_game_tags()Ljava/util/List;

    move-result-object v4

    iget-object v5, v2, Lcom/join/mgps/adapter/x1$j3;->t:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->H(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 81
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$j3;->q:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$j3;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x0

    goto :goto_4

    .line 83
    :cond_7
    :goto_3
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$j3;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$j3;->q:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$j3;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x1

    .line 86
    :goto_4
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$j3;->c(Lcom/join/mgps/adapter/x1$j3;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    .line 88
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$j3;->d(Lcom/join/mgps/adapter/x1$j3;)Lcom/join/mgps/customview/DownloadNormalView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/x1$v0;

    iget-object v6, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-direct {v5, v1, v6, v0, v0}, Lcom/join/mgps/adapter/x1$v0;-><init>(Lcom/join/mgps/adapter/x1;Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;Lcom/join/mgps/dto/CollectionBeanSub;)V

    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 89
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$j3;->c(Lcom/join/mgps/adapter/x1$j3;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v4, v4, v8

    mul-double v4, v4, v8

    double-to-long v4, v4

    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v22

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v24

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    move-result-object v25

    invoke-static {v2}, Lcom/join/mgps/adapter/x1$j3;->e(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/LinearLayout;

    move-result-object v26

    iget-object v6, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    move-object/from16 v27, v6

    invoke-static/range {v21 .. v27}, Lcom/join/mgps/Util/UtilsMy;->G(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 93
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$j3;->e(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    :cond_8
    if-nez v3, :cond_9

    .line 94
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/join/mgps/adapter/x1;->Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_35

    .line 95
    :cond_9
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/16 v6, 0x2b

    :cond_a
    if-eqz v6, :cond_f

    const/16 v0, 0x30

    if-eq v6, v0, :cond_e

    const-string v0, "/"

    if-eq v6, v15, :cond_d

    if-eq v6, v12, :cond_c

    const/4 v7, 0x5

    if-eq v6, v7, :cond_b

    const/4 v7, 0x6

    if-eq v6, v7, :cond_c

    const/4 v7, 0x7

    if-eq v6, v7, :cond_f

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_b

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_f

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_35

    .line 97
    :pswitch_b
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v2, v6, v7, v8}, Lcom/join/mgps/adapter/x1;->Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 98
    iget-object v6, v2, Lcom/join/mgps/adapter/x1$j3;->o:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j3;->r:Landroid/widget/TextView;

    const-string v4, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j3;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_35

    .line 101
    :pswitch_c
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v2, v6, v7, v8}, Lcom/join/mgps/adapter/x1;->Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 102
    iget-object v6, v2, Lcom/join/mgps/adapter/x1$j3;->o:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j3;->r:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j3;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_35

    .line 105
    :pswitch_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/join/mgps/adapter/x1;->Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_35

    .line 106
    :pswitch_e
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v2, v6, v6, v7}, Lcom/join/mgps/adapter/x1;->Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 107
    :try_start_0
    iget-object v6, v2, Lcom/join/mgps/adapter/x1$j3;->o:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j3;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    :goto_5
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j3;->r:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 111
    :pswitch_f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/join/mgps/adapter/x1;->Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_35

    .line 112
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/join/mgps/adapter/x1;->Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_35

    .line 113
    :cond_c
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v2, v6, v6, v7}, Lcom/join/mgps/adapter/x1;->Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 114
    :try_start_1
    iget-object v6, v2, Lcom/join/mgps/adapter/x1$j3;->o:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j3;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    :goto_6
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j3;->r:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 118
    :cond_d
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 119
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v2, v6, v6, v7}, Lcom/join/mgps/adapter/x1;->Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 120
    iget-object v6, v2, Lcom/join/mgps/adapter/x1$j3;->o:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j3;->r:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$j3;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_35

    .line 123
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v0, v3}, Lcom/join/mgps/adapter/x1;->Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_35

    .line 124
    :cond_f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/join/mgps/adapter/x1;->Y(Lcom/join/mgps/adapter/x1$j3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_35

    .line 125
    :pswitch_10
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$o1;

    .line 126
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 127
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 128
    iget-object v2, v2, Lcom/join/mgps/adapter/x1$o1;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/k1;

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v7, 0x1

    goto :goto_7

    :cond_10
    const/4 v7, 0x0

    :goto_7
    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->i:Lcom/join/mgps/adapter/x1$p1;

    invoke-direct {v3, v4, v7, v0, v5}, Lcom/join/mgps/adapter/k1;-><init>(Landroid/content/Context;ZLjava/util/List;Lcom/join/mgps/adapter/x1$p1;)V

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_35

    .line 129
    :pswitch_11
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$x1;

    .line 130
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 131
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$x1;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->f:Ljava/lang/Object;

    if-eqz v4, :cond_11

    .line 133
    check-cast v4, Ljava/lang/String;

    .line 134
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$x1;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$x1;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07133d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_8

    .line 137
    :cond_11
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$x1;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :goto_8
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 139
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$x1;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 141
    iget-object v2, v2, Lcom/join/mgps/adapter/x1$x1;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 142
    :pswitch_12
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$e3;

    .line 143
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 144
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/BTActivityBean;

    .line 145
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$e3;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BTActivityBean;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$e3;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BTActivityBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$e3;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BTActivityBean;->getSub_head()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v2, v2, Lcom/join/mgps/adapter/x1$e3;->g:Landroid/view/View;

    new-instance v3, Lcom/join/mgps/adapter/t1;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/t1;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/BTActivityBean;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_35

    .line 149
    :pswitch_13
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$i3;

    .line 150
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 151
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/ServiceState;

    .line 152
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$i3;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    const-string v4, "\u5f00\u670d"

    goto :goto_9

    :cond_12
    const-string v4, "\u5408\u670d"

    :goto_9
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$i3;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/e0;->I(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$i3;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v4

    const-string v6, "HH:mm"

    invoke-static {v4, v5, v6}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, v2, Lcom/join/mgps/adapter/x1$i3;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 156
    :pswitch_14
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$w1;

    .line 157
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 158
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 159
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$w1;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u5f20\u4ee3\u91d1\u5238\u53ef\u9886\u53d6"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$w1;->e:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/s1;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/s1;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_35

    .line 161
    :pswitch_15
    :try_start_2
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$z2;

    .line 162
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 163
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 164
    new-instance v3, Lcom/join/mgps/adapter/w1;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/w1;-><init>(Lcom/join/mgps/adapter/x1;)V

    const/4 v4, 0x0

    .line 165
    :goto_a
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$z2;->h:[Landroid/widget/TextView;

    if-eqz v5, :cond_72

    array-length v5, v5

    if-ge v4, v5, :cond_72

    if-eqz v0, :cond_14

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_13

    goto :goto_b

    .line 167
    :cond_13
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$z2;->h:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$z2;->h:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$z2;->h:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c

    .line 170
    :cond_14
    :goto_b
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$z2;->h:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :catch_2
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_35

    .line 172
    :pswitch_16
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$n2;

    .line 173
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$n2;->g:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/x1$w;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/x1$w;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/adapter/x1$n2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info_switch()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 175
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$n2;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_15
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 177
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    .line 178
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->k:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->i:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v9

    invoke-static {v9}, Lcom/join/mgps/Util/t2;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 182
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->o:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 184
    :cond_16
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :goto_d
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 186
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    .line 188
    :cond_17
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :goto_e
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 190
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    .line 192
    :cond_18
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :goto_f
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->n:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/x1$x;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/x1$x;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    const-string v4, "46"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 196
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->p:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/x1$y;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/x1$y;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    :cond_19
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_72

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 199
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n2;->h:Landroid/widget/TextView;

    const-string v4, "\u542f\u52a8\u6570"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n2;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v2

    invoke-static {v2}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 203
    :pswitch_17
    :try_start_3
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$t1;

    .line 204
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$t1;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/w;

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getCheck_point()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/join/mgps/adapter/w;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$t1;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v2, Lcom/join/mgps/adapter/x1$m0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/x1$m0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_35

    :catch_3
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_35

    .line 207
    :pswitch_18
    :try_start_4
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$f3;

    .line 208
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getOne_touch_skill()Ljava/util/List;

    move-result-object v2

    .line 209
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    iget-object v3, v0, Lcom/join/mgps/adapter/x1$f3;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_1a
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$f3;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-virtual {v3, v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setData(Ljava/util/List;)V

    .line 211
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$f3;->e:Landroidx/viewpager/widget/ViewPager;

    instance-of v3, v2, Lcom/join/mgps/customview/MViewpagerV4;

    if-eqz v3, :cond_1b

    .line 212
    check-cast v2, Lcom/join/mgps/customview/MViewpagerV4;

    invoke-virtual {v2, v11}, Lcom/join/mgps/customview/MViewpagerV4;->setIntercept(Z)V

    .line 213
    :cond_1b
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$f3;->e:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->w:Lcom/join/mgps/adapter/x1$l1;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 214
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$f3;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    iget-object v3, v0, Lcom/join/mgps/adapter/x1$f3;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 215
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1c

    .line 216
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$f3;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    iget v3, v1, Lcom/join/mgps/adapter/x1;->m:I

    invoke-virtual {v2, v3, v11}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 217
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$f3;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    new-instance v3, Lcom/join/mgps/adapter/x1$k0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/x1$k0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-static {v2, v3}, Lcom/join/mgps/adapter/r1;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;Landroid/view/View$OnScrollChangeListener;)V

    .line 218
    :cond_1c
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$f3;->e:Landroidx/viewpager/widget/ViewPager;

    iget v3, v1, Lcom/join/mgps/adapter/x1;->n:I

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 219
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$f3;->d:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    new-instance v3, Lcom/join/mgps/adapter/x1$l0;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/x1$l0;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/adapter/x1$f3;)V

    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_35

    :catch_4
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_35

    .line 221
    :pswitch_19
    :try_start_5
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$u1;

    .line 222
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 223
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/GameDetailCloudArchive;

    if-nez v0, :cond_1d

    return-void

    .line 224
    :cond_1d
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getHideTop()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 225
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u1;->e:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 226
    :cond_1e
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u1;->e:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :goto_10
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getPic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 228
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u1;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u1;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getAuth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u1;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getPraise_count()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getDivider()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1f

    .line 232
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u1;->d:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    .line 233
    :cond_1f
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u1;->d:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :goto_11
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/join/mgps/adapter/x1$o0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/x1$o0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_35

    :catch_5
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_35

    .line 236
    :pswitch_1a
    :try_start_6
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$a3;

    .line 237
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 238
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 239
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$a3;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$a3;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/x1$n0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/x1$n0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_35

    :catch_6
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_35

    .line 242
    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$y1;

    .line 243
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$y1;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v2, Lcom/join/mgps/adapter/x;

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_favorites_top5()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/x;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_35

    .line 244
    :pswitch_1c
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$w2;

    .line 245
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object v2

    .line 246
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_20

    .line 247
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$w2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    .line 248
    :cond_20
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$w2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_position()I

    .line 250
    new-instance v3, Lcom/join/mgps/adapter/m1;

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/m1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 251
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$w2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v4, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$w2;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/x1$i;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/x1$i;-><init>(Lcom/join/mgps/adapter/x1;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    goto/16 :goto_35

    .line 253
    :pswitch_1d
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$v1;

    .line 254
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$v1;->d:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/x1$e0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/x1$e0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$v1;->f:Landroid/widget/TextView;

    const-string v3, "\u5199\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$v1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$v1;->g:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$v1;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    .line 259
    :pswitch_1e
    :try_start_7
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$m1;

    .line 260
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/x1$n1;

    .line 261
    iget-object v3, v3, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/dto/CommentBaseBean;

    .line 262
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->s(Lcom/join/mgps/adapter/x1$m1;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 263
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->t(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v4

    if-lez v4, :cond_21

    .line 265
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->t(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0604f7

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    :cond_21
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v4

    if-lez v4, :cond_22

    .line 267
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->t(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0604f8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    :cond_22
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->u(Lcom/join/mgps/adapter/x1$m1;)Lcom/join/mgps/customview/VipView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 269
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 270
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->a(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 271
    :cond_23
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->a(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :goto_12
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->b(Lcom/join/mgps/adapter/x1$m1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/x1$p0;

    invoke-direct {v5, v1, v3}, Lcom/join/mgps/adapter/x1$p0;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 274
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameScore;->getSgc_switch()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25

    .line 275
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v4

    if-nez v4, :cond_24

    .line 276
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->c(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 277
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->c(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u542f\u52a8\u6e38\u620f "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStart_game_count()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u6b21"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 278
    :cond_24
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->c(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 279
    :cond_25
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->c(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :goto_13
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->d(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->t(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 283
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_14

    .line 284
    :cond_26
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->e(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 285
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->e(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 286
    :cond_27
    :goto_14
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->e(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :goto_15
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->f(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->g(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->h(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getReply_count()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getAdd_times()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 291
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->i(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v8

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_29

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_29

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 293
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_16

    .line 294
    :cond_28
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->j(Lcom/join/mgps/adapter/x1$m1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 295
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->j(Lcom/join/mgps/adapter/x1$m1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 296
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->j(Lcom/join/mgps/adapter/x1$m1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v8, v5

    invoke-virtual {v4, v8, v9}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    goto :goto_17

    .line 297
    :cond_29
    :goto_16
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->j(Lcom/join/mgps/adapter/x1$m1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :goto_17
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->j(Lcom/join/mgps/adapter/x1$m1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 299
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 300
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v8, 0x4051800000000000L    # 70.0

    cmpl-double v10, v4, v8

    if-lez v10, :cond_2a

    .line 301
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->k(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    .line 302
    :cond_2a
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->k(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :goto_18
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 304
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->l(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19

    .line 305
    :cond_2b
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->l(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :goto_19
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->m(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    .line 308
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->n(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f081329

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1a

    .line 309
    :cond_2c
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->n(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f081324

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    :goto_1a
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    .line 311
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->o(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f080511

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1b

    .line 312
    :cond_2d
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->o(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f08050f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    :goto_1b
    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->b(Lcom/join/mgps/adapter/x1$m1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 314
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->n(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->f(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/join/mgps/adapter/x1;->P(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 315
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->o(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->g(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/join/mgps/adapter/x1;->R(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 316
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->p(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/join/mgps/adapter/x1;->O(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 317
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->q(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/join/mgps/adapter/x1;->O(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 318
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->d(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/x1$q0;

    invoke-direct {v5, v1, v2, v0}, Lcom/join/mgps/adapter/x1$q0;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/adapter/x1$m1;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 319
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$m1;->r(Lcom/join/mgps/adapter/x1$m1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/x1$s0;

    invoke-direct {v5, v1, v2, v0, v3}, Lcom/join/mgps/adapter/x1$s0;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/adapter/x1$m1;ILcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_35

    :catch_7
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_35

    .line 321
    :pswitch_1f
    :try_start_8
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$h3;

    .line 322
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$h3;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u609f\u996d\u73a9\u5bb6\u4ea4\u6d41\u7fa4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$h3;->d:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/x1$j0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/x1$j0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_35

    :catch_8
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_35

    .line 325
    :pswitch_20
    :try_start_9
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$p2;

    .line 326
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_handle_entrance()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    .line 328
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$p2;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$p2;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    .line 331
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$p2;->d:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/x1$i0;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/x1$i0;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/AppBeanMain;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_35

    :catch_9
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_35

    .line 333
    :pswitch_21
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$s2;

    .line 334
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$s2;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    .line 335
    :pswitch_22
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$g2;

    .line 336
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v2

    .line 337
    new-instance v3, Lcom/join/mgps/adapter/o1;

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->j:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/o1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 338
    iget v4, v1, Lcom/join/mgps/adapter/x1;->p:I

    invoke-virtual {v3, v4}, Lcom/join/mgps/adapter/o1;->f(I)V

    .line 339
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$g2;->e:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v2, :cond_72

    .line 340
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_72

    .line 341
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 342
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 343
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_35

    .line 344
    :pswitch_23
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$f2;

    .line 345
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v2

    .line 346
    new-instance v3, Lcom/join/mgps/adapter/o1;

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->j:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/o1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 347
    iget v4, v1, Lcom/join/mgps/adapter/x1;->p:I

    invoke-virtual {v3, v4}, Lcom/join/mgps/adapter/o1;->f(I)V

    .line 348
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$f2;->e:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v2, :cond_72

    .line 349
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_72

    .line 350
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 351
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 352
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_35

    .line 353
    :pswitch_24
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$v2;

    .line 354
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$v2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3, v11}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 355
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 357
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$v2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v5

    const v8, 0x7f08018d

    invoke-static {v4, v8, v5}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 358
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$v2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$v2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :cond_2e
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 361
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$v2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v4, v4, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 362
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$v2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v11}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 363
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$v2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    const-string v5, "GameDetialModleFourAdapter"

    invoke-virtual {v4, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 364
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$v2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 365
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$v2;->e:Lcom/join/android/app/component/video/StandardVideoView;

    sget v2, Lcom/join/android/app/component/video/StandardVideoView;->D:I

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v6, v4, v11

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 366
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 367
    invoke-virtual {v0, v3, v2, v4}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_35

    .line 368
    :pswitch_25
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$a2;

    goto/16 :goto_35

    .line 369
    :pswitch_26
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$q2;

    .line 370
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 371
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v3

    .line 372
    iget v4, v1, Lcom/join/mgps/adapter/x1;->p:I

    .line 373
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_32

    if-eq v0, v15, :cond_31

    if-eq v0, v12, :cond_30

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2f

    goto :goto_1c

    .line 374
    :cond_2f
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBt_game_recommend()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f8

    goto :goto_1c

    .line 375
    :cond_30
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f6

    goto :goto_1c

    .line 376
    :cond_31
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_and_down()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f7

    goto :goto_1c

    .line 377
    :cond_32
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f5

    .line 378
    :goto_1c
    new-instance v0, Lcom/join/mgps/adapter/o1;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-direct {v0, v5, v3}, Lcom/join/mgps/adapter/o1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 379
    invoke-virtual {v0, v4}, Lcom/join/mgps/adapter/o1;->f(I)V

    .line 380
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$q2;->e:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v3, :cond_33

    .line 381
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_33

    .line 382
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 383
    :cond_33
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$q2;->f:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    .line 384
    :pswitch_27
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$c2;

    .line 385
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_switch()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    .line 386
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$c2;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    .line 387
    :cond_34
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$c2;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :goto_1d
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$c2;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/join/mgps/adapter/x1$f0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/x1$f0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$c2;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/x1$h0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/x1$h0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_35

    .line 390
    :pswitch_28
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$e2;

    .line 391
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/x1$n1;

    .line 392
    iget-object v3, v3, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/adapter/x1$r1;

    .line 393
    iget-boolean v4, v3, Lcom/join/mgps/adapter/x1$r1;->g:Z

    if-eqz v4, :cond_35

    .line 394
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$e2;->h:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$e2;->i:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    .line 396
    :cond_35
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$e2;->h:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$e2;->i:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :goto_1e
    iget-object v4, v3, Lcom/join/mgps/adapter/x1$r1;->b:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 399
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_36

    .line 400
    iget-object v2, v2, Lcom/join/mgps/adapter/x1$e2;->d:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/join/mgps/adapter/x1;->F(Landroid/view/View;Lcom/join/mgps/adapter/x1$r1;ZI)V

    goto/16 :goto_35

    .line 401
    :cond_36
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$e2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_35

    .line 402
    :pswitch_29
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$d2;

    .line 403
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_comment_count()Ljava/lang/String;

    .line 404
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$d2;->g:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$d2;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$d2;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$d2;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/join/mgps/adapter/x1$c0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/x1$c0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$d2;->f:Landroid/widget/ImageView;

    new-instance v2, Lcom/join/mgps/adapter/x1$d0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/x1$d0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_35

    .line 409
    :pswitch_2a
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$i2;

    .line 410
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$i2;->g:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/x1$z;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/x1$z;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/adapter/x1$i2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    .line 412
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->p:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u7248\u672c:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    \u66f4\u65b0\u65f6\u95f4:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->j:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->h:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v9

    invoke-static {v9}, Lcom/join/mgps/Util/t2;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 417
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1f

    .line 419
    :cond_37
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :goto_1f
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 421
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    .line 423
    :cond_38
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :goto_20
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 425
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    .line 427
    :cond_39
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :goto_21
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->m:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/x1$a0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/x1$a0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    const-string v4, "46"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 431
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->o:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->o:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/x1$b0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/x1$b0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    :cond_3a
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_72

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 434
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$i2;->f:Landroid/widget/TextView;

    const-string v4, "\u542f\u52a8\u6570"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$i2;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v2

    invoke-static {v2}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 438
    :pswitch_2b
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$o2;

    .line 439
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$o2;->f:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/x1$u;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/x1$u;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/adapter/x1$o2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$o2;->d:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 441
    :pswitch_2c
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$z1;

    .line 442
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAuxiliary_tool()Lcom/join/mgps/dto/GameDetialAuxiliaryBean;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 443
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_72

    .line 444
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->getData()Ljava/util/List;

    move-result-object v3

    .line 445
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3b

    .line 446
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$z1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v14, v5}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 447
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$z1;->k:Landroid/widget/TextView;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$z1;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 449
    :cond_3b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3c

    .line 450
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$z1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v14, v6}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 451
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$z1;->l:Landroid/widget/TextView;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$z1;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 453
    :cond_3c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v15, :cond_3d

    .line 454
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$z1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v14, v5}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 455
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$z1;->m:Landroid/widget/TextView;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$z1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 457
    :cond_3d
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$z1;->g:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/x1$q;

    invoke-direct {v5, v1, v3, v2}, Lcom/join/mgps/adapter/x1$q;-><init>(Lcom/join/mgps/adapter/x1;Ljava/util/List;Lcom/join/mgps/dto/GameDetialAuxiliaryBean;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$z1;->h:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/x1$r;

    invoke-direct {v4, v1, v3}, Lcom/join/mgps/adapter/x1$r;-><init>(Lcom/join/mgps/adapter/x1;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$z1;->i:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/x1$s;

    invoke-direct {v4, v1, v3}, Lcom/join/mgps/adapter/x1$s;-><init>(Lcom/join/mgps/adapter/x1;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$z1;->j:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/x1$t;

    invoke-direct {v2, v1, v3}, Lcom/join/mgps/adapter/x1$t;-><init>(Lcom/join/mgps/adapter/x1;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_35

    .line 461
    :pswitch_2d
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$j2;

    .line 462
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 463
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 464
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$j2;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_content()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$j2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v14, v4}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 466
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$j2;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result v3

    if-nez v3, :cond_3e

    .line 468
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$j2;->g:Landroid/widget/TextView;

    const-string v4, "\u9886\u53d6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 469
    :cond_3e
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$j2;->g:Landroid/widget/TextView;

    const-string v4, "\u67e5\u770b"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    :goto_22
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$j2;->g:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/x1$o;

    invoke-direct {v4, v1, v0}, Lcom/join/mgps/adapter/x1$o;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v2, v2, Lcom/join/mgps/adapter/x1$j2;->h:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/x1$p;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/x1$p;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_35

    .line 472
    :pswitch_2e
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$h2;

    .line 473
    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 474
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 475
    iget v5, v0, Lcom/join/mgps/adapter/x1$n1;->e:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3f

    iget-object v5, v0, Lcom/join/mgps/adapter/x1$n1;->f:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 476
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$h2;->d:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v3, v11}, Lcom/join/mgps/customview/ExpandLayout;->setExpandable(Z)V

    .line 477
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$h2;->d:Lcom/join/mgps/customview/ExpandLayout;

    const-string v5, "\u8be6\u7ec6\u4fe1\u606f"

    invoke-virtual {v3, v5}, Lcom/join/mgps/customview/ExpandLayout;->setExpandMoreText(Ljava/lang/String;)V

    .line 478
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$h2;->d:Lcom/join/mgps/customview/ExpandLayout;

    const v5, 0x7f0808cd

    invoke-virtual {v3, v5}, Lcom/join/mgps/customview/ExpandLayout;->setExpandMoreIcon(I)V

    .line 479
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$h2;->d:Lcom/join/mgps/customview/ExpandLayout;

    const-string v5, "#FF8B0F"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/join/mgps/customview/ExpandLayout;->setExpandTextColor(I)V

    .line 480
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$h2;->d:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v3, v11}, Lcom/join/mgps/customview/ExpandLayout;->setExpandStyle(I)V

    .line 481
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$h2;->d:Lcom/join/mgps/customview/ExpandLayout;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/join/mgps/customview/ExpandLayout;->setAlwaysShowMore(Z)V

    .line 482
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$h2;->d:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v3, v15}, Lcom/join/mgps/customview/ExpandLayout;->setExpandStyle(I)V

    goto :goto_23

    :cond_3f
    const/4 v5, 0x1

    .line 483
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$h2;->d:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v3, v5}, Lcom/join/mgps/customview/ExpandLayout;->setExpandable(Z)V

    .line 484
    :goto_23
    iget-object v2, v2, Lcom/join/mgps/adapter/x1$h2;->d:Lcom/join/mgps/customview/ExpandLayout;

    new-instance v3, Lcom/join/mgps/adapter/x1$n;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/x1$n;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/adapter/x1$n1;)V

    invoke-virtual {v2, v4, v3}, Lcom/join/mgps/customview/ExpandLayout;->setContent(Ljava/lang/String;Lcom/join/mgps/customview/ExpandLayout$b;)V

    goto/16 :goto_35

    .line 485
    :pswitch_2f
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$m2;

    .line 486
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 487
    iget-object v2, v2, Lcom/join/mgps/adapter/x1$m2;->d:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35

    .line 488
    :pswitch_30
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$l2;

    .line 489
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 490
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_prompt()Ljava/util/List;

    move-result-object v3

    .line 491
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$l2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 492
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x24

    .line 493
    invoke-virtual {v5, v6, v11, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v6, 0x13

    .line 494
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 495
    iget-object v6, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0809c8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 496
    iget-object v8, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0805e8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 497
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v12

    invoke-virtual {v6, v11, v11, v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 498
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v12

    invoke-virtual {v8, v11, v11, v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v3, :cond_43

    .line 499
    iget-object v10, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->t2(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_43

    const/4 v10, 0x0

    .line 500
    :goto_24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_43

    .line 501
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/GamePromptBean;

    if-eqz v12, :cond_42

    .line 502
    invoke-virtual {v12}, Lcom/join/mgps/dto/GamePromptBean;->getId()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_40

    goto :goto_26

    .line 503
    :cond_40
    new-instance v13, Landroid/widget/TextView;

    iget-object v15, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-direct {v13, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 504
    invoke-virtual {v12}, Lcom/join/mgps/dto/GamePromptBean;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    invoke-virtual {v12}, Lcom/join/mgps/dto/GamePromptBean;->getId()I

    move-result v12

    if-ne v12, v14, :cond_41

    const/4 v12, 0x0

    .line 506
    invoke-virtual {v13, v6, v12, v12, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_25

    :cond_41
    const/4 v12, 0x0

    .line 507
    invoke-virtual {v13, v8, v12, v12, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_25
    const/16 v12, 0xa

    .line 508
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 509
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v12, 0x41400000    # 12.0f

    .line 510
    invoke-virtual {v13, v14, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const v12, -0x757576

    .line 511
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    iget-object v12, v2, Lcom/join/mgps/adapter/x1$l2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_42
    :goto_26
    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    .line 513
    :cond_43
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n1;->f:Ljava/lang/Object;

    const v5, 0x7f0d08a7

    if-eqz v3, :cond_44

    instance-of v6, v3, Ljava/lang/Boolean;

    if-eqz v6, :cond_44

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 514
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 515
    new-instance v6, Lcom/join/mgps/adapter/x1$j;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/x1$j;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 517
    iget-object v8, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f07133d

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v8, v11, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 518
    iget-object v8, v2, Lcom/join/mgps/adapter/x1$l2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    :cond_44
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n1;->g:Ljava/lang/Object;

    if-eqz v3, :cond_46

    .line 520
    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_45

    .line 521
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_27

    :cond_45
    const/4 v3, 0x0

    :goto_27
    if-lez v3, :cond_46

    .line 522
    iget-object v6, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v6, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f0a0a42

    .line 523
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v10, 0x7f0a1a3a

    .line 524
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 525
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u91d1\u624b\u6307("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    new-instance v3, Lcom/join/mgps/adapter/x1$l;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/x1$l;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/adapter/x1$n1;)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 529
    iget-object v7, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07133d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v7, v11, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 530
    iget-object v7, v2, Lcom/join/mgps/adapter/x1$l2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    :cond_46
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->h:Ljava/lang/Object;

    if-eqz v0, :cond_47

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_47

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 532
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0a42

    .line 533
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f0a1a3a

    .line 534
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f08089a

    .line 535
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v3, "\u793e\u533a\u8ba8\u8bba"

    .line 536
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    new-instance v3, Lcom/join/mgps/adapter/x1$m;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/x1$m;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 539
    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07133d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4, v11, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 540
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$l2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    :cond_47
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$l2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_48

    .line 542
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$l2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 543
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0713ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 544
    iget-object v2, v2, Lcom/join/mgps/adapter/x1$l2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_35

    .line 545
    :cond_48
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$l2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 546
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071225    # 1.7954E38f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 547
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$l2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    .line 548
    :pswitch_31
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$w2;

    .line 549
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 550
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBt_game_switch()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_49

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 551
    new-instance v3, Lcom/join/mgps/dto/ImageInfo;

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/join/mgps/dto/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_49
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4a

    const/4 v4, 0x0

    .line 553
    :goto_28
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4a

    .line 554
    new-instance v5, Lcom/join/mgps/dto/ImageInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/join/mgps/dto/ImageInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 555
    :cond_4a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4b

    .line 556
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$w2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_35

    .line 557
    :cond_4b
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$w2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_position()I

    move-result v3

    .line 559
    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGif_slide_pic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 560
    new-instance v4, Lcom/join/mgps/dto/ImageInfo;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGif_slide_pic()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/join/mgps/dto/ImageInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v11, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 561
    :cond_4c
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$w2;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v5, Lcom/join/mgps/adapter/x1$g;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/x1$g;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->setOnScrollListener(Lit/sephiroth/android/library/widget/AbsHListView$i;)V

    .line 562
    new-instance v4, Lcom/join/mgps/adapter/j1;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    iget-object v6, v1, Lcom/join/mgps/adapter/x1;->r:Lcom/join/android/app/component/video/c;

    invoke-direct {v4, v5, v3, v2, v6}, Lcom/join/mgps/adapter/j1;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/join/android/app/component/video/c;)V

    .line 563
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$w2;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 564
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$w2;->d:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/x1$h;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/x1$h;-><init>(Lcom/join/mgps/adapter/x1;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    goto/16 :goto_35

    .line 565
    :pswitch_32
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$t2;

    .line 566
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$t2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 567
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 568
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4d
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TipBean;

    .line 569
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "7"

    if-eq v4, v5, :cond_4e

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "23"

    if-ne v4, v5, :cond_4f

    :cond_4e
    const-string v4, "\u5b89\u5353"

    .line 570
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/TipBean;->setName(Ljava/lang/String;)V

    .line 571
    :cond_4f
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4d

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 572
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "44"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "45"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "47"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "48"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "25"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "154"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    goto/16 :goto_29

    .line 573
    :cond_50
    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d032d

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a175d

    .line 574
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 575
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    new-instance v5, Lcom/join/mgps/adapter/x1$d;

    invoke-direct {v5, v1, v3}, Lcom/join/mgps/adapter/x1$d;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/TipBean;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$t2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_29

    .line 578
    :cond_51
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCustom_tag_info()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 579
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCustom_tag_info()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TipBean;

    .line 580
    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d032d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 581
    iget-object v5, v0, Lcom/join/mgps/adapter/x1$t2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v5, 0x7f0a175d

    .line 582
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 583
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    new-instance v5, Lcom/join/mgps/adapter/x1$e;

    invoke-direct {v5, v1, v3}, Lcom/join/mgps/adapter/x1$e;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/TipBean;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2a

    .line 585
    :cond_52
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d032b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 586
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$t2;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 587
    new-instance v0, Lcom/join/mgps/adapter/x1$f;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/x1$f;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_35

    .line 588
    :pswitch_33
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/x1$r2;

    .line 589
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_53

    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_53

    .line 590
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/join/mgps/adapter/x1$r2;->d:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->A(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    goto :goto_2b

    .line 591
    :cond_53
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$r2;->f:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 592
    :goto_2b
    iget-object v2, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_54

    .line 593
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$r2;->e:Landroid/widget/Button;

    const-string v3, "\u5df2\u9884\u7ea6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$r2;->e:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2c

    .line 595
    :cond_54
    iget-object v2, v0, Lcom/join/mgps/adapter/x1$r2;->e:Landroid/widget/Button;

    const-string v3, "\u9884\u7ea6"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    :goto_2c
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$r2;->e:Landroid/widget/Button;

    new-instance v2, Lcom/join/mgps/adapter/x1$c;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/x1$c;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_35

    .line 597
    :pswitch_34
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$k2;

    .line 598
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIco_remote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 599
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->e:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->f:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->l:Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/join/mgps/adapter/x1;->u:Landroid/view/View;

    .line 602
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_57

    .line 603
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0.00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 604
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2d

    .line 606
    :cond_55
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 607
    :goto_2d
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_56

    .line 608
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->h:Landroid/widget/TextView;

    const-string v3, "\u5df2\u67090\u4eba\u9884\u7ea6"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2e

    .line 609
    :cond_56
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u6709"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u4eba\u9884\u7ea6"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 610
    :cond_57
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->h:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_count()I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    :try_start_a
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_58

    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 614
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->h:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_2e

    :catch_a
    move-exception v0

    .line 615
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 616
    :cond_58
    :goto_2e
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 617
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->h:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_count()I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120105

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_59
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object v0

    .line 620
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    const-string v3, "0.0"

    .line 621
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    const-string v3, "0"

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_2f

    .line 622
    :cond_5a
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$k2;->a(Lcom/join/mgps/adapter/x1$k2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$k2;->i:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getTotal_stars()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    goto :goto_30

    .line 624
    :cond_5b
    :goto_2f
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$k2;->a(Lcom/join/mgps/adapter/x1$k2;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u6682\u672a\u51fa\u5206"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$k2;->a(Lcom/join/mgps/adapter/x1$k2;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 626
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$k2;->a(Lcom/join/mgps/adapter/x1$k2;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "#8a8a8a"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->i:Lcom/join/mgps/customview/MStarBar;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 628
    :goto_30
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->i:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v11}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 629
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->i:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 630
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$k2;->b(Lcom/join/mgps/adapter/x1$k2;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    .line 631
    :cond_5c
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$k2;->b(Lcom/join/mgps/adapter/x1$k2;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 632
    :goto_31
    invoke-static {v2}, Lcom/join/mgps/adapter/x1$k2;->b(Lcom/join/mgps/adapter/x1$k2;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v3, Lcom/join/mgps/adapter/x1$i1;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/x1$i1;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 634
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_32

    .line 635
    :cond_5d
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 636
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->k:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/x1$a;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/x1$a;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    :goto_32
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$k2;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/x1$b;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/x1$b;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_35

    .line 638
    :pswitch_35
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/x1$u2;

    .line 639
    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/x1$n1;

    .line 640
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$u2;->i:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$u2;->e:Landroid/widget/TextView;

    const-string v5, "\u66f4\u591a"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$u2;->e:Landroid/widget/TextView;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$u2;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f071395

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v11, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 644
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$u2;->i:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 645
    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 646
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$u2;->j:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_72

    .line 648
    iget-object v5, v2, Lcom/join/mgps/adapter/x1$u2;->d:Landroid/widget/TextView;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 651
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->h:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_5e
    const-string v3, "\u7f16\u8f91\u63a8\u8350"

    .line 652
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 653
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->h:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->d:Landroid/widget/TextView;

    const-string v4, "#262626"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5f
    const-string v3, "\u51fa\u62db\u8868"

    .line 655
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    const-string v3, "\u9009\u5173"

    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 656
    :cond_60
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 657
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$u2;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0711b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_61
    const-string v3, "\u91d1\u624b\u6307"

    .line 658
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 659
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 661
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->e:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5168\u90e8("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getGolden_finger()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->g:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->g:Landroid/view/View;

    const-string v4, "#FFEFEFEF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 664
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/x1$k;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/x1$k;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_62
    const-string v3, "\u5f00\u5408\u670d"

    .line 665
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 666
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_server_state()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v12, :cond_63

    .line 667
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/u1;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/u1;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_63
    const-string v3, "\u6d3b\u52a8\u516c\u544a"

    .line 669
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 670
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isHas_more_activities()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 671
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/v1;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/v1;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_64
    const-string v3, "\u4e91\u5b58\u6863"

    .line 673
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 674
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->e:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5168\u90e8("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getCloud_archive_count()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->g:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->g:Landroid/view/View;

    const-string v4, "#FFEFEFEF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 678
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/x1$v;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/x1$v;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_65
    const-string v3, "\u798f\u5229\u793c\u5305"

    .line 679
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 680
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->h:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_66
    const-string v3, "\u798f\u5229\u793c\u5305"

    .line 681
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 682
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/x1$g0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/x1$g0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_67
    const-string v3, "\u540c\u5382\u5546\u63a8\u8350"

    .line 684
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 685
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_68

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v12, :cond_68

    .line 686
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/x1$r0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/x1$r0;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_68
    const-string v3, "\u540c\u5382\u5546\u63a8\u8350"

    .line 688
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 689
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->g:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->h:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_69
    const-string v3, "\u4e0b\u4e86\u8fd8\u4f1a\u4e0b"

    .line 691
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 692
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->g:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->h:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_6a
    const-string v3, "\u6e38\u620f\u5355"

    .line 694
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 695
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/x1$c1;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/x1$c1;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6b
    const-string v3, "\u652f\u6301\u624b\u67c4"

    .line 697
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 698
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->i:Landroid/widget/ImageView;

    const v4, 0x7f080d5e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 701
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->i:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 702
    iget-object v4, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07131b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 703
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->e:Landroid/widget/TextView;

    const-string v4, "\u70b9\u51fb\u8d2d\u4e70"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_handle_entrance()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v3

    .line 705
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    .line 706
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/x1$f1;

    invoke-direct {v5, v1, v3}, Lcom/join/mgps/adapter/x1$f1;-><init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/AppBeanMain;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6c
    const-string v3, "\u793e\u533a\u8ba8\u8bba"

    .line 707
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 708
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/x1$g1;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/x1$g1;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6d
    const-string v3, "\u540c\u7c7b\u6e38\u620f"

    .line 710
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 711
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->h:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->g:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33

    .line 713
    :cond_6e
    iget-object v3, v2, Lcom/join/mgps/adapter/x1$u2;->g:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_33
    const-string v3, "\u4e13\u5c5e\u798f\u5229"

    .line 714
    iget-object v4, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 715
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u2;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u2;->j:Landroid/widget/ImageView;

    const v3, 0x7f080364

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_34

    :cond_6f
    const-string v3, "\u5145\u503c\u8fd4\u5229"

    .line 717
    iget-object v0, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 718
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u2;->j:Landroid/widget/ImageView;

    const v3, 0x7f080362

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 719
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u2;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    iget-object v0, v1, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_exclusive_benefits_qq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 721
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u2;->e:Landroid/widget/TextView;

    const-string v3, "\u8054\u7cfb\u5ba2\u670d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u2;->e:Landroid/widget/TextView;

    const-string v3, "#f47500"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 723
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u2;->e:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v11, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 724
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 725
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u2;->f:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/x1$h1;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/x1$h1;-><init>(Lcom/join/mgps/adapter/x1;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_34

    .line 726
    :cond_70
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u2;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 727
    :cond_71
    :goto_34
    iget-object v0, v2, Lcom/join/mgps/adapter/x1$u2;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_72
    :goto_35
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
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

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
    const v1, 0x7f0d03eb

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lcom/join/mgps/adapter/x1$g3;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$g3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d03e9

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance p2, Lcom/join/mgps/adapter/x1$y2;

    .line 46
    .line 47
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$y2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d041d

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p2, Lcom/join/mgps/adapter/x1$x2;

    .line 68
    .line 69
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$x2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0424

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance p2, Lcom/join/mgps/adapter/x1$c3;

    .line 90
    .line 91
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$c3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0423

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance p2, Lcom/join/mgps/adapter/x1$b3;

    .line 112
    .line 113
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$b3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0419

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance p2, Lcom/join/mgps/adapter/x1$s1;

    .line 134
    .line 135
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$s1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0418

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance p2, Lcom/join/mgps/adapter/x1$k1;

    .line 156
    .line 157
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$k1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0428

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance p2, Lcom/join/mgps/adapter/x1$j1;

    .line 178
    .line 179
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$j1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0427

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    new-instance p2, Lcom/join/mgps/adapter/x1$j3;

    .line 200
    .line 201
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$j3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0318

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    new-instance p2, Lcom/join/mgps/adapter/x1$o1;

    .line 222
    .line 223
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$o1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0312

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    new-instance p2, Lcom/join/mgps/adapter/x1$x1;

    .line 244
    .line 245
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$x1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0341

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    new-instance p2, Lcom/join/mgps/adapter/x1$e3;

    .line 266
    .line 267
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$e3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0342

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    new-instance p2, Lcom/join/mgps/adapter/x1$i3;

    .line 288
    .line 289
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$i3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0340

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    new-instance p2, Lcom/join/mgps/adapter/x1$w1;

    .line 310
    .line 311
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$w1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d01a3

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    new-instance p2, Lcom/join/mgps/adapter/x1$z2;

    .line 332
    .line 333
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$z2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0333

    .line 347
    .line 348
    .line 349
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    new-instance p2, Lcom/join/mgps/adapter/x1$n2;

    .line 354
    .line 355
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$n2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d019e

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    new-instance p2, Lcom/join/mgps/adapter/x1$t1;

    .line 376
    .line 377
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$t1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d01aa

    .line 391
    .line 392
    .line 393
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    new-instance p2, Lcom/join/mgps/adapter/x1$f3;

    .line 398
    .line 399
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$f3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d019f

    .line 413
    .line 414
    .line 415
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    new-instance p2, Lcom/join/mgps/adapter/x1$u1;

    .line 420
    .line 421
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$u1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d01a4

    .line 435
    .line 436
    .line 437
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    new-instance p2, Lcom/join/mgps/adapter/x1$a3;

    .line 442
    .line 443
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$a3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d01a1

    .line 457
    .line 458
    .line 459
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    new-instance p2, Lcom/join/mgps/adapter/x1$y1;

    .line 464
    .line 465
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$y1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d033a

    .line 479
    .line 480
    .line 481
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    new-instance p2, Lcom/join/mgps/adapter/x1$w2;

    .line 486
    .line 487
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$w2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0344

    .line 501
    .line 502
    .line 503
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    new-instance p2, Lcom/join/mgps/adapter/x1$v1;

    .line 508
    .line 509
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$v1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0352

    .line 523
    .line 524
    .line 525
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    new-instance p2, Lcom/join/mgps/adapter/x1$d3;

    .line 530
    .line 531
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$d3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d016c

    .line 545
    .line 546
    .line 547
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    new-instance p2, Lcom/join/mgps/adapter/x1$m1;

    .line 552
    .line 553
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$m1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0353

    .line 567
    .line 568
    .line 569
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    new-instance p2, Lcom/join/mgps/adapter/x1$h3;

    .line 574
    .line 575
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$h3;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d01a5

    .line 589
    .line 590
    .line 591
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    new-instance p2, Lcom/join/mgps/adapter/x1$p2;

    .line 596
    .line 597
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$p2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0329

    .line 611
    .line 612
    .line 613
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    new-instance p2, Lcom/join/mgps/adapter/x1$s2;

    .line 618
    .line 619
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$s2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0313

    .line 633
    .line 634
    .line 635
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 636
    .line 637
    .line 638
    move-result-object p1

    .line 639
    new-instance p2, Lcom/join/mgps/adapter/x1$g2;

    .line 640
    .line 641
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$g2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0311

    .line 655
    .line 656
    .line 657
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 658
    .line 659
    .line 660
    move-result-object p1

    .line 661
    new-instance p2, Lcom/join/mgps/adapter/x1$f2;

    .line 662
    .line 663
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$f2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0334

    .line 677
    .line 678
    .line 679
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 680
    .line 681
    .line 682
    move-result-object p1

    .line 683
    new-instance p2, Lcom/join/mgps/adapter/x1$v2;

    .line 684
    .line 685
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$v2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d030b

    .line 699
    .line 700
    .line 701
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 702
    .line 703
    .line 704
    move-result-object p1

    .line 705
    new-instance p2, Lcom/join/mgps/adapter/x1$a2;

    .line 706
    .line 707
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$a2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

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
    const v1, 0x7f0d0316

    .line 721
    .line 722
    .line 723
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 724
    .line 725
    .line 726
    move-result-object p1

    .line 727
    new-instance p2, Lcom/join/mgps/adapter/x1$q2;

    .line 728
    .line 729
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$q2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 730
    .line 731
    .line 732
    goto/16 :goto_0

    .line 733
    .line 734
    :pswitch_21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 735
    .line 736
    .line 737
    move-result-object p2

    .line 738
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 739
    .line 740
    .line 741
    move-result-object p2

    .line 742
    const v1, 0x7f0d030e

    .line 743
    .line 744
    .line 745
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 746
    .line 747
    .line 748
    move-result-object p1

    .line 749
    new-instance p2, Lcom/join/mgps/adapter/x1$c2;

    .line 750
    .line 751
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$c2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 752
    .line 753
    .line 754
    goto/16 :goto_0

    .line 755
    .line 756
    :pswitch_22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 757
    .line 758
    .line 759
    move-result-object p2

    .line 760
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 761
    .line 762
    .line 763
    move-result-object p2

    .line 764
    const v1, 0x7f0d030d

    .line 765
    .line 766
    .line 767
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 768
    .line 769
    .line 770
    move-result-object p1

    .line 771
    new-instance p2, Lcom/join/mgps/adapter/x1$e2;

    .line 772
    .line 773
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$e2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 774
    .line 775
    .line 776
    goto/16 :goto_0

    .line 777
    .line 778
    :pswitch_23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 779
    .line 780
    .line 781
    move-result-object p2

    .line 782
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 783
    .line 784
    .line 785
    move-result-object p2

    .line 786
    const v1, 0x7f0d030c

    .line 787
    .line 788
    .line 789
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 790
    .line 791
    .line 792
    move-result-object p1

    .line 793
    new-instance p2, Lcom/join/mgps/adapter/x1$b2;

    .line 794
    .line 795
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$b2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 796
    .line 797
    .line 798
    goto/16 :goto_0

    .line 799
    .line 800
    :pswitch_24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 801
    .line 802
    .line 803
    move-result-object p2

    .line 804
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 805
    .line 806
    .line 807
    move-result-object p2

    .line 808
    const v1, 0x7f0d0327

    .line 809
    .line 810
    .line 811
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 812
    .line 813
    .line 814
    move-result-object p1

    .line 815
    new-instance p2, Lcom/join/mgps/adapter/x1$d2;

    .line 816
    .line 817
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$d2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 818
    .line 819
    .line 820
    goto/16 :goto_0

    .line 821
    .line 822
    :pswitch_25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 823
    .line 824
    .line 825
    move-result-object p2

    .line 826
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 827
    .line 828
    .line 829
    move-result-object p2

    .line 830
    const v1, 0x7f0d0314

    .line 831
    .line 832
    .line 833
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 834
    .line 835
    .line 836
    move-result-object p1

    .line 837
    new-instance p2, Lcom/join/mgps/adapter/x1$i2;

    .line 838
    .line 839
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$i2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 840
    .line 841
    .line 842
    goto/16 :goto_0

    .line 843
    .line 844
    :pswitch_26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 845
    .line 846
    .line 847
    move-result-object p2

    .line 848
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 849
    .line 850
    .line 851
    move-result-object p2

    .line 852
    const v1, 0x7f0d0332

    .line 853
    .line 854
    .line 855
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 856
    .line 857
    .line 858
    move-result-object p1

    .line 859
    new-instance p2, Lcom/join/mgps/adapter/x1$o2;

    .line 860
    .line 861
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$o2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 862
    .line 863
    .line 864
    goto/16 :goto_0

    .line 865
    .line 866
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 867
    .line 868
    .line 869
    move-result-object p2

    .line 870
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 871
    .line 872
    .line 873
    move-result-object p2

    .line 874
    const v1, 0x7f0d030a

    .line 875
    .line 876
    .line 877
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 878
    .line 879
    .line 880
    move-result-object p1

    .line 881
    new-instance p2, Lcom/join/mgps/adapter/x1$z1;

    .line 882
    .line 883
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$z1;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 884
    .line 885
    .line 886
    goto/16 :goto_0

    .line 887
    .line 888
    :pswitch_28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 889
    .line 890
    .line 891
    move-result-object p2

    .line 892
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 893
    .line 894
    .line 895
    move-result-object p2

    .line 896
    const v1, 0x7f0d0317

    .line 897
    .line 898
    .line 899
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 900
    .line 901
    .line 902
    move-result-object p1

    .line 903
    new-instance p2, Lcom/join/mgps/adapter/x1$j2;

    .line 904
    .line 905
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$j2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 906
    .line 907
    .line 908
    goto/16 :goto_0

    .line 909
    .line 910
    :pswitch_29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 911
    .line 912
    .line 913
    move-result-object p2

    .line 914
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 915
    .line 916
    .line 917
    move-result-object p2

    .line 918
    const v1, 0x7f0d0310

    .line 919
    .line 920
    .line 921
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 922
    .line 923
    .line 924
    move-result-object p1

    .line 925
    new-instance p2, Lcom/join/mgps/adapter/x1$h2;

    .line 926
    .line 927
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$h2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 928
    .line 929
    .line 930
    goto/16 :goto_0

    .line 931
    .line 932
    :pswitch_2a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 933
    .line 934
    .line 935
    move-result-object p2

    .line 936
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 937
    .line 938
    .line 939
    move-result-object p2

    .line 940
    const v1, 0x7f0d0326

    .line 941
    .line 942
    .line 943
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 944
    .line 945
    .line 946
    move-result-object p1

    .line 947
    new-instance p2, Lcom/join/mgps/adapter/x1$m2;

    .line 948
    .line 949
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$m2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 950
    .line 951
    .line 952
    goto/16 :goto_0

    .line 953
    .line 954
    :pswitch_2b
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 955
    .line 956
    .line 957
    move-result-object p2

    .line 958
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 959
    .line 960
    .line 961
    move-result-object p2

    .line 962
    const v1, 0x7f0d0315

    .line 963
    .line 964
    .line 965
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 966
    .line 967
    .line 968
    move-result-object p1

    .line 969
    new-instance p2, Lcom/join/mgps/adapter/x1$l2;

    .line 970
    .line 971
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$l2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 972
    .line 973
    .line 974
    goto :goto_0

    .line 975
    :pswitch_2c
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 976
    .line 977
    .line 978
    move-result-object p2

    .line 979
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 980
    .line 981
    .line 982
    move-result-object p2

    .line 983
    const v1, 0x7f0d0338

    .line 984
    .line 985
    .line 986
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 987
    .line 988
    .line 989
    move-result-object p1

    .line 990
    new-instance p2, Lcom/join/mgps/adapter/x1$w2;

    .line 991
    .line 992
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$w2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 993
    .line 994
    .line 995
    goto :goto_0

    .line 996
    :pswitch_2d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 997
    .line 998
    .line 999
    move-result-object p2

    .line 1000
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 1001
    .line 1002
    .line 1003
    move-result-object p2

    .line 1004
    const v1, 0x7f0d032f

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1008
    .line 1009
    .line 1010
    move-result-object p1

    .line 1011
    new-instance p2, Lcom/join/mgps/adapter/x1$t2;

    .line 1012
    .line 1013
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$t2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 1014
    .line 1015
    .line 1016
    goto :goto_0

    .line 1017
    :pswitch_2e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1018
    .line 1019
    .line 1020
    move-result-object p2

    .line 1021
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 1022
    .line 1023
    .line 1024
    move-result-object p2

    .line 1025
    const v1, 0x7f0d0328

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1029
    .line 1030
    .line 1031
    move-result-object p1

    .line 1032
    new-instance p2, Lcom/join/mgps/adapter/x1$r2;

    .line 1033
    .line 1034
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$r2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 1035
    .line 1036
    .line 1037
    goto :goto_0

    .line 1038
    :pswitch_2f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1039
    .line 1040
    .line 1041
    move-result-object p2

    .line 1042
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 1043
    .line 1044
    .line 1045
    move-result-object p2

    .line 1046
    const v1, 0x7f0d0319

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1050
    .line 1051
    .line 1052
    move-result-object p1

    .line 1053
    new-instance p2, Lcom/join/mgps/adapter/x1$k2;

    .line 1054
    .line 1055
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$k2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 1056
    .line 1057
    .line 1058
    goto :goto_0

    .line 1059
    :pswitch_30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1060
    .line 1061
    .line 1062
    move-result-object p2

    .line 1063
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 1064
    .line 1065
    .line 1066
    move-result-object p2

    .line 1067
    const v1, 0x7f0d0331

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1071
    .line 1072
    .line 1073
    move-result-object p1

    .line 1074
    new-instance p2, Lcom/join/mgps/adapter/x1$u2;

    .line 1075
    .line 1076
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/x1$u2;-><init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V

    .line 1077
    .line 1078
    .line 1079
    :goto_0
    return-object p2

    .line 1080
    nop

    .line 1081
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method p(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/x1$n1;
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
    new-instance v0, Lcom/join/mgps/adapter/x1$n1;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/adapter/x1$r1;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/join/mgps/adapter/x1$r1;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    .line 6
    .line 7
    .line 8
    const/16 p1, 0xf

    .line 9
    .line 10
    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/adapter/x1$n1;-><init>(Lcom/join/mgps/adapter/x1;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->g:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget-object v4, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/x1;->e:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x1;->V(Landroid/content/Context;Ljava/lang/String;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x1;->V(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x1;->q()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x1;->q()V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void
.end method

.method public s()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->u:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Lcom/join/mgps/callbacks/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->q:Lcom/join/mgps/callbacks/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->v:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public w(Landroid/content/Context;)Lcom/danikula/videocache/i;
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

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/x1;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/x1$n1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x1;->s:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

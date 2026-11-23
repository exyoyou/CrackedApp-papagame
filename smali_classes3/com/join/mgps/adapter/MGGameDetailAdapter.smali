.class public Lcom/join/mgps/adapter/MGGameDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;,
        Lcom/join/mgps/adapter/MGGameDetailAdapter$u1;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private c:I

.field d:Ljava/lang/String;

.field private final e:Landroid/widget/RelativeLayout;

.field private f:Landroid/content/Context;

.field private g:Lcom/join/mgps/dto/DetailResultBeanV3;

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/os/Handler;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/widget/LinearLayout$LayoutParams;

.field private u:Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;

.field private v:Z

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field y:Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;

.field z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/DetailResultBeanV3;Landroid/os/Handler;Landroid/widget/RelativeLayout;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_context",
            "detailResultData",
            "handler",
            "layoutM",
            "dataSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/join/mgps/dto/DetailResultBeanV3;",
            "Landroid/os/Handler;",
            "Landroid/widget/RelativeLayout;",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->d:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->h:Z

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i:Ljava/util/List;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j:Z

    .line 26
    .line 27
    iput v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->k:I

    .line 28
    .line 29
    iput v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->l:I

    .line 30
    .line 31
    iput v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->m:I

    .line 32
    .line 33
    iput v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->n:I

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r:Ljava/util/List;

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->v:Z

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->y:Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    iput-wide v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->z:J

    .line 52
    .line 53
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 56
    .line 57
    iput-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->q:Landroid/os/Handler;

    .line 58
    .line 59
    iput-object p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    iput-object p5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const p3, 0x7f0805e6

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->o:Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const p3, 0x7f0805e8

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->p:Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->o:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    iget-object p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->o:Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 100
    .line 101
    .line 102
    move-result p4

    .line 103
    invoke-virtual {p1, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->p:Landroid/graphics/drawable/Drawable;

    .line 107
    .line 108
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->o:Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    iget-object p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->o:Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 117
    .line 118
    .line 119
    move-result p4

    .line 120
    invoke-virtual {p1, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBackground_color()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_position()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 134
    .line 135
    new-instance p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;

    .line 136
    .line 137
    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 138
    .line 139
    .line 140
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->u:Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;

    .line 141
    .line 142
    return-void
.end method

.method private A(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    .line 6
    .line 7
    iget-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;->a:Lcom/join/mgps/dto/DetialIntentBean;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;

    .line 14
    .line 15
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const v2, 0x7f0d06fd

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v2, 0x7f0a177f

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->b:Landroid/widget/TextView;

    .line 42
    .line 43
    const v2, 0x7f0a0fa1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/widget/LinearLayout;

    .line 51
    .line 52
    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->c:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    const v2, 0x7f0a0142

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {p0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    iget v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 65
    .line 66
    if-nez v2, :cond_0

    .line 67
    .line 68
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->b:Landroid/widget/TextView;

    .line 69
    .line 70
    const/4 v3, -0x1

    .line 71
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    const v2, 0x7f0a109a

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Landroid/widget/TextView;

    .line 82
    .line 83
    const v3, -0xa1a1a2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    const v2, 0x7f0a0e6e

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;

    .line 108
    .line 109
    move-object v4, v1

    .line 110
    move-object v1, p2

    .line 111
    move-object p2, v4

    .line 112
    :goto_0
    if-nez p3, :cond_2

    .line 113
    .line 114
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->c:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->c:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->b:Landroid/widget/TextView;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;->b:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$i1;->c:Landroid/widget/LinearLayout;

    .line 134
    .line 135
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;

    .line 136
    .line 137
    invoke-direct {p2, p0, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$t;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/DetialIntentBean;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    return-object v1
.end method

.method private B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
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
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0d0700

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v1, 0x7f0a098f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->a:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    const v1, 0x7f0a0991

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->b:Landroid/view/View;

    .line 41
    .line 42
    const v1, 0x7f0a103b

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/LinearLayout;

    .line 50
    .line 51
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->c:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    const v1, 0x7f0a1096

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/ImageView;

    .line 61
    .line 62
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->d:Landroid/widget/ImageView;

    .line 63
    .line 64
    const v1, 0x7f0a0142

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;

    .line 85
    .line 86
    move-object v6, v0

    .line 87
    move-object v0, p2

    .line 88
    move-object p2, v6

    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$p;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$p;->a:Ljava/util/List;

    .line 96
    .line 97
    const/16 v1, 0x8

    .line 98
    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-lez v2, :cond_4

    .line 106
    .line 107
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->a:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->b:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->d:Landroid/widget/ImageView;

    .line 119
    .line 120
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;

    .line 121
    .line 122
    invoke-direct {v4, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    iget v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 129
    .line 130
    if-nez v2, :cond_1

    .line 131
    .line 132
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->b:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    :cond_1
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->a:Landroid/widget/LinearLayout;

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 140
    .line 141
    .line 142
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    .line 144
    const/4 v2, -0x2

    .line 145
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .line 147
    .line 148
    const/16 v2, 0x24

    .line 149
    .line 150
    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 151
    .line 152
    .line 153
    const/16 v2, 0x13

    .line 154
    .line 155
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 156
    .line 157
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-ge v3, v2, :cond_5

    .line 162
    .line 163
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Lcom/join/mgps/dto/GamePromptBean;

    .line 168
    .line 169
    if-eqz v2, :cond_3

    .line 170
    .line 171
    new-instance v4, Landroid/widget/TextView;

    .line 172
    .line 173
    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 174
    .line 175
    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamePromptBean;->getText()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamePromptBean;->getId()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    const/4 v5, 0x1

    .line 194
    if-ne v2, v5, :cond_2

    .line 195
    .line 196
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->o:Landroid/graphics/drawable/Drawable;

    .line 197
    .line 198
    invoke-virtual {v4, v2, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->p:Landroid/graphics/drawable/Drawable;

    .line 203
    .line 204
    invoke-virtual {v4, v2, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 205
    .line 206
    .line 207
    :goto_2
    const/16 v2, 0xa

    .line 208
    .line 209
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 213
    .line 214
    .line 215
    const/high16 v2, 0x41200000    # 10.0f

    .line 216
    .line 217
    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 218
    .line 219
    .line 220
    const v2, -0x7f7f80

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    .line 225
    .line 226
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->a:Landroid/widget/LinearLayout;

    .line 227
    .line 228
    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .line 230
    .line 231
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_4
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->a:Landroid/widget/LinearLayout;

    .line 235
    .line 236
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->b:Landroid/view/View;

    .line 240
    .line 241
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    :cond_5
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->c:Landroid/widget/LinearLayout;

    .line 245
    .line 246
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e:Landroid/widget/RelativeLayout;

    .line 250
    .line 251
    if-eqz p1, :cond_6

    .line 252
    .line 253
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$m1;->c:Landroid/widget/LinearLayout;

    .line 254
    .line 255
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 256
    .line 257
    .line 258
    :cond_6
    return-object v0
.end method

.method private C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    const v0, 0x7f0d01a9

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    const v0, 0x7f0a0996

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;->a:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;

    .line 48
    .line 49
    move-object v2, p3

    .line 50
    move-object p3, p2

    .line 51
    move-object p2, v2

    .line 52
    :goto_0
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;->a:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-string v0, "1"

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;->a:Landroid/widget/TextView;

    .line 71
    .line 72
    const/4 p2, 0x0

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n1;->a:Landroid/widget/TextView;

    .line 78
    .line 79
    const/4 p2, -0x1

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-object p3
.end method

.method private D(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    const/16 p3, 0x8

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0d0701

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0a1332

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/join/mgps/customview/MyGridView;

    .line 32
    .line 33
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->b:Lcom/join/mgps/customview/MyGridView;

    .line 34
    .line 35
    const v1, 0x7f0a0dfe

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->a:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 50
    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    const v1, 0x7f0a0e6e

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;

    .line 72
    .line 73
    move-object v3, v0

    .line 74
    move-object v0, p2

    .line 75
    move-object p2, v3

    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;

    .line 81
    .line 82
    iget v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;->a:I

    .line 83
    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->a:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const/4 v2, 0x1

    .line 93
    if-ne v1, v2, :cond_3

    .line 94
    .line 95
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->a:Landroid/widget/LinearLayout;

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    new-instance p3, Lcom/join/mgps/adapter/o1;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r:Ljava/util/List;

    .line 106
    .line 107
    invoke-direct {p3, v1, v2}, Lcom/join/mgps/adapter/o1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 108
    .line 109
    .line 110
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->b:Lcom/join/mgps/customview/MyGridView;

    .line 111
    .line 112
    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    .line 114
    .line 115
    iget-object p2, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;->b:Ljava/util/List;

    .line 116
    .line 117
    if-eqz p2, :cond_4

    .line 118
    .line 119
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-lez p2, :cond_4

    .line 124
    .line 125
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r:Ljava/util/List;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;->b:Ljava/util/List;

    .line 133
    .line 134
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o1;->a:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    :cond_4
    :goto_1
    return-object v0
.end method

.method private E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

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
    const v0, 0x7f0a1213

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
    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->g:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    const v0, 0x7f0a03ee

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/LinearLayout;

    .line 48
    .line 49
    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->a:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    const v0, 0x7f0a03f0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->b:Landroid/view/View;

    .line 59
    .line 60
    const v0, 0x7f0a03ef

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
    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->c:Landroid/widget/TextView;

    .line 70
    .line 71
    const v0, 0x7f0a03f1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->d:Landroid/widget/TextView;

    .line 81
    .line 82
    const v0, 0x7f0a0e61

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->e:Landroid/view/View;

    .line 90
    .line 91
    const v0, 0x7f0a0215

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->f:Landroid/view/View;

    .line 99
    .line 100
    iget-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->g:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;

    .line 113
    .line 114
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 115
    .line 116
    if-nez v0, :cond_1

    .line 117
    .line 118
    iget-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->b:Landroid/view/View;

    .line 119
    .line 120
    const v1, -0xcacacb

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->e:Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    .line 130
    .line 131
    :cond_1
    if-nez p1, :cond_2

    .line 132
    .line 133
    return-object p2

    .line 134
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->b:Lcom/join/mgps/dto/InformationCommentBean;

    .line 135
    .line 136
    if-nez v0, :cond_3

    .line 137
    .line 138
    return-object p2

    .line 139
    :cond_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->d:Z

    .line 140
    .line 141
    const/4 v1, 0x0

    .line 142
    const/16 v2, 0x8

    .line 143
    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    iget-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->b:Landroid/view/View;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->b:Landroid/view/View;

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    :goto_1
    iget-boolean p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->g:Z

    .line 158
    .line 159
    if-nez p1, :cond_5

    .line 160
    .line 161
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->e:Landroid/view/View;

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->f:Landroid/view/View;

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->e:Landroid/view/View;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->f:Landroid/view/View;

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$x0;->a:Landroid/widget/LinearLayout;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    :goto_3
    return-object p2
.end method

.method private F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;

    .line 6
    .line 7
    iget-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;->a:Ljava/lang/String;

    .line 8
    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const v0, 0x7f0d02f8

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a1032

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->a:Landroid/widget/TextView;

    .line 40
    .line 41
    const v1, 0x7f0a103f

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    .line 51
    .line 52
    const v1, 0x7f0a046d

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->c:Landroid/widget/TextView;

    .line 62
    .line 63
    const v1, 0x7f0a0472

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->d:Landroid/widget/TextView;

    .line 73
    .line 74
    const v1, 0x7f0a0142

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 85
    .line 86
    if-nez v1, :cond_0

    .line 87
    .line 88
    const v1, 0x7f0a0e61

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const/16 v2, 0x8

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;

    .line 109
    .line 110
    :goto_0
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 111
    .line 112
    const-string v2, "#3ca4fd"

    .line 113
    .line 114
    if-nez v1, :cond_2

    .line 115
    .line 116
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    .line 117
    .line 118
    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 119
    .line 120
    const/4 v4, 0x2

    .line 121
    invoke-static {v3, v2, v4}, Lcom/join/mgps/Util/z2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    .line 129
    .line 130
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    .line 139
    .line 140
    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 141
    .line 142
    invoke-static {v3, v2}, Lcom/join/mgps/Util/z2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    .line 148
    .line 149
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;->b:I

    .line 156
    .line 157
    const/4 v2, 0x1

    .line 158
    if-ne v1, v2, :cond_3

    .line 159
    .line 160
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    .line 161
    .line 162
    const-string v2, "\u5f00\u670d"

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->b:Landroid/widget/TextView;

    .line 169
    .line 170
    const-string v2, "\u5408\u670d"

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->a:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->c:Landroid/widget/TextView;

    .line 181
    .line 182
    iget-wide v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;->c:J

    .line 183
    .line 184
    invoke-static {v1, v2}, Lcom/join/mgps/Util/e0;->q(J)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-wide v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;->c:J

    .line 192
    .line 193
    invoke-static {v1, v2}, Lcom/join/mgps/Util/e0;->l(J)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result p3

    .line 201
    const-string v1, "\u4e0a\u5348"

    .line 202
    .line 203
    if-eqz p3, :cond_5

    .line 204
    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    const-string p3, "\u70b9"

    .line 210
    .line 211
    const/16 v2, 0xc

    .line 212
    .line 213
    if-le p1, v2, :cond_4

    .line 214
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v3, "\u4e0b\u5348"

    .line 221
    .line 222
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    sub-int/2addr p1, v2

    .line 226
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    goto :goto_3

    .line 237
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    :cond_5
    :goto_3
    iget-object p1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$p1;->d:Landroid/widget/TextView;

    .line 256
    .line 257
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    return-object p2
.end method

.method private G(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    const-string p3, ""

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;->a:Lcom/join/mgps/dto/GameDetialStrategyItem;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const v0, 0x7f0d02f7

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;

    .line 28
    .line 29
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    const v1, 0x7f0a12c1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->c:Landroid/widget/TextView;

    .line 42
    .line 43
    const v1, 0x7f0a12df

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->d:Landroid/widget/TextView;

    .line 53
    .line 54
    const v1, 0x7f0a1b20

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object v2, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->e:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->e:Landroid/widget/TextView;

    .line 72
    .line 73
    const v1, 0x7f0a06a4

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    const v1, 0x7f0a1b7f

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 94
    .line 95
    if-nez v1, :cond_1

    .line 96
    .line 97
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->c:Landroid/widget/TextView;

    .line 98
    .line 99
    const v2, -0xa1a1a2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->d:Landroid/widget/TextView;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->e:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    const v1, 0x7f0a0e61

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const/16 v2, 0x8

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;

    .line 133
    .line 134
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->d:Landroid/widget/TextView;

    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getCommit()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->e:Landroid/widget/TextView;

    .line 159
    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getView()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->c:Landroid/widget/TextView;

    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getAdd_time()J

    .line 185
    .line 186
    .line 187
    move-result-wide v1

    .line 188
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/i;->b(J)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->b:Landroid/widget/RelativeLayout;

    .line 196
    .line 197
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->R(Landroid/widget/RelativeLayout;Lcom/join/mgps/dto/GameDetialStrategyItem;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getId()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a0(Landroid/view/View;I)V

    .line 205
    .line 206
    .line 207
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->b:Landroid/widget/RelativeLayout;

    .line 208
    .line 209
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a0(Landroid/view/View;I)V

    .line 210
    .line 211
    .line 212
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->b:Landroid/widget/RelativeLayout;

    .line 213
    .line 214
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a0(Landroid/view/View;I)V

    .line 215
    .line 216
    .line 217
    iget-object p3, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w0;->f:Landroid/widget/LinearLayout;

    .line 218
    .line 219
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :catch_0
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    :goto_1
    return-object p2
.end method

.method private H(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const p3, 0x7f0d027c

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;

    .line 24
    .line 25
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a07c6

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    const v0, 0x7f0a0e61

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;

    .line 56
    .line 57
    :goto_0
    if-nez p3, :cond_1

    .line 58
    .line 59
    return-object p2

    .line 60
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->m(Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;)V

    .line 61
    .line 62
    .line 63
    return-object p2
.end method

.method private I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
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
    const/16 p3, 0x8

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0d06fe

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0a0950

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    const v1, 0x7f0a0953

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    .line 45
    .line 46
    const v1, 0x7f0a12c1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    .line 56
    .line 57
    const v1, 0x7f0a103f

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 67
    .line 68
    const v1, 0x7f0a0e0a

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/widget/LinearLayout;

    .line 76
    .line 77
    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->a:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    const v2, 0x7f0a0952

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Landroid/widget/LinearLayout;

    .line 87
    .line 88
    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->e:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    const v2, 0x7f0a0e17

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Landroid/widget/LinearLayout;

    .line 98
    .line 99
    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->f:Landroid/widget/LinearLayout;

    .line 100
    .line 101
    const v2, 0x7f0a0e6e

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iput-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->g:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 118
    .line 119
    if-nez v1, :cond_0

    .line 120
    .line 121
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    .line 122
    .line 123
    const v2, -0x717172

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    .line 130
    .line 131
    const v2, -0xa1a1a2

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->g:Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;

    .line 151
    .line 152
    move-object v7, v0

    .line 153
    move-object v0, p2

    .line 154
    move-object p2, v7

    .line 155
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;

    .line 160
    .line 161
    iget-object v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;->a:Lcom/join/mgps/dto/GameDetialStrategyItem;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const/4 v3, 0x0

    .line 168
    if-eqz v2, :cond_6

    .line 169
    .line 170
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialBookTag;->getTitle()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialBookTag;->getTitle()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_5

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    if-eqz v2, :cond_4

    .line 202
    .line 203
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialBookTag;->getColor()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_2

    .line 212
    .line 213
    const-string v4, "#8dbbec"

    .line 214
    .line 215
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/GameDetialBookTag;->setColor(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_2
    iget v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 219
    .line 220
    if-nez v2, :cond_3

    .line 221
    .line 222
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 223
    .line 224
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDetialBookTag;->getColor()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetialBookTag;->getTitle()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    invoke-static {v4, v5, v6}, Lcom/join/mgps/Util/z2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    .line 252
    .line 253
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 254
    .line 255
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialBookTag;->getColor()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_3
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 272
    .line 273
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 274
    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetialBookTag;->getColor()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v6, ""

    .line 292
    .line 293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    invoke-static {v4, v5}, Lcom/join/mgps/Util/z2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    .line 306
    .line 307
    :cond_4
    :goto_1
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 308
    .line 309
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_5
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 314
    .line 315
    invoke-virtual {v2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    :cond_6
    :goto_2
    iget-boolean p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;->b:Z

    .line 319
    .line 320
    if-eqz p1, :cond_7

    .line 321
    .line 322
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    .line 323
    .line 324
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_7
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    .line 329
    .line 330
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    :goto_3
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    .line 334
    .line 335
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getAdd_time()J

    .line 336
    .line 337
    .line 338
    move-result-wide v2

    .line 339
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/i;->b(J)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p3

    .line 343
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .line 345
    .line 346
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    .line 347
    .line 348
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getSubject()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p3

    .line 352
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->a:Landroid/widget/LinearLayout;

    .line 356
    .line 357
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z;

    .line 358
    .line 359
    invoke-direct {p2, p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$z;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GameDetialStrategyItem;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    .line 364
    .line 365
    return-object v0
.end method

.method private K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d0704

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a00e6

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    const v0, 0x7f0a00ee

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->b:Landroid/widget/TextView;

    .line 43
    .line 44
    const v0, 0x7f0a1764

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/LinearLayout;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->c:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    const v0, 0x7f0a00e5

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    const v0, 0x7f0a00e2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->f:Landroid/widget/TextView;

    .line 76
    .line 77
    const v0, 0x7f0a00f7

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->e:Landroid/widget/TextView;

    .line 87
    .line 88
    const v0, 0x7f0a06f4

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 96
    .line 97
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 98
    .line 99
    const v0, 0x7f0a1778

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroid/widget/LinearLayout;

    .line 107
    .line 108
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    .line 109
    .line 110
    const v0, 0x7f0a177a

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/widget/LinearLayout;

    .line 118
    .line 119
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->g:Landroid/widget/LinearLayout;

    .line 120
    .line 121
    const v0, 0x7f0a1777

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroid/widget/Button;

    .line 129
    .line 130
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->h:Landroid/widget/Button;

    .line 131
    .line 132
    const v0, 0x7f0a06e4

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/widget/Button;

    .line 140
    .line 141
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    .line 142
    .line 143
    const v0, 0x7f0a1793

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroid/widget/LinearLayout;

    .line 151
    .line 152
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    const v0, 0x7f0a16a9

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroid/widget/TextView;

    .line 162
    .line 163
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->m:Landroid/widget/TextView;

    .line 164
    .line 165
    const v0, 0x7f0a148c

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 173
    .line 174
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->n:Landroid/widget/HorizontalScrollView;

    .line 175
    .line 176
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;

    .line 185
    .line 186
    move-object v11, p3

    .line 187
    move-object p3, p2

    .line 188
    move-object p2, v11

    .line 189
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;

    .line 194
    .line 195
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    .line 196
    .line 197
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$e0;

    .line 198
    .line 199
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$e0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->h:Landroid/widget/Button;

    .line 206
    .line 207
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f0;

    .line 208
    .line 209
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$f0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->l:I

    .line 216
    .line 217
    const/16 v1, 0x8

    .line 218
    .line 219
    const/4 v2, 0x1

    .line 220
    const/4 v3, -0x1

    .line 221
    const/4 v4, 0x0

    .line 222
    if-ne v0, v2, :cond_2

    .line 223
    .line 224
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->h:Ljava/util/List;

    .line 225
    .line 226
    if-eqz v0, :cond_1

    .line 227
    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-lez v0, :cond_1

    .line 233
    .line 234
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->h:Ljava/util/List;

    .line 235
    .line 236
    iget-object v5, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->g:Landroid/widget/LinearLayout;

    .line 237
    .line 238
    iget-object v6, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 239
    .line 240
    invoke-static {v0, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->z(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    .line 244
    .line 245
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    .line 249
    .line 250
    const v5, 0xffffff

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    .line 263
    .line 264
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 265
    .line 266
    .line 267
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    .line 268
    .line 269
    const v5, 0x7f080f8b

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 273
    .line 274
    .line 275
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    .line 276
    .line 277
    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 278
    .line 279
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    const v6, 0x7f06002b

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    .line 292
    .line 293
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 294
    .line 295
    const-string v5, ""

    .line 296
    .line 297
    const v6, 0x7f0804d0

    .line 298
    .line 299
    .line 300
    const v7, 0x7f0800fa

    .line 301
    .line 302
    .line 303
    if-nez v0, :cond_4

    .line 304
    .line 305
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 306
    .line 307
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->b:Landroid/widget/TextView;

    .line 311
    .line 312
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 316
    .line 317
    iget-object v8, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->i:Ljava/lang/String;

    .line 318
    .line 319
    invoke-static {v0, v7, v8}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->m:Landroid/widget/TextView;

    .line 323
    .line 324
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    .line 328
    .line 329
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 330
    .line 331
    .line 332
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    .line 333
    .line 334
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 335
    .line 336
    .line 337
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    .line 338
    .line 339
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 340
    .line 341
    .line 342
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    .line 343
    .line 344
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    .line 346
    .line 347
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->c:Ljava/util/ArrayList;

    .line 348
    .line 349
    if-eqz v0, :cond_3

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-lez v0, :cond_3

    .line 356
    .line 357
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->n:Landroid/widget/HorizontalScrollView;

    .line 358
    .line 359
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_2

    .line 363
    .line 364
    :cond_3
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->n:Landroid/widget/HorizontalScrollView;

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    .line 368
    .line 369
    goto :goto_2

    .line 370
    :cond_4
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 371
    .line 372
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->m:Landroid/widget/TextView;

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    .line 381
    .line 382
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 383
    .line 384
    .line 385
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->l:I

    .line 386
    .line 387
    if-ne v0, v2, :cond_5

    .line 388
    .line 389
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->b:Landroid/widget/TextView;

    .line 390
    .line 391
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    .line 393
    .line 394
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 395
    .line 396
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 401
    .line 402
    iget-object v8, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 403
    .line 404
    invoke-static {v8}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    iget-object v9, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 409
    .line 410
    invoke-virtual {v8, v9}, Lcom/join/android/app/common/utils/q;->h(Landroid/content/Context;)F

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    const/high16 v9, 0x437d0000    # 253.0f

    .line 415
    .line 416
    mul-float v8, v8, v9

    .line 417
    .line 418
    float-to-int v8, v8

    .line 419
    new-instance v9, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    const-string v10, "sssss"

    .line 435
    .line 436
    invoke-static {v10, v9}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 440
    .line 441
    iget-object v8, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 442
    .line 443
    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    .line 445
    .line 446
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 447
    .line 448
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 449
    .line 450
    .line 451
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    .line 452
    .line 453
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 454
    .line 455
    .line 456
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->j:Landroid/widget/LinearLayout;

    .line 457
    .line 458
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 459
    .line 460
    .line 461
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    .line 462
    .line 463
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 464
    .line 465
    .line 466
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    .line 467
    .line 468
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 469
    .line 470
    .line 471
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 472
    .line 473
    iget-object v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->i:Ljava/lang/String;

    .line 474
    .line 475
    invoke-static {v0, v7, v3}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 476
    .line 477
    .line 478
    goto :goto_2

    .line 479
    :cond_5
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->l:Landroid/widget/LinearLayout;

    .line 480
    .line 481
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 482
    .line 483
    .line 484
    :goto_2
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->j:I

    .line 485
    .line 486
    if-ne v0, v2, :cond_6

    .line 487
    .line 488
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    .line 489
    .line 490
    const-string v3, "\u5df2\u6536\u85cf"

    .line 491
    .line 492
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    .line 494
    .line 495
    goto :goto_3

    .line 496
    :cond_6
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->k:Landroid/widget/Button;

    .line 497
    .line 498
    const-string v3, "\u6536\u85cf"

    .line 499
    .line 500
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    .line 502
    .line 503
    :goto_3
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->k:I

    .line 504
    .line 505
    if-ne v0, v2, :cond_7

    .line 506
    .line 507
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->h:Landroid/widget/Button;

    .line 508
    .line 509
    const-string v3, "\u5df2\u9884\u7ea6"

    .line 510
    .line 511
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    .line 513
    .line 514
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->h:Landroid/widget/Button;

    .line 515
    .line 516
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 517
    .line 518
    .line 519
    goto :goto_4

    .line 520
    :cond_7
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->h:Landroid/widget/Button;

    .line 521
    .line 522
    const-string v3, "\u9884\u7ea6"

    .line 523
    .line 524
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    .line 526
    .line 527
    :goto_4
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 528
    .line 529
    iget-object v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->a:Ljava/lang/String;

    .line 530
    .line 531
    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->b:Ljava/lang/String;

    .line 535
    .line 536
    if-eqz v0, :cond_8

    .line 537
    .line 538
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->b:Landroid/widget/TextView;

    .line 539
    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    iget-object v4, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->b:Ljava/lang/String;

    .line 546
    .line 547
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    .line 559
    .line 560
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 561
    .line 562
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getScore()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 567
    .line 568
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count()I

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 573
    .line 574
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSize()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 579
    .line 580
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 585
    .line 586
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    .line 587
    .line 588
    .line 589
    move-result-object v7

    .line 590
    iget-object v8, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->c:Landroid/widget/LinearLayout;

    .line 591
    .line 592
    iget-object v9, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 593
    .line 594
    invoke-static/range {v3 .. v9}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 595
    .line 596
    .line 597
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->d:I

    .line 598
    .line 599
    if-lez v0, :cond_9

    .line 600
    .line 601
    goto :goto_5

    .line 602
    :cond_9
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->e:I

    .line 603
    .line 604
    :goto_5
    iget v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->l:I

    .line 605
    .line 606
    if-ne v3, v2, :cond_b

    .line 607
    .line 608
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->c:Landroid/widget/LinearLayout;

    .line 609
    .line 610
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 611
    .line 612
    .line 613
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 614
    .line 615
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_count()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    if-nez v0, :cond_a

    .line 620
    .line 621
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    .line 622
    .line 623
    const-string v1, "0\u4eba\u9884\u7ea6"

    .line 624
    .line 625
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    .line 627
    .line 628
    goto/16 :goto_6

    .line 629
    .line 630
    :cond_a
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    .line 631
    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .line 636
    .line 637
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 638
    .line 639
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_count()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    const-string v2, "\u4eba\u9884\u7ea6"

    .line 647
    .line 648
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    .line 657
    .line 658
    goto :goto_6

    .line 659
    :cond_b
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->c:Landroid/widget/LinearLayout;

    .line 660
    .line 661
    const/4 v2, 0x4

    .line 662
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 663
    .line 664
    .line 665
    const v1, 0x186a0

    .line 666
    .line 667
    .line 668
    const/16 v2, 0x2710

    .line 669
    .line 670
    if-lt v0, v1, :cond_c

    .line 671
    .line 672
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    .line 673
    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    .line 675
    .line 676
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    .line 678
    .line 679
    div-int/2addr v0, v2

    .line 680
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    const-string v0, "\u4e07\u70ed\u5ea6"

    .line 684
    .line 685
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    .line 694
    .line 695
    goto :goto_6

    .line 696
    :cond_c
    const-string v1, "\u70ed\u5ea6"

    .line 697
    .line 698
    if-lt v0, v2, :cond_d

    .line 699
    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .line 704
    .line 705
    div-int/lit16 v0, v0, 0x3e8

    .line 706
    .line 707
    int-to-float v0, v0

    .line 708
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    int-to-double v3, v0

    .line 713
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 714
    .line 715
    div-double/2addr v3, v5

    .line 716
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    const-string v0, "\u4e07"

    .line 720
    .line 721
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    .line 729
    .line 730
    new-instance v3, Ljava/lang/StringBuilder;

    .line 731
    .line 732
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    .line 747
    .line 748
    goto :goto_6

    .line 749
    :cond_d
    iget-object v2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->d:Landroid/widget/TextView;

    .line 750
    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    .line 752
    .line 753
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    .line 768
    .line 769
    :goto_6
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->f:Landroid/widget/TextView;

    .line 770
    .line 771
    iget-object v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->f:Ljava/lang/String;

    .line 772
    .line 773
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    .line 775
    .line 776
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->g:Ljava/lang/String;

    .line 777
    .line 778
    if-eqz v0, :cond_e

    .line 779
    .line 780
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$q1;->e:Landroid/widget/TextView;

    .line 781
    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    .line 783
    .line 784
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 785
    .line 786
    .line 787
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;->g:Ljava/lang/String;

    .line 788
    .line 789
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    const-string p1, "M"

    .line 793
    .line 794
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object p1

    .line 801
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    .line 803
    .line 804
    :cond_e
    return-object p3
.end method

.method private L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d0705

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a079e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->a:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    const v0, 0x7f0a079f

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->b:Landroid/widget/TextView;

    .line 43
    .line 44
    const v0, 0x7f0a011e

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->c:Landroid/widget/ImageView;

    .line 54
    .line 55
    const v0, 0x7f0a0e6a

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->d:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;

    .line 73
    .line 74
    move-object v2, p3

    .line 75
    move-object p3, p2

    .line 76
    move-object p2, v2

    .line 77
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;

    .line 82
    .line 83
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;->a:I

    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    if-ne v0, v1, :cond_1

    .line 87
    .line 88
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->a:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->d:Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->b:Landroid/widget/TextView;

    .line 100
    .line 101
    const-string v1, "\u66f4\u65b0\u8bb0\u5f55"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->a:Landroid/widget/RelativeLayout;

    .line 107
    .line 108
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c0;

    .line 109
    .line 110
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->a:Landroid/widget/RelativeLayout;

    .line 118
    .line 119
    const/16 v0, 0x8

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$r1;->d:Landroid/view/View;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    :goto_1
    return-object p3
.end method

.method private M(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d0706

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a1486

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 32
    .line 33
    const v0, 0x7f0a0142

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;

    .line 54
    .line 55
    move-object v5, p3

    .line 56
    move-object p3, p2

    .line 57
    move-object p2, v5

    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->a:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/16 v1, 0x8

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->b:Ljava/util/List;

    .line 83
    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/4 v2, 0x0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i:Ljava/util/List;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->a:Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j:Z

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    iput-boolean v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j:Z

    .line 113
    .line 114
    :goto_1
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->b:Ljava/util/List;

    .line 115
    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    :goto_2
    iget-object v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->b:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-ge v0, v3, :cond_3

    .line 126
    .line 127
    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i:Ljava/util/List;

    .line 128
    .line 129
    iget-object v4, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->b:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_4

    .line 158
    .line 159
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_4
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;->c:I

    .line 171
    .line 172
    new-instance v1, Lcom/join/mgps/adapter/h1;

    .line 173
    .line 174
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 175
    .line 176
    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i:Ljava/util/List;

    .line 177
    .line 178
    iget-boolean v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j:Z

    .line 179
    .line 180
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/join/mgps/adapter/h1;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    .line 187
    .line 188
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$s1;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 189
    .line 190
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;

    .line 191
    .line 192
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$d0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    .line 196
    .line 197
    .line 198
    :cond_5
    :goto_3
    return-object p3
.end method

.method private N(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const p3, 0x7f0d0630

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 18
    .line 19
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;

    .line 37
    .line 38
    iget-boolean v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;->a:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;->b:Lcom/join/mgps/dto/GameVoucherBean;

    .line 43
    .line 44
    invoke-virtual {p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->a(Lcom/join/mgps/dto/GameVoucherBean;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->e:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    const/4 p3, 0x0

    .line 50
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object p1, p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->e:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const/16 p3, 0x8

    .line 57
    .line 58
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-object p2
.end method

.method private O(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    const/16 p3, 0x8

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0d0707

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0a0832

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->a:Landroid/widget/TextView;

    .line 34
    .line 35
    const v1, 0x7f0a0833

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->b:Landroid/widget/TextView;

    .line 45
    .line 46
    const v1, 0x7f0a0834

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->d:Landroid/widget/TextView;

    .line 56
    .line 57
    const v1, 0x7f0a16a7

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->c:Landroid/widget/TextView;

    .line 67
    .line 68
    const v1, 0x7f0a0142

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 81
    .line 82
    if-nez v1, :cond_0

    .line 83
    .line 84
    const v1, 0x7f0a0e6c

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;

    .line 103
    .line 104
    move-object v4, v0

    .line 105
    move-object v0, p2

    .line 106
    move-object p2, v4

    .line 107
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;

    .line 112
    .line 113
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->a:Landroid/widget/TextView;

    .line 114
    .line 115
    iget-object v2, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;->a:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;->b:Ljava/lang/String;

    .line 121
    .line 122
    if-eqz v1, :cond_2

    .line 123
    .line 124
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->b:Landroid/widget/TextView;

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->b:Landroid/widget/TextView;

    .line 131
    .line 132
    iget-object v3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;->b:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->d:Landroid/widget/TextView;

    .line 138
    .line 139
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;->b:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->d:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->b:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->d:Landroid/widget/TextView;

    .line 155
    .line 156
    const/4 p3, 0x2

    .line 157
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->b:Landroid/widget/TextView;

    .line 161
    .line 162
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->w:Landroid/widget/TextView;

    .line 163
    .line 164
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v1;->d:Landroid/widget/TextView;

    .line 165
    .line 166
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->x:Landroid/widget/TextView;

    .line 167
    .line 168
    :cond_2
    return-object v0
.end method

.method private Q(Landroid/view/View;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;ZI)V
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
    iget-object v10, v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget v11, v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->e:I

    .line 8
    .line 9
    iget-boolean v12, v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->f:Z

    .line 10
    .line 11
    iget-object v13, v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->b:Lcom/join/mgps/dto/InformationCommentBean;

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
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

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
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;

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
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;IILjava/lang/String;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;)V

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
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$m0;

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
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$m0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;ILcom/join/mgps/dto/InformationCommentBean;Ljava/lang/String;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;I)V

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
    invoke-direct {v8, v9, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->Z(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
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

.method private R(Landroid/widget/RelativeLayout;Lcom/join/mgps/dto/GameDetialStrategyItem;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->t:Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->J()Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->t:Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f0a092e

    .line 19
    .line 20
    .line 21
    const v2, 0x7f0a092f

    .line 22
    .line 23
    .line 24
    const v3, 0x7f0a092d

    .line 25
    .line 26
    .line 27
    filled-new-array {v3, v1, v2}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    :goto_0
    const/4 v1, 0x3

    .line 34
    if-ge v8, v1, :cond_2

    .line 35
    .line 36
    aget v1, v7, v8

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move-object v2, v1

    .line 43
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    array-length v1, v1

    .line 50
    if-lt v8, v1, :cond_1

    .line 51
    .line 52
    const/16 v1, 0x8

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    aget-object v4, v1, v8

    .line 63
    .line 64
    add-int/lit8 v5, v8, 0x0

    .line 65
    .line 66
    move-object v1, p0

    .line 67
    move v3, v8

    .line 68
    move-object v6, v0

    .line 69
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->W(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;I[Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-void
.end method

.method private X(Landroid/view/View;)V
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
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, 0x4c000000    # 3.3554432E7f

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private Z(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
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
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$j0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$j0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private b0(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$w;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$w;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private c0(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$i0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$i0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic d(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->q:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private d0(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
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
    new-instance v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$n0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

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

.method static synthetic e(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->u:Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;

    .line 2
    .line 3
    return-object p0
.end method

.method private e0(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$k0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$k0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic f(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/MGGameDetailAdapter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->v:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->w:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->x:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method private m(Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "item"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$e1;->a:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->S(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    if-nez p2, :cond_1

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d0702

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a153e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->b:Landroid/widget/TextView;

    .line 32
    .line 33
    const v0, 0x7f0a03cf

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->a:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->b:Landroid/widget/TextView;

    .line 52
    .line 53
    const v1, 0x7f0804a9

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->b:Landroid/widget/TextView;

    .line 60
    .line 61
    const v1, -0x575758

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;

    .line 76
    .line 77
    move-object v3, p3

    .line 78
    move-object p3, p2

    .line 79
    move-object p2, v3

    .line 80
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;

    .line 85
    .line 86
    iget-boolean v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;->a:Z

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->a:Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->a:Landroid/widget/RelativeLayout;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->b:Landroid/widget/TextView;

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v2, "\u67e5\u770b\u5168\u90e8"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;->b:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, "\u6761\u8bc4\u8bba"

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$a1;->b:Landroid/widget/TextView;

    .line 134
    .line 135
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$u;

    .line 136
    .line 137
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$u;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    return-object p3
.end method

.method private o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    if-nez p2, :cond_1

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d0703

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a03f5

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->c:Landroid/widget/TextView;

    .line 32
    .line 33
    const v0, 0x7f0a03f4

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->d:Landroid/widget/TextView;

    .line 43
    .line 44
    const v0, 0x7f0a0dfb

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/LinearLayout;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->a:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    const v0, 0x7f0a03d0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->b:Landroid/widget/RelativeLayout;

    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 70
    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    const v0, 0x7f0a03fa

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/TextView;

    .line 81
    .line 82
    const/4 v1, -0x1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->d:Landroid/widget/TextView;

    .line 87
    .line 88
    const v1, -0x8b8b8c

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->c:Landroid/widget/TextView;

    .line 95
    .line 96
    const v1, -0x575758

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->c:Landroid/widget/TextView;

    .line 103
    .line 104
    const v1, 0x7f0804a9

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    .line 109
    .line 110
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;

    .line 119
    .line 120
    move-object v4, p3

    .line 121
    move-object p3, p2

    .line 122
    move-object p2, v4

    .line 123
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;

    .line 128
    .line 129
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->a:I

    .line 130
    .line 131
    const/16 v1, 0x8

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    if-nez v0, :cond_2

    .line 135
    .line 136
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->b:I

    .line 137
    .line 138
    if-nez v0, :cond_2

    .line 139
    .line 140
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->a:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->a:Landroid/widget/LinearLayout;

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    :goto_1
    iget v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->c:I

    .line 152
    .line 153
    const/4 v3, 0x1

    .line 154
    if-ne v0, v3, :cond_3

    .line 155
    .line 156
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->b:Landroid/widget/RelativeLayout;

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->d:Landroid/widget/TextView;

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v2, " ("

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;->d:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p1, ") "

    .line 179
    .line 180
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->c:Landroid/widget/TextView;

    .line 191
    .line 192
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;

    .line 193
    .line 194
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$x;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_3
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b1;->b:Landroid/widget/RelativeLayout;

    .line 202
    .line 203
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    :goto_2
    return-object p3
.end method

.method private p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
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
    if-nez p2, :cond_1

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d02ea

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a0fee

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->a:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    const v0, 0x7f0a1b1a

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 43
    .line 44
    const v0, 0x7f0a1219

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->c:Landroid/widget/ImageView;

    .line 54
    .line 55
    const v0, 0x7f0a1b1d

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    const v0, 0x7f0a174b

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->e:Landroid/widget/TextView;

    .line 76
    .line 77
    const v0, 0x7f0a0424

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->f:Landroid/widget/TextView;

    .line 87
    .line 88
    const v0, 0x7f0a121a

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/TextView;

    .line 96
    .line 97
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->g:Landroid/widget/TextView;

    .line 98
    .line 99
    const v0, 0x7f0a0e59

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 107
    .line 108
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->h:Lcom/join/mgps/customview/VipView;

    .line 109
    .line 110
    const v0, 0x7f0a0e61

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->i:Landroid/view/View;

    .line 118
    .line 119
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->a:Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 125
    .line 126
    if-nez v0, :cond_0

    .line 127
    .line 128
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->i:Landroid/view/View;

    .line 129
    .line 130
    const v1, -0xcacacb

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->f:Landroid/widget/TextView;

    .line 137
    .line 138
    const v1, -0x9e9e9f

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->d:Landroid/widget/TextView;

    .line 145
    .line 146
    const/4 v1, -0x1

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->e:Landroid/widget/TextView;

    .line 151
    .line 152
    const v1, -0x565657

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->g:Landroid/widget/TextView;

    .line 159
    .line 160
    const v1, -0x5f5f60

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;

    .line 175
    .line 176
    move-object v6, p3

    .line 177
    move-object p3, p2

    .line 178
    move-object p2, v6

    .line 179
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    .line 184
    .line 185
    iget-boolean v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->b:Z

    .line 186
    .line 187
    const/16 v2, 0x8

    .line 188
    .line 189
    const/4 v3, 0x0

    .line 190
    if-eqz v1, :cond_2

    .line 191
    .line 192
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->i:Landroid/view/View;

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_2
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->i:Landroid/view/View;

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    :goto_1
    iget-boolean v1, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->a:Z

    .line 204
    .line 205
    if-eqz v1, :cond_5

    .line 206
    .line 207
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->a:Landroid/widget/RelativeLayout;

    .line 208
    .line 209
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    .line 211
    .line 212
    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->d:Lcom/join/mgps/dto/CommentBaseBean;

    .line 213
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getAdd_times()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v2, "000"

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 236
    .line 237
    .line 238
    move-result-wide v1

    .line 239
    iget-object v4, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->e:Landroid/widget/TextView;

    .line 240
    .line 241
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->f:Landroid/widget/TextView;

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->g:Landroid/widget/TextView;

    .line 258
    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 265
    .line 266
    .line 267
    move-result-wide v4

    .line 268
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v4, ""

    .line 272
    .line 273
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    const/4 v2, 0x1

    .line 288
    if-ne v1, v2, :cond_3

    .line 289
    .line 290
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->c:Landroid/widget/ImageView;

    .line 291
    .line 292
    const v4, 0x7f080c51

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_3
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->c:Landroid/widget/ImageView;

    .line 300
    .line 301
    const v4, 0x7f081320

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    .line 306
    .line 307
    :goto_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_4

    .line 316
    .line 317
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 318
    .line 319
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    iget-object v5, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 324
    .line 325
    invoke-static {v1, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 326
    .line 327
    .line 328
    :cond_4
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->a:Landroid/widget/RelativeLayout;

    .line 329
    .line 330
    invoke-direct {p0, v1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e0(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 331
    .line 332
    .line 333
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->c:Landroid/widget/ImageView;

    .line 334
    .line 335
    iget-object v4, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->g:Landroid/widget/TextView;

    .line 336
    .line 337
    invoke-direct {p0, v1, v4, v0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->d0(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 338
    .line 339
    .line 340
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->f:Landroid/widget/TextView;

    .line 341
    .line 342
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b0(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 343
    .line 344
    .line 345
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->d:Landroid/widget/TextView;

    .line 346
    .line 347
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->h:Lcom/join/mgps/customview/VipView;

    .line 359
    .line 360
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 369
    .line 370
    .line 371
    const/4 p1, 0x3

    .line 372
    new-array p1, p1, [Landroid/view/View;

    .line 373
    .line 374
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 375
    .line 376
    aput-object v0, p1, v3

    .line 377
    .line 378
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->d:Landroid/widget/TextView;

    .line 379
    .line 380
    aput-object v0, p1, v2

    .line 381
    .line 382
    const/4 v0, 0x2

    .line 383
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->e:Landroid/widget/TextView;

    .line 384
    .line 385
    aput-object v1, p1, v0

    .line 386
    .line 387
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->S0([Landroid/view/View;)V

    .line 388
    .line 389
    .line 390
    new-array p1, v2, [Landroid/view/View;

    .line 391
    .line 392
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->h:Lcom/join/mgps/customview/VipView;

    .line 393
    .line 394
    aput-object p2, p1, v3

    .line 395
    .line 396
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->U0([Landroid/view/View;)V

    .line 397
    .line 398
    .line 399
    goto :goto_3

    .line 400
    :cond_5
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$z0;->a:Landroid/widget/RelativeLayout;

    .line 401
    .line 402
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    :goto_3
    return-object p3
.end method

.method private r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$d;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$d;->a:Ljava/util/List;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const p3, 0x7f0d033f

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    .line 26
    .line 27
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a17fd

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    .line 49
    .line 50
    :goto_0
    invoke-virtual {p3, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->c(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    return-object p2
.end method

.method private s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFast_entry_switch()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iput-object v3, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->e:Ljava/util/List;

    .line 19
    .line 20
    :cond_0
    iget-object v2, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->e:Ljava/util/List;

    .line 21
    .line 22
    iget-wide v4, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->b:J

    .line 23
    .line 24
    iget-object v6, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->c:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;->d:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    if-nez p2, :cond_2

    .line 30
    .line 31
    iget-object v8, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const v9, 0x7f0d0261

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;

    .line 45
    .line 46
    invoke-direct {v8, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 47
    .line 48
    .line 49
    const v9, 0x7f0a012e

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    check-cast v9, Landroid/widget/LinearLayout;

    .line 57
    .line 58
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    const v9, 0x7f0a0686

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 68
    .line 69
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 70
    .line 71
    const v9, 0x7f0a12e5

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 79
    .line 80
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 81
    .line 82
    const v9, 0x7f0a1be2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 90
    .line 91
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 92
    .line 93
    const v9, 0x7f0a1be4

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Landroid/widget/LinearLayout;

    .line 101
    .line 102
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    .line 103
    .line 104
    const v9, 0x7f0a12e6

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Landroid/widget/LinearLayout;

    .line 112
    .line 113
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    .line 114
    .line 115
    const v9, 0x7f0a0698

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    check-cast v9, Landroid/widget/LinearLayout;

    .line 123
    .line 124
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    .line 125
    .line 126
    const v9, 0x7f0a0218

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    check-cast v9, Landroid/widget/LinearLayout;

    .line 134
    .line 135
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    .line 136
    .line 137
    const v9, 0x7f0a17dd

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    check-cast v9, Landroid/widget/TextView;

    .line 145
    .line 146
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->e:Landroid/widget/TextView;

    .line 147
    .line 148
    const v9, 0x7f0a068d

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    check-cast v9, Landroid/widget/TextView;

    .line 156
    .line 157
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->l:Landroid/widget/TextView;

    .line 158
    .line 159
    const v9, 0x7f0a12e7    # 1.835316E38f

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    check-cast v9, Landroid/widget/TextView;

    .line 167
    .line 168
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    .line 169
    .line 170
    const v9, 0x7f0a1be3

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    check-cast v9, Landroid/widget/TextView;

    .line 178
    .line 179
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->n:Landroid/widget/TextView;

    .line 180
    .line 181
    const v9, 0x7f0a05f9

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    check-cast v9, Landroid/widget/TextView;

    .line 189
    .line 190
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->f:Landroid/widget/TextView;

    .line 191
    .line 192
    const v9, 0x7f0a05f8

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 200
    .line 201
    iput-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 202
    .line 203
    iget v9, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 204
    .line 205
    if-nez v9, :cond_1

    .line 206
    .line 207
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    .line 208
    .line 209
    const v10, 0x7f0804a1

    .line 210
    .line 211
    .line 212
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 213
    .line 214
    .line 215
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    .line 216
    .line 217
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 218
    .line 219
    .line 220
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    .line 221
    .line 222
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    .line 224
    .line 225
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    .line 226
    .line 227
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 228
    .line 229
    .line 230
    const v9, 0x7f0a1767

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    const v9, 0x7f0a0ffb

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    invoke-direct {v0, v9}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    :cond_1
    invoke-virtual {v3, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    move-object v8, v3

    .line 259
    check-cast v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;

    .line 260
    .line 261
    move-object/from16 v3, p2

    .line 262
    .line 263
    :goto_0
    const-wide/16 v9, 0x0

    .line 264
    .line 265
    const-string v11, "\u73a9\u5bb6\u8ba8\u8bba\u533a"

    .line 266
    .line 267
    const v12, 0x7f0804ce

    .line 268
    .line 269
    .line 270
    const-string v13, ""

    .line 271
    .line 272
    const/4 v14, 0x4

    .line 273
    const/16 v15, 0x8

    .line 274
    .line 275
    cmp-long v16, v4, v9

    .line 276
    .line 277
    if-eqz v16, :cond_9

    .line 278
    .line 279
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->e:Landroid/widget/TextView;

    .line 280
    .line 281
    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    iget-object v9, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    .line 285
    .line 286
    new-instance v10, Lcom/join/mgps/adapter/MGGameDetailAdapter$r0;

    .line 287
    .line 288
    invoke-direct {v10, v0, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$r0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;J)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_6

    .line 299
    .line 300
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    .line 301
    .line 302
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$s0;

    .line 303
    .line 304
    invoke-direct {v5, v0, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$s0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-eqz v4, :cond_4

    .line 315
    .line 316
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    .line 317
    .line 318
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$t0;

    .line 319
    .line 320
    invoke-direct {v5, v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$t0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    .line 325
    .line 326
    if-eqz v2, :cond_3

    .line 327
    .line 328
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-lez v1, :cond_3

    .line 333
    .line 334
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 339
    .line 340
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->f:Landroid/widget/TextView;

    .line 341
    .line 342
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    .line 359
    .line 360
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$a;

    .line 361
    .line 362
    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$a;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_1

    .line 369
    .line 370
    :cond_3
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    .line 371
    .line 372
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_1

    .line 376
    .line 377
    :cond_4
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    .line 378
    .line 379
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 380
    .line 381
    .line 382
    if-eqz v2, :cond_5

    .line 383
    .line 384
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-lez v1, :cond_5

    .line 389
    .line 390
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 395
    .line 396
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->n:Landroid/widget/TextView;

    .line 397
    .line 398
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    .line 404
    .line 405
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 406
    .line 407
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    .line 415
    .line 416
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$b;

    .line 417
    .line 418
    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$b;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :cond_5
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    .line 427
    .line 428
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    .line 432
    .line 433
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_1

    .line 437
    .line 438
    :cond_6
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    .line 439
    .line 440
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    if-eqz v4, :cond_8

    .line 448
    .line 449
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    .line 450
    .line 451
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$c;

    .line 452
    .line 453
    invoke-direct {v5, v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    .line 458
    .line 459
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 460
    .line 461
    invoke-static {v1, v12, v13}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 462
    .line 463
    .line 464
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    .line 465
    .line 466
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    .line 468
    .line 469
    if-eqz v2, :cond_7

    .line 470
    .line 471
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-lez v1, :cond_7

    .line 476
    .line 477
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 482
    .line 483
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->n:Landroid/widget/TextView;

    .line 484
    .line 485
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 493
    .line 494
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    .line 502
    .line 503
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$d;

    .line 504
    .line 505
    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$d;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_1

    .line 512
    .line 513
    :cond_7
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    .line 514
    .line 515
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_1

    .line 519
    .line 520
    :cond_8
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    .line 521
    .line 522
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 523
    .line 524
    .line 525
    if-eqz v2, :cond_10

    .line 526
    .line 527
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    if-lez v1, :cond_10

    .line 532
    .line 533
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 538
    .line 539
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    .line 540
    .line 541
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    .line 547
    .line 548
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 549
    .line 550
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    .line 558
    .line 559
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$e;

    .line 560
    .line 561
    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$e;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_1

    .line 568
    .line 569
    :cond_9
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->e:Landroid/widget/TextView;

    .line 570
    .line 571
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 572
    .line 573
    .line 574
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->a:Landroid/widget/LinearLayout;

    .line 575
    .line 576
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 577
    .line 578
    .line 579
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-eqz v4, :cond_d

    .line 584
    .line 585
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    .line 586
    .line 587
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$f;

    .line 588
    .line 589
    invoke-direct {v5, v0, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$f;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    .line 594
    .line 595
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 596
    .line 597
    const v5, 0x7f0804bc

    .line 598
    .line 599
    .line 600
    invoke-static {v4, v5, v13}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 601
    .line 602
    .line 603
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->l:Landroid/widget/TextView;

    .line 604
    .line 605
    const-string v5, "\u5b98\u65b9\u5ba2\u670d"

    .line 606
    .line 607
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    .line 609
    .line 610
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 611
    .line 612
    .line 613
    move-result v4

    .line 614
    if-eqz v4, :cond_b

    .line 615
    .line 616
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    .line 617
    .line 618
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$g;

    .line 619
    .line 620
    invoke-direct {v5, v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$g;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    .line 625
    .line 626
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 627
    .line 628
    invoke-static {v1, v12, v13}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 629
    .line 630
    .line 631
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    .line 632
    .line 633
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    .line 635
    .line 636
    if-eqz v2, :cond_a

    .line 637
    .line 638
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    if-lez v1, :cond_a

    .line 643
    .line 644
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 649
    .line 650
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->n:Landroid/widget/TextView;

    .line 651
    .line 652
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    .line 658
    .line 659
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 660
    .line 661
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->b:Landroid/widget/LinearLayout;

    .line 669
    .line 670
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$h;

    .line 671
    .line 672
    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$h;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_1

    .line 679
    .line 680
    :cond_a
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->n:Landroid/widget/TextView;

    .line 681
    .line 682
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 683
    .line 684
    .line 685
    goto/16 :goto_1

    .line 686
    .line 687
    :cond_b
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    .line 688
    .line 689
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 690
    .line 691
    .line 692
    if-eqz v2, :cond_c

    .line 693
    .line 694
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    if-lez v1, :cond_c

    .line 699
    .line 700
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 705
    .line 706
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    .line 707
    .line 708
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    .line 714
    .line 715
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 716
    .line 717
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    .line 725
    .line 726
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$i;

    .line 727
    .line 728
    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$i;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    .line 733
    .line 734
    goto/16 :goto_1

    .line 735
    .line 736
    :cond_c
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    .line 737
    .line 738
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_1

    .line 742
    .line 743
    :cond_d
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->h:Landroid/widget/LinearLayout;

    .line 744
    .line 745
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 746
    .line 747
    .line 748
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    move-result v4

    .line 752
    if-eqz v4, :cond_f

    .line 753
    .line 754
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    .line 755
    .line 756
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$j;

    .line 757
    .line 758
    invoke-direct {v5, v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$j;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    .line 763
    .line 764
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 765
    .line 766
    invoke-static {v1, v12, v13}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 767
    .line 768
    .line 769
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->l:Landroid/widget/TextView;

    .line 770
    .line 771
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    .line 773
    .line 774
    if-eqz v2, :cond_e

    .line 775
    .line 776
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 777
    .line 778
    .line 779
    move-result v1

    .line 780
    if-lez v1, :cond_e

    .line 781
    .line 782
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 787
    .line 788
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->m:Landroid/widget/TextView;

    .line 789
    .line 790
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v5

    .line 794
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    .line 796
    .line 797
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 798
    .line 799
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    .line 807
    .line 808
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$l;

    .line 809
    .line 810
    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$l;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    .line 815
    .line 816
    goto :goto_1

    .line 817
    :cond_e
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    .line 818
    .line 819
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 820
    .line 821
    .line 822
    goto :goto_1

    .line 823
    :cond_f
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->c:Landroid/widget/LinearLayout;

    .line 824
    .line 825
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 826
    .line 827
    .line 828
    if-eqz v2, :cond_10

    .line 829
    .line 830
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 831
    .line 832
    .line 833
    move-result v1

    .line 834
    if-lez v1, :cond_10

    .line 835
    .line 836
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 841
    .line 842
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->l:Landroid/widget/TextView;

    .line 843
    .line 844
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v5

    .line 848
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    .line 850
    .line 851
    iget-object v4, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 852
    .line 853
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    invoke-static {v4, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    iget-object v1, v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$d1;->d:Landroid/widget/LinearLayout;

    .line 861
    .line 862
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$m;

    .line 863
    .line 864
    invoke-direct {v4, v0, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$m;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    .line 869
    .line 870
    :cond_10
    :goto_1
    return-object v3
.end method

.method private t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d06fa

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a079e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    const v0, 0x7f0a079f

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->c:Landroid/widget/TextView;

    .line 43
    .line 44
    const v0, 0x7f0a079d

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 54
    .line 55
    const v0, 0x7f0a011e

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .line 64
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->d:Landroid/widget/ImageView;

    .line 65
    .line 66
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;

    .line 80
    .line 81
    move-object v3, p3

    .line 82
    move-object p3, p2

    .line 83
    move-object p2, v3

    .line 84
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$f;

    .line 89
    .line 90
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$f;->b:Ljava/util/List;

    .line 91
    .line 92
    iget p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$f;->a:I

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    if-ne p1, v1, :cond_3

    .line 96
    .line 97
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-lez p1, :cond_1

    .line 110
    .line 111
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->c:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lcom/join/mgps/dto/RecommendAdInfoData;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecommendAdInfoData;->getMain()Lcom/join/mgps/dto/RecommendAdInfoMainBean;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecommendAdInfoMainBean;->getLabel()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    if-eqz v0, :cond_2

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-lez p1, :cond_2

    .line 137
    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lcom/join/mgps/dto/RecommendAdInfoData;

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoData;->getMain()Lcom/join/mgps/dto/RecommendAdInfoMainBean;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_2

    .line 149
    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lcom/join/mgps/dto/RecommendAdInfoData;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoData;->getMain()Lcom/join/mgps/dto/RecommendAdInfoMainBean;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoMainBean;->getPic_remote()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    goto :goto_1

    .line 165
    :cond_2
    const-string p1, ""

    .line 166
    .line 167
    :goto_1
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 168
    .line 169
    invoke-static {v1, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    .line 173
    .line 174
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;

    .line 175
    .line 176
    invoke-direct {p2, p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$b0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_3
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    .line 184
    .line 185
    const/16 p2, 0x8

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    :goto_2
    return-object p3
.end method

.method private u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d06fb

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a0dfb

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;->a:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;

    .line 45
    .line 46
    move-object v2, p3

    .line 47
    move-object p3, p2

    .line 48
    move-object p2, v2

    .line 49
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$g;

    .line 54
    .line 55
    iget-boolean p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$g;->a:Z

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;->a:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$g1;->a:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    const/16 p2, 0x8

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-object p3
.end method

.method private v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d06fc

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a0dfe

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->a:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    const v0, 0x7f0a0786

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 43
    .line 44
    const v0, 0x7f0a078c

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->c:Landroid/widget/TextView;

    .line 54
    .line 55
    const v0, 0x7f0a0795

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    const v0, 0x7f0a0783

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->e:Landroid/widget/TextView;

    .line 76
    .line 77
    const v0, 0x7f0a0782

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->f:Landroid/widget/TextView;

    .line 87
    .line 88
    const v0, 0x7f0a0778

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/TextView;

    .line 96
    .line 97
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->h:Landroid/widget/TextView;

    .line 98
    .line 99
    const v0, 0x7f0a0796

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->i:Landroid/widget/TextView;

    .line 109
    .line 110
    const v0, 0x7f0a139e

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 118
    .line 119
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->g:Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->a:Landroid/widget/LinearLayout;

    .line 125
    .line 126
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;

    .line 135
    .line 136
    move-object v6, p3

    .line 137
    move-object p3, p2

    .line 138
    move-object p2, v6

    .line 139
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;

    .line 144
    .line 145
    iget-boolean v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;->a:Z

    .line 146
    .line 147
    if-eqz v0, :cond_2

    .line 148
    .line 149
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 150
    .line 151
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->a:Landroid/widget/LinearLayout;

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->a:Landroid/widget/LinearLayout;

    .line 158
    .line 159
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$r;

    .line 160
    .line 161
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$r;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->c:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->f:Landroid/widget/TextView;

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v2, "\u793c\u5305\u5185\u5bb9:"

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_content()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->e:Landroid/widget/TextView;

    .line 212
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v2, ""

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    const-string v1, "\uff09"

    .line 242
    .line 243
    const-string v2, "/"

    .line 244
    .line 245
    const-string v3, "\uff08\u5269\u4f59:"

    .line 246
    .line 247
    if-nez v0, :cond_1

    .line 248
    .line 249
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->h:Landroid/widget/TextView;

    .line 250
    .line 251
    const-string v4, "\u9886\u53d6"

    .line 252
    .line 253
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->i:Landroid/widget/TextView;

    .line 257
    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_surplus()I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    goto :goto_1

    .line 294
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->d:Landroid/widget/TextView;

    .line 295
    .line 296
    const-string v4, "\u8be5\u793c\u5305\u5df2\u9886\u53d6"

    .line 297
    .line 298
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->h:Landroid/widget/TextView;

    .line 302
    .line 303
    const-string v4, "\u67e5\u770b"

    .line 304
    .line 305
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->i:Landroid/widget/TextView;

    .line 309
    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_surplus()I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    .line 344
    .line 345
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->g:Landroid/widget/RelativeLayout;

    .line 346
    .line 347
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$s;

    .line 348
    .line 349
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$s;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    goto :goto_2

    .line 356
    :cond_2
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$h1;->a:Landroid/widget/LinearLayout;

    .line 357
    .line 358
    const/16 p2, 0x8

    .line 359
    .line 360
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    :goto_2
    return-object p3
.end method

.method private w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const p3, 0x7f0d06fa

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const p3, 0x7f0a079e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    check-cast p3, Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iput-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    const p3, 0x7f0a079f

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    check-cast p3, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->c:Landroid/widget/TextView;

    .line 43
    .line 44
    const p3, 0x7f0a079d

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 52
    .line 53
    iput-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 54
    .line 55
    const p3, 0x7f0a011e

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    check-cast p3, Landroid/widget/ImageView;

    .line 63
    .line 64
    iput-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->d:Landroid/widget/ImageView;

    .line 65
    .line 66
    iget-object p3, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    invoke-direct {p0, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;

    .line 80
    .line 81
    :goto_0
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$f1;->a:Landroid/widget/RelativeLayout;

    .line 82
    .line 83
    const/16 p3, 0x8

    .line 84
    .line 85
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    return-object p2
.end method

.method private x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    const v0, 0x7f0d01a2

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    const v0, 0x7f0a0951

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/LinearLayout;

    .line 36
    .line 37
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->a:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    const v0, 0x7f0a0789

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/LinearLayout;

    .line 47
    .line 48
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->b:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    const v0, 0x7f0a0e61

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->c:Landroid/widget/TextView;

    .line 60
    .line 61
    const v0, 0x7f0a0fa1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/LinearLayout;

    .line 69
    .line 70
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->d:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    const v0, 0x7f0a0fa2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    .line 81
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->e:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    const v0, 0x7f0a0786

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 91
    .line 92
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 93
    .line 94
    const v0, 0x7f0a0777

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->g:Landroid/widget/TextView;

    .line 104
    .line 105
    const v0, 0x7f0a078a

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->h:Landroid/widget/TextView;

    .line 115
    .line 116
    const v0, 0x7f0a1040

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Landroid/widget/TextView;

    .line 124
    .line 125
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    .line 126
    .line 127
    const v0, 0x7f0a1041

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    .line 137
    .line 138
    const v0, 0x7f0a174c

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/TextView;

    .line 146
    .line 147
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->k:Landroid/widget/TextView;

    .line 148
    .line 149
    const v0, 0x7f0a174d

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/widget/TextView;

    .line 157
    .line 158
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->l:Landroid/widget/TextView;

    .line 159
    .line 160
    const v0, 0x7f0a1033

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroid/widget/TextView;

    .line 168
    .line 169
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->m:Landroid/widget/TextView;

    .line 170
    .line 171
    const v0, 0x7f0a1034

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->n:Landroid/widget/TextView;

    .line 181
    .line 182
    const v0, 0x7f0a0144

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/widget/LinearLayout;

    .line 190
    .line 191
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->o:Landroid/widget/LinearLayout;

    .line 192
    .line 193
    const v0, 0x7f0a0145

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Landroid/widget/LinearLayout;

    .line 201
    .line 202
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->p:Landroid/widget/LinearLayout;

    .line 203
    .line 204
    const v0, 0x7f0a0143

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroid/widget/LinearLayout;

    .line 212
    .line 213
    iput-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->q:Landroid/widget/LinearLayout;

    .line 214
    .line 215
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    check-cast p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;

    .line 224
    .line 225
    move-object v9, p3

    .line 226
    move-object p3, p2

    .line 227
    move-object p2, v9

    .line 228
    :goto_0
    iget-object v0, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;->a:Ljava/util/List;

    .line 229
    .line 230
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;->b:Ljava/util/List;

    .line 231
    .line 232
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->d:Landroid/widget/LinearLayout;

    .line 233
    .line 234
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k;

    .line 235
    .line 236
    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$k;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .line 241
    .line 242
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->e:Landroid/widget/LinearLayout;

    .line 243
    .line 244
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$v;

    .line 245
    .line 246
    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$v;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->q:Landroid/widget/LinearLayout;

    .line 253
    .line 254
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$g0;

    .line 255
    .line 256
    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$g0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->o:Landroid/widget/LinearLayout;

    .line 263
    .line 264
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$o0;

    .line 265
    .line 266
    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$o0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->p:Landroid/widget/LinearLayout;

    .line 273
    .line 274
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$p0;

    .line 275
    .line 276
    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$p0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    const/16 v1, 0x8

    .line 283
    .line 284
    const/4 v2, 0x0

    .line 285
    if-eqz v0, :cond_3

    .line 286
    .line 287
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-nez v3, :cond_1

    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    check-cast v3, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 299
    .line 300
    iget-object v4, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 301
    .line 302
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    check-cast v5, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 307
    .line 308
    invoke-virtual {v5}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v4, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->h:Landroid/widget/TextView;

    .line 316
    .line 317
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 322
    .line 323
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-nez v0, :cond_2

    .line 335
    .line 336
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->g:Landroid/widget/TextView;

    .line 337
    .line 338
    const-string v4, "\u9886\u53d6"

    .line 339
    .line 340
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->g:Landroid/widget/TextView;

    .line 345
    .line 346
    const-string v4, "\u67e5\u770b"

    .line 347
    .line 348
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->g:Landroid/widget/TextView;

    .line 352
    .line 353
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$q0;

    .line 354
    .line 355
    invoke-direct {v4, p0, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$q0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_3
    :goto_2
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->a:Landroid/widget/LinearLayout;

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->c:Landroid/widget/TextView;

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    :goto_3
    if-eqz p1, :cond_9

    .line 373
    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-nez v0, :cond_4

    .line 379
    .line 380
    goto/16 :goto_8

    .line 381
    .line 382
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    check-cast v0, Lcom/join/mgps/dto/ServiceState;

    .line 387
    .line 388
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 389
    .line 390
    const/4 v3, 0x2

    .line 391
    const-string v4, "#3ca4fd"

    .line 392
    .line 393
    if-nez v1, :cond_5

    .line 394
    .line 395
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    .line 396
    .line 397
    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 398
    .line 399
    invoke-static {v5, v4, v3}, Lcom/join/mgps/Util/z2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    .line 405
    .line 406
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    .line 407
    .line 408
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_5
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    .line 417
    .line 418
    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 419
    .line 420
    invoke-static {v5, v4}, Lcom/join/mgps/Util/z2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    .line 426
    .line 427
    :goto_4
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    .line 428
    .line 429
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 430
    .line 431
    .line 432
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->k:Landroid/widget/TextView;

    .line 433
    .line 434
    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    .line 435
    .line 436
    .line 437
    move-result-wide v5

    .line 438
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/i;->c(J)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    .line 444
    .line 445
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->m:Landroid/widget/TextView;

    .line 446
    .line 447
    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getTitle()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getType()I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    const-string v1, "\u5f00\u670d"

    .line 459
    .line 460
    const-string v5, "\u5408\u670d"

    .line 461
    .line 462
    const/4 v6, 0x1

    .line 463
    if-ne v0, v6, :cond_6

    .line 464
    .line 465
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    .line 466
    .line 467
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    .line 469
    .line 470
    goto :goto_5

    .line 471
    :cond_6
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    .line 472
    .line 473
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    .line 475
    .line 476
    :goto_5
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->i:Landroid/widget/TextView;

    .line 477
    .line 478
    iget-object v7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 479
    .line 480
    invoke-static {v7, v4, v3}, Lcom/join/mgps/Util/z2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    .line 486
    .line 487
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-le v0, v6, :cond_a

    .line 492
    .line 493
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    check-cast p1, Lcom/join/mgps/dto/ServiceState;

    .line 498
    .line 499
    iget v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 500
    .line 501
    if-nez v0, :cond_7

    .line 502
    .line 503
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    .line 504
    .line 505
    iget-object v7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 506
    .line 507
    invoke-static {v7, v4, v3}, Lcom/join/mgps/Util/z2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 512
    .line 513
    .line 514
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    .line 515
    .line 516
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    move-result v7

    .line 520
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    .line 522
    .line 523
    goto :goto_6

    .line 524
    :cond_7
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    .line 525
    .line 526
    iget-object v7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 527
    .line 528
    invoke-static {v7, v4}, Lcom/join/mgps/Util/z2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    .line 534
    .line 535
    :goto_6
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    .line 536
    .line 537
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 538
    .line 539
    .line 540
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->l:Landroid/widget/TextView;

    .line 541
    .line 542
    invoke-virtual {p1}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    .line 543
    .line 544
    .line 545
    move-result-wide v7

    .line 546
    invoke-static {v7, v8}, Lcom/join/android/app/common/utils/i;->c(J)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    .line 552
    .line 553
    iget-object v0, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->n:Landroid/widget/TextView;

    .line 554
    .line 555
    invoke-virtual {p1}, Lcom/join/mgps/dto/ServiceState;->getTitle()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1}, Lcom/join/mgps/dto/ServiceState;->getType()I

    .line 563
    .line 564
    .line 565
    move-result p1

    .line 566
    if-ne p1, v6, :cond_8

    .line 567
    .line 568
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    .line 569
    .line 570
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    .line 572
    .line 573
    goto :goto_7

    .line 574
    :cond_8
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    .line 575
    .line 576
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    .line 578
    .line 579
    :goto_7
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->j:Landroid/widget/TextView;

    .line 580
    .line 581
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 582
    .line 583
    invoke-static {p2, v4, v3}, Lcom/join/mgps/Util/z2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 584
    .line 585
    .line 586
    move-result-object p2

    .line 587
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    .line 589
    .line 590
    goto :goto_9

    .line 591
    :cond_9
    :goto_8
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->b:Landroid/widget/LinearLayout;

    .line 592
    .line 593
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    .line 595
    .line 596
    iget-object p1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$j1;->c:Landroid/widget/TextView;

    .line 597
    .line 598
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    .line 600
    .line 601
    :cond_a
    :goto_9
    return-object p3
.end method

.method private y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    const/16 p3, 0x8

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0d06fe

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0a0950

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    const v1, 0x7f0a0953

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    .line 45
    .line 46
    const v1, 0x7f0a103f

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 56
    .line 57
    const v1, 0x7f0a12c1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    .line 67
    .line 68
    const v1, 0x7f0a0e0a

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/widget/LinearLayout;

    .line 76
    .line 77
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->a:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    const v1, 0x7f0a0952

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/widget/LinearLayout;

    .line 87
    .line 88
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->e:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    const v1, 0x7f0a0e17

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroid/widget/LinearLayout;

    .line 98
    .line 99
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->f:Landroid/widget/LinearLayout;

    .line 100
    .line 101
    const v1, 0x7f0a0e6e

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->g:Landroid/view/View;

    .line 109
    .line 110
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->a:Landroid/widget/LinearLayout;

    .line 111
    .line 112
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 116
    .line 117
    if-nez v1, :cond_0

    .line 118
    .line 119
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->g:Landroid/view/View;

    .line 120
    .line 121
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    .line 125
    .line 126
    const v2, -0x717172

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    .line 133
    .line 134
    const v2, -0xa1a1a2

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->g:Landroid/view/View;

    .line 141
    .line 142
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;

    .line 154
    .line 155
    move-object v4, v0

    .line 156
    move-object v0, p2

    .line 157
    move-object p2, v4

    .line 158
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;

    .line 163
    .line 164
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;->a:Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 165
    .line 166
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_3

    .line 184
    .line 185
    iget p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 186
    .line 187
    if-nez p3, :cond_2

    .line 188
    .line 189
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 190
    .line 191
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/z2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    .line 211
    .line 212
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_2
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 227
    .line 228
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 229
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v3, ""

    .line 243
    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {v1, v2}, Lcom/join/mgps/Util/z2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    .line 257
    .line 258
    :goto_1
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 259
    .line 260
    const/4 v1, 0x0

    .line 261
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_3
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->h:Landroid/widget/TextView;

    .line 266
    .line 267
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    :goto_2
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->d:Landroid/widget/TextView;

    .line 271
    .line 272
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTimes()J

    .line 273
    .line 274
    .line 275
    move-result-wide v1

    .line 276
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/i;->b(J)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->c:Landroid/widget/TextView;

    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTitle()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$k1;->a:Landroid/widget/LinearLayout;

    .line 293
    .line 294
    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y;

    .line 295
    .line 296
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/RecommendInfomationBean;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    .line 301
    .line 302
    return-object v0
.end method

.method private z(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
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
    const/16 p3, 0x8

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0d06ff

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0a0950

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    const v1, 0x7f0a0e0a

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->d:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    const v1, 0x7f0a12c1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->a:Landroid/widget/TextView;

    .line 56
    .line 57
    const v1, 0x7f0a103f

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    .line 67
    .line 68
    const v1, 0x7f0a0953

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->e:Landroid/widget/TextView;

    .line 78
    .line 79
    const v1, 0x7f0a12df

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->b:Landroid/widget/TextView;

    .line 89
    .line 90
    const v1, 0x7f0a1b20

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroid/widget/TextView;

    .line 98
    .line 99
    iput-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->c:Landroid/widget/TextView;

    .line 100
    .line 101
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->d:Landroid/widget/LinearLayout;

    .line 102
    .line 103
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->X(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 107
    .line 108
    if-nez v1, :cond_0

    .line 109
    .line 110
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->e:Landroid/widget/TextView;

    .line 111
    .line 112
    const v2, -0x717172

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->a:Landroid/widget/TextView;

    .line 119
    .line 120
    const v2, -0xa1a1a2

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->b:Landroid/widget/TextView;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->c:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    .line 135
    .line 136
    const v1, 0x7f0a0e61

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;

    .line 155
    .line 156
    move-object v7, v0

    .line 157
    move-object v0, p2

    .line 158
    move-object p2, v7

    .line 159
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;->a:Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 166
    .line 167
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPic_list()[Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const/4 v3, 0x0

    .line 174
    aget-object v2, v2, v3

    .line 175
    .line 176
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->b:Landroid/widget/TextView;

    .line 180
    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getCommit()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v4, ""

    .line 194
    .line 195
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->c:Landroid/widget/TextView;

    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getView()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->a:Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTimes()J

    .line 232
    .line 233
    .line 234
    move-result-wide v5

    .line 235
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/i;->b(J)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->e:Landroid/widget/TextView;

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getTitle()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_4

    .line 269
    .line 270
    iget p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 271
    .line 272
    if-nez p3, :cond_3

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p3

    .line 278
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result p3

    .line 282
    if-eqz p3, :cond_2

    .line 283
    .line 284
    const-string p3, "#8dbbec"

    .line 285
    .line 286
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/RecommendInfomationBean;->setType_color(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_2
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    .line 290
    .line 291
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    invoke-static {v1, v2, v4}, Lcom/join/mgps/Util/z2;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    .line 311
    .line 312
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_3
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    .line 327
    .line 328
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 329
    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getType_color()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-static {v1, v2}, Lcom/join/mgps/Util/z2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    .line 355
    .line 356
    :goto_1
    iget-object p3, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    .line 357
    .line 358
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 359
    .line 360
    .line 361
    goto :goto_2

    .line 362
    :cond_4
    iget-object v1, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->g:Landroid/widget/TextView;

    .line 363
    .line 364
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    :goto_2
    iget-object p2, p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$l1;->d:Landroid/widget/LinearLayout;

    .line 368
    .line 369
    new-instance p3, Lcom/join/mgps/adapter/MGGameDetailAdapter$q;

    .line 370
    .line 371
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$q;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/RecommendInfomationBean;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    .line 376
    .line 377
    return-object v0
.end method


# virtual methods
.method J()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 14
    .line 15
    const/high16 v2, 0x40c00000    # 6.0f

    .line 16
    .line 17
    mul-float v1, v1, v2

    .line 18
    .line 19
    float-to-int v1, v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const v3, 0x7f070864

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    mul-int/lit8 v2, v2, 0x2

    .line 34
    .line 35
    sub-int/2addr v0, v2

    .line 36
    mul-int/lit8 v1, v1, 0x2

    .line 37
    .line 38
    sub-int/2addr v0, v1

    .line 39
    div-int/lit8 v0, v0, 0x3

    .line 40
    .line 41
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    .line 43
    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public P()Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->y:Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;

    .line 2
    .line 3
    return-object v0
.end method

.method public S(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "parent",
            "tabBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialStrategyTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p2, :cond_5

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    move-object v3, v0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v2, v4, :cond_5

    .line 25
    .line 26
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/join/mgps/dto/GameDetialStrategyTag;

    .line 31
    .line 32
    rem-int/lit8 v5, v2, 0x4

    .line 33
    .line 34
    if-nez v5, :cond_2

    .line 35
    .line 36
    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const v6, 0x7f0d027d

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const v6, 0x7f0a1840

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Landroid/widget/TextView;

    .line 57
    .line 58
    const v7, 0x7f0a1841

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroid/widget/TextView;

    .line 66
    .line 67
    const v8, 0x7f0a1842

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Landroid/widget/TextView;

    .line 75
    .line 76
    const v9, 0x7f0a1843

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Landroid/widget/TextView;

    .line 84
    .line 85
    const/4 v10, 0x4

    .line 86
    new-array v10, v10, [Landroid/widget/TextView;

    .line 87
    .line 88
    aput-object v6, v10, v1

    .line 89
    .line 90
    const/4 v6, 0x1

    .line 91
    aput-object v7, v10, v6

    .line 92
    .line 93
    const/4 v6, 0x2

    .line 94
    aput-object v8, v10, v6

    .line 95
    .line 96
    const/4 v6, 0x3

    .line 97
    aput-object v9, v10, v6

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    move-object v3, v10

    .line 103
    :cond_2
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyTag;->getTag_name()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    iget-object v7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    const v8, 0x7f060157

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    aget-object v5, v3, v5

    .line 121
    .line 122
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    iget v6, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 132
    .line 133
    if-nez v6, :cond_4

    .line 134
    .line 135
    const v6, 0x7f08049f

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    .line 140
    .line 141
    if-nez v2, :cond_3

    .line 142
    .line 143
    const v6, 0x7f0804c3

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    .line 148
    .line 149
    const/4 v6, -0x1

    .line 150
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    const-string v6, "#7b410b"

    .line 155
    .line 156
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    .line 162
    .line 163
    :cond_4
    :goto_1
    new-instance v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;

    .line 164
    .line 165
    invoke-direct {v6, p0, v4, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$p;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Lcom/join/mgps/dto/GameDetialStrategyTag;Ljava/util/List;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_5
    :goto_2
    return-void
.end method

.method public T(II)V
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->d:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, ""

    .line 26
    .line 27
    const-wide/16 v4, 0x1

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    if-ne v2, v6, :cond_1

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 34
    .line 35
    .line 36
    sub-long/2addr v0, v4

    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    cmp-long p2, v0, v4

    .line 40
    .line 41
    if-gez p2, :cond_0

    .line 42
    .line 43
    const-string p2, "0"

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    if-eq p2, v6, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1, v6}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 71
    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    add-long/2addr v0, v4

    .line 79
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public U(II)V
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->d:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-wide/16 v3, 0x1

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    if-ne v2, v5, :cond_1

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 24
    .line 25
    .line 26
    sub-long/2addr v0, v3

    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long p2, v0, v2

    .line 30
    .line 31
    if-gez p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-eq p2, v5, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 44
    .line 45
    .line 46
    add-long/2addr v0, v3

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method V(Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;Z)V
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
    invoke-virtual {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;

    .line 9
    .line 10
    iput-boolean p2, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->g:Z
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

.method W(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;I[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "img",
            "showIndex",
            "url",
            "imgIndex",
            "rawPicList"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->t:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->J()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->t:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    const/high16 v1, 0x40c00000    # 6.0f

    .line 24
    .line 25
    mul-float v0, v0, v1

    .line 26
    .line 27
    float-to-int v0, v0

    .line 28
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->t:Landroid/widget/LinearLayout$LayoutParams;

    .line 31
    .line 32
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    .line 34
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 35
    .line 36
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-lez p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    .line 65
    .line 66
    sget-object p2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 67
    .line 68
    invoke-static {p1, p3, p2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lcom/join/mgps/adapter/MGGameDetailAdapter$n;

    .line 72
    .line 73
    invoke-direct {p2, p0, p4, p5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$n;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;I[Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/16 p2, 0x8

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public Y(Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->y:Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;

    .line 2
    .line 3
    return-void
.end method

.method public a0(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$o;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public f0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp_tpl_two_position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public g0(I)V
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->d:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x1

    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v4, v0, v2

    .line 23
    .line 24
    if-gez v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s:Ljava/util/List;

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
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;->a()Ljava/lang/Object;

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

    const-wide/16 v0, 0x0

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
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s:Ljava/util/List;

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
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;->b()Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->VIEWPAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->M(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->UPDATE_RECORD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->WEB:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne v0, v1, :cond_3

    .line 54
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->O(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ne v0, v1, :cond_4

    .line 68
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAMEAD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-ne v0, v1, :cond_5

    .line 82
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_5
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->MESSAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-ne v0, v1, :cond_6

    .line 96
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :cond_6
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->RECOMMEND:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-ne v0, v1, :cond_7

    .line 110
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->D(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_7
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->INFORMATION:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-ne v0, v1, :cond_8

    .line 124
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_8
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_HEADER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-ne v0, v1, :cond_9

    .line 138
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_9
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ne v0, v1, :cond_a

    .line 152
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_a
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_REPLY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-ne v0, v1, :cond_b

    .line 166
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_b
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_FOOTER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-ne v0, v1, :cond_c

    .line 180
    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_c
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-ne v0, v1, :cond_d

    .line 194
    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->A(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_d
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS_ITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-ne v0, v1, :cond_e

    .line 208
    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_e
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS_BOTTOM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-ne v0, v1, :cond_f

    .line 222
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_f
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->VOUCHER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-ne v0, v1, :cond_10

    .line 236
    .line 237
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->N(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_10
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->DETIAL_ADGROUP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-ne v0, v1, :cond_11

    .line 250
    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_11
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->INFORMATIONTOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-ne v0, v1, :cond_12

    .line 264
    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->z(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    goto :goto_0

    .line 270
    :cond_12
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->SERVICEITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-ne v0, v1, :cond_13

    .line 277
    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    goto :goto_0

    .line 283
    :cond_13
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYTABLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-ne v0, v1, :cond_14

    .line 290
    .line 291
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->H(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    goto :goto_0

    .line 296
    :cond_14
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_IMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-ne v0, v1, :cond_15

    .line 303
    .line 304
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->G(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    goto :goto_0

    .line 309
    :cond_15
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_NOIMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-ne v0, v1, :cond_16

    .line 316
    .line 317
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    goto :goto_0

    .line 322
    :cond_16
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_FAST_ENTRY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-ne v0, v1, :cond_17

    .line 329
    .line 330
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    goto :goto_0

    .line 335
    :cond_17
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GIFT_AND_SERVICE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-ne v0, v1, :cond_18

    .line 342
    .line 343
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    goto :goto_0

    .line 348
    :cond_18
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->NULLITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 349
    .line 350
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-ne v0, v1, :cond_19

    .line 355
    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    :cond_19
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->values()[Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public k(I)V
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;->d:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x1

    .line 18
    .line 19
    add-long/2addr v0, v2

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method l(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
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
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_REPLY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 4
    .line 5
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;

    .line 6
    .line 7
    invoke-direct {v2, p1, p2, p3, p4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

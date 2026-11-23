.class public Lcom/byazt/rpt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x137,
        0x14
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public c:Landroid/widget/LinearLayout;

.field public da:I

.field public i:Lcom/byazt/ete/ic;

.field public n:Landroid/widget/TextView;

.field public sl:Z

.field public sp:Landroid/widget/TextView;

.field public tt:Lcom/byazt/ff/TTRoundRectImageView;

.field public uj:Lcom/byazt/ff/TTRatingBar;

.field public ve:Landroid/widget/TextView;

.field public final x:Lcom/byazt/lcf/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 5
    .line 6
    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/rpt/c;->da:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/rpt/c;->tt:Lcom/byazt/ff/TTRoundRectImageView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 18
    .line 19
    const/high16 v2, 0x42480000    # 50.0f

    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/rpt/c;->tt:Lcom/byazt/ff/TTRoundRectImageView;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    const v1, 0x7e06ff1b

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/rpt/c;->c:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 15
    .line 16
    const v1, 0x7e06ff3d

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/byazt/ff/TTRoundRectImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/rpt/c;->tt:Lcom/byazt/ff/TTRoundRectImageView;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 28
    .line 29
    const v1, 0x7e06febd

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/byazt/rpt/c;->ve:Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 41
    .line 42
    const v1, 0x7e06ff43

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/byazt/ff/TTRatingBar;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/byazt/rpt/c;->uj:Lcom/byazt/ff/TTRatingBar;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 54
    .line 55
    const v1, 0x7e06ff46

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/byazt/rpt/c;->n:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 67
    .line 68
    const v1, 0x7e06ff98

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/byazt/rpt/c;->a:Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 80
    .line 81
    const v1, 0x7e06fefd

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/byazt/rpt/c;->sp:Landroid/widget/TextView;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/byazt/rpt/c;->uj:Lcom/byazt/ff/TTRatingBar;

    .line 93
    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Lcom/byazt/ff/TTRatingBar;->setStarEmptyNum(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/byazt/rpt/c;->uj:Lcom/byazt/ff/TTRatingBar;

    .line 101
    .line 102
    const/4 v1, 0x4

    .line 103
    invoke-virtual {v0, v1}, Lcom/byazt/ff/TTRatingBar;->setStarFillNum(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/byazt/rpt/c;->uj:Lcom/byazt/ff/TTRatingBar;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 109
    .line 110
    const/high16 v2, 0x41800000    # 16.0f

    .line 111
    .line 112
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    int-to-float v1, v1

    .line 117
    invoke-virtual {v0, v1}, Lcom/byazt/ff/TTRatingBar;->setStarImageWidth(F)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/byazt/rpt/c;->uj:Lcom/byazt/ff/TTRatingBar;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 123
    .line 124
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    int-to-float v1, v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/byazt/ff/TTRatingBar;->setStarImageHeight(F)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/byazt/rpt/c;->uj:Lcom/byazt/ff/TTRatingBar;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 135
    .line 136
    const/high16 v2, 0x40800000    # 4.0f

    .line 137
    .line 138
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    int-to-float v1, v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/byazt/ff/TTRatingBar;->setStarImagePadding(F)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/byazt/rpt/c;->uj:Lcom/byazt/ff/TTRatingBar;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/byazt/ff/TTRatingBar;->c()V

    .line 149
    .line 150
    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/byazt/rpt/c;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 14
    iget-object v0, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->fr()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/byazt/rpt/c;->uj:Lcom/byazt/ff/TTRatingBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 16
    iget-object v0, p0, Lcom/byazt/rpt/c;->n:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/rpt/c;->sl:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/rpt/c;->sl:Z

    .line 3
    iput-object p1, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 4
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->by()I

    move-result p1

    iput p1, p0, Lcom/byazt/rpt/c;->da:I

    .line 5
    invoke-direct {p0}, Lcom/byazt/rpt/c;->n()V

    .line 6
    invoke-virtual {p0}, Lcom/byazt/rpt/c;->tt()V

    .line 7
    invoke-virtual {p0}, Lcom/byazt/rpt/c;->uj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/rpt/c;->c(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/byazt/rpt/c;->a()V

    return-void
.end method

.method public c(Lcom/byazt/hkv/tt;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/byazt/rpt/c;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/byazt/rpt/c$1;

    invoke-direct {v1, p0}, Lcom/byazt/rpt/c$1;-><init>(Lcom/byazt/rpt/c;)V

    const-string v2, "TTBaseVideoActivity#mLLEndCardBackup"

    invoke-static {v0, v1, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/rpt/c;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/byazt/rpt/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/rpt/c;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/c;->tt:Lcom/byazt/ff/TTRoundRectImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/byazt/rpt/c;->tt:Lcom/byazt/ff/TTRoundRectImageView;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/rpt/c;->x:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/rpt/c;->tt:Lcom/byazt/ff/TTRoundRectImageView;

    .line 36
    .line 37
    const/16 v2, 0x140

    .line 38
    .line 39
    const-string v3, "tt_ad_logo_small"

    .line 40
    .line 41
    invoke-static {v0, v3, v1, v2}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/rpt/c;->ve:Landroid/widget/TextView;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/byazt/rpt/c;->ve:Landroid/widget/TextView;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/byazt/rpt/c;->ve:Landroid/widget/TextView;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/byazt/rpt/c;->n:Landroid/widget/TextView;

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    iget-object v0, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    iget-object v0, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/byazt/ete/n;->a()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const/16 v0, 0x1ad6

    .line 123
    .line 124
    :goto_2
    const/16 v1, 0x2710

    .line 125
    .line 126
    if-le v0, v1, :cond_5

    .line 127
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    div-int/2addr v0, v1

    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, "\u4e07"

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    goto :goto_3

    .line 147
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    :goto_3
    const/4 v1, 0x1

    .line 152
    new-array v1, v1, [Ljava/lang/Object;

    .line 153
    .line 154
    const/4 v2, 0x0

    .line 155
    aput-object v0, v1, v2

    .line 156
    .line 157
    const-string v0, "(%1$s\u4e2a\u8bc4\u8bba)"

    .line 158
    .line 159
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/byazt/rpt/c;->n:Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    :cond_6
    iget-object v0, p0, Lcom/byazt/rpt/c;->sp:Landroid/widget/TextView;

    .line 169
    .line 170
    if-eqz v0, :cond_7

    .line 171
    .line 172
    iget-object v1, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 173
    .line 174
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    return-void
.end method

.method public uj()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const-string v1, "\u7acb\u5373\u4e0b\u8f7d"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x4

    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    const-string v1, "\u67e5\u770b\u8be6\u60c5"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/byazt/rpt/c;->i:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_2
    :goto_0
    return-object v1
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/c;->c:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

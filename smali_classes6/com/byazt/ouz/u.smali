.class public Lcom/byazt/ouz/u;
.super Lcom/byazt/ouz/BackupView;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x43
    }
.end annotation


# static fields
.field public static u:[Lcom/byazt/ouz/rh;


# instance fields
.field public gt:Landroid/widget/ImageView;

.field public m:Lcom/byazt/ouz/NativeExpressView;

.field public my:Landroid/widget/TextView;

.field public nu:Lcom/byazt/pop/ve;

.field public rh:Landroid/widget/TextView;

.field public yp:I

.field public z:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/byazt/ouz/rh;

    .line 3
    .line 4
    new-instance v1, Lcom/byazt/ouz/rh;

    .line 5
    .line 6
    const/16 v2, 0x7c

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    const v4, 0x40418c63

    .line 10
    .line 11
    .line 12
    const/16 v5, 0x177

    .line 13
    .line 14
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/byazt/ouz/rh;-><init>(IFII)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    new-instance v1, Lcom/byazt/ouz/rh;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    const/high16 v4, 0x3fa00000    # 1.25f

    .line 24
    .line 25
    const/16 v6, 0x12c

    .line 26
    .line 27
    invoke-direct {v1, v2, v4, v5, v6}, Lcom/byazt/ouz/rh;-><init>(IFII)V

    .line 28
    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    aput-object v1, v0, v7

    .line 32
    .line 33
    new-instance v1, Lcom/byazt/ouz/rh;

    .line 34
    .line 35
    const v7, 0x3fb3c679

    .line 36
    .line 37
    .line 38
    const/16 v8, 0x10b

    .line 39
    .line 40
    const/4 v9, 0x4

    .line 41
    invoke-direct {v1, v9, v7, v5, v8}, Lcom/byazt/ouz/rh;-><init>(IFII)V

    .line 42
    .line 43
    .line 44
    aput-object v1, v0, v3

    .line 45
    .line 46
    new-instance v1, Lcom/byazt/ouz/rh;

    .line 47
    .line 48
    const/16 v3, 0x10

    .line 49
    .line 50
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/byazt/ouz/rh;-><init>(IFII)V

    .line 51
    .line 52
    .line 53
    aput-object v1, v0, v2

    .line 54
    .line 55
    new-instance v1, Lcom/byazt/ouz/rh;

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-direct {v1, v2, v4, v5, v6}, Lcom/byazt/ouz/rh;-><init>(IFII)V

    .line 59
    .line 60
    .line 61
    aput-object v1, v0, v9

    .line 62
    .line 63
    new-instance v1, Lcom/byazt/ouz/rh;

    .line 64
    .line 65
    const/16 v3, 0xf

    .line 66
    .line 67
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/byazt/ouz/rh;-><init>(IFII)V

    .line 68
    .line 69
    .line 70
    aput-object v1, v0, v2

    .line 71
    .line 72
    sput-object v0, Lcom/byazt/ouz/u;->u:[Lcom/byazt/ouz/rh;

    .line 73
    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ouz/BackupView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/vfu/a;->lo(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 13
    .line 14
    const v1, 0x7e06ff16

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 27
    .line 28
    const v1, 0x7e06fff3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 40
    .line 41
    const v2, 0x7e06ffe0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/ImageView;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 51
    .line 52
    const v3, 0x7e06ff8e

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/widget/ImageView;

    .line 60
    .line 61
    iput-object v2, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 64
    .line 65
    const v3, 0x7e06ffd0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object v2, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 77
    .line 78
    const v3, 0x7e06ffe4

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v2, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 90
    .line 91
    const v3, 0x7e06feb1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object v3, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 101
    .line 102
    const v4, 0x7e06feca

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Landroid/widget/TextView;

    .line 110
    .line 111
    iget-object v4, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 112
    .line 113
    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 114
    .line 115
    .line 116
    const/4 v3, 0x1

    .line 117
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 118
    .line 119
    .line 120
    iget v4, p0, Lcom/byazt/ouz/BackupView;->sp:I

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v0}, Lcom/byazt/ouz/u;->c(Landroid/widget/ImageView;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    .line 129
    .line 130
    new-instance v4, Lcom/byazt/ouz/u$3;

    .line 131
    .line 132
    invoke-direct {v4, p0}, Lcom/byazt/ouz/u$3;-><init>(Lcom/byazt/ouz/u;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getDescription()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getTitle()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_0

    .line 167
    .line 168
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    :cond_0
    invoke-virtual {p0, p0, v1}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v2, v3}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method private c(Landroid/view/View;Landroid/widget/TextView;Lcom/byazt/ete/ic;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 20
    :cond_1
    invoke-virtual {p3}, Lcom/byazt/ete/ic;->dn()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-static {p1, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Lcom/byazt/ete/ic;)V

    return-void

    .line 25
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 28
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Landroid/widget/ImageView;)V
    .locals 5

    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ete/zb;

    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 12
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ic/c;->uj(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Lcom/byazt/ui/UpieImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 14
    invoke-static {v2}, Lcom/byazt/ic/c;->i(Lcom/byazt/ete/ic;)Lcom/byazt/cph/c;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 15
    invoke-static {v3}, Lcom/byazt/nj/c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/tt;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 16
    invoke-static {v4}, Lcom/byazt/ic/c;->da(Lcom/byazt/ete/ic;)Lcom/byazt/ui/c;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/ui/UpieImageView;-><init>(Landroid/content/Context;Lcom/byazt/cph/c;Lcom/byazt/jzl/tt;Lcom/byazt/ui/c;)V

    .line 17
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/byazt/ui/UpieImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18
    invoke-static {p1, v0}, Lcom/byazt/ic/c;->c(Landroid/widget/ImageView;Lcom/byazt/ui/UpieImageView;)V

    :cond_0
    return-void
.end method

.method private da()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/vfu/a;->tk(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 13
    .line 14
    const v1, 0x7e06ff16

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 27
    .line 28
    const v1, 0x7e06fff3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 40
    .line 41
    const v2, 0x7e06ffe0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/ImageView;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 51
    .line 52
    const v3, 0x7e06ff8e

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/widget/ImageView;

    .line 60
    .line 61
    iput-object v2, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 64
    .line 65
    const v3, 0x7e06ffd0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object v2, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 77
    .line 78
    const v3, 0x7e06ffe4

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v2, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 90
    .line 91
    const v3, 0x7e06feb1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object v3, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 101
    .line 102
    const v4, 0x7e06feca

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Landroid/widget/TextView;

    .line 110
    .line 111
    iget-object v4, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 112
    .line 113
    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v0}, Lcom/byazt/ouz/u;->c(Landroid/widget/ImageView;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    .line 120
    .line 121
    new-instance v3, Lcom/byazt/ouz/u$6;

    .line 122
    .line 123
    invoke-direct {v3, p0}, Lcom/byazt/ouz/u$6;-><init>(Lcom/byazt/ouz/u;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getDescription()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getTitle()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    .line 159
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    :cond_0
    invoke-virtual {p0, p0, v1}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 169
    .line 170
    .line 171
    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0, v2, v0}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method private i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/vfu/a;->lo(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 13
    .line 14
    const v1, 0x7e06ff16

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 28
    .line 29
    const v3, 0x7e06fff3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/16 v3, 0x8

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 42
    .line 43
    const v3, 0x7e06ff8e

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/widget/ImageView;

    .line 51
    .line 52
    iput-object v2, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 55
    .line 56
    const v3, 0x7e06ffd0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v2, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 68
    .line 69
    const v3, 0x7e06ffe4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object v2, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 81
    .line 82
    const v3, 0x7e06feb1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroid/widget/TextView;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 92
    .line 93
    const v4, 0x7e06feca

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Landroid/widget/TextView;

    .line 101
    .line 102
    iget-object v4, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 103
    .line 104
    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    .line 108
    .line 109
    new-instance v4, Lcom/byazt/ouz/u$5;

    .line 110
    .line 111
    invoke-direct {v4, p0}, Lcom/byazt/ouz/u$5;-><init>(Lcom/byazt/ouz/u;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    iget-object v3, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getDescription()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getTitle()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    iget-object v3, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-nez v3, :cond_0

    .line 146
    .line 147
    iget-object v3, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    :cond_0
    iget-object v3, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    .line 157
    .line 158
    invoke-virtual {p0, v3}, Lcom/byazt/ouz/BackupView;->c(Lcom/byazt/ouz/NativeExpressView;)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    if-eqz v3, :cond_1

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 165
    .line 166
    .line 167
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 168
    .line 169
    iget v5, p0, Lcom/byazt/ouz/BackupView;->a:I

    .line 170
    .line 171
    mul-int/lit8 v6, v5, 0x9

    .line 172
    .line 173
    div-int/lit8 v6, v6, 0x10

    .line 174
    .line 175
    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .line 180
    .line 181
    :cond_1
    invoke-virtual {p0, p0, v1}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 182
    .line 183
    .line 184
    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v2, v0}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method private n()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/vfu/a;->lt(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v1, 0x7e06feef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    iget-object v1, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v2, 0x7e06feec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 5
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v3, 0x7e06feea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 6
    iget-object v3, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v4, 0x7e06ffdb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 7
    iget-object v4, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v5, 0x7e06ff8e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    .line 8
    iget-object v4, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v5, 0x7e06ffd0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 9
    iget-object v4, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v5, 0x7e06ffe4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 10
    iget-object v4, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v5, 0x7e06feb1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 11
    iget-object v5, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v6, 0x7e06feca

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 12
    iget-object v6, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-static {v5, v6}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 13
    iget-object v5, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v5}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/ete/zb;

    invoke-static {v5}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 14
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ete/zb;

    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 15
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ete/zb;

    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 16
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 17
    iget-object v0, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    new-instance v1, Lcom/byazt/ouz/u$2;

    invoke-direct {v1, p0}, Lcom/byazt/ouz/u$2;-><init>(Lcom/byazt/ouz/u;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_0
    invoke-virtual {p0, p0, v6}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 23
    invoke-virtual {p0, v4, v5}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    return-void
.end method

.method private n(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x140

    if-ne p1, v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/byazt/ouz/u;->ve()V

    .line 25
    iget-object p1, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    iget-object p1, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_dislike_icon_night"

    iget-object v2, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    invoke-static {p1, v0, v2, v1}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ouz/u;->tt()V

    .line 29
    iget-object p1, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 30
    iget-object p1, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_dislike_icon2"

    iget-object v2, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    invoke-static {p1, v0, v2, v1}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    :cond_1
    return-void
.end method

.method private sl()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/byazt/vfu/a;->l(Landroid/content/Context;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 20
    .line 21
    const v2, 0x7e06ff35

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/FrameLayout;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 31
    .line 32
    const v3, 0x7e06ffbb

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object v3, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 42
    .line 43
    const v4, 0x7e06fec2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    iget-object v4, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 53
    .line 54
    const v5, 0x7e06ff6a

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lcom/byazt/ff/RoundImageView;

    .line 62
    .line 63
    iget-object v5, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 64
    .line 65
    const v6, 0x7e06ff41

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 73
    .line 74
    iget-object v6, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 75
    .line 76
    const v7, 0x7e06ff38

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Landroid/widget/TextView;

    .line 84
    .line 85
    iget-object v7, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 86
    .line 87
    const v8, 0x7e06fea3

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Landroid/widget/TextView;

    .line 95
    .line 96
    iget-object v8, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 97
    .line 98
    const v9, 0x7e06ffb7

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    check-cast v8, Landroid/widget/TextView;

    .line 106
    .line 107
    iget-object v9, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 108
    .line 109
    const v10, 0x7e06ffa9

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    check-cast v9, Landroid/widget/ImageView;

    .line 117
    .line 118
    iget-object v10, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 119
    .line 120
    invoke-static {v10}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-eqz v10, :cond_b

    .line 125
    .line 126
    iget-object v10, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 127
    .line 128
    invoke-static {v10}, Lcom/byazt/ete/bx;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    const/4 v12, 0x0

    .line 137
    if-nez v11, :cond_1

    .line 138
    .line 139
    if-eqz v4, :cond_1

    .line 140
    .line 141
    invoke-static {v5, v12}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 142
    .line 143
    .line 144
    invoke-static {v10}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-interface {v5, v4}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    const/16 v10, 0x8

    .line 153
    .line 154
    invoke-static {v5, v10}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 155
    .line 156
    .line 157
    :goto_0
    if-eqz v2, :cond_2

    .line 158
    .line 159
    iget-object v5, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 160
    .line 161
    invoke-static {v5}, Lcom/byazt/ete/bx;->ve(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    :cond_2
    const/4 v5, 0x1

    .line 169
    const-string v10, "w"

    .line 170
    .line 171
    const v11, 0x461c4000    # 10000.0f

    .line 172
    .line 173
    .line 174
    const/16 v13, 0x2710

    .line 175
    .line 176
    const/4 v14, 0x4

    .line 177
    if-eqz v6, :cond_5

    .line 178
    .line 179
    iget-object v15, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 180
    .line 181
    invoke-static {v15}, Lcom/byazt/ete/bx;->uj(Lcom/byazt/ete/ic;)I

    .line 182
    .line 183
    .line 184
    move-result v15

    .line 185
    if-gez v15, :cond_3

    .line 186
    .line 187
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    invoke-static {v9, v14}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_3
    if-le v15, v13, :cond_4

    .line 195
    .line 196
    new-instance v13, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    int-to-float v15, v15

    .line 202
    div-float/2addr v15, v11

    .line 203
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    goto :goto_1

    .line 214
    :cond_4
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v13

    .line 218
    :goto_1
    new-array v15, v5, [Ljava/lang/Object;

    .line 219
    .line 220
    aput-object v13, v15, v12

    .line 221
    .line 222
    const-string v13, "\u7c89\u4e1d %1$s"

    .line 223
    .line 224
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    :cond_5
    :goto_2
    if-eqz v7, :cond_8

    .line 232
    .line 233
    iget-object v13, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 234
    .line 235
    invoke-static {v13}, Lcom/byazt/ete/bx;->n(Lcom/byazt/ete/ic;)I

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    if-gez v13, :cond_6

    .line 240
    .line 241
    invoke-static {v9, v14}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_6
    const/16 v9, 0x2710

    .line 249
    .line 250
    if-le v13, v9, :cond_7

    .line 251
    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    int-to-float v13, v13

    .line 258
    div-float/2addr v13, v11

    .line 259
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    goto :goto_3

    .line 270
    :cond_7
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    :goto_3
    new-array v5, v5, [Ljava/lang/Object;

    .line 275
    .line 276
    aput-object v9, v5, v12

    .line 277
    .line 278
    const-string v9, "\u89c2\u770b %1$s"

    .line 279
    .line 280
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    :cond_8
    :goto_4
    if-eqz v8, :cond_9

    .line 288
    .line 289
    iget-object v5, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 290
    .line 291
    invoke-static {v5}, Lcom/byazt/ete/bx;->a(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    :cond_9
    iget-object v5, v0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    .line 299
    .line 300
    invoke-virtual {v0, v5}, Lcom/byazt/ouz/BackupView;->c(Lcom/byazt/ouz/NativeExpressView;)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    if-eqz v5, :cond_a

    .line 305
    .line 306
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 307
    .line 308
    .line 309
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 310
    .line 311
    const/4 v10, -0x1

    .line 312
    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .line 317
    .line 318
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/byazt/ouz/u;->u()Lcom/byazt/hkv/c;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    const-string v9, "click_live_avata"

    .line 323
    .line 324
    invoke-direct {v0, v4, v5, v9}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string v4, "click_live_author_nickname"

    .line 328
    .line 329
    invoke-direct {v0, v2, v5, v4}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string v2, "click_live_author_follower_count"

    .line 333
    .line 334
    invoke-direct {v0, v6, v5, v2}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v2, "click_live_author_following_count"

    .line 338
    .line 339
    invoke-direct {v0, v7, v5, v2}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string v2, "click_live_author_description"

    .line 343
    .line 344
    invoke-direct {v0, v8, v5, v2}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    const-string v2, "click_live_feed"

    .line 348
    .line 349
    invoke-direct {v0, v1, v5, v2}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    const-string v1, "click_live_button"

    .line 353
    .line 354
    invoke-direct {v0, v3, v5, v1}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    :cond_b
    return-void
.end method

.method private sp()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/vfu/a;->tk(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 13
    .line 14
    const v1, 0x7e06ff16

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 26
    .line 27
    const v2, 0x7e06fff3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v2, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 40
    .line 41
    const v2, 0x7e06fffd

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/FrameLayout;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 51
    .line 52
    const v3, 0x7e06ffc9

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/widget/ImageView;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 62
    .line 63
    const v4, 0x7e06ff8e

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Landroid/widget/ImageView;

    .line 71
    .line 72
    iput-object v3, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 75
    .line 76
    const v4, 0x7e06ffd0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object v3, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 88
    .line 89
    const v4, 0x7e06ffe4

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v3, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object v3, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 101
    .line 102
    const v4, 0x7e06ff8f

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Landroid/widget/TextView;

    .line 110
    .line 111
    iget-object v4, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 112
    .line 113
    const v5, 0x7e06ff90

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Landroid/widget/TextView;

    .line 121
    .line 122
    iget-object v5, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 123
    .line 124
    const v6, 0x7e06feb1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Landroid/widget/TextView;

    .line 132
    .line 133
    iget-object v6, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 134
    .line 135
    const v7, 0x7e06ffc4

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Landroid/widget/TextView;

    .line 143
    .line 144
    iget-object v7, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 145
    .line 146
    const v8, 0x7e06ffa2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Lcom/byazt/ff/TTRatingBar;

    .line 154
    .line 155
    iget-object v8, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 156
    .line 157
    const v9, 0x7e06fea1

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    check-cast v8, Landroid/widget/TextView;

    .line 165
    .line 166
    iget-object v9, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 167
    .line 168
    invoke-static {v8, v9}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 169
    .line 170
    .line 171
    iget-object v8, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 172
    .line 173
    invoke-virtual {v8}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-static {v8}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-interface {v8, v2}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 182
    .line 183
    .line 184
    iget-object v2, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    .line 185
    .line 186
    new-instance v8, Lcom/byazt/ouz/u$4;

    .line 187
    .line 188
    invoke-direct {v8, p0}, Lcom/byazt/ouz/u$4;-><init>(Lcom/byazt/ouz/u;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-eqz v2, :cond_0

    .line 201
    .line 202
    iget-object v2, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 203
    .line 204
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lcom/byazt/ete/n;->n()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    goto :goto_0

    .line 213
    :cond_0
    const/4 v2, 0x4

    .line 214
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    const/4 v9, 0x1

    .line 219
    new-array v10, v9, [Ljava/lang/Object;

    .line 220
    .line 221
    int-to-float v11, v2

    .line 222
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    aput-object v11, v10, v1

    .line 227
    .line 228
    const-string v11, "%.1f"

    .line 229
    .line 230
    invoke-static {v8, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v9}, Lcom/byazt/ff/TTRatingBar;->setStarEmptyNum(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7, v2}, Lcom/byazt/ff/TTRatingBar;->setStarFillNum(I)V

    .line 241
    .line 242
    .line 243
    iget-object v2, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 244
    .line 245
    const/high16 v6, 0x41700000    # 15.0f

    .line 246
    .line 247
    invoke-static {v2, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    int-to-float v2, v2

    .line 252
    invoke-virtual {v7, v2}, Lcom/byazt/ff/TTRatingBar;->setStarImageWidth(F)V

    .line 253
    .line 254
    .line 255
    iget-object v2, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 256
    .line 257
    const/high16 v6, 0x41600000    # 14.0f

    .line 258
    .line 259
    invoke-static {v2, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    int-to-float v2, v2

    .line 264
    invoke-virtual {v7, v2}, Lcom/byazt/ff/TTRatingBar;->setStarImageHeight(F)V

    .line 265
    .line 266
    .line 267
    iget-object v2, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 268
    .line 269
    const/high16 v6, 0x40800000    # 4.0f

    .line 270
    .line 271
    invoke-static {v2, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    int-to-float v2, v2

    .line 276
    invoke-virtual {v7, v2}, Lcom/byazt/ff/TTRatingBar;->setStarImagePadding(F)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7}, Lcom/byazt/ff/TTRatingBar;->c()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getNameOrSource()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getTitle()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    iget-object v2, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getDescription()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .line 304
    .line 305
    iget-object v2, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 306
    .line 307
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getTitle()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    iget-object v2, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 315
    .line 316
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-nez v2, :cond_1

    .line 325
    .line 326
    iget-object v2, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    .line 334
    .line 335
    :cond_1
    iget-object v2, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    .line 336
    .line 337
    invoke-virtual {p0, v2}, Lcom/byazt/ouz/BackupView;->c(Lcom/byazt/ouz/NativeExpressView;)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    if-eqz v2, :cond_2

    .line 342
    .line 343
    iget v3, p0, Lcom/byazt/ouz/BackupView;->a:I

    .line 344
    .line 345
    mul-int/lit8 v3, v3, 0x7b

    .line 346
    .line 347
    div-int/lit16 v3, v3, 0x177

    .line 348
    .line 349
    mul-int/lit8 v4, v3, 0x10

    .line 350
    .line 351
    div-int/lit8 v4, v4, 0x9

    .line 352
    .line 353
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 354
    .line 355
    .line 356
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 357
    .line 358
    invoke-direct {v6, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    .line 363
    .line 364
    :cond_2
    invoke-virtual {p0, p0, v1}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, v5, v9}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 368
    .line 369
    .line 370
    return-void
.end method

.method private t()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/byazt/vfu/a;->pu(Landroid/content/Context;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 20
    .line 21
    const v2, 0x7e06fea5

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/FrameLayout;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 31
    .line 32
    const v3, 0x7e06ff73

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object v3, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 42
    .line 43
    const v4, 0x7e06ffe1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v4, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 53
    .line 54
    const v5, 0x7e06ff95

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object v5, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 64
    .line 65
    const v6, 0x7e06ffbe

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Lcom/byazt/ff/RoundImageView;

    .line 73
    .line 74
    iget-object v6, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 75
    .line 76
    const v7, 0x7e06ff8b

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 84
    .line 85
    iget-object v7, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 86
    .line 87
    const v8, 0x7e06fea6

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Landroid/widget/TextView;

    .line 95
    .line 96
    iget-object v8, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 97
    .line 98
    const v9, 0x7e06fed8

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    check-cast v8, Landroid/widget/TextView;

    .line 106
    .line 107
    iget-object v9, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 108
    .line 109
    const v10, 0x7e06fef7

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    check-cast v9, Landroid/widget/TextView;

    .line 117
    .line 118
    iget-object v10, v0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 119
    .line 120
    const v11, 0x7e06ffa9

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    check-cast v10, Landroid/widget/ImageView;

    .line 128
    .line 129
    iget-object v11, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 130
    .line 131
    invoke-static {v11}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-eqz v11, :cond_b

    .line 136
    .line 137
    iget-object v11, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 138
    .line 139
    invoke-static {v11}, Lcom/byazt/ete/bx;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    const/4 v13, 0x0

    .line 148
    if-nez v12, :cond_1

    .line 149
    .line 150
    if-eqz v5, :cond_1

    .line 151
    .line 152
    invoke-static {v6, v13}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 153
    .line 154
    .line 155
    invoke-static {v11}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-interface {v6, v5}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_1
    const/16 v11, 0x8

    .line 164
    .line 165
    invoke-static {v6, v11}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 166
    .line 167
    .line 168
    :goto_0
    if-eqz v3, :cond_2

    .line 169
    .line 170
    iget-object v6, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 171
    .line 172
    invoke-static {v6}, Lcom/byazt/ete/bx;->ve(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    :cond_2
    const/4 v6, 0x1

    .line 180
    const-string v11, "w"

    .line 181
    .line 182
    const v12, 0x461c4000    # 10000.0f

    .line 183
    .line 184
    .line 185
    const/16 v14, 0x2710

    .line 186
    .line 187
    const/4 v15, 0x4

    .line 188
    if-eqz v7, :cond_5

    .line 189
    .line 190
    iget-object v13, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 191
    .line 192
    invoke-static {v13}, Lcom/byazt/ete/bx;->uj(Lcom/byazt/ete/ic;)I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    if-gez v13, :cond_3

    .line 197
    .line 198
    invoke-virtual {v7, v15}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    invoke-static {v10, v15}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_3
    if-le v13, v14, :cond_4

    .line 206
    .line 207
    new-instance v14, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    int-to-float v13, v13

    .line 213
    div-float/2addr v13, v12

    .line 214
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    goto :goto_1

    .line 225
    :cond_4
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    :goto_1
    new-array v14, v6, [Ljava/lang/Object;

    .line 230
    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    aput-object v13, v14, v16

    .line 234
    .line 235
    const-string v13, "\u7c89\u4e1d %1$s"

    .line 236
    .line 237
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    :cond_5
    :goto_2
    if-eqz v8, :cond_8

    .line 245
    .line 246
    iget-object v13, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 247
    .line 248
    invoke-static {v13}, Lcom/byazt/ete/bx;->n(Lcom/byazt/ete/ic;)I

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    if-gez v13, :cond_6

    .line 253
    .line 254
    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    invoke-static {v10, v15}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_6
    const/16 v10, 0x2710

    .line 262
    .line 263
    if-le v13, v10, :cond_7

    .line 264
    .line 265
    new-instance v10, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    int-to-float v13, v13

    .line 271
    div-float/2addr v13, v12

    .line 272
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    goto :goto_3

    .line 283
    :cond_7
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    :goto_3
    new-array v6, v6, [Ljava/lang/Object;

    .line 288
    .line 289
    const/4 v11, 0x0

    .line 290
    aput-object v10, v6, v11

    .line 291
    .line 292
    const-string v10, "\u89c2\u770b %1$s"

    .line 293
    .line 294
    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    .line 302
    .line 303
    iget-object v6, v0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 304
    .line 305
    invoke-static {v6}, Lcom/byazt/ete/bx;->a(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    :cond_9
    iget-object v6, v0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    .line 313
    .line 314
    invoke-virtual {v0, v6}, Lcom/byazt/ouz/BackupView;->c(Lcom/byazt/ouz/NativeExpressView;)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    if-eqz v6, :cond_a

    .line 319
    .line 320
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 321
    .line 322
    .line 323
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 324
    .line 325
    const/4 v11, -0x1

    .line 326
    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    .line 331
    .line 332
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/byazt/ouz/u;->u()Lcom/byazt/hkv/c;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    const-string v10, "click_live_avata"

    .line 337
    .line 338
    invoke-direct {v0, v5, v6, v10}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    const-string v5, "click_live_author_nickname"

    .line 342
    .line 343
    invoke-direct {v0, v3, v6, v5}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    const-string v3, "click_live_author_follower_count"

    .line 347
    .line 348
    invoke-direct {v0, v7, v6, v3}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    const-string v3, "click_live_author_following_count"

    .line 352
    .line 353
    invoke-direct {v0, v8, v6, v3}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v3, "click_live_author_description"

    .line 357
    .line 358
    invoke-direct {v0, v2, v6, v3}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-string v2, "click_live_feed"

    .line 362
    .line 363
    invoke-direct {v0, v1, v6, v2}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v1, "click_live_button"

    .line 367
    .line 368
    invoke-direct {v0, v4, v6, v1}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    new-instance v1, Lcom/byazt/ouz/u$7;

    .line 372
    .line 373
    invoke-direct {v1, v0}, Lcom/byazt/ouz/u$7;-><init>(Lcom/byazt/ouz/u;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    .line 378
    .line 379
    :cond_b
    return-void
.end method

.method private u()Lcom/byazt/hkv/c;
    .locals 7

    .line 1
    new-instance v6, Lcom/byazt/ouz/u$8;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/byazt/ouz/BackupView;->n:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v4}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    move-object v0, v6

    .line 14
    move-object v1, p0

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/byazt/ouz/u$8;-><init>(Lcom/byazt/ouz/u;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/byazt/ouz/u$9;

    .line 19
    .line 20
    invoke-direct {v0, p0, v6}, Lcom/byazt/ouz/u$9;-><init>(Lcom/byazt/ouz/u;Lcom/byazt/hkv/c;)V

    .line 21
    .line 22
    .line 23
    const-class v1, Lcom/byazt/wdw/c;

    .line 24
    .line 25
    invoke-virtual {v6, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/byazt/wdw/c;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/byazt/wdw/c;->c(Lcom/byazt/ouz/ve;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    invoke-virtual {v1, v0}, Lcom/byazt/wdw/c;->c(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object v6
.end method

.method private uj(I)Lcom/byazt/ouz/rh;
    .locals 6

    .line 1
    sget-object v0, Lcom/byazt/ouz/u;->u:[Lcom/byazt/ouz/rh;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 2
    :try_start_0
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 3
    iget v5, v4, Lcom/byazt/ouz/rh;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, p1, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-object v2
.end method

.method private uj()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/vfu/a;->aw(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v1, 0x7e06ffe0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 7
    iget-object v1, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v2, 0x7e06ff8e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    .line 8
    iget-object v1, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v2, 0x7e06ffd0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 9
    iget-object v1, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v2, 0x7e06ffe4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 10
    iget-object v1, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v2, 0x7e06fecc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 11
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    const v3, 0x7e06feca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 12
    iget-object v3, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-direct {p0, v1, v2, v3}, Lcom/byazt/ouz/u;->c(Landroid/view/View;Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 13
    invoke-direct {p0, v0}, Lcom/byazt/ouz/u;->c(Landroid/widget/ImageView;)V

    .line 14
    iget-object v0, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    new-instance v1, Lcom/byazt/ouz/u$1;

    invoke-direct {v1, p0}, Lcom/byazt/ouz/u$1;-><init>(Lcom/byazt/ouz/u;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    return-void
.end method

.method private ve(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->id()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/byazt/ouz/u;->uj(I)Lcom/byazt/ouz/rh;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v2}, Lcom/byazt/ouz/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/byazt/ouz/BackupView;->a:I

    .line 3
    iget-object v1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v2}, Lcom/byazt/ouz/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/byazt/ouz/BackupView;->sp:I

    .line 4
    iget v1, p0, Lcom/byazt/ouz/BackupView;->a:I

    if-gtz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/byazt/ouz/BackupView;->a:I

    .line 6
    :cond_0
    iget v1, p0, Lcom/byazt/ouz/BackupView;->sp:I

    if-gtz v1, :cond_1

    .line 7
    iget v1, p0, Lcom/byazt/ouz/BackupView;->a:I

    int-to-float v1, v1

    iget v0, v0, Lcom/byazt/ouz/rh;->ve:F

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/byazt/ouz/BackupView;->sp:I

    .line 8
    :cond_1
    iget v0, p0, Lcom/byazt/ouz/BackupView;->a:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/byazt/ouz/BackupView;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 10
    iget-object v1, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/byazt/ouz/BackupView;->a:I

    .line 11
    iget v1, p0, Lcom/byazt/ouz/BackupView;->sp:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/byazt/ouz/BackupView;->sp:I

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/byazt/ouz/BackupView;->a:I

    iget v2, p0, Lcom/byazt/ouz/BackupView;->sp:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 14
    :cond_3
    iget v1, p0, Lcom/byazt/ouz/BackupView;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    iget v1, p0, Lcom/byazt/ouz/BackupView;->sp:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_4

    .line 17
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    const-string p1, "draw_ad"

    .line 19
    iput-object p1, p0, Lcom/byazt/ouz/BackupView;->n:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    invoke-direct {p0}, Lcom/byazt/ouz/u;->sl()V

    return-void

    .line 22
    :cond_5
    invoke-direct {p0}, Lcom/byazt/ouz/u;->x()V

    return-void

    :cond_6
    const-string p1, "embeded_ad"

    .line 23
    iput-object p1, p0, Lcom/byazt/ouz/BackupView;->n:Ljava/lang/String;

    .line 24
    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->id()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_b

    const/16 v0, 0xf

    if-eq p1, v0, :cond_a

    const/16 v0, 0x10

    if-eq p1, v0, :cond_9

    const/16 v0, 0x83

    if-eq p1, v0, :cond_8

    const/16 v0, 0xa6

    if-eq p1, v0, :cond_7

    .line 25
    invoke-direct {p0}, Lcom/byazt/ouz/u;->da()V

    return-void

    .line 26
    :cond_7
    invoke-direct {p0}, Lcom/byazt/ouz/u;->t()V

    return-void

    .line 27
    :cond_8
    invoke-direct {p0}, Lcom/byazt/ouz/u;->da()V

    return-void

    .line 28
    :cond_9
    invoke-direct {p0}, Lcom/byazt/ouz/u;->da()V

    return-void

    .line 29
    :cond_a
    invoke-direct {p0}, Lcom/byazt/ouz/u;->sp()V

    return-void

    .line 30
    :cond_b
    invoke-direct {p0}, Lcom/byazt/ouz/u;->i()V

    return-void

    .line 31
    :cond_c
    invoke-direct {p0}, Lcom/byazt/ouz/u;->n()V

    return-void

    .line 32
    :cond_d
    invoke-direct {p0}, Lcom/byazt/ouz/u;->a()V

    return-void

    .line 33
    :cond_e
    invoke-direct {p0}, Lcom/byazt/ouz/u;->uj()V

    return-void
.end method

.method private x()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/vfu/a;->lr(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 13
    .line 14
    const v1, 0x7e06ff16

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 24
    .line 25
    const v2, 0x7e06ffe0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/widget/ImageView;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 35
    .line 36
    const v3, 0x7e06ffd0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/widget/TextView;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 46
    .line 47
    const v4, 0x7e06ffe4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/widget/TextView;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 57
    .line 58
    const v5, 0x7e06feb1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 68
    .line 69
    const v6, 0x7e06feca

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getDescription()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/byazt/ouz/BackupView;->getTitle()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    iget-object v6, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 93
    .line 94
    invoke-static {v5, v6}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 95
    .line 96
    .line 97
    iget-object v5, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_0

    .line 108
    .line 109
    iget-object v5, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    iget-object v5, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 119
    .line 120
    invoke-static {v5}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    const/16 v6, 0x8

    .line 125
    .line 126
    if-nez v5, :cond_1

    .line 127
    .line 128
    invoke-direct {p0, v1}, Lcom/byazt/ouz/u;->c(Landroid/widget/ImageView;)V

    .line 129
    .line 130
    .line 131
    if-eqz v0, :cond_2

    .line 132
    .line 133
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    .line 141
    .line 142
    invoke-virtual {p0, v1}, Lcom/byazt/ouz/BackupView;->c(Lcom/byazt/ouz/NativeExpressView;)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget-object v5, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    .line 147
    .line 148
    instance-of v6, v5, Lcom/byazt/ouz/NativeExpressVideoView;

    .line 149
    .line 150
    if-eqz v6, :cond_3

    .line 151
    .line 152
    instance-of v6, v1, Lcom/byazt/un/NativeVideoTsView;

    .line 153
    .line 154
    if-eqz v6, :cond_3

    .line 155
    .line 156
    check-cast v5, Lcom/byazt/ouz/NativeExpressVideoView;

    .line 157
    .line 158
    move-object v6, v1

    .line 159
    check-cast v6, Lcom/byazt/un/NativeVideoTsView;

    .line 160
    .line 161
    invoke-virtual {v6, v5}, Lcom/byazt/un/NativeVideoTsView;->setVideoAdLoadListener(Lcom/byazt/dh/ve$uj;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v5}, Lcom/byazt/un/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/byazt/dh/ve$ve;)V

    .line 165
    .line 166
    .line 167
    :cond_3
    if-eqz v1, :cond_4

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 170
    .line 171
    .line 172
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 173
    .line 174
    const/4 v6, -0x1

    .line 175
    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/byazt/ouz/u;->z:Landroid/view/View;

    .line 183
    .line 184
    const/high16 v1, -0x1000000

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 187
    .line 188
    .line 189
    :goto_1
    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v3, v0}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v2, v0}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 194
    .line 195
    .line 196
    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0, v4, v0}, Lcom/byazt/ouz/BackupView;->c(Landroid/view/View;Z)V

    .line 198
    .line 199
    .line 200
    return-void
.end method


# virtual methods
.method public b_(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ouz/BackupView;->b_(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/ouz/u;->n(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)Lcom/byazt/un/NativeVideoTsView;
    .locals 7

    const-string v0, "draw_ad"

    .line 37
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/byazt/un/NativeDrawVideoTsView;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/byazt/un/NativeDrawVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/byazt/un/NativeVideoTsView;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public c(Landroid/view/View;ILcom/byazt/ete/gr;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getClickListener()Lcom/byazt/hkv/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getClickListener()Lcom/byazt/hkv/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/tt;->tt(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getClickCreativeListener()Lcom/byazt/hkv/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getClickCreativeListener()Lcom/byazt/hkv/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ouz/u;->gt:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/tt;->tt(Landroid/view/View;)V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/pop/ve;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2
    iput-object p1, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 3
    iput-object p2, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    .line 4
    iput-object p3, p0, Lcom/byazt/ouz/u;->nu:Lcom/byazt/pop/ve;

    .line 5
    invoke-static {p1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result p1

    iput p1, p0, Lcom/byazt/ouz/u;->yp:I

    .line 6
    invoke-virtual {p0, p1}, Lcom/byazt/ouz/BackupView;->tt(I)V

    .line 7
    iget-object p1, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/ouz/u;->ve(I)V

    .line 9
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/omf/x;->pu()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/byazt/ouz/u;->n(I)V

    const/16 p2, 0x9

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/byazt/ouz/u;->m:Lcom/byazt/ouz/NativeExpressView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public tt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/BackupView;->tt:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->id()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/16 v1, 0xf

    .line 29
    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    const/16 v1, 0x10

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 38
    .line 39
    const-string v1, "#FF3E3E3E"

    .line 40
    .line 41
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 59
    .line 60
    const-string v1, "#FF222222"

    .line 61
    .line 62
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 70
    .line 71
    const-string v1, "#FF505050"

    .line 72
    .line 73
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    .line 82
    .line 83
    const-string v1, "#FFBCBCBC"

    .line 84
    .line 85
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    .line 93
    .line 94
    const-string v1, "#FF999999"

    .line 95
    .line 96
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_1
    return-void
.end method

.method public ve()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/byazt/ouz/u;->rh:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v0, p0, Lcom/byazt/ouz/u;->my:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

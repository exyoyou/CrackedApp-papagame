.class public Lcom/byazt/kcl/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x173,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/kcl/tt$c;,
        Lcom/byazt/kcl/tt$tt;
    }
.end annotation


# instance fields
.field public a:I

.field public final c:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public da:Lcom/byazt/hkv/tt;

.field public gt:Z

.field public i:Lcom/byazt/kcl/c;

.field public m:I

.field public final my:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:I

.field public nu:Z

.field public qy:Z

.field public final rh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public rl:I

.field public sl:Lcom/byazt/ac/tt;

.field public sp:Lcom/byazt/go/AbstractEndCardFrameLayout;

.field public t:Lcom/byazt/ac/ve;

.field public tt:Lcom/byazt/ete/ic;

.field public final u:Lcom/byazt/rpt/c;

.field public uj:Z

.field public ve:Ljava/lang/String;

.field public x:Lcom/byazt/kcl/n;

.field public yp:Lcom/byazt/ac/c;

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/kcl/tt;->m:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/byazt/kcl/tt;->nu:Z

    .line 9
    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/byazt/kcl/tt;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/byazt/kcl/tt;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    iput v0, p0, Lcom/byazt/kcl/tt;->rl:I

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/byazt/kcl/tt;->gt:Z

    .line 27
    .line 28
    iput-object p1, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 29
    .line 30
    new-instance v0, Lcom/byazt/rpt/c;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/byazt/rpt/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/byazt/kcl/tt;->u:Lcom/byazt/rpt/c;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic a(Lcom/byazt/kcl/tt;)Lcom/byazt/rpt/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kcl/tt;->u:Lcom/byazt/rpt/c;

    return-object p0
.end method

.method private aw()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/widget/Toast;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 19
    .line 20
    .line 21
    const/16 v2, 0x11

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroid/widget/LinearLayout;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 30
    .line 31
    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const-string v3, "#CC161823"

    .line 35
    .line 36
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 47
    .line 48
    const/high16 v3, 0x41a00000    # 20.0f

    .line 49
    .line 50
    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iget-object v4, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 55
    .line 56
    const/high16 v5, 0x41400000    # 12.0f

    .line 57
    .line 58
    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iget-object v6, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 63
    .line 64
    invoke-static {v6, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iget-object v6, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 69
    .line 70
    invoke-static {v6, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual {v2, v1, v4, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 80
    .line 81
    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    const/4 v3, -0x1

    .line 85
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    const-string v3, "\u8bf7\u6c42\u5f02\u5e38\u65e0\u6cd5\u53d1\u653e\u5956\u52b1\uff0c\u8bf7\u5173\u95ed\u91cd\u8bd5"

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    const/4 v3, 0x2

    .line 94
    const/high16 v4, 0x41600000    # 14.0f

    .line 95
    .line 96
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->nb()Lcom/byazt/nr/d;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Lcom/byazt/kcl/tt$5;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/byazt/kcl/tt$5;-><init>(Lcom/byazt/kcl/tt;)V

    .line 117
    .line 118
    .line 119
    const-wide/16 v2, 0x1770

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method private c(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 44
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->hz()I

    move-result p1

    return p1
.end method

.method public static synthetic c(Lcom/byazt/kcl/tt;)Lcom/byazt/lcf/TTBaseVideoActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    return-object p0
.end method

.method private c(J)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 45
    iget v3, v0, Lcom/byazt/kcl/tt;->m:I

    div-int/lit16 v3, v3, 0x3e8

    .line 46
    iget-object v4, v0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    invoke-static {v4}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    move-result v4

    if-nez v4, :cond_1

    if-lez v3, :cond_0

    .line 47
    iget-object v5, v0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "s"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v11, v0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    if-lez v3, :cond_2

    .line 49
    iget v3, v0, Lcom/byazt/kcl/tt;->m:I

    int-to-long v3, v3

    sub-long/2addr v3, v1

    long-to-int v4, v3

    iput v4, v0, Lcom/byazt/kcl/tt;->m:I

    .line 50
    iget-object v3, v0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v3, v1, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(J)V

    :cond_2
    return-void
.end method

.method private ic()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/h;->c(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/byazt/kcl/tt;->qy:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->fr()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->by()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v0, v1, v2}, Lcom/byazt/biq/tt;->c(Landroid/content/Context;FI)[F

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    aget v2, v0, v1

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    aget v0, v0, v3

    .line 40
    .line 41
    iget-object v4, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->fr()F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/high16 v5, 0x42c80000    # 100.0f

    .line 48
    .line 49
    cmpl-float v4, v4, v5

    .line 50
    .line 51
    if-nez v4, :cond_0

    .line 52
    .line 53
    float-to-int v1, v2

    .line 54
    iput v1, p0, Lcom/byazt/kcl/tt;->n:I

    .line 55
    .line 56
    float-to-int v0, v0

    .line 57
    iput v0, p0, Lcom/byazt/kcl/tt;->a:I

    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    iget-object v4, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iget-object v5, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/byazt/ete/ic;->fr()F

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    iget-object v6, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 73
    .line 74
    invoke-virtual {v6}, Lcom/byazt/ete/ic;->qe()F

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    iget-object v7, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 79
    .line 80
    invoke-virtual {v7}, Lcom/byazt/ete/ic;->by()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    invoke-static {v4, v5, v6, v7}, Lcom/byazt/biq/tt;->c(Landroid/content/Context;FFI)[I

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    aget v1, v4, v1

    .line 89
    .line 90
    aget v3, v4, v3

    .line 91
    .line 92
    const/4 v5, 0x2

    .line 93
    aget v5, v4, v5

    .line 94
    .line 95
    const/4 v6, 0x3

    .line 96
    aget v4, v4, v6

    .line 97
    .line 98
    int-to-float v1, v1

    .line 99
    sub-float/2addr v2, v1

    .line 100
    int-to-float v5, v5

    .line 101
    sub-float/2addr v2, v5

    .line 102
    float-to-int v2, v2

    .line 103
    iput v2, p0, Lcom/byazt/kcl/tt;->n:I

    .line 104
    .line 105
    int-to-float v2, v3

    .line 106
    sub-float/2addr v0, v2

    .line 107
    int-to-float v3, v4

    .line 108
    sub-float/2addr v0, v3

    .line 109
    float-to-int v0, v0

    .line 110
    iput v0, p0, Lcom/byazt/kcl/tt;->a:I

    .line 111
    .line 112
    iget-object v0, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v4, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 123
    .line 124
    invoke-static {v4, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    iget-object v4, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 129
    .line 130
    invoke-static {v4, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iget-object v4, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 135
    .line 136
    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    iget-object v5, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 141
    .line 142
    invoke-static {v5, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    :catchall_0
    :cond_1
    return-void
.end method

.method public static synthetic n(Lcom/byazt/kcl/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kcl/tt;->aw()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/kcl/tt;)Lcom/byazt/kcl/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/kcl/tt;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/kcl/tt;->uj:Z

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/kcl/tt;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/ac/c;->rh()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->yp()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/ac/ve;->n(Z)V

    :cond_0
    return-void
.end method

.method public bx()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->cu()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/kcl/tt;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public c()V
    .locals 9

    .line 17
    iget-object v0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tx()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/rl;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Lcom/byazt/ac/ve;

    iget-object v2, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v3, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/kcl/tt;->ve:Ljava/lang/String;

    iget v5, p0, Lcom/byazt/kcl/tt;->n:I

    iget v6, p0, Lcom/byazt/kcl/tt;->a:I

    iget-boolean v7, p0, Lcom/byazt/kcl/tt;->uj:Z

    iget-object v8, p0, Lcom/byazt/kcl/tt;->sp:Lcom/byazt/go/AbstractEndCardFrameLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/byazt/ac/ve;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;IIZLcom/byazt/go/AbstractEndCardFrameLayout;)V

    iput-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->qi()Z

    move-result v0

    if-nez v0, :cond_2

    .line 21
    new-instance v0, Lcom/byazt/ac/tt;

    iget-object v2, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v3, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/kcl/tt;->ve:Ljava/lang/String;

    iget v5, p0, Lcom/byazt/kcl/tt;->n:I

    iget v6, p0, Lcom/byazt/kcl/tt;->a:I

    iget-boolean v7, p0, Lcom/byazt/kcl/tt;->uj:Z

    iget-object v8, p0, Lcom/byazt/kcl/tt;->sp:Lcom/byazt/go/AbstractEndCardFrameLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/byazt/ac/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;IIZLcom/byazt/go/AbstractEndCardFrameLayout;)V

    iput-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    :goto_0
    iput-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    return-void
.end method

.method public c(II)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/byazt/ac/c;->c(II)V

    :cond_0
    return-void
.end method

.method public c(JJI)V
    .locals 6

    .line 23
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/ac/c;->c(JJI)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;)V
    .locals 8

    .line 51
    iput-object p1, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 52
    iput-object p2, p0, Lcom/byazt/kcl/tt;->da:Lcom/byazt/hkv/tt;

    .line 53
    iget-object p2, p0, Lcom/byazt/kcl/tt;->u:Lcom/byazt/rpt/c;

    invoke-virtual {p2, p1}, Lcom/byazt/rpt/c;->c(Lcom/byazt/ete/ic;)V

    .line 54
    iget-object p2, p0, Lcom/byazt/kcl/tt;->u:Lcom/byazt/rpt/c;

    iget-object v0, p0, Lcom/byazt/kcl/tt;->da:Lcom/byazt/hkv/tt;

    invoke-virtual {p2, v0}, Lcom/byazt/rpt/c;->c(Lcom/byazt/hkv/tt;)V

    .line 55
    invoke-static {p1}, Lcom/byazt/aas/rl;->tt(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 56
    iget-object p2, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    if-nez p2, :cond_0

    .line 57
    new-instance p2, Lcom/byazt/ac/ve;

    iget-object v1, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v3, p0, Lcom/byazt/kcl/tt;->ve:Ljava/lang/String;

    iget v4, p0, Lcom/byazt/kcl/tt;->n:I

    iget v5, p0, Lcom/byazt/kcl/tt;->a:I

    iget-boolean v6, p0, Lcom/byazt/kcl/tt;->uj:Z

    iget-object v7, p0, Lcom/byazt/kcl/tt;->sp:Lcom/byazt/go/AbstractEndCardFrameLayout;

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/byazt/ac/ve;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;IIZLcom/byazt/go/AbstractEndCardFrameLayout;)V

    iput-object p2, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    iput-object p1, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 59
    new-instance p2, Lcom/byazt/kcl/tt$6;

    invoke-direct {p2, p0}, Lcom/byazt/kcl/tt$6;-><init>(Lcom/byazt/kcl/tt;)V

    invoke-virtual {p1, p2}, Lcom/byazt/ac/ve;->c(Lcom/byazt/kcl/tt$c;)V

    .line 60
    iget-object p1, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    new-instance p2, Lcom/byazt/kcl/tt$7;

    invoke-direct {p2, p0}, Lcom/byazt/kcl/tt$7;-><init>(Lcom/byazt/kcl/tt;)V

    invoke-virtual {p1, p2}, Lcom/byazt/ac/ve;->c(Lcom/byazt/kcl/tt$tt;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    iput-object p1, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 62
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz p1, :cond_2

    .line 63
    iget-object p2, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {p1, p2}, Lcom/byazt/ac/c;->c(Lcom/byazt/ete/ic;)V

    .line 64
    iget-object p1, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    iget-boolean p2, p0, Lcom/byazt/kcl/tt;->uj:Z

    iget-object v0, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    invoke-virtual {v1}, Lcom/byazt/kcl/n;->uj()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/byazt/ac/c;->c(ZLjava/util/Map;Landroid/view/View;)V

    .line 65
    iget-object p1, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    iget-object p2, p0, Lcom/byazt/kcl/tt;->i:Lcom/byazt/kcl/c;

    invoke-virtual {p2}, Lcom/byazt/kcl/c;->sp()Lcom/byazt/kcl/c$ve;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/kcl/tt;->da:Lcom/byazt/hkv/tt;

    invoke-virtual {p1, p2, v0}, Lcom/byazt/ac/c;->c(Landroid/webkit/DownloadListener;Lcom/byazt/hkv/tt;)V

    .line 66
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->tt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;Lcom/byazt/ua/c;Lcom/byazt/go/AbstractEndCardFrameLayout;)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/byazt/kcl/tt;->gt:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/byazt/kcl/tt;->gt:Z

    .line 10
    iput-object p1, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 11
    iput-object p2, p0, Lcom/byazt/kcl/tt;->da:Lcom/byazt/hkv/tt;

    .line 12
    iget-object p2, p0, Lcom/byazt/kcl/tt;->u:Lcom/byazt/rpt/c;

    invoke-virtual {p2, p1}, Lcom/byazt/rpt/c;->c(Lcom/byazt/ete/ic;)V

    .line 13
    iput-object p4, p0, Lcom/byazt/kcl/tt;->sp:Lcom/byazt/go/AbstractEndCardFrameLayout;

    .line 14
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->c()V

    .line 15
    invoke-virtual {p0, p3}, Lcom/byazt/kcl/tt;->c(Lcom/byazt/ua/c;)V

    .line 16
    iget-object p1, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/dl/uj;->c(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/kcl/tt;->qy:Z

    return-void
.end method

.method public c(Lcom/byazt/kcl/n;Lcom/byazt/kcl/c;ZLjava/lang/String;II)V
    .locals 0

    .line 2
    iput-boolean p3, p0, Lcom/byazt/kcl/tt;->uj:Z

    .line 3
    iput-object p1, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    .line 4
    iput-object p2, p0, Lcom/byazt/kcl/tt;->i:Lcom/byazt/kcl/c;

    .line 5
    iput-object p4, p0, Lcom/byazt/kcl/tt;->ve:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/byazt/kcl/tt;->n:I

    .line 7
    iput p6, p0, Lcom/byazt/kcl/tt;->a:I

    return-void
.end method

.method public c(Lcom/byazt/ua/c;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/byazt/kcl/tt;->u:Lcom/byazt/rpt/c;

    iget-object v2, p0, Lcom/byazt/kcl/tt;->da:Lcom/byazt/hkv/tt;

    invoke-virtual {v1, v2}, Lcom/byazt/rpt/c;->c(Lcom/byazt/hkv/tt;)V

    .line 31
    iget-object v1, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1, p1}, Lcom/byazt/ac/ve;->c(Lcom/byazt/ua/c;)V

    .line 33
    iget-object p1, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    iget-boolean v1, p0, Lcom/byazt/kcl/tt;->uj:Z

    iget-object v2, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    invoke-virtual {v2}, Lcom/byazt/kcl/n;->uj()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/byazt/ac/ve;->c(ZLjava/util/Map;Landroid/view/View;)V

    .line 34
    iget-object p1, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    iget-object v1, p0, Lcom/byazt/kcl/tt;->i:Lcom/byazt/kcl/c;

    invoke-virtual {v1}, Lcom/byazt/kcl/c;->sp()Lcom/byazt/kcl/c$ve;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/kcl/tt;->da:Lcom/byazt/hkv/tt;

    invoke-virtual {p1, v1, v2}, Lcom/byazt/ac/ve;->c(Landroid/webkit/DownloadListener;Lcom/byazt/hkv/tt;)V

    .line 35
    iget-object p1, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    new-instance v1, Lcom/byazt/kcl/tt$1;

    invoke-direct {v1, p0}, Lcom/byazt/kcl/tt$1;-><init>(Lcom/byazt/kcl/tt;)V

    invoke-virtual {p1, v1}, Lcom/byazt/ac/ve;->c(Lcom/byazt/kcl/tt$c;)V

    .line 36
    iget-object p1, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    new-instance v1, Lcom/byazt/kcl/tt$2;

    invoke-direct {v1, p0}, Lcom/byazt/kcl/tt$2;-><init>(Lcom/byazt/kcl/tt;)V

    invoke-virtual {p1, v1}, Lcom/byazt/ac/ve;->c(Lcom/byazt/kcl/tt$tt;)V

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    if-eqz p1, :cond_1

    .line 38
    iget-boolean v1, p0, Lcom/byazt/kcl/tt;->uj:Z

    iget-object v2, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    invoke-virtual {v2}, Lcom/byazt/kcl/n;->uj()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/byazt/ac/tt;->c(ZLjava/util/Map;Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    iget-object v0, p0, Lcom/byazt/kcl/tt;->i:Lcom/byazt/kcl/c;

    invoke-virtual {v0}, Lcom/byazt/kcl/c;->sp()Lcom/byazt/kcl/c$ve;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kcl/tt;->da:Lcom/byazt/hkv/tt;

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ac/tt;->c(Landroid/webkit/DownloadListener;Lcom/byazt/hkv/tt;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/xl/yp;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/ac/tt;->c(Lcom/byazt/xl/yp;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->nb()Lcom/byazt/nr/d;

    move-result-object v0

    new-instance v1, Lcom/byazt/kcl/tt$8;

    invoke-direct {v1, p0, p1}, Lcom/byazt/kcl/tt$8;-><init>(Lcom/byazt/kcl/tt;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Lcom/byazt/ac/c;->c(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1}, Lcom/byazt/ac/c;->c(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Lcom/byazt/ac/c;->tt(Z)V

    :cond_0
    return-void
.end method

.method public c(ZILjava/lang/String;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/ac/c;->c(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kcl/tt;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public da()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->da()I

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

.method public eo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ac/c;->rl()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public gr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->bx()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/byazt/kcl/tt;->c(Lcom/byazt/ete/ic;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/byazt/kcl/tt;->m:I

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    invoke-direct {p0, v0, v1}, Lcom/byazt/kcl/tt;->c(J)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public gt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->uj()Z

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

.method public gu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/ac/c;->i()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/byazt/ac/ve;

    .line 4
    .line 5
    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->yv()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->x()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public md()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/kcl/tt;->ve(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/ac/ve;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/kcl/tt;->nu:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->qp()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method public my()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->ve()Z

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

.method public n()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/ac/c;->u()V

    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 9

    .line 4
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->cu()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/kcl/tt;->nu:Z

    .line 6
    iget-object v1, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/byazt/ac/c;->gt()V

    .line 8
    iget-object v1, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    invoke-virtual {v1}, Lcom/byazt/ac/c;->a()V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/byazt/ac/c;->gu()V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/byazt/kcl/n;->sp()V

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->sv()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    invoke-virtual {v1}, Lcom/byazt/kcl/n;->uj()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 15
    :cond_4
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v1

    new-instance v3, Lcom/byazt/kcl/tt$3;

    invoke-direct {v3, p0}, Lcom/byazt/kcl/tt$3;-><init>(Lcom/byazt/kcl/tt;)V

    invoke-virtual {v1, v3}, Lcom/byazt/ukr/yp;->a(Lcom/byazt/ee/c;)V

    .line 16
    iget-object v1, p0, Lcom/byazt/kcl/tt;->u:Lcom/byazt/rpt/c;

    invoke-virtual {v1}, Lcom/byazt/rpt/c;->c()V

    .line 17
    iget-object v1, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    iget-object v1, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/byazt/lcf/TTBaseVideoActivity;->u(I)V

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    invoke-virtual {v1, v0}, Lcom/byazt/kcl/n;->c(Z)V

    .line 20
    iget-object v0, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->sp(Z)V

    .line 21
    iget-object v0, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->nb()Lcom/byazt/nr/d;

    move-result-object v0

    new-instance v1, Lcom/byazt/kcl/tt$4;

    invoke-direct {v1, p0}, Lcom/byazt/kcl/tt$4;-><init>(Lcom/byazt/kcl/tt;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_7

    .line 22
    iget-object p1, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 23
    iget-object v3, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    invoke-virtual {p1, v2}, Lcom/byazt/kcl/n;->n(Z)V

    .line 25
    iget-object p1, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    iget-object v0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->fe()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/kcl/n;->tt(Z)V

    :cond_7
    return-void
.end method

.method public nb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->gr()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, "endcard"

    .line 11
    .line 12
    return-object v0
.end method

.method public nu()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/xd;->sl(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->rh()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->my()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/byazt/ete/xd;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->qi()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->gt()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/byazt/aas/rl;->tt(Lcom/byazt/ete/ic;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    :cond_2
    return v2

    .line 63
    :cond_3
    const/4 v0, 0x0

    .line 64
    return v0
.end method

.method public or()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/ve;->zb()Z

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

.method public p()Lcom/byazt/omf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/ve;->eo()Lcom/byazt/omf/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public pf()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/byazt/fcd/c;->pf()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Lcom/byazt/ete/kp;->tt(Lcom/byazt/ete/ic;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/byazt/kcl/tt;->rl:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/kcl/tt;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/byazt/ete/kp;->rl(Lcom/byazt/ete/ic;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/byazt/fh/a;->ve:Z

    .line 32
    .line 33
    return-void
.end method

.method public qp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->u:Lcom/byazt/rpt/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/rpt/c;->ve()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public qy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public rh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->tt()Z

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

.method public rl()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kcl/tt;->nu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/byazt/ac/ve;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/ac/ve;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    instance-of v0, v0, Lcom/byazt/ac/tt;

    .line 21
    .line 22
    return v0
.end method

.method public sl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->sl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public sp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/tt;->z()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/ac/ve;->z()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public sv()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/kcl/tt;->rl:I

    .line 2
    .line 3
    return v0
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->nu()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/ac/ve;->p()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/tt;->md()V

    :cond_1
    return-void
.end method

.method public tt(II)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/byazt/ac/ve;->tt(II)V

    :cond_0
    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/byazt/kcl/tt;->m:I

    if-ltz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->z()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/ac/c;->uj(Z)V

    :cond_1
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->my()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public uj()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->bx()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/byazt/kcl/tt;->m:I

    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(I)V

    const-wide/16 v0, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/byazt/kcl/tt;->c(J)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/byazt/ac/c;->zm()V

    :cond_2
    return-void
.end method

.method public uj(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/kcl/tt;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public ve()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/ac/c;->t()V

    :cond_0
    return-void
.end method

.method public ve(Z)V
    .locals 1

    .line 4
    iput-boolean p1, p0, Lcom/byazt/kcl/tt;->z:Z

    .line 5
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/byazt/ac/ve;->a(Z)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->m()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public yp()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->to()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->gr()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->ve(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->a(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->fe()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->sp(Z)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/byazt/kcl/tt;->ic()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->qi()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/byazt/ete/xd;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

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
    if-nez v0, :cond_1

    .line 71
    .line 72
    new-instance v0, Lcom/byazt/ac/tt;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 75
    .line 76
    iget-object v4, p0, Lcom/byazt/kcl/tt;->tt:Lcom/byazt/ete/ic;

    .line 77
    .line 78
    iget-object v5, p0, Lcom/byazt/kcl/tt;->ve:Ljava/lang/String;

    .line 79
    .line 80
    iget v6, p0, Lcom/byazt/kcl/tt;->n:I

    .line 81
    .line 82
    iget v7, p0, Lcom/byazt/kcl/tt;->a:I

    .line 83
    .line 84
    iget-boolean v8, p0, Lcom/byazt/kcl/tt;->uj:Z

    .line 85
    .line 86
    iget-object v9, p0, Lcom/byazt/kcl/tt;->sp:Lcom/byazt/go/AbstractEndCardFrameLayout;

    .line 87
    .line 88
    move-object v2, v0

    .line 89
    invoke-direct/range {v2 .. v9}, Lcom/byazt/ac/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;IIZLcom/byazt/go/AbstractEndCardFrameLayout;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    .line 93
    .line 94
    iget-boolean v2, p0, Lcom/byazt/kcl/tt;->uj:Z

    .line 95
    .line 96
    iget-object v3, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    iget-object v4, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/byazt/kcl/n;->uj()Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v0, v2, v3, v4}, Lcom/byazt/ac/tt;->c(ZLjava/util/Map;Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/byazt/kcl/tt;->i:Lcom/byazt/kcl/c;

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/byazt/kcl/c;->sp()Lcom/byazt/kcl/c$ve;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/byazt/kcl/tt;->da:Lcom/byazt/hkv/tt;

    .line 120
    .line 121
    invoke-virtual {v0, v2, v3}, Lcom/byazt/ac/tt;->c(Landroid/webkit/DownloadListener;Lcom/byazt/hkv/tt;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/byazt/kcl/tt;->tt()V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 130
    .line 131
    :cond_1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 132
    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/byazt/ac/c;->n()V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 139
    .line 140
    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Lcom/byazt/ac/c;->c(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 147
    .line 148
    instance-of v2, v2, Lcom/byazt/ac/tt;

    .line 149
    .line 150
    xor-int/2addr v1, v2

    .line 151
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/byazt/kcl/tt;->x:Lcom/byazt/kcl/n;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public yv()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->ve()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ac/c;->sp()Z

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

.method public zb()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/byazt/kcl/tt;->c(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public zm()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/kcl/tt;->ve(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/ac/c;->ve()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/byazt/kcl/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    instance-of v2, v2, Lcom/byazt/fcd/x;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    :cond_0
    invoke-virtual {v0, v1}, Lcom/byazt/ac/ve;->c(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, v1}, Lcom/byazt/kcl/tt;->n(Z)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/byazt/kcl/tt;->sl:Lcom/byazt/ac/tt;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/kcl/tt;->t:Lcom/byazt/ac/ve;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/byazt/kcl/tt;->yp:Lcom/byazt/ac/c;

    .line 43
    .line 44
    :cond_2
    return-void
.end method

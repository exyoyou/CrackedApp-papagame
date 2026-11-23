.class final Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "j"
.end annotation


# instance fields
.field private final b:Landroid/view/animation/Interpolator;

.field private final c:I

.field private final d:I

.field private final e:J

.field private f:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;

.field private g:Z

.field private h:J

.field private i:I

.field final synthetic j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;IIJLcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "fromY",
            "toY",
            "duration",
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->g:Z

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->h:J

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->i:I

    .line 15
    .line 16
    iput p2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->d:I

    .line 17
    .line 18
    iput p3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->c:I

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->b:Landroid/view/animation/Interpolator;

    .line 25
    .line 26
    iput-wide p4, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->e:J

    .line 27
    .line 28
    iput-object p6, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->f:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->g:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->h:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->h:J

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-wide v2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->h:J

    .line 21
    .line 22
    sub-long/2addr v0, v2

    .line 23
    const-wide/16 v2, 0x3e8

    .line 24
    .line 25
    mul-long v0, v0, v2

    .line 26
    .line 27
    iget-wide v4, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->e:J

    .line 28
    .line 29
    div-long/2addr v0, v4

    .line 30
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iget v2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->d:I

    .line 41
    .line 42
    iget v3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->c:I

    .line 43
    .line 44
    sub-int/2addr v2, v3

    .line 45
    int-to-float v2, v2

    .line 46
    iget-object v3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->b:Landroid/view/animation/Interpolator;

    .line 47
    .line 48
    long-to-float v0, v0

    .line 49
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 50
    .line 51
    div-float/2addr v0, v1

    .line 52
    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    mul-float v2, v2, v0

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->d:I

    .line 63
    .line 64
    sub-int/2addr v1, v0

    .line 65
    iput v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->i:I

    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->g:Z

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->c:I

    .line 77
    .line 78
    iget v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->i:I

    .line 79
    .line 80
    if-eq v0, v1, :cond_1

    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;

    .line 83
    .line 84
    invoke-static {v0, p0}, Lcom/join/mgps/pulltorefresh/library/internal/c;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->f:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-interface {v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;->a()V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_1
    return-void
.end method

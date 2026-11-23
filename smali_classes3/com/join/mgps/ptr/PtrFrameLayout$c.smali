.class Lcom/join/mgps/ptr/PtrFrameLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ptr/PtrFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private b:I

.field private c:Landroid/widget/Scroller;

.field private d:Z

.field private e:I

.field private f:I

.field final synthetic g:Lcom/join/mgps/ptr/PtrFrameLayout;


# direct methods
.method public constructor <init>(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->d:Z

    .line 8
    .line 9
    new-instance v0, Landroid/widget/Scroller;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Landroid/widget/Scroller;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/ptr/PtrFrameLayout$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/ptr/PtrFrameLayout$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method private d()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Landroid/widget/Scroller;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Landroid/widget/Scroller;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->c(Lcom/join/mgps/ptr/PtrFrameLayout;)Lcom/join/mgps/ptr/indicator/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v0, v2, v3

    .line 26
    .line 27
    const-string v0, "finish, currentPos:%s"

    .line 28
    .line 29
    invoke-static {v1, v0, v2}, Lz6/a;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->x()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->d:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Landroid/widget/Scroller;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Landroid/widget/Scroller;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->w()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public h(II)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "duration"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->c(Lcom/join/mgps/ptr/PtrFrameLayout;)Lcom/join/mgps/ptr/indicator/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/indicator/a;->t(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->c(Lcom/join/mgps/ptr/PtrFrameLayout;)Lcom/join/mgps/ptr/indicator/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->e:I

    .line 25
    .line 26
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:I

    .line 27
    .line 28
    sub-int v5, p1, v0

    .line 29
    .line 30
    sget-boolean v1, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v7, 0x1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    new-array v3, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    aput-object v0, v3, v2

    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    aput-object v0, v3, v7

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    aput-object p1, v3, v0

    .line 61
    .line 62
    const-string p1, "tryToScrollTo: start: %s, distance:%s, to:%s"

    .line 63
    .line 64
    invoke-static {v1, p1, v3}, Lz6/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    iput v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:I

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Landroid/widget/Scroller;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Landroid/widget/Scroller;

    .line 83
    .line 84
    invoke-virtual {p1, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Landroid/widget/Scroller;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    const/4 v3, 0x0

    .line 91
    const/4 v4, 0x0

    .line 92
    move v6, p2

    .line 93
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    iput-boolean v7, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->d:Z

    .line 102
    .line 103
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Landroid/widget/Scroller;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c:Landroid/widget/Scroller;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget v4, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:I

    .line 30
    .line 31
    sub-int v4, v3, v4

    .line 32
    .line 33
    sget-boolean v5, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 34
    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    iget-object v5, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 40
    .line 41
    iget-object v5, v5, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v6, 0x7

    .line 44
    new-array v6, v6, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    aput-object v7, v6, v1

    .line 51
    .line 52
    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->e:I

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    aput-object v1, v6, v2

    .line 59
    .line 60
    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->f:I

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v2, 0x2

    .line 67
    aput-object v1, v6, v2

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->c(Lcom/join/mgps/ptr/PtrFrameLayout;)Lcom/join/mgps/ptr/indicator/a;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x3

    .line 84
    aput-object v1, v6, v2

    .line 85
    .line 86
    const/4 v1, 0x4

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    aput-object v2, v6, v1

    .line 92
    .line 93
    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:I

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/4 v2, 0x5

    .line 100
    aput-object v1, v6, v2

    .line 101
    .line 102
    const/4 v1, 0x6

    .line 103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    aput-object v2, v6, v1

    .line 108
    .line 109
    const-string v1, "scroll: %s, start: %s, to: %s, currentPos: %s, current :%s, last: %s, delta: %s"

    .line 110
    .line 111
    invoke-static {v5, v1, v6}, Lz6/a;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    if-nez v0, :cond_3

    .line 115
    .line 116
    iput v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b:I

    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 119
    .line 120
    int-to-float v1, v4

    .line 121
    invoke-static {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->d(Lcom/join/mgps/ptr/PtrFrameLayout;F)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->e()V

    .line 131
    .line 132
    .line 133
    :goto_2
    return-void
.end method

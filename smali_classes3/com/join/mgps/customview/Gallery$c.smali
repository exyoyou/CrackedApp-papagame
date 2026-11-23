.class Lcom/join/mgps/customview/Gallery$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final b:Landroid/widget/Scroller;

.field private c:I

.field final synthetic d:Lcom/join/mgps/customview/Gallery;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/Gallery;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/widget/Scroller;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->b:Landroid/widget/Scroller;

    .line 16
    .line 17
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/Gallery$c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/Gallery$c;->c(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/Gallery$c;)Landroid/widget/Scroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/Gallery$c;->b:Landroid/widget/Scroller;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scrollIntoSlots"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->b:Landroid/widget/Scroller;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/customview/Gallery;->D(Lcom/join/mgps/customview/Gallery;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "distance"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery$c;->d()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/join/mgps/customview/Gallery$c;->c:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/Gallery$c;->b:Landroid/widget/Scroller;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    neg-int v4, p1

    .line 15
    const/4 v5, 0x0

    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/customview/Gallery;->C(Lcom/join/mgps/customview/Gallery;)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public g(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initialVelocity"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery$c;->d()V

    .line 5
    .line 6
    .line 7
    if-gez p1, :cond_1

    .line 8
    .line 9
    const v0, 0x7fffffff

    .line 10
    .line 11
    .line 12
    const v2, 0x7fffffff

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    iput v2, p0, Lcom/join/mgps/customview/Gallery$c;->c:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/customview/Gallery$c;->b:Landroid/widget/Scroller;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const v7, 0x7fffffff

    .line 26
    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const v9, 0x7fffffff

    .line 30
    .line 31
    .line 32
    move v4, p1

    .line 33
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public h(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scrollIntoSlots"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/Gallery$c;->c(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/Gallery$c;->c(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/customview/Gallery;->F(Lcom/join/mgps/customview/Gallery;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->b:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v3, p0, Lcom/join/mgps/customview/Gallery$c;->c:I

    .line 27
    .line 28
    sub-int/2addr v3, v0

    .line 29
    if-lez v3, :cond_2

    .line 30
    .line 31
    iget-object v4, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 32
    .line 33
    invoke-static {v4}, Lcom/join/mgps/customview/Gallery;->H(Lcom/join/mgps/customview/Gallery;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 40
    .line 41
    iget v6, v5, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    add-int/2addr v6, v5

    .line 48
    sub-int/2addr v6, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 51
    .line 52
    iget v6, v5, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 53
    .line 54
    :goto_0
    invoke-static {v4, v6}, Lcom/join/mgps/customview/Gallery;->G(Lcom/join/mgps/customview/Gallery;I)I

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 64
    .line 65
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    sub-int/2addr v4, v5

    .line 70
    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    sub-int/2addr v4, v5

    .line 77
    sub-int/2addr v4, v2

    .line 78
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 84
    .line 85
    invoke-static {v4}, Lcom/join/mgps/customview/Gallery;->H(Lcom/join/mgps/customview/Gallery;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_3

    .line 90
    .line 91
    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 92
    .line 93
    iget v5, v5, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 97
    .line 98
    iget v6, v5, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 99
    .line 100
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    add-int/2addr v6, v5

    .line 105
    add-int/lit8 v5, v6, -0x1

    .line 106
    .line 107
    :goto_1
    invoke-static {v4, v5}, Lcom/join/mgps/customview/Gallery;->G(Lcom/join/mgps/customview/Gallery;I)I

    .line 108
    .line 109
    .line 110
    iget-object v4, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 111
    .line 112
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 117
    .line 118
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    sub-int/2addr v4, v5

    .line 123
    iget-object v5, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    sub-int/2addr v4, v5

    .line 130
    sub-int/2addr v4, v2

    .line 131
    neg-int v4, v4

    .line 132
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    :goto_2
    iget-object v4, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 137
    .line 138
    invoke-virtual {v4, v3}, Lcom/join/mgps/customview/Gallery;->g0(I)V

    .line 139
    .line 140
    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    iget-object v1, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 144
    .line 145
    invoke-static {v1}, Lcom/join/mgps/customview/Gallery;->E(Lcom/join/mgps/customview/Gallery;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_4

    .line 150
    .line 151
    iput v0, p0, Lcom/join/mgps/customview/Gallery$c;->c:I

    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$c;->d:Lcom/join/mgps/customview/Gallery;

    .line 154
    .line 155
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_4
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/Gallery$c;->c(Z)V

    .line 160
    .line 161
    .line 162
    :goto_3
    return-void
.end method

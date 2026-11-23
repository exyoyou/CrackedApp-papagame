.class final Lit/sephiroth/android/library/widget/AbsHListView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic b:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    iget v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 4
    .line 5
    if-nez v1, :cond_5

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 9
    .line 10
    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 11
    .line 12
    iget v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 13
    .line 14
    sub-int/2addr v2, v3

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_5

    .line 26
    .line 27
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    iput v3, v2, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 31
    .line 32
    iget-boolean v3, v2, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    if-nez v3, :cond_4

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 46
    .line 47
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 51
    .line 52
    iget v2, v1, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 53
    .line 54
    invoke-virtual {v1, v2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/View;->isLongClickable()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 73
    .line 74
    iget-object v2, v2, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    instance-of v3, v2, Landroid/graphics/drawable/TransitionDrawable;

    .line 85
    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 99
    .line 100
    .line 101
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 102
    .line 103
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 104
    .line 105
    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->M(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-nez v1, :cond_2

    .line 110
    .line 111
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 112
    .line 113
    new-instance v2, Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 114
    .line 115
    const/4 v3, 0x0

    .line 116
    invoke-direct {v2, v1, v3}, Lit/sephiroth/android/library/widget/AbsHListView$e;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->N(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$e;)Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 120
    .line 121
    .line 122
    :cond_2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 123
    .line 124
    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->M(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView$o;->a()V

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 132
    .line 133
    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->M(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    int-to-long v3, v0

    .line 138
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 143
    .line 144
    iput v4, v0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_4
    iput v4, v2, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 148
    .line 149
    :cond_5
    :goto_1
    return-void
.end method

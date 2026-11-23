.class public abstract Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/pulltorefresh/library/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;,
        Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;,
        Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;,
        Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;,
        Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;,
        Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;,
        Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g;,
        Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f;,
        Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;,
        Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/join/mgps/pulltorefresh/library/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final A:Z = false

.field static final B:Ljava/lang/String; = "PullToRefresh"

.field static final C:F = 2.0f

.field public static final D:I = 0xc8

.field public static final E:I = 0x145

.field static final F:I = 0xe1

.field static final G:Ljava/lang/String; = "ptr_state"

.field static final H:Ljava/lang/String; = "ptr_mode"

.field static final I:Ljava/lang/String; = "ptr_current_mode"

.field static final J:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final K:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final L:Ljava/lang/String; = "ptr_super"

.field static final z:Z = true


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

.field private i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

.field private j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

.field k:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/FrameLayout;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/view/animation/Interpolator;

.field private s:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field private t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

.field private u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

.field private v:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private w:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private x:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f<",
            "TT;>;"
        }
    .end annotation
.end field

.field private y:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase<",
            "TT;>.j;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 3
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 4
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->m:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->o:Z

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->p:Z

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->q:Z

    .line 10
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->s:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 14
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 15
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->m:Z

    .line 17
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n:Z

    .line 18
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->o:Z

    .line 19
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->p:Z

    .line 20
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->q:Z

    .line 21
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->s:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mode"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 25
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 26
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->m:Z

    .line 28
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n:Z

    .line 29
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->o:Z

    .line 30
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->p:Z

    .line 31
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->q:Z

    .line 32
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->s:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 33
    iput-object p2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    const/4 p2, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "mode",
            "animStyle"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 37
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 38
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->m:Z

    .line 40
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n:Z

    .line 41
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->o:Z

    .line 42
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->p:Z

    .line 43
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->q:Z

    .line 44
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 45
    iput-object p2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 46
    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->s:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    const/4 p2, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private E()V
    .locals 7

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->f:F

    .line 17
    .line 18
    iget v2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->d:F

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->e:F

    .line 22
    .line 23
    iget v2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->c:F

    .line 24
    .line 25
    :goto_0
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    .line 26
    .line 27
    iget-object v4, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    aget v4, v3, v4

    .line 34
    .line 35
    const/high16 v5, 0x40000000    # 2.0f

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    if-eq v4, v1, :cond_1

    .line 39
    .line 40
    sub-float/2addr v0, v2

    .line 41
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    div-float/2addr v0, v5

    .line 46
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sub-float/2addr v0, v2

    .line 56
    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    div-float/2addr v0, v5

    .line 61
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    :goto_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    .line 70
    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->a()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    int-to-float v4, v4

    .line 85
    int-to-float v5, v2

    .line 86
    div-float/2addr v4, v5

    .line 87
    iget-object v5, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    aget v3, v3, v5

    .line 94
    .line 95
    if-eq v3, v1, :cond_2

    .line 96
    .line 97
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 98
    .line 99
    invoke-virtual {v1, v4}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c(F)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 104
    .line 105
    invoke-virtual {v1, v4}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c(F)V

    .line 106
    .line 107
    .line 108
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 109
    .line 110
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    if-eq v1, v3, :cond_3

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-lt v2, v1, :cond_3

    .line 120
    .line 121
    new-array v0, v4, [Z

    .line 122
    .line 123
    invoke-virtual {p0, v3, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 128
    .line 129
    if-ne v1, v3, :cond_4

    .line 130
    .line 131
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-ge v2, v0, :cond_4

    .line 136
    .line 137
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 138
    .line 139
    new-array v1, v4, [Z

    .line 140
    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_3
    return-void
.end method

.method private final J(IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scrollValue",
            "duration"
        }
    .end annotation

    .line 1
    const-wide/16 v4, 0x0

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->K(IJJLcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final K(IJJLcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "newScrollValue",
            "duration",
            "delayMillis",
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->y:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    aget v0, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :goto_0
    move v3, v0

    .line 33
    if-eq v3, p1, :cond_4

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->r:Landroid/view/animation/Interpolator;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->r:Landroid/view/animation/Interpolator;

    .line 45
    .line 46
    :cond_2
    new-instance v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    move-object v2, p0

    .line 50
    move v4, p1

    .line 51
    move-wide v5, p2

    .line 52
    move-object v7, p6

    .line 53
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;-><init>(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;IIJLcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->y:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$j;

    .line 57
    .line 58
    const-wide/16 p1, 0x0

    .line 59
    .line 60
    cmp-long p3, p4, p1

    .line 61
    .line 62
    if-lez p3, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    return-void
.end method

.method private final M(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 1
    const-wide/16 v2, 0xc8

    .line 2
    .line 3
    const-wide/16 v4, 0x0

    .line 4
    .line 5
    new-instance v6, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$c;

    .line 6
    .line 7
    invoke-direct {v6, p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$c;-><init>(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;)V

    .line 8
    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move v1, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->K(IJJLcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, -0x1

    .line 15
    const/4 v3, -0x2

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    .line 20
    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 25
    .line 26
    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr v0, v2

    .line 24
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    div-float/2addr v0, v2

    .line 35
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    return v0
.end method

.method static synthetic h(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;IJJLcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->K(IJJLcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->r:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object p0
.end method

.method private k(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "refreshableView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->l:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    invoke-virtual {v0, p2, p1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->l:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    .line 16
    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->m(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->v:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->w:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 14
    .line 15
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v0, p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g;->b(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 24
    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v0, p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g;->a(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method private t(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/16 v0, 0x11

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->b:I

    .line 38
    .line 39
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->PullToRefresh:[I

    .line 40
    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/16 v3, 0xc

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v3}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 62
    .line 63
    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v3}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iput-object v3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->s:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 78
    .line 79
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->q(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iput-object p2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->k:Landroid/view/View;

    .line 84
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->k(Landroid/content/Context;Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    sget-object p2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 89
    .line 90
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->o(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iput-object p2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 95
    .line 96
    sget-object p2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 97
    .line 98
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->o(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 103
    .line 104
    const/16 p1, 0xe

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_3

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    iget-object p2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->k:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    const-string p1, "ptrAdapterViewBackground"

    .line 131
    .line 132
    const-string p2, "ptrRefreshableViewBackground"

    .line 133
    .line 134
    invoke-static {p1, p2}, Lcom/join/mgps/pulltorefresh/library/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    iget-object p2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->k:Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_1
    const/16 p1, 0xd

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_5

    .line 155
    .line 156
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    iput-boolean p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->p:Z

    .line 161
    .line 162
    :cond_5
    const/16 p1, 0x10

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-eqz p2, :cond_6

    .line 169
    .line 170
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    iput-boolean p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n:Z

    .line 175
    .line 176
    :cond_6
    invoke-virtual {p0, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->s(Landroid/content/res/TypedArray;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->O()V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method private v()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_3

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    return v3

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->w()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->x()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :cond_2
    :goto_0
    return v1

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->x()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->w()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    return v0
.end method


# virtual methods
.method protected A()V
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method protected B(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "doScroll"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g()V

    .line 25
    .line 26
    .line 27
    :cond_1
    if-eqz p1, :cond_4

    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->m:Z

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    new-instance p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$a;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$a;-><init>(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    aget v0, v0, v1

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    if-eq v0, v1, :cond_2

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    if-eq v0, v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    neg-int v0, v0

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->L(ILcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->L(ILcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->I(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n()V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method protected C()V
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->i()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->i()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method protected D()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->q:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->I(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected final F()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const v1, 0x3f99999a    # 1.2f

    .line 7
    .line 8
    .line 9
    mul-float v0, v0, v1

    .line 10
    .line 11
    float-to-int v0, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    sget-object v5, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    aget v5, v5, v6

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    const/4 v7, 0x1

    .line 42
    const/4 v8, 0x0

    .line 43
    if-eq v5, v7, :cond_3

    .line 44
    .line 45
    if-eq v5, v6, :cond_0

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 59
    .line 60
    .line 61
    neg-int v2, v0

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v2, 0x0

    .line 64
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    iget-object v4, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 73
    .line 74
    invoke-virtual {v4, v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 75
    .line 76
    .line 77
    neg-int v4, v0

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const/4 v4, 0x0

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 92
    .line 93
    .line 94
    neg-int v1, v0

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const/4 v1, 0x0

    .line 97
    :goto_1
    iget-object v3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    iget-object v3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 106
    .line 107
    invoke-virtual {v3, v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 108
    .line 109
    .line 110
    neg-int v3, v0

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    const/4 v3, 0x0

    .line 113
    :goto_2
    const/4 v0, 0x4

    .line 114
    new-array v0, v0, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    aput-object v5, v0, v8

    .line 121
    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    aput-object v5, v0, v7

    .line 127
    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    aput-object v5, v0, v6

    .line 133
    .line 134
    const/4 v5, 0x3

    .line 135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    aput-object v6, v0, v5

    .line 140
    .line 141
    const-string v5, "Setting Padding. L: %d, T: %d, R: %d, B: %d"

    .line 142
    .line 143
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method protected final G(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->l:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    .line 9
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    aget v1, v1, v2

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    if-eq v1, p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 29
    .line 30
    if-eq p1, p2, :cond_2

    .line 31
    .line 32
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->l:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 41
    .line 42
    if-eq p2, p1, :cond_2

    .line 43
    .line 44
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->l:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method final varargs H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "state",
            "params"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "State: "

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    aget p1, p1, v0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    if-eq p1, v0, :cond_3

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    if-eq p1, v0, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    if-eq p1, v0, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    if-eq p1, v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    aget-boolean p1, p2, p1

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->B(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->C()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->A()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->D()V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->x:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f;

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-object p2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 73
    .line 74
    invoke-interface {p1, p0, p2, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f;->a(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    return-void
.end method

.method protected final I(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollValue"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->J(IJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected final L(ILcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scrollValue",
            "listener"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v3, v0

    .line 6
    const-wide/16 v5, 0x0

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move v2, p1

    .line 10
    move-object v7, p2

    .line 11
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->K(IJJLcom/join/mgps/pulltorefresh/library/PullToRefreshBase$i;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected final N(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollValue"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->J(IJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected O()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, v1, v2, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->l(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-ne p0, v1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 54
    .line 55
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->m(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->F()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 62
    .line 63
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 64
    .line 65
    if-eq v0, v1, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 69
    .line 70
    :goto_0
    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 71
    .line 72
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "addView: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 37
    .line 38
    const-string p2, "Refreshable View is not a ViewGroup so can\'t addView"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->x()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    neg-int v0, v0

    .line 21
    mul-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->M(I)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->w()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    mul-int/lit8 v0, v0, 0x2

    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->M(I)V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(ZZ)Lcom/join/mgps/pulltorefresh/library/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "includeStart",
            "includeEnd"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->p(ZZ)Lcom/join/mgps/pulltorefresh/library/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v1, v1, [Z

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->k:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/pulltorefresh/library/d;->a(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final getCurrentMode()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final getFooterLayout()Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected final getHeaderLayout()Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/join/mgps/pulltorefresh/library/a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->e(ZZ)Lcom/join/mgps/pulltorefresh/library/a;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final getMode()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->k:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->l:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getState()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final l(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected final m(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "params"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected o(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "mode",
            "attrs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->s:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x4

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v0, v2, :cond_a

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    return v2

    .line 28
    :cond_2
    if-eqz v0, :cond_8

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    if-eq v0, v1, :cond_3

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_3
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n:Z

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->a()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->v()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_9

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    aget v1, v1, v3

    .line 71
    .line 72
    if-eq v1, v2, :cond_5

    .line 73
    .line 74
    iget v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->d:F

    .line 75
    .line 76
    sub-float v1, v0, v1

    .line 77
    .line 78
    iget v3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->c:F

    .line 79
    .line 80
    sub-float v3, p1, v3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    iget v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->c:F

    .line 84
    .line 85
    sub-float v1, p1, v1

    .line 86
    .line 87
    iget v3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->d:F

    .line 88
    .line 89
    sub-float v3, v0, v3

    .line 90
    .line 91
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    iget v5, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->b:I

    .line 96
    .line 97
    int-to-float v5, v5

    .line 98
    cmpl-float v5, v4, v5

    .line 99
    .line 100
    if-lez v5, :cond_9

    .line 101
    .line 102
    iget-boolean v5, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->o:Z

    .line 103
    .line 104
    if-eqz v5, :cond_6

    .line 105
    .line 106
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    cmpl-float v3, v4, v3

    .line 111
    .line 112
    if-lez v3, :cond_9

    .line 113
    .line 114
    :cond_6
    iget-object v3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_7

    .line 121
    .line 122
    const/high16 v3, 0x3f800000    # 1.0f

    .line 123
    .line 124
    cmpl-float v3, v1, v3

    .line 125
    .line 126
    if-ltz v3, :cond_7

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->x()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_7

    .line 133
    .line 134
    iput v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->d:F

    .line 135
    .line 136
    iput p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->c:F

    .line 137
    .line 138
    iput-boolean v2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 139
    .line 140
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 141
    .line 142
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 143
    .line 144
    if-ne p1, v0, :cond_9

    .line 145
    .line 146
    sget-object p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 147
    .line 148
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    iget-object v3, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 152
    .line 153
    invoke-virtual {v3}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_9

    .line 158
    .line 159
    const/high16 v3, -0x40800000    # -1.0f

    .line 160
    .line 161
    cmpg-float v1, v1, v3

    .line 162
    .line 163
    if-gtz v1, :cond_9

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->w()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_9

    .line 170
    .line 171
    iput v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->d:F

    .line 172
    .line 173
    iput p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->c:F

    .line 174
    .line 175
    iput-boolean v2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 176
    .line 177
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 178
    .line 179
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 180
    .line 181
    if-ne p1, v0, :cond_9

    .line 182
    .line 183
    sget-object p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 184
    .line 185
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_8
    invoke-direct {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->v()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_9

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iput v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->f:F

    .line 199
    .line 200
    iput v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->d:F

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    iput p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->e:F

    .line 207
    .line 208
    iput p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->c:F

    .line 209
    .line 210
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 211
    .line 212
    :cond_9
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 213
    .line 214
    return p1

    .line 215
    :cond_a
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 216
    .line 217
    return v1
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    const-string v0, "ptr_mode"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "ptr_current_mode"

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 32
    .line 33
    const-string v0, "ptr_disable_scrolling"

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n:Z

    .line 40
    .line 41
    const-string v0, "ptr_show_refreshing_view"

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->m:Z

    .line 49
    .line 50
    const-string v0, "ptr_super"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "ptr_state"

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->mapIntToValue(I)Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 70
    .line 71
    if-eq v0, v3, :cond_0

    .line 72
    .line 73
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 74
    .line 75
    if-ne v0, v3, :cond_1

    .line 76
    .line 77
    :cond_0
    new-array v3, v2, [Z

    .line 78
    .line 79
    aput-boolean v2, v3, v1

    .line 80
    .line 81
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->y(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->z(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->getIntValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "ptr_state"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, "ptr_mode"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->j:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "ptr_current_mode"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const-string v1, "ptr_disable_scrolling"

    .line 43
    .line 44
    iget-boolean v2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n:Z

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v1, "ptr_show_refreshing_view"

    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->m:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    const-string v1, "ptr_super"

    .line 57
    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    const-string v1, "onSizeChanged. W: %d, H: %d"

    .line 19
    .line 20
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->F()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->G(II)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$b;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$b;-><init>(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_8

    .line 39
    .line 40
    if-eq v0, v2, :cond_4

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    if-eq v0, v3, :cond_3

    .line 44
    .line 45
    const/4 p1, 0x3

    .line 46
    if-eq v0, p1, :cond_4

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 50
    .line 51
    if-eqz v0, :cond_9

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->d:F

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->c:F

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->E()V

    .line 66
    .line 67
    .line 68
    return v2

    .line 69
    :cond_4
    iget-boolean p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 70
    .line 71
    if-eqz p1, :cond_9

    .line 72
    .line 73
    iput-boolean v1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->g:Z

    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 76
    .line 77
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 78
    .line 79
    if-ne p1, v0, :cond_6

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->v:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;

    .line 82
    .line 83
    if-nez p1, :cond_5

    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->w:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g;

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    :cond_5
    sget-object p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 90
    .line 91
    new-array v0, v2, [Z

    .line 92
    .line 93
    aput-boolean v2, v0, v1

    .line 94
    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->a()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->I(I)V

    .line 106
    .line 107
    .line 108
    return v2

    .line 109
    :cond_7
    sget-object p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    .line 110
    .line 111
    new-array v0, v1, [Z

    .line 112
    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 114
    .line 115
    .line 116
    return v2

    .line 117
    :cond_8
    invoke-direct {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->v()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_9

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iput v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->f:F

    .line 128
    .line 129
    iput v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->d:F

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iput p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->e:F

    .line 136
    .line 137
    iput p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->c:F

    .line 138
    .line 139
    return v2

    .line 140
    :cond_9
    :goto_0
    return v1
.end method

.method protected p(ZZ)Lcom/join/mgps/pulltorefresh/library/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "includeStart",
            "includeEnd"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/pulltorefresh/library/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/pulltorefresh/library/c;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/join/mgps/pulltorefresh/library/c;->a(Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/join/mgps/pulltorefresh/library/c;->a(Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-object v0
.end method

.method protected abstract q(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method protected final r()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->q:Z

    .line 3
    .line 4
    return-void
.end method

.method protected s(Landroid/content/res/TypedArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disableScrollingWhileRefreshing"
        }
    .end annotation

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterEvents"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setHeaderScroll: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    neg-int v1, v0

    .line 19
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->q:Z

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    if-gez p1, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-lez p1, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->t:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 49
    .line 50
    const/4 v2, 0x4

    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->u:Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    aget v0, v0, v2

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    if-eq v0, v2, :cond_4

    .line 73
    .line 74
    const/4 v2, 0x2

    .line 75
    if-eq v0, v2, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/join/mgps/pulltorefresh/library/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/join/mgps/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/join/mgps/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/pulltorefresh/library/a;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "mode"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->e(ZZ)Lcom/join/mgps/pulltorefresh/library/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/join/mgps/pulltorefresh/library/a;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longClickable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setMode(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "Setting mode to: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->i:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->O()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->x:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnRefreshListener(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->w:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->v:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->v:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->w:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g;

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pullLabel"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/join/mgps/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/pulltorefresh/library/a;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pullLabel",
            "mode"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->e(ZZ)Lcom/join/mgps/pulltorefresh/library/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/join/mgps/pulltorefresh/library/a;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setRefreshing(Z)V

    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doScroll"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshingLabel"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/join/mgps/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/pulltorefresh/library/a;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "refreshingLabel",
            "mode"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->e(ZZ)Lcom/join/mgps/pulltorefresh/library/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/join/mgps/pulltorefresh/library/a;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseLabel"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "releaseLabel",
            "mode"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->e(ZZ)Lcom/join/mgps/pulltorefresh/library/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/join/mgps/pulltorefresh/library/a;->setReleaseLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpolator"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->r:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowScrollingWhileRefreshing"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showView"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public final u()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method protected abstract w()Z
.end method

.method protected abstract x()Z
.end method

.method protected y(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected z(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saveState"
        }
    .end annotation

    .line 1
    return-void
.end method

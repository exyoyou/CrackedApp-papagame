.class public Lcom/join/mgps/customview/XListViewHeader;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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
    iput v0, p0, Lcom/join/mgps/customview/XListViewHeader;->f:I

    const/16 v0, 0xb4

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/XListViewHeader;->i:I

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewHeader;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/join/mgps/customview/XListViewHeader;->f:I

    const/16 p2, 0xb4

    .line 7
    iput p2, p0, Lcom/join/mgps/customview/XListViewHeader;->i:I

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewHeader;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v1, 0x7f0d08c6

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/LinearLayout;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->b:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    const/16 p1, 0x50

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f0a1c12

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->c:Landroid/widget/ImageView;

    .line 42
    .line 43
    const p1, 0x7f0a1c14

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->e:Landroid/widget/TextView;

    .line 53
    .line 54
    const p1, 0x7f0a1c15

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/widget/ProgressBar;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->d:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    new-instance p1, Landroid/view/animation/RotateAnimation;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    const/high16 v2, -0x3ccc0000    # -180.0f

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    const/high16 v4, 0x3f000000    # 0.5f

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    const/high16 v6, 0x3f000000    # 0.5f

    .line 75
    .line 76
    move-object v0, p1

    .line 77
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->g:Landroid/view/animation/Animation;

    .line 81
    .line 82
    const-wide/16 v0, 0xb4

    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->g:Landroid/view/animation/Animation;

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Landroid/view/animation/RotateAnimation;

    .line 94
    .line 95
    const/high16 v4, -0x3ccc0000    # -180.0f

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x1

    .line 99
    const/high16 v7, 0x3f000000    # 0.5f

    .line 100
    .line 101
    const/4 v8, 0x1

    .line 102
    const/high16 v9, 0x3f000000    # 0.5f

    .line 103
    .line 104
    move-object v3, p1

    .line 105
    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->h:Landroid/view/animation/Animation;

    .line 109
    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->h:Landroid/view/animation/Animation;

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 116
    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public getVisibleHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XListViewHeader;->f:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/join/mgps/customview/XListViewHeader;->c:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/customview/XListViewHeader;->c:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewHeader;->d:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/customview/XListViewHeader;->c:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/customview/XListViewHeader;->d:Landroid/widget/ProgressBar;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    if-eqz p1, :cond_5

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-eq p1, v1, :cond_4

    .line 41
    .line 42
    if-eq p1, v0, :cond_3

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    if-eq p1, v0, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->e:Landroid/widget/TextView;

    .line 49
    .line 50
    const v1, 0x7f120579

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->e:Landroid/widget/TextView;

    .line 58
    .line 59
    const v1, 0x7f120575

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    iget v0, p0, Lcom/join/mgps/customview/XListViewHeader;->f:I

    .line 67
    .line 68
    if-eq v0, v1, :cond_6

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->e:Landroid/widget/TextView;

    .line 71
    .line 72
    const v1, 0x7f120577

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->e:Landroid/widget/TextView;

    .line 80
    .line 81
    const v1, 0x7f120576

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    .line 86
    .line 87
    :cond_6
    :goto_1
    iput p1, p0, Lcom/join/mgps/customview/XListViewHeader;->f:I

    .line 88
    .line 89
    return-void
.end method

.method public setVisibleHeight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->b:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->b:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setmState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mState"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/XListViewHeader;->f:I

    .line 2
    .line 3
    return-void
.end method

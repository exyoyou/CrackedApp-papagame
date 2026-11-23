.class public Lcom/join/mgps/customview/DownloadNormalView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Lcom/join/mgps/callbacks/f;

.field private b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/ImageView;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:I

.field private z:Ljava/lang/String;


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
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->m(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/DownloadNormalView;->m(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/DownloadNormalView;->m(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawableRes",
            "colorRes"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setSolidBackgroundResource(I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setSolidColor(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->d:Landroid/widget/RelativeLayout;

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
    iget v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->v:I

    .line 10
    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x7f0711b6

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    float-to-int v1, v1

    .line 28
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 29
    .line 30
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->u:I

    .line 31
    .line 32
    if-ltz v1, :cond_1

    .line 33
    .line 34
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const v2, 0x7f0714a0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    float-to-int v1, v1

    .line 49
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 50
    .line 51
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->d:Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private g(IJZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "progress",
            "numberMode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->e:Landroid/widget/ImageView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressBarVisible(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 24
    .line 25
    long-to-int v2, p2

    .line 26
    invoke-virtual {v1, v2}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressPercent(I)V

    .line 27
    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    const v3, 0x7f060134

    .line 34
    .line 35
    .line 36
    if-eq p1, v1, :cond_5

    .line 37
    .line 38
    if-ne p1, v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x2

    .line 42
    const-string v1, "%"

    .line 43
    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->f:I

    .line 47
    .line 48
    invoke-direct {p0, p1, v3}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->label:Landroid/widget/TextView;

    .line 54
    .line 55
    new-instance p4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/16 v0, 0xc

    .line 75
    .line 76
    if-ne p1, v0, :cond_3

    .line 77
    .line 78
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->o:I

    .line 79
    .line 80
    const v0, 0x7f060136

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 84
    .line 85
    .line 86
    if-eqz p4, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->label:Landroid/widget/TextView;

    .line 91
    .line 92
    new-instance p4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->H:Ljava/lang/String;

    .line 112
    .line 113
    invoke-direct {p0, v2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    const/4 p2, 0x3

    .line 118
    if-eq p1, p2, :cond_4

    .line 119
    .line 120
    const/4 p2, 0x6

    .line 121
    if-eq p1, p2, :cond_4

    .line 122
    .line 123
    const/16 p2, 0x1b

    .line 124
    .line 125
    if-ne p1, p2, :cond_6

    .line 126
    .line 127
    :cond_4
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->l:I

    .line 128
    .line 129
    invoke-direct {p0, p1, v3}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->D:Ljava/lang/String;

    .line 133
    .line 134
    invoke-direct {p0, v2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    :goto_0
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->m:I

    .line 139
    .line 140
    invoke-direct {p0, p1, v3}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->F:Ljava/lang/String;

    .line 144
    .line 145
    invoke-direct {p0, v2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    :goto_1
    return-void
.end method

.method private k(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
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
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_e

    .line 3
    .line 4
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->DownloadNormalView:[I

    .line 5
    .line 6
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->f:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->f:I

    .line 25
    .line 26
    :goto_0
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->g:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->g:I

    .line 41
    .line 42
    :goto_1
    const/4 v2, 0x2

    .line 43
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->h:I

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->h:I

    .line 57
    .line 58
    :goto_2
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->i:I

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->i:I

    .line 72
    .line 73
    :goto_3
    const/4 v2, 0x4

    .line 74
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->j:I

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->j:I

    .line 88
    .line 89
    :goto_4
    const/4 v2, 0x5

    .line 90
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->k:I

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_5
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->k:I

    .line 104
    .line 105
    :goto_5
    const/4 v2, 0x6

    .line 106
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_6

    .line 111
    .line 112
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->l:I

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_6
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->l:I

    .line 120
    .line 121
    :goto_6
    const/16 v2, 0xa

    .line 122
    .line 123
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_7

    .line 128
    .line 129
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->m:I

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_7
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->m:I

    .line 137
    .line 138
    :goto_7
    const/4 v2, 0x7

    .line 139
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_8

    .line 144
    .line 145
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->n:I

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_8
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->n:I

    .line 153
    .line 154
    :goto_8
    const/16 v2, 0x8

    .line 155
    .line 156
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_9

    .line 161
    .line 162
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->o:I

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :cond_9
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->o:I

    .line 170
    .line 171
    :goto_9
    const/16 v2, 0x9

    .line 172
    .line 173
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_a

    .line 178
    .line 179
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->p:I

    .line 184
    .line 185
    goto :goto_a

    .line 186
    :cond_a
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->p:I

    .line 187
    .line 188
    :goto_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    const/16 v3, 0xf

    .line 193
    .line 194
    const v4, 0x7f060442

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->q:I

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const/16 v3, 0x17

    .line 212
    .line 213
    const v4, 0x7f071369

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->r:F

    .line 225
    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    const/16 v3, 0x10

    .line 231
    .line 232
    const v4, 0x7f071326

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->s:F

    .line 244
    .line 245
    const/16 v2, 0xb

    .line 246
    .line 247
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    const/4 v4, -0x1

    .line 252
    if-eqz v3, :cond_b

    .line 253
    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    const v5, 0x7f0714a0

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    float-to-int v2, v2

    .line 270
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->u:I

    .line 271
    .line 272
    goto :goto_b

    .line 273
    :cond_b
    iput v4, p0, Lcom/join/mgps/customview/DownloadNormalView;->u:I

    .line 274
    .line 275
    :goto_b
    const/16 v2, 0xc

    .line 276
    .line 277
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v3, :cond_c

    .line 282
    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    const v4, 0x7f0711b6

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    float-to-int v2, v2

    .line 299
    iput v2, p0, Lcom/join/mgps/customview/DownloadNormalView;->v:I

    .line 300
    .line 301
    goto :goto_c

    .line 302
    :cond_c
    iput v4, p0, Lcom/join/mgps/customview/DownloadNormalView;->v:I

    .line 303
    .line 304
    :goto_c
    const/16 v2, 0xd

    .line 305
    .line 306
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_d

    .line 311
    .line 312
    iput-boolean v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->x:Z

    .line 313
    .line 314
    const/4 v1, 0x0

    .line 315
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    float-to-int v1, v1

    .line 320
    iput v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->y:I

    .line 321
    .line 322
    goto :goto_d

    .line 323
    :cond_d
    iput-boolean v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->x:Z

    .line 324
    .line 325
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->y:I

    .line 326
    .line 327
    :goto_d
    const/16 v1, 0x14

    .line 328
    .line 329
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    iput v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->w:I

    .line 334
    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    const/16 v2, 0x15

    .line 340
    .line 341
    const v3, 0x7f1200f0

    .line 342
    .line 343
    .line 344
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    iput-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->t:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    const/16 v2, 0x12

    .line 359
    .line 360
    const v3, 0x7f1200ee

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    iput-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->z:Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    const/16 v2, 0x13

    .line 378
    .line 379
    const v3, 0x7f1200ef

    .line 380
    .line 381
    .line 382
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    iput-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->A:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    const/16 v2, 0x11

    .line 397
    .line 398
    const v3, 0x7f1200ed

    .line 399
    .line 400
    .line 401
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    iput-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->B:Ljava/lang/String;

    .line 410
    .line 411
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    const/16 v2, 0x16

    .line 416
    .line 417
    const v3, 0x7f1200f1

    .line 418
    .line 419
    .line 420
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    iput-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->C:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    const/16 v2, 0x18

    .line 435
    .line 436
    const v3, 0x7f1200f4

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    iput-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->D:Ljava/lang/String;

    .line 448
    .line 449
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    const/16 v2, 0x19

    .line 454
    .line 455
    const v3, 0x7f1200f5

    .line 456
    .line 457
    .line 458
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    iput-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->E:Ljava/lang/String;

    .line 467
    .line 468
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    const/16 v2, 0x1d

    .line 473
    .line 474
    const v3, 0x7f1200fa

    .line 475
    .line 476
    .line 477
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    iput-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->F:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    const/16 v2, 0x1a

    .line 492
    .line 493
    const v3, 0x7f1200f6

    .line 494
    .line 495
    .line 496
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    iput-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->G:Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    const/16 v2, 0x1b

    .line 511
    .line 512
    const v3, 0x7f1200f7

    .line 513
    .line 514
    .line 515
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    iput-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->H:Ljava/lang/String;

    .line 524
    .line 525
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    const/16 v2, 0x1c

    .line 530
    .line 531
    const v3, 0x7f1200f8

    .line 532
    .line 533
    .line 534
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    iput-object v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->I:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 545
    .line 546
    .line 547
    goto :goto_e

    .line 548
    :cond_e
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/DownloadNormalView;->l(Landroid/content/Context;)V

    .line 549
    .line 550
    .line 551
    :goto_e
    iget-object p2, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 552
    .line 553
    iget v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->r:F

    .line 554
    .line 555
    invoke-virtual {p2, v1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setLabelTextSizePixel(F)V

    .line 556
    .line 557
    .line 558
    iget-object p2, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 559
    .line 560
    const v1, 0x7f060503

    .line 561
    .line 562
    .line 563
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 564
    .line 565
    .line 566
    move-result p1

    .line 567
    invoke-virtual {p2, p1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setLabelTextColor(I)V

    .line 568
    .line 569
    .line 570
    iget-boolean p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->x:Z

    .line 571
    .line 572
    if-eqz p1, :cond_f

    .line 573
    .line 574
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 575
    .line 576
    iget p2, p0, Lcom/join/mgps/customview/DownloadNormalView;->y:I

    .line 577
    .line 578
    invoke-virtual {p1, p2}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setCornerRadiusPx(I)V

    .line 579
    .line 580
    .line 581
    goto :goto_f

    .line 582
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 583
    .line 584
    invoke-virtual {p1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setCapsuleCornerRadius()V

    .line 585
    .line 586
    .line 587
    :goto_f
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->c:Landroid/widget/TextView;

    .line 588
    .line 589
    iget p2, p0, Lcom/join/mgps/customview/DownloadNormalView;->s:F

    .line 590
    .line 591
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 592
    .line 593
    .line 594
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->c:Landroid/widget/TextView;

    .line 595
    .line 596
    iget p2, p0, Lcom/join/mgps/customview/DownloadNormalView;->q:I

    .line 597
    .line 598
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    .line 600
    .line 601
    invoke-direct {p0}, Lcom/join/mgps/customview/DownloadNormalView;->c()V

    .line 602
    .line 603
    .line 604
    return-void
.end method

.method private l(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->f:I

    .line 3
    .line 4
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->g:I

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->h:I

    .line 7
    .line 8
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->i:I

    .line 9
    .line 10
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->j:I

    .line 11
    .line 12
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->k:I

    .line 13
    .line 14
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->l:I

    .line 15
    .line 16
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->m:I

    .line 17
    .line 18
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->n:I

    .line 19
    .line 20
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->o:I

    .line 21
    .line 22
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->p:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const v2, 0x7f060442

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->q:I

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const v2, 0x7f071369

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->r:F

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const v2, 0x7f071326

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->s:F

    .line 62
    .line 63
    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->u:I

    .line 65
    .line 66
    iput v1, p0, Lcom/join/mgps/customview/DownloadNormalView;->v:I

    .line 67
    .line 68
    iput-boolean v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->x:Z

    .line 69
    .line 70
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->y:I

    .line 71
    .line 72
    iput v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->w:I

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v1, 0x7f1200f0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->t:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const v1, 0x7f1200ee

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->z:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const v1, 0x7f1200ef

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->A:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const v1, 0x7f1200ed

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->B:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const v1, 0x7f1200f1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->C:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const v1, 0x7f1200f4

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->D:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const v1, 0x7f1200f5

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->E:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const v1, 0x7f1200fa

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->F:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const v1, 0x7f1200f6

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->G:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const v1, 0x7f1200f7

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->H:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    const v0, 0x7f1200f8

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->I:Ljava/lang/String;

    .line 216
    .line 217
    return-void
.end method

.method private m(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d08a3

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a1a3a

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 21
    .line 22
    const v0, 0x7f0a1a32

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->c:Landroid/widget/TextView;

    .line 32
    .line 33
    const v0, 0x7f0a13e3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->d:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    const v0, 0x7f0a0a46

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->e:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/DownloadNormalView;->k(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "defaultText"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->label:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->label:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Lcom/join/kotlin/base/impl/Downloadable;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downInfo"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->hasGInfo()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v3}, Lcom/join/kotlin/base/impl/GInfo;->getDownStatus()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v3, 0x0

    .line 44
    :goto_0
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-interface {v5}, Lcom/join/kotlin/base/impl/GInfo;->needPurchase()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v5, 0x0

    .line 63
    :goto_1
    const/4 v6, 0x3

    .line 64
    const/16 v7, 0x2b

    .line 65
    .line 66
    if-ne v3, v6, :cond_4

    .line 67
    .line 68
    if-nez v5, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const v3, 0x7f1200f2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/16 v3, 0x29

    .line 82
    .line 83
    invoke-virtual {p0, v3, v0}, Lcom/join/mgps/customview/DownloadNormalView;->j(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    const/4 v6, 0x2

    .line 88
    if-ne v3, v6, :cond_5

    .line 89
    .line 90
    if-nez v5, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const v3, 0x7f1200ec

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/16 v3, 0x28

    .line 104
    .line 105
    invoke-virtual {p0, v3, v0}, Lcom/join/mgps/customview/DownloadNormalView;->j(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    const/4 v6, 0x6

    .line 110
    if-ne v3, v6, :cond_6

    .line 111
    .line 112
    if-nez v5, :cond_6

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const v3, 0x7f1200f3

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const/16 v3, 0x27

    .line 126
    .line 127
    invoke-virtual {p0, v3, v0}, Lcom/join/mgps/customview/DownloadNormalView;->j(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    if-eqz v5, :cond_8

    .line 132
    .line 133
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    if-nez v3, :cond_7

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    goto :goto_2

    .line 141
    :cond_7
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-interface {v3}, Lcom/join/kotlin/base/impl/GInfo;->getPayTagInfo()Lcom/join/mgps/dto/PayTagInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v3}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-array v5, v1, [Ljava/lang/Object;

    .line 158
    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v3, ""

    .line 168
    .line 169
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    aput-object v3, v5, v4

    .line 177
    .line 178
    const v3, 0x7f12037c

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {p0, v7, v0}, Lcom/join/mgps/customview/DownloadNormalView;->j(ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/DownloadNormalView;->i(I)V

    .line 190
    .line 191
    .line 192
    :goto_3
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/GameType;->isH5Game()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    const/4 v3, 0x5

    .line 197
    if-eqz v0, :cond_9

    .line 198
    .line 199
    invoke-virtual {p0, v3}, Lcom/join/mgps/customview/DownloadNormalView;->i(I)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_9
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/GameType;->isMiniGame()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_12

    .line 208
    .line 209
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/GameType;->isH5VmGame()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    goto/16 :goto_7

    .line 216
    .line 217
    :cond_a
    if-eqz v2, :cond_b

    .line 218
    .line 219
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    goto :goto_4

    .line 224
    :cond_b
    const/4 v0, 0x0

    .line 225
    :goto_4
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->hasGInfo()Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_c

    .line 230
    .line 231
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-interface {v3}, Lcom/join/kotlin/base/impl/GInfo;->needPurchase()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_c

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_c
    move v7, v0

    .line 243
    :goto_5
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/GameType;->isHmCloud()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_e

    .line 248
    .line 249
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->hasGInfo()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_e

    .line 254
    .line 255
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-static {v3}, Lcom/join/mgps/Util/w0;->m(Ljava/util/List;)Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-nez v3, :cond_d

    .line 268
    .line 269
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/join/mgps/Util/w0;->k(Ljava/util/List;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_e

    .line 278
    .line 279
    :cond_d
    const/4 v1, 0x0

    .line 280
    :cond_e
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/GameType;->isCpsGame()Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_f

    .line 285
    .line 286
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v0}, Lcom/join/mgps/Util/d1;->a(Ljava/util/List;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_f

    .line 299
    .line 300
    const/4 v1, 0x0

    .line 301
    :cond_f
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/GameType;->isH5Game()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_10

    .line 306
    .line 307
    const/4 v1, 0x0

    .line 308
    :cond_10
    if-eqz v2, :cond_11

    .line 309
    .line 310
    if-eqz v1, :cond_11

    .line 311
    .line 312
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/customview/DownloadNormalView;->e(Lcom/join/kotlin/base/impl/Downloadable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_11
    invoke-virtual {p0, v7}, Lcom/join/mgps/customview/DownloadNormalView;->i(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v4, v4}, Lcom/join/mgps/customview/DownloadNormalView;->r(ZI)V

    .line 320
    .line 321
    .line 322
    :goto_6
    return-void

    .line 323
    :cond_12
    :goto_7
    invoke-virtual {p0, v3}, Lcom/join/mgps/customview/DownloadNormalView;->i(I)V

    .line 324
    .line 325
    .line 326
    return-void
.end method

.method public d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isHmCloud()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCpsGame()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/d1;->a(Ljava/util/List;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isH5Game()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, 0xa

    .line 44
    .line 45
    const/16 v2, 0x8

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x1

    .line 49
    if-eq v0, v1, :cond_c

    .line 50
    .line 51
    if-ne v0, v4, :cond_4

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_4
    const/4 v1, 0x3

    .line 56
    if-eq v0, v1, :cond_b

    .line 57
    .line 58
    const/4 v1, 0x6

    .line 59
    if-eq v0, v1, :cond_b

    .line 60
    .line 61
    const/16 v1, 0x1b

    .line 62
    .line 63
    if-ne v0, v1, :cond_5

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadNormalView;->n()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const-wide/16 v5, 0x64

    .line 71
    .line 72
    const/16 v7, 0xc

    .line 73
    .line 74
    if-nez v1, :cond_7

    .line 75
    .line 76
    if-ne v0, v7, :cond_6

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    cmp-long v7, v0, v5

    .line 83
    .line 84
    if-gez v7, :cond_6

    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->e:Landroid/widget/ImageView;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 99
    .line 100
    .line 101
    move-result-wide v1

    .line 102
    long-to-int p1, v1

    .line 103
    invoke-virtual {v0, p1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressPercent(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 107
    .line 108
    invoke-virtual {p1, v4}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressBarVisible(Z)V

    .line 109
    .line 110
    .line 111
    :cond_6
    return-void

    .line 112
    :cond_7
    const/4 v1, 0x2

    .line 113
    if-eq v0, v1, :cond_8

    .line 114
    .line 115
    if-ne v0, v7, :cond_a

    .line 116
    .line 117
    :cond_8
    if-ne v0, v7, :cond_9

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    cmp-long v7, v0, v5

    .line 124
    .line 125
    if-ltz v7, :cond_9

    .line 126
    .line 127
    return-void

    .line 128
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->e:Landroid/widget/ImageView;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->label:Landroid/widget/TextView;

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 148
    .line 149
    .line 150
    move-result-wide v2

    .line 151
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v2, "%"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 169
    .line 170
    .line 171
    move-result-wide v1

    .line 172
    long-to-int p1, v1

    .line 173
    invoke-virtual {v0, p1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressPercent(I)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 177
    .line 178
    invoke-virtual {p1, v4}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressBarVisible(Z)V

    .line 179
    .line 180
    .line 181
    :cond_a
    return-void

    .line 182
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 183
    .line 184
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->e:Landroid/widget/ImageView;

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 195
    .line 196
    .line 197
    move-result-wide v1

    .line 198
    long-to-int p1, v1

    .line 199
    invoke-virtual {v0, p1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressPercent(I)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 203
    .line 204
    invoke-virtual {p1, v4}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressBarVisible(Z)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 209
    .line 210
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->e:Landroid/widget/ImageView;

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 221
    .line 222
    .line 223
    move-result-wide v1

    .line 224
    long-to-int p1, v1

    .line 225
    invoke-virtual {v0, p1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressPercent(I)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 229
    .line 230
    invoke-virtual {p1, v4}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressBarVisible(Z)V

    .line 231
    .line 232
    .line 233
    const-string p1, ""

    .line 234
    .line 235
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->F:Ljava/lang/String;

    .line 236
    .line 237
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return-void
.end method

.method public e(Lcom/join/kotlin/base/impl/Downloadable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 11
    .param p2    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downInfo",
            "task"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_d

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/customview/DownloadNormalView;->n()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/16 v3, 0x1b

    .line 21
    .line 22
    const/4 v4, 0x6

    .line 23
    const/4 v5, 0x3

    .line 24
    const/16 v6, 0xa

    .line 25
    .line 26
    const-wide/16 v7, 0x64

    .line 27
    .line 28
    const/16 v9, 0xc

    .line 29
    .line 30
    const/4 v10, 0x1

    .line 31
    if-eqz p2, :cond_4

    .line 32
    .line 33
    if-eq p1, v6, :cond_7

    .line 34
    .line 35
    if-ne p1, v10, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v6, 0x2

    .line 39
    if-eq p1, v6, :cond_7

    .line 40
    .line 41
    if-ne p1, v9, :cond_2

    .line 42
    .line 43
    cmp-long v6, v1, v7

    .line 44
    .line 45
    if-gez v6, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-eq p1, v5, :cond_7

    .line 49
    .line 50
    if-eq p1, v4, :cond_7

    .line 51
    .line 52
    if-ne p1, v3, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v10, 0x0

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    if-eq p1, v6, :cond_7

    .line 58
    .line 59
    if-ne p1, v10, :cond_5

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_5
    if-ne p1, v9, :cond_6

    .line 63
    .line 64
    cmp-long v6, v1, v7

    .line 65
    .line 66
    if-gez v6, :cond_6

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_6
    if-eq p1, v5, :cond_7

    .line 70
    .line 71
    if-eq p1, v4, :cond_7

    .line 72
    .line 73
    if-ne p1, v3, :cond_3

    .line 74
    .line 75
    :cond_7
    :goto_0
    if-eqz v10, :cond_8

    .line 76
    .line 77
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/join/mgps/customview/DownloadNormalView;->g(IJZ)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_8
    iget-object p2, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressBarVisible(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/DownloadNormalView;->i(I)V

    .line 87
    .line 88
    .line 89
    const-string p2, ""

    .line 90
    .line 91
    if-ne p1, v9, :cond_9

    .line 92
    .line 93
    invoke-virtual {p0, v9, p2}, Lcom/join/mgps/customview/DownloadNormalView;->j(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_9
    const/4 v0, 0x5

    .line 98
    if-eq p1, v0, :cond_a

    .line 99
    .line 100
    const/16 v0, 0x2a

    .line 101
    .line 102
    if-ne p1, v0, :cond_b

    .line 103
    .line 104
    :cond_a
    cmp-long v0, v1, v7

    .line 105
    .line 106
    if-ltz v0, :cond_b

    .line 107
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/customview/DownloadNormalView;->j(ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_b
    const/16 v0, 0x9

    .line 113
    .line 114
    if-ne p1, v0, :cond_c

    .line 115
    .line 116
    cmp-long p1, v1, v7

    .line 117
    .line 118
    if-ltz p1, :cond_c

    .line 119
    .line 120
    invoke-virtual {p0, v0, p2}, Lcom/join/mgps/customview/DownloadNormalView;->j(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_c
    :goto_1
    return-void

    .line 124
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressBarVisible(Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/DownloadNormalView;->i(I)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public f(Lcom/join/mgps/callbacks/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->J:Lcom/join/mgps/callbacks/f;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, p0}, Lcom/join/mgps/callbacks/f;->onViewUpdate(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "show"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->c:Landroid/widget/TextView;

    .line 16
    .line 17
    const/16 p2, 0x8

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public i(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->j(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "text"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->e:Landroid/widget/ImageView;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressBarVisible(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x9

    .line 24
    .line 25
    const v3, 0x7f060135

    .line 26
    .line 27
    .line 28
    if-ne p1, v2, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->I:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1, v3}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    const/16 v2, 0xc

    .line 41
    .line 42
    const v4, 0x7f060136

    .line 43
    .line 44
    .line 45
    if-ne p1, v2, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->H:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->o:I

    .line 53
    .line 54
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_1
    const/16 v2, 0xd

    .line 60
    .line 61
    if-ne p1, v2, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->G:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->n:I

    .line 69
    .line 70
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_2
    const/16 v2, 0xb

    .line 76
    .line 77
    if-ne p1, v2, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->z:Ljava/lang/String;

    .line 80
    .line 81
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v1, v3}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_3
    const/16 v2, 0x30

    .line 90
    .line 91
    const v4, 0x7f060134

    .line 92
    .line 93
    .line 94
    if-ne p1, v2, :cond_4

    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->A:Ljava/lang/String;

    .line 97
    .line 98
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->h:I

    .line 102
    .line 103
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_4
    const/4 v2, 0x5

    .line 109
    if-eq p1, v2, :cond_f

    .line 110
    .line 111
    const/16 v2, 0x2a

    .line 112
    .line 113
    if-ne p1, v2, :cond_5

    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :cond_5
    const/4 v2, 0x2

    .line 118
    if-ne p1, v2, :cond_6

    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->E:Ljava/lang/String;

    .line 121
    .line 122
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->f:I

    .line 126
    .line 127
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_6
    const/4 v2, 0x3

    .line 133
    if-eq p1, v2, :cond_e

    .line 134
    .line 135
    const/4 v2, 0x6

    .line 136
    if-eq p1, v2, :cond_e

    .line 137
    .line 138
    const/16 v2, 0x1b

    .line 139
    .line 140
    if-ne p1, v2, :cond_7

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_7
    const/16 v2, 0xa

    .line 144
    .line 145
    if-ne p1, v2, :cond_8

    .line 146
    .line 147
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->F:Ljava/lang/String;

    .line 148
    .line 149
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->m:I

    .line 153
    .line 154
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :cond_8
    if-ne p1, v0, :cond_9

    .line 160
    .line 161
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->F:Ljava/lang/String;

    .line 162
    .line 163
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->m:I

    .line 167
    .line 168
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_9
    const/16 v0, 0x2b

    .line 173
    .line 174
    if-ne p1, v0, :cond_a

    .line 175
    .line 176
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->B:Ljava/lang/String;

    .line 177
    .line 178
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->f:I

    .line 182
    .line 183
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_a
    const/16 v0, 0x27

    .line 188
    .line 189
    if-ne p1, v0, :cond_b

    .line 190
    .line 191
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->B:Ljava/lang/String;

    .line 192
    .line 193
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->f:I

    .line 197
    .line 198
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_b
    const/16 v0, 0x28

    .line 203
    .line 204
    if-ne p1, v0, :cond_c

    .line 205
    .line 206
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->B:Ljava/lang/String;

    .line 207
    .line 208
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->f:I

    .line 212
    .line 213
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_c
    const/16 v0, 0x29

    .line 218
    .line 219
    if-ne p1, v0, :cond_d

    .line 220
    .line 221
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->B:Ljava/lang/String;

    .line 222
    .line 223
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->f:I

    .line 227
    .line 228
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->B:Ljava/lang/String;

    .line 236
    .line 237
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->f:I

    .line 241
    .line 242
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_e
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->D:Ljava/lang/String;

    .line 247
    .line 248
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->l:I

    .line 252
    .line 253
    invoke-direct {p0, p1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_f
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->C:Ljava/lang/String;

    .line 258
    .line 259
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/customview/DownloadNormalView;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->j:I

    .line 263
    .line 264
    invoke-direct {p0, p1, v3}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 265
    .line 266
    .line 267
    :goto_2
    return-void
.end method

.method public n()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->w:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->J:Lcom/join/mgps/callbacks/f;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0}, Lcom/join/mgps/callbacks/f;->onViewClicked(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public p(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageResId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->e:Landroid/widget/ImageView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->e:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openText"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->e:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->label:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->j:I

    .line 26
    .line 27
    const v0, 0x7f060134

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->a(II)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressBarVisible(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public r(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "show",
            "progress"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressPercent(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressBarVisible(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public s(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->label:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "%"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 26
    .line 27
    long-to-int p2, p1

    .line 28
    invoke-virtual {v0, p2}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setProgressPercent(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setBackgroundGet(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundGet"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundInstall(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundInstall"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundInstalling(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundInstalling"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundNormal(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundNormal"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundOpen(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundOpen"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundStart(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundStart"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundStop(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundStop"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundUnzip(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundUnzip"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundUnzipping(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundUnzipping"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundUpdate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundUpdate"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundWait(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundWait"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public setBoldStyle()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->label:Landroid/widget/TextView;

    .line 4
    .line 5
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setSubTextColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subTextColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->q:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->c:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSubTextSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subTextSize"
        }
    .end annotation

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->s:F

    .line 3
    .line 4
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DownloadNormalView;->b:Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setLabelTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextGet(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textGet"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->B:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextInstall(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textInstall"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextInstalling(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textInstalling"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextNormal(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textNormal"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextOpen(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textOpen"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSize"
        }
    .end annotation

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->r:F

    .line 3
    .line 4
    return-void
.end method

.method public setTextStart(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textStart"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextStop(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textStop"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextUnzip(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textUnzip"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->G:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextUnzipping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textUnzipping"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->H:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextUpdate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textUpdate"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextWait(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textWait"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DownloadNormalView;->F:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

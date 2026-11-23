.class public Lcom/join/mgps/customview/ForumLoadingView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ForumLoadingView$e;,
        Lcom/join/mgps/customview/ForumLoadingView$HandleId;
    }
.end annotation


# static fields
.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:I = 0x4

.field public static final o:I = 0x9

.field public static final p:I = 0xa

.field public static final q:I = 0x10


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/Button;

.field protected i:I

.field private j:Landroid/os/Handler;

.field private k:Lcom/join/mgps/customview/ForumLoadingView$e;


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
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->k(Landroid/content/Context;)V

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

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->k(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 8
    iput p2, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->k(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ForumLoadingView;)Lcom/join/mgps/customview/ForumLoadingView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ForumLoadingView;->k:Lcom/join/mgps/customview/ForumLoadingView$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumLoadingView;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumLoadingView;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/join/mgps/customview/ForumLoadingView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->p(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/join/mgps/customview/ForumLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibilityP(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/join/mgps/customview/ForumLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibilityP(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/join/mgps/customview/ForumLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgResP(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/join/mgps/customview/ForumLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingResP(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/join/mgps/customview/ForumLoadingView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsgP(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d0653

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0a0f95

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->c:Landroid/view/View;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const v1, 0x7f0d025f

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const v1, 0x7f0a0f92

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->d:Landroid/view/View;

    .line 43
    .line 44
    const v1, 0x7f0a1368

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->e:Landroid/widget/ImageView;

    .line 54
    .line 55
    const v1, 0x7f0a05f6

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->f:Landroid/widget/TextView;

    .line 65
    .line 66
    const v1, 0x7f0a0f8e

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->g:Landroid/view/View;

    .line 74
    .line 75
    const v1, 0x7f0a1508

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/Button;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:Landroid/widget/Button;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 93
    .line 94
    const/4 v2, -0x1

    .line 95
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->c:Landroid/view/View;

    .line 105
    .line 106
    const/16 v0, 0x8

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->d:Landroid/view/View;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:Landroid/widget/Button;

    .line 117
    .line 118
    new-instance v0, Lcom/join/mgps/customview/ForumLoadingView$a;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ForumLoadingView$a;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->e:Landroid/widget/ImageView;

    .line 127
    .line 128
    new-instance v0, Lcom/join/mgps/customview/ForumLoadingView$b;

    .line 129
    .line 130
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ForumLoadingView$b;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:Landroid/widget/Button;

    .line 137
    .line 138
    new-instance v0, Lcom/join/mgps/customview/ForumLoadingView$c;

    .line 139
    .line 140
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ForumLoadingView$c;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/join/mgps/customview/ForumLoadingView$d;

    .line 147
    .line 148
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ForumLoadingView$d;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->j:Landroid/os/Handler;

    .line 152
    .line 153
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->c:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->d:Landroid/view/View;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->p(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->c:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->d:Landroid/view/View;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->p(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private p(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v1, v3, :cond_4

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/join/mgps/customview/ForumLoadingView;->c:Landroid/view/View;

    .line 21
    .line 22
    if-eq v3, v4, :cond_2

    .line 23
    .line 24
    iget-object v4, p0, Lcom/join/mgps/customview/ForumLoadingView;->d:Landroid/view/View;

    .line 25
    .line 26
    if-ne v3, v4, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->k:Lcom/join/mgps/customview/ForumLoadingView$e;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView$e;->c(Z)V

    .line 46
    .line 47
    .line 48
    :cond_5
    return-void
.end method

.method private setFailedImgResP(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v0, 0xa

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:Landroid/widget/Button;

    .line 11
    .line 12
    const-string v0, "\u70b9\u51fb\u67e5\u770b\u76f8\u5173\u5e16\u5b50"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:Landroid/widget/Button;

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:Landroid/widget/Button;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private setFailedImgVisibilityP(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/16 p1, 0x8

    .line 6
    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->g:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:Landroid/widget/Button;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private setFailedMsgP(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private setFailedReloadingResP(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->e:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method private setReloadingVisibilityP(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->e:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getLoadingState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public j(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    if-ne p1, v1, :cond_1

    .line 16
    .line 17
    iput v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    if-ne p1, v2, :cond_2

    .line 21
    .line 22
    iput v2, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    const/16 v3, 0x9

    .line 26
    .line 27
    if-ne p1, v3, :cond_3

    .line 28
    .line 29
    iput v3, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 30
    .line 31
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgRes(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const/16 v3, 0x8

    .line 41
    .line 42
    const/16 v4, 0xa

    .line 43
    .line 44
    if-ne p1, v4, :cond_4

    .line 45
    .line 46
    iput v4, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgRes(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    and-int/lit8 v4, p1, 0x10

    .line 56
    .line 57
    const/16 v5, 0x10

    .line 58
    .line 59
    if-ne v4, v5, :cond_5

    .line 60
    .line 61
    or-int/2addr p1, v0

    .line 62
    iput p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    or-int/2addr p1, v0

    .line 66
    iput p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 67
    .line 68
    :goto_0
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v3}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 74
    .line 75
    .line 76
    :goto_1
    iget p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 77
    .line 78
    const/4 v0, 0x4

    .line 79
    if-ne p1, v2, :cond_6

    .line 80
    .line 81
    const/4 p1, 0x1

    .line 82
    goto :goto_2

    .line 83
    :cond_6
    if-ne p1, v1, :cond_7

    .line 84
    .line 85
    const/4 p1, 0x2

    .line 86
    goto :goto_2

    .line 87
    :cond_7
    const/4 p1, 0x4

    .line 88
    :goto_2
    iget-object v3, p0, Lcom/join/mgps/customview/ForumLoadingView;->j:Landroid/os/Handler;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eq p1, v2, :cond_a

    .line 95
    .line 96
    if-eq p1, v1, :cond_9

    .line 97
    .line 98
    if-eq p1, v0, :cond_8

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_8
    sget-object p1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING_FAILED:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iput p1, v3, Landroid/os/Message;->what:I

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_9
    sget-object p1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING_SUCCESS:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, v3, Landroid/os/Message;->what:I

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_a
    sget-object p1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, v3, Landroid/os/Message;->what:I

    .line 126
    .line 127
    :goto_3
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

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

.method public m()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFailedImgRes(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->j:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_IMG_RES:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroid/os/Message;->what:I

    .line 14
    .line 15
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setFailedImgVisibility(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->j:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_IMG_VISIBILITY:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroid/os/Message;->what:I

    .line 14
    .line 15
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setFailedMsg(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->j:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_MSG:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroid/os/Message;->what:I

    .line 14
    .line 15
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setFailedReloadingRes(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->j:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_RELOADING_RES:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroid/os/Message;->what:I

    .line 14
    .line 15
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->k:Lcom/join/mgps/customview/ForumLoadingView$e;

    .line 2
    .line 3
    return-void
.end method

.method public setReloadingVisibility(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->j:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_RELOADING_VISIBILITY:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroid/os/Message;->what:I

    .line 14
    .line 15
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

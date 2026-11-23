.class public Lcom/join/mgps/customview/CustomLoadingView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CustomLoadingView$e;,
        Lcom/join/mgps/customview/CustomLoadingView$HandleId;
    }
.end annotation


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x4

.field public static final n:I = 0x9

.field public static final o:I = 0xa

.field public static final p:I = 0x10


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/Button;

.field protected h:I

.field private i:Landroid/os/Handler;

.field private j:Lcom/join/mgps/customview/CustomLoadingView$e;


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
    iput v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CustomLoadingView;->m(Landroid/content/Context;)V

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
    iput p2, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CustomLoadingView;->m(Landroid/content/Context;)V

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
    iput p2, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CustomLoadingView;->m(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/CustomLoadingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomLoadingView;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/CustomLoadingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomLoadingView;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/CustomLoadingView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CustomLoadingView;->t(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/join/mgps/customview/CustomLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedImgVisibilityP(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/join/mgps/customview/CustomLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CustomLoadingView;->setReloadingVisibilityP(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/join/mgps/customview/CustomLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedImgResP(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/join/mgps/customview/CustomLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedReloadingResP(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/join/mgps/customview/CustomLoadingView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedMsgP(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/join/mgps/customview/CustomLoadingView;)Lcom/join/mgps/customview/CustomLoadingView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/CustomLoadingView;->j:Lcom/join/mgps/customview/CustomLoadingView$e;

    .line 2
    .line 3
    return-object p0
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->c:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0d059b

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0a0f92

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/join/mgps/customview/CustomLoadingView;->c:Landroid/view/View;

    .line 29
    .line 30
    const v1, 0x7f0a1368

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/ImageView;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/join/mgps/customview/CustomLoadingView;->d:Landroid/widget/ImageView;

    .line 40
    .line 41
    const v1, 0x7f0a05f6

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/join/mgps/customview/CustomLoadingView;->e:Landroid/widget/TextView;

    .line 51
    .line 52
    const v1, 0x7f0a0f8e

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/join/mgps/customview/CustomLoadingView;->f:Landroid/view/View;

    .line 60
    .line 61
    const v1, 0x7f0a1508

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/widget/Button;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/join/mgps/customview/CustomLoadingView;->g:Landroid/widget/Button;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    .line 77
    const/4 v2, -0x1

    .line 78
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->g:Landroid/widget/Button;

    .line 85
    .line 86
    new-instance v1, Lcom/join/mgps/customview/CustomLoadingView$b;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/CustomLoadingView$b;-><init>(Lcom/join/mgps/customview/CustomLoadingView;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->d:Landroid/widget/ImageView;

    .line 95
    .line 96
    new-instance v1, Lcom/join/mgps/customview/CustomLoadingView$c;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/CustomLoadingView$c;-><init>(Lcom/join/mgps/customview/CustomLoadingView;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->g:Landroid/widget/Button;

    .line 105
    .line 106
    new-instance v1, Lcom/join/mgps/customview/CustomLoadingView$d;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/CustomLoadingView$d;-><init>(Lcom/join/mgps/customview/CustomLoadingView;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->b:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0d059c

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0a0f95

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/join/mgps/customview/CustomLoadingView;->b:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 34
    .line 35
    const/4 v2, -0x1

    .line 36
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private m(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/customview/CustomLoadingView$a;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/CustomLoadingView$a;-><init>(Lcom/join/mgps/customview/CustomLoadingView;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/CustomLoadingView;->i:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomLoadingView;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->c:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->b:Landroid/view/View;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private q()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomLoadingView;->s()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/CustomLoadingView;->t(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private r()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomLoadingView;->p()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/CustomLoadingView;->t(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomLoadingView;->k()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->b:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->c:Landroid/view/View;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
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
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomLoadingView;->j()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x9

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v0, 0xa

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/customview/CustomLoadingView;->g:Landroid/widget/Button;

    .line 14
    .line 15
    const-string v0, "\u70b9\u51fb\u67e5\u770b\u76f8\u5173\u5e16\u5b50"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->g:Landroid/widget/Button;

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->g:Landroid/widget/Button;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
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
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomLoadingView;->j()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->f:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->g:Landroid/widget/Button;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
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
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomLoadingView;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->e:Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
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
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomLoadingView;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->d:Landroid/widget/ImageView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
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
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomLoadingView;->j()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/CustomLoadingView;->d:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private t(Z)V
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
    iget-object v4, p0, Lcom/join/mgps/customview/CustomLoadingView;->b:Landroid/view/View;

    .line 21
    .line 22
    if-eq v3, v4, :cond_2

    .line 23
    .line 24
    iget-object v4, p0, Lcom/join/mgps/customview/CustomLoadingView;->c:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->j:Lcom/join/mgps/customview/CustomLoadingView$e;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/CustomLoadingView$e;->c(Z)V

    .line 46
    .line 47
    .line 48
    :cond_5
    return-void
.end method


# virtual methods
.method public getLoadingState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public l(I)V
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
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedImgVisibility(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/CustomLoadingView;->setReloadingVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

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
    iput v1, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    if-ne p1, v2, :cond_2

    .line 21
    .line 22
    iput v2, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

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
    iput v3, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

    .line 30
    .line 31
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedImgRes(I)V

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
    iput v4, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lcom/join/mgps/customview/CustomLoadingView;->setReloadingVisibility(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedImgRes(I)V

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
    iput p1, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    or-int/2addr p1, v0

    .line 66
    iput p1, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

    .line 67
    .line 68
    :goto_0
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v3}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedImgVisibility(I)V

    .line 74
    .line 75
    .line 76
    :goto_1
    iget p1, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

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
    iget-object v3, p0, Lcom/join/mgps/customview/CustomLoadingView;->i:Landroid/os/Handler;

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
    sget-object p1, Lcom/join/mgps/customview/CustomLoadingView$HandleId;->LOADING_FAILED:Lcom/join/mgps/customview/CustomLoadingView$HandleId;

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
    sget-object p1, Lcom/join/mgps/customview/CustomLoadingView$HandleId;->LOADING_SUCCESS:Lcom/join/mgps/customview/CustomLoadingView$HandleId;

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
    sget-object p1, Lcom/join/mgps/customview/CustomLoadingView$HandleId;->LOADING:Lcom/join/mgps/customview/CustomLoadingView$HandleId;

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

.method public n()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

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

.method public o()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/join/mgps/customview/CustomLoadingView;->h:I

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
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->i:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/customview/CustomLoadingView$HandleId;->SET_FAILED_IMG_RES:Lcom/join/mgps/customview/CustomLoadingView$HandleId;

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
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->i:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/customview/CustomLoadingView$HandleId;->SET_FAILED_IMG_VISIBILITY:Lcom/join/mgps/customview/CustomLoadingView$HandleId;

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
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->i:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/customview/CustomLoadingView$HandleId;->SET_FAILED_MSG:Lcom/join/mgps/customview/CustomLoadingView$HandleId;

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
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->i:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/customview/CustomLoadingView$HandleId;->SET_FAILED_RELOADING_RES:Lcom/join/mgps/customview/CustomLoadingView$HandleId;

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

.method public setListener(Lcom/join/mgps/customview/CustomLoadingView$e;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/CustomLoadingView;->j:Lcom/join/mgps/customview/CustomLoadingView$e;

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
    iget-object v0, p0, Lcom/join/mgps/customview/CustomLoadingView;->i:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/customview/CustomLoadingView$HandleId;->SET_RELOADING_VISIBILITY:Lcom/join/mgps/customview/CustomLoadingView$HandleId;

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

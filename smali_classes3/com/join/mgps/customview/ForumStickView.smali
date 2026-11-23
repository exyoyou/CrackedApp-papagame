.class public Lcom/join/mgps/customview/ForumStickView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ForumStickView$e;
    }
.end annotation


# instance fields
.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field f:Lcom/join/mgps/customview/ForumStickView$e;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    iput-boolean v0, p0, Lcom/join/mgps/customview/ForumStickView;->g:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumStickView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/join/mgps/customview/ForumStickView;->g:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumStickView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/join/mgps/customview/ForumStickView;->g:Z

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumStickView;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ForumStickView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumStickView;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/ForumStickView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumStickView;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Landroid/content/Context;)V
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
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f0d05c1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0a1b94

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/join/mgps/customview/ForumStickView;->b:Landroid/widget/TextView;

    .line 21
    .line 22
    const p1, 0x7f0a0a98

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/join/mgps/customview/ForumStickView;->e:Landroid/widget/ImageView;

    .line 32
    .line 33
    const p1, 0x7f0a0a81

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/ImageView;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/join/mgps/customview/ForumStickView;->c:Landroid/widget/ImageView;

    .line 43
    .line 44
    const p1, 0x7f0a1a26

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/join/mgps/customview/ForumStickView;->d:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/customview/ForumStickView;->b:Landroid/widget/TextView;

    .line 56
    .line 57
    new-instance v0, Lcom/join/mgps/customview/ForumStickView$a;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ForumStickView$a;-><init>(Lcom/join/mgps/customview/ForumStickView;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/customview/ForumStickView;->e:Landroid/widget/ImageView;

    .line 66
    .line 67
    new-instance v0, Lcom/join/mgps/customview/ForumStickView$b;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ForumStickView$b;-><init>(Lcom/join/mgps/customview/ForumStickView;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/customview/ForumStickView;->c:Landroid/widget/ImageView;

    .line 76
    .line 77
    new-instance v0, Lcom/join/mgps/customview/ForumStickView$c;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ForumStickView$c;-><init>(Lcom/join/mgps/customview/ForumStickView;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/customview/ForumStickView;->d:Landroid/widget/TextView;

    .line 86
    .line 87
    new-instance v0, Lcom/join/mgps/customview/ForumStickView$d;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ForumStickView$d;-><init>(Lcom/join/mgps/customview/ForumStickView;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumStickView;->f:Lcom/join/mgps/customview/ForumStickView$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/join/mgps/customview/ForumStickView$e;->sortComment()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ForumStickView;->g:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/ForumStickView;->g:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/ForumStickView;->e:Landroid/widget/ImageView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const v0, 0x7f0808ed

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v0, 0x7f0808ee

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/ForumStickView;->f:Lcom/join/mgps/customview/ForumStickView$e;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/join/mgps/customview/ForumStickView$e;->viewPoster()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method public setData(Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewBean"
        }
    .end annotation

    return-void
.end method

.method public setForumStickViewListener(Lcom/join/mgps/customview/ForumStickView$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iForumStickViewListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumStickView;->f:Lcom/join/mgps/customview/ForumStickView$e;

    .line 2
    .line 3
    return-void
.end method

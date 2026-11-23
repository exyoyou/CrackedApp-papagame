.class public Lcom/airsaid/pickerviewlibrary/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final b:Landroid/widget/FrameLayout$LayoutParams;

.field private c:Landroid/content/Context;

.field protected d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/ViewGroup;

.field private g:Li/b;

.field private h:Z

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Z

.field private l:I

.field private m:Landroid/view/View;

.field private final n:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, -0x2

    .line 8
    const/16 v3, 0x50

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->b:Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    .line 15
    iput v3, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->l:I

    .line 16
    .line 17
    new-instance v0, Lcom/airsaid/pickerviewlibrary/widget/a$b;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/airsaid/pickerviewlibrary/widget/a$b;-><init>(Lcom/airsaid/pickerviewlibrary/widget/a;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->n:Landroid/view/View$OnTouchListener;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->c:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->i()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->g()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->h()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method static synthetic a(Lcom/airsaid/pickerviewlibrary/widget/a;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->e:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method private k(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->e:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->d:Landroid/view/ViewGroup;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->j:Landroid/view/animation/Animation;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->h:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->i:Landroid/view/animation/Animation;

    .line 10
    .line 11
    new-instance v1, Lcom/airsaid/pickerviewlibrary/widget/a$a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/airsaid/pickerviewlibrary/widget/a$a;-><init>(Lcom/airsaid/pickerviewlibrary/widget/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->d:Landroid/view/ViewGroup;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->i:Landroid/view/animation/Animation;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->e:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->f:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->k:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->h:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->g:Li/b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p0}, Li/b;->a(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public d(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->d:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->l:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lk/a;->a(IZ)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public f()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->l:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lk/a;->a(IZ)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method protected g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->e()Landroid/view/animation/Animation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->j:Landroid/view/animation/Animation;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->f()Landroid/view/animation/Animation;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->i:Landroid/view/animation/Animation;

    .line 12
    .line 13
    return-void
.end method

.method protected h()V
    .locals 0

    .line 1
    return-void
.end method

.method protected i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->c:Landroid/content/Context;

    .line 8
    .line 9
    check-cast v1, Landroid/app/Activity;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x1020002

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/ViewGroup;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->e:Landroid/view/ViewGroup;

    .line 29
    .line 30
    sget v2, Lcom/airsaid/pickerviewlibrary/R$layout;->layout_basepickerview:I

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->f:Landroid/view/ViewGroup;

    .line 40
    .line 41
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    const/4 v2, -0x1

    .line 44
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->f:Landroid/view/ViewGroup;

    .line 51
    .line 52
    sget v1, Lcom/airsaid/pickerviewlibrary/R$id;->content_container:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/view/ViewGroup;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->d:Landroid/view/ViewGroup;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->b:Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->f:Landroid/view/ViewGroup;

    .line 68
    .line 69
    sget v1, Lcom/airsaid/pickerviewlibrary/R$id;->outmost_container:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->m:Landroid/view/View;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->n:Landroid/view/View$OnTouchListener;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->f:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->k:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public l(Z)Lcom/airsaid/pickerviewlibrary/widget/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->m:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->n:Landroid/view/View$OnTouchListener;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public m(Li/b;)Lcom/airsaid/pickerviewlibrary/widget/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->g:Li/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->k:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->f:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->k(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

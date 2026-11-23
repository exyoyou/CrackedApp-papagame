.class public Lcom/byazt/yqb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x367,
        0x14
    }
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public final c:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public final da:Lcom/byazt/zd/tt;

.field public i:Landroid/animation/ObjectAnimator;

.field public n:Landroid/view/View;

.field public sp:Landroid/widget/TextView;

.field public final tt:Lcom/byazt/ete/ic;

.field public uj:Landroid/view/ViewGroup;

.field public ve:Landroid/widget/ImageView;

.field public x:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Lcom/byazt/zd/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/yqb/c;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/yqb/c;->da:Lcom/byazt/zd/tt;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic c(Lcom/byazt/yqb/c;)Lcom/byazt/lcf/TTBaseVideoActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/yqb/c;)Lcom/byazt/zd/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yqb/c;->da:Lcom/byazt/zd/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/yqb/c;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yqb/c;->a:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/yqb/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yqb/c;->n:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/yqb/c;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yqb/c;->ve:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 10

    const-string v0, "translationY"

    .line 9
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/byazt/yqb/c;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 11
    iget-object v1, p0, Lcom/byazt/yqb/c;->a:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v5, 0x42980000    # 76.0f

    invoke-static {v3, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    const/4 v6, -0x1

    invoke-direct {v1, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 13
    new-instance v3, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/byazt/yqb/c;->sp:Landroid/widget/TextView;

    const/high16 v7, 0x41400000    # 12.0f

    .line 14
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 15
    iget-object v3, p0, Lcom/byazt/yqb/c;->sp:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v3, p0, Lcom/byazt/yqb/c;->sp:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 17
    iget-object v3, p0, Lcom/byazt/yqb/c;->sp:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 18
    iget-object v3, p0, Lcom/byazt/yqb/c;->sp:Landroid/widget/TextView;

    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 19
    iget-object v3, p0, Lcom/byazt/yqb/c;->sp:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v9, 0x43820000    # 260.0f

    invoke-static {v8, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 20
    iget-object v3, p0, Lcom/byazt/yqb/c;->a:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/byazt/yqb/c;->sp:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    new-instance v3, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 23
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v6, 0x11

    .line 25
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 26
    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    const-string v6, "\u53d6\u6d88"

    .line 27
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v6, Lcom/byazt/yqb/c$1;

    invoke-direct {v6, p0}, Lcom/byazt/yqb/c$1;-><init>(Lcom/byazt/yqb/c;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    iget-object v7, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 31
    iget-object v7, p0, Lcom/byazt/yqb/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object v3, p0, Lcom/byazt/yqb/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v3}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x19

    invoke-virtual {p0, v6, v3}, Lcom/byazt/yqb/c;->c(ILjava/lang/String;)V

    .line 33
    iget-object v3, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v3, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    .line 34
    iget-object v5, p0, Lcom/byazt/yqb/c;->uj:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/byazt/yqb/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v1}, Lcom/byazt/or/x;->tt(Landroid/content/Context;)I

    move-result v1

    .line 36
    iget-object v5, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v5}, Lcom/byazt/aas/pf;->uj(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    iget-object v5, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v5}, Lcom/byazt/or/x;->ve(Landroid/content/Context;)I

    move-result v5

    .line 38
    invoke-virtual {p0}, Lcom/byazt/yqb/c;->tt()I

    move-result v6

    sub-int/2addr v5, v1

    sub-int/2addr v5, v6

    goto :goto_0

    .line 39
    :cond_0
    iget-object v5, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v5}, Lcom/byazt/aas/pf;->z(Landroid/content/Context;)I

    move-result v5

    :goto_0
    sub-int v6, v1, v3

    add-int/2addr v6, v5

    .line 40
    iget-object v5, p0, Lcom/byazt/yqb/c;->a:Landroid/widget/LinearLayout;

    const/4 v7, 0x2

    new-array v8, v7, [F

    int-to-float v1, v1

    aput v1, v8, v4

    int-to-float v1, v6

    aput v1, v8, v2

    invoke-static {v5, v0, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/yqb/c;->x:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x12c

    .line 41
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 42
    iget-object v1, p0, Lcom/byazt/yqb/c;->x:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 43
    iget-object v1, p0, Lcom/byazt/yqb/c;->n:Landroid/view/View;

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v8, v7, v4

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v7, v2

    invoke-static {v1, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yqb/c;->i:Landroid/animation/ObjectAnimator;

    .line 44
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 45
    iget-object v0, p0, Lcom/byazt/yqb/c;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    .line 47
    invoke-static {p2}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p2

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 48
    invoke-interface {p2, v0}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object p2

    new-instance v0, Lcom/byazt/yqb/c$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/yqb/c$2;-><init>(Lcom/byazt/yqb/c;I)V

    const/4 p1, 0x4

    .line 49
    invoke-interface {p2, v0, p1}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;I)Lcom/byazt/yj/t;

    return-void
.end method

.method public c(J)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/byazt/yqb/c;->sp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u4e3a\u60a8\u52a0\u8f7d\u66f4\u591a\u8be6\u60c5\uff0c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u79d2\u540e\u62c9\u8d77\u5c55\u793a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/byazt/yqb/c;->uj:Landroid/view/ViewGroup;

    .line 3
    iput-object p2, p0, Lcom/byazt/yqb/c;->n:Landroid/view/View;

    .line 4
    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/byazt/yqb/c;->ve:Landroid/widget/ImageView;

    .line 5
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v0, 0x42980000    # 76.0f

    invoke-static {p2, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p2

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x50

    .line 6
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    iget-object p2, p0, Lcom/byazt/yqb/c;->ve:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8
    iget-object p2, p0, Lcom/byazt/yqb/c;->uj:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/byazt/yqb/c;->ve:Landroid/widget/ImageView;

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public c(Lcom/byazt/hkv/tt;)V
    .locals 2

    .line 50
    new-instance v0, Lcom/byazt/ete/da;

    invoke-direct {v0}, Lcom/byazt/ete/da;-><init>()V

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Lcom/byazt/ete/da;->ve(Z)V

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Lcom/byazt/hkv/tt;->c(Lcom/byazt/ete/da;)V

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v1, v0}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    :cond_0
    return-void
.end method

.method public tt()I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/byazt/yqb/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public uj()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/yqb/c;->x:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/yqb/c;->x:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    iput-object v1, p0, Lcom/byazt/yqb/c;->x:Landroid/animation/ObjectAnimator;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/yqb/c;->i:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/byazt/yqb/c;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 7
    iput-object v1, p0, Lcom/byazt/yqb/c;->i:Landroid/animation/ObjectAnimator;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/byazt/yqb/c;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/byazt/yqb/c;->n:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/byazt/yqb/c;->ve:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/byazt/yqb/c;->da:Lcom/byazt/zd/tt;

    invoke-interface {v0}, Lcom/byazt/zd/tt;->x()V

    return-void
.end method

.method public ve()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/byazt/yqb/c;->uj()V

    .line 3
    iget-object v0, p0, Lcom/byazt/yqb/c;->n:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    new-instance v1, Lcom/byazt/yqb/c$3;

    invoke-direct {v1, p0}, Lcom/byazt/yqb/c$3;-><init>(Lcom/byazt/yqb/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data
.end method

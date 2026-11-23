.class public Lcom/byazt/dyf/uj;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ea,
        0xf
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/dyf/c;

.field public c:Lcom/byazt/sif/ve;

.field public n:Landroid/widget/TextView;

.field public final sp:Z

.field public tt:Lcom/byazt/ff/TTDislikeLayout;

.field public uj:Z

.field public final ve:Lcom/byazt/vo/tt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/vo/tt;Lcom/byazt/dyf/c;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/dyf/uj;->uj:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v1, 0x400

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/byazt/dyf/uj;->ve:Lcom/byazt/vo/tt;

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/vo/tt;->tt()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    :goto_0
    iput-boolean p1, p0, Lcom/byazt/dyf/uj;->sp:Z

    .line 38
    .line 39
    iput-object p3, p0, Lcom/byazt/dyf/uj;->a:Lcom/byazt/dyf/c;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic c(Lcom/byazt/dyf/uj;)Lcom/byazt/sif/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/uj;->c:Lcom/byazt/sif/ve;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/dyf/uj;->sp:Z

    if-nez v0, :cond_1

    const v0, 0x7a06fff7

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dyf/uj;->n:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/byazt/dyf/uj$1;

    invoke-direct {v1, p0}, Lcom/byazt/dyf/uj$1;-><init>(Lcom/byazt/dyf/uj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7a06fff9

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/byazt/ff/TTDislikeScrollListView;

    .line 15
    new-instance v0, Lcom/byazt/dyf/uj$2;

    invoke-direct {v0, p0}, Lcom/byazt/dyf/uj$2;-><init>(Lcom/byazt/dyf/uj;)V

    invoke-virtual {p1, v0}, Lcom/byazt/ff/TTDislikeScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/dyf/uj;->ve:Lcom/byazt/vo/tt;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/byazt/vo/tt;->c()Ljava/util/List;

    move-result-object v0

    .line 17
    :goto_0
    new-instance v1, Lcom/byazt/dyf/n;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/byazt/dyf/uj;->sp:Z

    iget-object v4, p0, Lcom/byazt/dyf/uj;->a:Lcom/byazt/dyf/c;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/byazt/dyf/n;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/byazt/dyf/c;)V

    .line 18
    new-instance v0, Lcom/byazt/dyf/uj$3;

    invoke-direct {v0, p0}, Lcom/byazt/dyf/uj$3;-><init>(Lcom/byazt/dyf/uj;)V

    invoke-virtual {v1, v0}, Lcom/byazt/dyf/n;->c(Lcom/byazt/dyf/n$c;)V

    .line 19
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    iget-object v0, p0, Lcom/byazt/dyf/uj;->ve:Lcom/byazt/vo/tt;

    if-eqz v0, :cond_3

    .line 21
    new-instance v1, Lcom/byazt/pr/tt;

    invoke-direct {v1, v0}, Lcom/byazt/pr/tt;-><init>(Lcom/byazt/vo/tt;)V

    invoke-virtual {p1, v1}, Lcom/byazt/ff/TTDislikeScrollListView;->setDislikeController(Lcom/byazt/pr/tt;)V

    :cond_3
    return-void
.end method

.method public static synthetic c(Lcom/byazt/dyf/uj;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/dyf/uj;->uj:Z

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/dyf/uj;)Lcom/byazt/vo/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/uj;->ve:Lcom/byazt/vo/tt;

    return-object p0
.end method

.method private tt()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x3eae147b    # 0.34f

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method

.method private ve()V
    .locals 1

    const v0, 0x7a06ffff    # 1.7524E35f

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ff/TTDislikeLayout;

    iput-object v0, p0, Lcom/byazt/dyf/uj;->tt:Lcom/byazt/ff/TTDislikeLayout;

    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/dyf/uj;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/dyf/uj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/dyf/uj;->sp:Z

    return p0
.end method


# virtual methods
.method public c()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 4
    invoke-static {}, Lcom/byazt/pr/c;->tt()Lcom/byazt/pr/uj;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x43ac8000    # 345.0f

    invoke-interface {v0, v1, v2}, Lcom/byazt/pr/uj;->c(Landroid/content/Context;F)I

    move-result v0

    .line 5
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public c(Lcom/byazt/sif/ve;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/dyf/uj;->c:Lcom/byazt/sif/ve;

    return-void
.end method

.method public c(Lcom/byazt/vo/tt;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/byazt/dyf/uj;->tt:Lcom/byazt/ff/TTDislikeLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7a06fff9

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ff/TTDislikeScrollListView;

    .line 8
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/byazt/dyf/n;

    if-eqz v1, :cond_1

    .line 9
    new-instance v2, Lcom/byazt/pr/tt;

    invoke-direct {v2, p1}, Lcom/byazt/pr/tt;-><init>(Lcom/byazt/vo/tt;)V

    invoke-virtual {v0, v2}, Lcom/byazt/ff/TTDislikeScrollListView;->setDislikeController(Lcom/byazt/pr/tt;)V

    .line 10
    invoke-virtual {p1}, Lcom/byazt/vo/tt;->c()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/byazt/dyf/n;->c(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/byazt/dyf/uj;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/dyf/uj;->c:Lcom/byazt/sif/ve;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/byazt/dyf/uj;->uj:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/byazt/sif/ve;->ve()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-boolean v0, p0, Lcom/byazt/dyf/uj;->sp:Z

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/byazt/vfu/uj;->c(Landroid/content/Context;Z)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/byazt/dyf/uj;->c()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/byazt/dyf/uj;->tt()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/byazt/dyf/uj;->ve()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/dyf/uj;->uj:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/dyf/uj;->c:Lcom/byazt/sif/ve;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/sif/ve;->tt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    :cond_0
    return-void
.end method

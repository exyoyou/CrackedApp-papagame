.class public Lcom/byazt/sgn/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x85
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sgn/z$c;,
        Lcom/byazt/sgn/z$tt;
    }
.end annotation


# instance fields
.field public a:Z

.field public c:Landroid/view/View;

.field public i:Landroid/view/View;

.field public n:Lcom/byazt/sgn/z$tt;

.field public sp:Lcom/byazt/jzl/uj;

.field public tt:Landroid/widget/TextView;

.field public uj:Lcom/byazt/un/tt;

.field public ve:Landroid/content/Context;

.field public x:Lcom/byazt/lbn/TTViewStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/sgn/z;->a:Z

    .line 6
    .line 7
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/byazt/sgn/z;->x:Lcom/byazt/lbn/TTViewStub;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/byazt/sgn/z;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/byazt/sgn/z;->x:Lcom/byazt/lbn/TTViewStub;

    invoke-virtual {p1}, Lcom/byazt/lbn/TTViewStub;->c()Landroid/view/View;

    const p1, 0x7e06ff9e

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sgn/z;->c:Landroid/view/View;

    const p1, 0x7e06ff69

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/byazt/sgn/z;->tt:Landroid/widget/TextView;

    const p1, 0x7e06ffa8

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 12
    new-instance p2, Lcom/byazt/sgn/z$1;

    invoke-direct {p2, p0}, Lcom/byazt/sgn/z$1;-><init>(Lcom/byazt/sgn/z;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Lcom/byazt/jzl/uj;Z)V
    .locals 4

    if-eqz p1, :cond_4

    .line 32
    iget-object v0, p0, Lcom/byazt/sgn/z;->c:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/byazt/sgn/z;->ve:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/byazt/sgn/z;->n:Lcom/byazt/sgn/z$tt;

    if-eqz v0, :cond_2

    .line 35
    invoke-interface {v0}, Lcom/byazt/sgn/z$tt;->t()V

    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/jzl/uj;->getSize()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    if-eqz p2, :cond_3

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u64ad\u653e\u5c06\u6d88\u8017"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "MB\u6d41\u91cf"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "\u64ad\u653e\u5c06\u6d88\u8017\u6d41\u91cf"

    .line 39
    :goto_0
    iget-object p2, p0, Lcom/byazt/sgn/z;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 40
    iget-object p2, p0, Lcom/byazt/sgn/z;->tt:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p0, Lcom/byazt/sgn/z;->c:Landroid/view/View;

    invoke-static {p1}, Lcom/byazt/aas/pf;->uj(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/byazt/sgn/z;->c:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/sgn/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/sgn/z;->ve()V

    return-void
.end method

.method private c(I)Z
    .locals 3

    .line 22
    invoke-virtual {p0}, Lcom/byazt/sgn/z;->c()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 23
    :cond_0
    iget-boolean p1, p0, Lcom/byazt/sgn/z;->a:Z

    if-nez p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/byazt/sgn/z;->uj:Lcom/byazt/un/tt;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/byazt/sgn/z;->n:Lcom/byazt/sgn/z$tt;

    if-eqz p1, :cond_2

    .line 25
    invoke-interface {p1}, Lcom/byazt/sgn/z$tt;->da()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 26
    iget-object p1, p0, Lcom/byazt/sgn/z;->uj:Lcom/byazt/un/tt;

    invoke-interface {p1, v1, v1}, Lcom/byazt/dh/c;->n(Lcom/byazt/dh/tt;Landroid/view/View;)V

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/byazt/sgn/z;->uj:Lcom/byazt/un/tt;

    sget-object v2, Lcom/byazt/sgn/z$c;->c:Lcom/byazt/sgn/z$c;

    invoke-interface {p1, v2, v1}, Lcom/byazt/un/tt;->c(Lcom/byazt/sgn/z$c;Ljava/lang/String;)V

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/byazt/sgn/z;->sp:Lcom/byazt/jzl/uj;

    invoke-direct {p0, p1, v0}, Lcom/byazt/sgn/z;->c(Lcom/byazt/jzl/uj;Z)V

    const/4 p1, 0x0

    return p1

    :cond_3
    return v0
.end method

.method public static synthetic tt(Lcom/byazt/sgn/z;)Lcom/byazt/un/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sgn/z;->uj:Lcom/byazt/un/tt;

    return-object p0
.end method

.method private tt()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/sgn/z;->sp:Lcom/byazt/jzl/uj;

    return-void
.end method

.method private uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/z;->c:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/z;->ve:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/byazt/sgn/z;->uj()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    iput-object p2, p0, Lcom/byazt/sgn/z;->i:Landroid/view/View;

    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/sgn/z;->ve:Landroid/content/Context;

    .line 5
    :try_start_0
    new-instance p2, Lcom/byazt/lbn/TTViewStub;

    new-instance v0, Lcom/byazt/wol/x;

    invoke-direct {v0}, Lcom/byazt/wol/x;-><init>()V

    invoke-direct {p2, p1, v0}, Lcom/byazt/lbn/TTViewStub;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;)V

    iput-object p2, p0, Lcom/byazt/sgn/z;->x:Lcom/byazt/lbn/TTViewStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/un/tt;Lcom/byazt/sgn/z$tt;)V
    .locals 0

    .line 15
    iput-object p2, p0, Lcom/byazt/sgn/z;->n:Lcom/byazt/sgn/z$tt;

    .line 16
    iput-object p1, p0, Lcom/byazt/sgn/z;->uj:Lcom/byazt/un/tt;

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/byazt/sgn/z;->tt()V

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/byazt/sgn/z;->uj()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/byazt/sgn/z;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(ILcom/byazt/jzl/uj;Z)Z
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/byazt/sgn/z;->ve:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/byazt/sgn/z;->i:Landroid/view/View;

    invoke-direct {p0, v0, v2, p3}, Lcom/byazt/sgn/z;->c(Landroid/content/Context;Landroid/view/View;Z)V

    .line 19
    iput-object p2, p0, Lcom/byazt/sgn/z;->sp:Lcom/byazt/jzl/uj;

    if-eq p1, v1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    return v1

    .line 20
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/sgn/z;->c(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return v1
.end method

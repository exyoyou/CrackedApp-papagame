.class public Lcom/byazt/sgn/yp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0xd7
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sgn/yp$c;
    }
.end annotation


# instance fields
.field public a:I

.field public final c:Lcom/byazt/sgn/yp$c;

.field public final da:Landroid/view/View$OnTouchListener;

.field public i:Z

.field public n:F

.field public sl:Z

.field public sp:I

.field public tt:Z

.field public uj:F

.field public ve:Z

.field public x:Z


# direct methods
.method public constructor <init>(Lcom/byazt/sgn/yp$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/sgn/yp;->tt:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/sgn/yp;->ve:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/byazt/sgn/yp;->x:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/byazt/sgn/yp;->i:Z

    .line 13
    .line 14
    new-instance v0, Lcom/byazt/sgn/yp$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/byazt/sgn/yp$1;-><init>(Lcom/byazt/sgn/yp;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/byazt/sgn/yp;->da:Landroid/view/View$OnTouchListener;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/byazt/sgn/yp;->c:Lcom/byazt/sgn/yp$c;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a(Lcom/byazt/sgn/yp;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/sgn/yp;->n:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/byazt/sgn/yp;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/sgn/yp;->uj:F

    return p1
.end method

.method public static synthetic c(Lcom/byazt/sgn/yp;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/sgn/yp;->a:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/sgn/yp;)Lcom/byazt/sgn/yp$c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/sgn/yp;->c:Lcom/byazt/sgn/yp$c;

    return-object p0
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    move-result v0

    .line 10
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    move-result v2

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    int-to-float v0, v0

    const v4, 0x3c23d70a    # 0.01f

    mul-float v5, v0, v4

    cmpg-float v5, v3, v5

    if-lez v5, :cond_1

    const v5, 0x3f7d70a4    # 0.99f

    mul-float v0, v0, v5

    cmpl-float v0, v3, v0

    if-gez v0, :cond_1

    int-to-float v0, v2

    mul-float v4, v4, v0

    cmpg-float v2, p1, v4

    if-lez v2, :cond_1

    mul-float v0, v0, v5

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public static synthetic c(Lcom/byazt/sgn/yp;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/sgn/yp;->c(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/byazt/sgn/yp;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/sgn/yp;->sl:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/sgn/yp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/sgn/yp;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/byazt/sgn/yp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/sgn/yp;->sp:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/byazt/sgn/yp;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/sgn/yp;->uj:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic sp(Lcom/byazt/sgn/yp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/sgn/yp;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/sgn/yp;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/sgn/yp;->n:F

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/sgn/yp;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/sgn/yp;->sp:I

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/sgn/yp;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/byazt/sgn/yp;->tt:Z

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/sgn/yp;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/sgn/yp;->x:Z

    return p1
.end method

.method public static synthetic uj(Lcom/byazt/sgn/yp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/sgn/yp;->sl:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic ve(Lcom/byazt/sgn/yp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/sgn/yp;->ve:Z

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/sgn/yp;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/sgn/yp;->i:Z

    return p1
.end method

.method public static synthetic x(Lcom/byazt/sgn/yp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/sgn/yp;->a:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/sgn/yp;->da:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/byazt/sgn/yp;->ve:Z

    return-void
.end method

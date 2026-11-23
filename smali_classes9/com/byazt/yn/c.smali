.class public Lcom/byazt/yn/c;
.super Lcom/byazt/xj/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x54d,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/ve<",
        "Lcom/byazt/yn/BrokenImage;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public volatile vp:Z

.field public yo:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/ve;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/yn/c;->vp:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/byazt/yn/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/yn/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/yn/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/yn/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/yn/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/yn/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/yn/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/yn/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/yn/c;->yo:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic x(Lcom/byazt/yn/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method

.method private x()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/byazt/sz/sp;->c()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/sa/n;->c()Lcom/byazt/sa/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/sa/n;->tt()Lcom/byazt/sa/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/xj/ve;->i:Lcom/byazt/sz/yp;

    iget-object v2, p0, Lcom/byazt/yn/c;->c:Ljava/lang/String;

    new-instance v3, Lcom/byazt/yn/c$1;

    invoke-direct {v3, p0}, Lcom/byazt/yn/c$1;-><init>(Lcom/byazt/yn/c;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/sa/c;->c(Lcom/byazt/sz/yp;Ljava/lang/String;Lcom/byazt/sa/c$c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/byazt/xj/ve;->a()V

    return-void
.end method

.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/yn/c;->sp()Lcom/byazt/yn/BrokenImage;

    move-result-object v0

    return-object v0
.end method

.method public c(III)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/byazt/yn/c;->vp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/byazt/yn/c;->vp:Z

    .line 5
    new-instance v0, Lcom/byazt/yn/c$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/yn/c$2;-><init>(Lcom/byazt/yn/c;III)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-super {p0, p1, p2}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "imageBlur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iput-object p2, p0, Lcom/byazt/yn/c;->c:Ljava/lang/String;

    return-void

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    .line 10
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/yn/c;->yo:F

    :cond_2
    :goto_0
    return-void
.end method

.method public n()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/byazt/xj/ve;->n()V

    return-void
.end method

.method public sp()Lcom/byazt/yn/BrokenImage;
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/yn/BrokenImage;

    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/yn/BrokenImage;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/byazt/yn/BrokenImage;->c(Lcom/byazt/sa/uj;)V

    return-object v0
.end method

.method public tt()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/byazt/xj/ve;->tt()V

    .line 3
    invoke-direct {p0}, Lcom/byazt/yn/c;->x()V

    return-void
.end method

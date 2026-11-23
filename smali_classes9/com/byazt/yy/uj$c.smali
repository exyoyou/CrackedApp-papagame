.class public Lcom/byazt/yy/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7a,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/yy/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public volatile a:I

.field public volatile c:Landroid/content/Context;

.field public volatile n:Z

.field public volatile tt:Ljava/lang/String;

.field public volatile uj:Z

.field public volatile ve:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private tt()Lcom/byazt/iy/n;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/yy/uj$c;->uj:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/yy/uj$c;->tt:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/ti/c;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "kv_store_factory"

    .line 4
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/nu;

    .line 5
    iget-object v1, p0, Lcom/byazt/yy/uj$c;->tt:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/byazt/dna/nu;->get(Ljava/lang/String;)Lcom/byazt/iy/n;

    move-result-object v0

    return-object v0
.end method

.method private ve()Lcom/byazt/iy/n;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/yy/uj$c;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/yy/uj$c;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/byazt/yy/uj$c;->uj:Z

    .line 6
    .line 7
    iget v3, p0, Lcom/byazt/yy/uj$c;->a:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/fu/c;->c(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/byazt/iy/n;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/byazt/yy/uj$c;->n:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/byazt/yy/uj$c;->n:Z

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/byazt/yy/uj$c;->tt()Lcom/byazt/iy/n;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    return-object v0
.end method


# virtual methods
.method public c()Lcom/byazt/iy/n;
    .locals 2

    .line 6
    iget v0, p0, Lcom/byazt/yy/uj$c;->ve:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/byazt/yy/uj$c;->tt()Lcom/byazt/iy/n;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/byazt/yy/uj$c;->ve()Lcom/byazt/iy/n;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c(I)Lcom/byazt/yy/uj$c;
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/yy/uj$c;->ve:I

    return-object p0
.end method

.method public c(Landroid/content/Context;)Lcom/byazt/yy/uj$c;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/yy/uj$c;->c:Landroid/content/Context;

    .line 2
    iget-object p1, p0, Lcom/byazt/yy/uj$c;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/yy/ve;->c(Landroid/content/Context;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/yy/uj$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/yy/uj$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/yy/uj$c;
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/yy/uj$c;->uj:Z

    return-object p0
.end method

.method public tt(I)Lcom/byazt/yy/uj$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/yy/uj$c;->a:I

    return-object p0
.end method

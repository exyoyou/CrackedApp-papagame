.class public Lcom/byazt/zo/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x328,
        0x36
    }
.end annotation


# instance fields
.field public volatile a:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/zo/c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile n:I

.field public sp:J

.field public tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Landroid/view/View;

.field public ve:Lcom/byazt/ete/da;

.field public final x:Lcom/byazt/hkv/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/hkv/uj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/zo/ve;->c:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/zo/ve;->tt:Ljava/util/Map;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/byazt/zo/ve;->a:I

    .line 20
    .line 21
    const-wide/16 v0, -0x1

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/byazt/zo/ve;->sp:J

    .line 24
    .line 25
    iput-object p1, p0, Lcom/byazt/zo/ve;->x:Lcom/byazt/hkv/uj;

    .line 26
    .line 27
    return-void
.end method

.method private c(I)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/byazt/zo/ve;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 8
    iput v1, p0, Lcom/byazt/zo/ve;->n:I

    .line 9
    iget-object v2, p0, Lcom/byazt/zo/ve;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/zo/c;

    .line 10
    iget-object v2, p0, Lcom/byazt/zo/ve;->uj:Landroid/view/View;

    invoke-virtual {p1, v2}, Lcom/byazt/zo/c;->c(Landroid/view/View;)V

    .line 11
    iget-object v2, p0, Lcom/byazt/zo/ve;->tt:Ljava/util/Map;

    invoke-virtual {p1, v2, p0}, Lcom/byazt/zo/c;->c(Ljava/util/Map;Lcom/byazt/zo/ve;)I

    move-result p1

    iput p1, p0, Lcom/byazt/zo/ve;->a:I

    .line 12
    iget p1, p0, Lcom/byazt/zo/ve;->a:I

    if-eqz p1, :cond_0

    .line 13
    iget p1, p0, Lcom/byazt/zo/ve;->a:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 14
    iget-object p1, p0, Lcom/byazt/zo/ve;->x:Lcom/byazt/hkv/uj;

    const-class v0, Lcom/byazt/vis/c;

    invoke-virtual {p1, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/vis/c;

    iget-object v0, p0, Lcom/byazt/zo/ve;->tt:Ljava/util/Map;

    invoke-virtual {p1, v0, p0}, Lcom/byazt/vis/c;->c(Ljava/util/Map;Lcom/byazt/zo/ve;)I

    return-void

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ve()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/byazt/zo/ve;->n:I

    .line 3
    .line 4
    iput v0, p0, Lcom/byazt/zo/ve;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/zo/ve;->sp:J

    return-wide v0
.end method

.method public c(Ljava/lang/Class;)Lcom/byazt/zo/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/byazt/zo/c;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/byazt/zo/ve;->x:Lcom/byazt/hkv/uj;

    invoke-virtual {v0, p1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/zo/ve;->uj:Landroid/view/View;

    return-void
.end method

.method public c(Lcom/byazt/ete/da;)V
    .locals 2

    .line 4
    iput-object p1, p0, Lcom/byazt/zo/ve;->ve:Lcom/byazt/ete/da;

    .line 5
    iget-object p1, p0, Lcom/byazt/zo/ve;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/zo/c;

    .line 6
    iget-object v1, p0, Lcom/byazt/zo/ve;->ve:Lcom/byazt/ete/da;

    invoke-virtual {v0, v1}, Lcom/byazt/zo/c;->c(Lcom/byazt/ete/da;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/zo/c;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/zo/ve;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/byazt/zo/ve;->sp:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/zo/ve;->x:Lcom/byazt/hkv/uj;

    .line 8
    .line 9
    const-class v1, Lcom/byazt/vis/c;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/byazt/vis/c;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/vis/c;->c(Z)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/byazt/zo/ve;->ve()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1}, Lcom/byazt/zo/ve;->c(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

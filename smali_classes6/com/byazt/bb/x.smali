.class public Lcom/byazt/bb/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hl/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x47
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/cq/c;

.field public c:Lcom/byazt/hl/c;

.field public final da:Z

.field public i:Lcom/byazt/ny/uj$c;

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public sp:I

.field public tt:Landroid/content/Context;

.field public uj:Ljava/lang/String;

.field public ve:Z

.field public final x:Lcom/byazt/eia/da;


# direct methods
.method public constructor <init>(Lcom/byazt/eia/da;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Lcom/byazt/cq/c;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eia/da;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/cq/c;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/bb/x;->x:Lcom/byazt/eia/da;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/bb/x;->tt:Landroid/content/Context;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/byazt/bb/x;->ve:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/bb/x;->uj:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/byazt/bb/x;->n:Ljava/util/Map;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/byazt/bb/x;->a:Lcom/byazt/cq/c;

    .line 15
    .line 16
    iput p7, p0, Lcom/byazt/bb/x;->sp:I

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/byazt/bb/x;->da:Z

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic c(Lcom/byazt/bb/x;)Lcom/byazt/ny/uj$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/x;->i:Lcom/byazt/ny/uj$c;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/bb/x;)Lcom/byazt/cq/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/x;->a:Lcom/byazt/cq/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/bb/x;)Lcom/byazt/hl/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/x;->c:Lcom/byazt/hl/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/bb/x;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/bb/x;->da:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic ve(Lcom/byazt/bb/x;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/x;->n:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/ny/uj$c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/bb/x;->i:Lcom/byazt/ny/uj$c;

    return-void
.end method

.method public c(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/byazt/wdw/n;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/byazt/wdw/n;

    iget-object v2, p0, Lcom/byazt/bb/x;->x:Lcom/byazt/eia/da;

    iget-object v3, p0, Lcom/byazt/bb/x;->tt:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/byazt/bb/x;->da:Z

    invoke-direct {v0, v2, v3, v4}, Lcom/byazt/wdw/n;-><init>(Lcom/byazt/eia/da;Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/byazt/bb/x;->uj:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Lcom/byazt/wdw/n;->c(Ljava/lang/String;)Lcom/byazt/wdw/n;

    move-result-object v0

    iget v2, p0, Lcom/byazt/bb/x;->sp:I

    .line 6
    invoke-virtual {v0, v2}, Lcom/byazt/wdw/n;->c(I)Lcom/byazt/wdw/n;

    move-result-object v0

    iget-boolean v2, p0, Lcom/byazt/bb/x;->ve:Z

    .line 7
    invoke-virtual {v0, v2}, Lcom/byazt/wdw/n;->tt(Z)Lcom/byazt/wdw/n;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/bb/x;->n:Ljava/util/Map;

    .line 8
    invoke-virtual {v0, v2}, Lcom/byazt/wdw/n;->c(Ljava/util/Map;)Lcom/byazt/wdw/n;

    move-result-object v0

    new-instance v2, Lcom/byazt/bb/x$1;

    invoke-direct {v2, p0, p1}, Lcom/byazt/bb/x$1;-><init>(Lcom/byazt/bb/x;Ljava/util/Map;)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n$c;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/byazt/wdw/n;->c(Z)V

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/bb/x;->c:Lcom/byazt/hl/c;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/byazt/bb/x;->i:Lcom/byazt/ny/uj$c;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1, v1}, Lcom/byazt/ny/uj$c;->c(Z)V

    :cond_3
    return v1
.end method

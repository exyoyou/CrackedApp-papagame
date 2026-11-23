.class Lcom/aggmoread/sdk/z/c/a/a/e/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/e/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/c/a/a/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/e/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/e/d$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aggmoread/sdk/z/c/a/a/e/d$e;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/e/d$d$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/e/d$d$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/e/d$d;Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->b(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const p2, 0x3baa1417

    const-string v0, "thread err."

    invoke-direct {p1, p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-interface {p3, p2, v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/d$e;->a(I[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;[BLjava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aggmoread/sdk/z/c/a/a/e/d$e;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "AMHTTAG"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/e/d$d$b;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/e/d$d$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/e/d$d;Ljava/lang/String;Ljava/util/Map;[BLcom/aggmoread/sdk/z/c/a/a/e/d$e;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->b(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const p2, 0x3baa1417

    const-string p3, "thread err."

    invoke-direct {p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    const/4 p2, -0x1

    const/4 p3, 0x0

    invoke-interface {p4, p2, p3, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/d$e;->a(I[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    :cond_0
    return-void
.end method

.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/j;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b<",
        "Lcom/aggmoread/sdk/z/c/a/a/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/aggmoread/sdk/z/c/a/a/c/g;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;)Lcom/aggmoread/sdk/z/c/a/a/c/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g<",
            "Lcom/aggmoread/sdk/z/c/a/a/c/a;",
            ">;)",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/j$a;

    invoke-direct {p1, p0, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/j$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/j;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;)V

    return-object p1
.end method

.method protected a(Lcom/aggmoread/sdk/z/c/a/a/c/g;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/c/a/a/c/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lcom/aggmoread/sdk/z/c/a/a/c/p/c;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/aggmoread/sdk/z/c/a/a/c/a;

    instance-of v0, p2, Lcom/aggmoread/sdk/z/c/a/a/c/p/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Lcom/aggmoread/sdk/z/c/a/a/c/p/d;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/c/p/c;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/p/c;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/aggmoread/sdk/z/c/a/a/c/p/f;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Lcom/aggmoread/sdk/z/c/a/a/c/p/f;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/c/p/c;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/p/c;->a(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

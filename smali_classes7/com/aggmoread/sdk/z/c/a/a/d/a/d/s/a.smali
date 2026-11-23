.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b<",
        "Lcom/aggmoread/sdk/z/c/a/a/c/n/a;",
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
            "Lcom/aggmoread/sdk/z/c/a/a/c/n/a;",
            ">;)",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/a$a;

    invoke-direct {p1, p0, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/a;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;)V

    return-object p1
.end method

.method protected a(Lcom/aggmoread/sdk/z/c/a/a/c/g;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/c/a/a/c/n/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lcom/aggmoread/sdk/z/c/a/a/c/n/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/c/n/b;

    invoke-interface {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/c/n/b;->onAdLoaded(Ljava/util/List;)V

    :cond_0
    return-void
.end method

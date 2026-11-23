.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/c/p/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/g;->a(Lcom/aggmoread/sdk/z/c/a/a/c/g;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;)Lcom/aggmoread/sdk/z/c/a/a/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/g;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/g$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/g$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;->a()V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/c/a/a/c/p/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/g$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;->onAdLoaded(Ljava/util/List;)V

    :cond_0
    return-void
.end method

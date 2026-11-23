.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
    .locals 3

    iget-object v0, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->Z:Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/a;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/c/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
    .locals 2

    const-string v0, "AMHTAGKS"

    const-string v1, "createMixInformationFlowAdHandler enter "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/a;->e(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
    .locals 1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/d/a;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/d/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-object v0
.end method

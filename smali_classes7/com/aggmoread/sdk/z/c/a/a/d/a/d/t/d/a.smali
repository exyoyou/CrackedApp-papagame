.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/a;
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

    const-string v0, "com.bytedance.sdk.openadsdk.mediation.IMediationManager"

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
    .locals 1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-object v0
.end method

.method public c(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
    .locals 1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/b;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-object v0
.end method

.method public d(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
    .locals 1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/a;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-object v0
.end method

.method public e(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
    .locals 3

    iget-object v0, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->Z:Ljava/lang/Object;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/c;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/a;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/e/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-object v0
.end method

.method public f(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
    .locals 4

    iget-object v0, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->Z:Ljava/lang/Object;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotFill is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AMHTAGGDT"

    invoke-static {v3, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/a;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-object v0
.end method

.method public g(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
    .locals 2

    const-string v0, "AMHTAGKS"

    const-string v1, "createMixInformationFlowAdHandler enter "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/a;->e(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
    .locals 1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-object v0
.end method

.method public i(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
    .locals 1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-object v0
.end method

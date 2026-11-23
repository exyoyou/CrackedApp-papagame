.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;
.super Lcom/aggmoread/sdk/z/a/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;->b()Lcom/aggmoread/sdk/z/a/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;Lcom/aggmoread/sdk/z/c/a/a/d/b/i;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/g/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ska+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    :cond_2
    invoke-super {p0}, Lcom/aggmoread/sdk/z/a/g/b;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->m()Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/z/a/g/b;->n()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/m/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d$a;->H:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->c()Lcom/aggmoread/sdk/z/c/a/a/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

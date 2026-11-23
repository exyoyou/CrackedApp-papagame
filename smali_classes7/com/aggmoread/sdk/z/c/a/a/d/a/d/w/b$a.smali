.class final Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;
.super Lcom/kwad/sdk/api/KsCustomController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b;->a(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/c/k;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-direct {p0}, Lcom/kwad/sdk/api/KsCustomController;-><init>()V

    return-void
.end method


# virtual methods
.method public canReadInstalledPackages()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->a()Z

    move-result v0

    return v0
.end method

.method public canReadLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->b()Z

    move-result v0

    return v0
.end method

.method public canUseMacAddress()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->c()Z

    move-result v0

    return v0
.end method

.method public canUseNetworkState()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->d()Z

    move-result v0

    return v0
.end method

.method public canUseOaid()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->e()Z

    move-result v0

    return v0
.end method

.method public canUsePhoneState()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->f()Z

    move-result v0

    return v0
.end method

.method public canUseStoragePermission()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->g()Z

    move-result v0

    return v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeis()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->k()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->l()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->m()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

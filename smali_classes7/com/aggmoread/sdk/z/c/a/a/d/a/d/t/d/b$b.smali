.class final Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;
.super Lcom/bytedance/sdk/openadsdk/TTCustomController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b;->a()Lcom/bytedance/sdk/openadsdk/TTCustomController;
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

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;-><init>()V

    return-void
.end method


# virtual methods
.method public alist()Z
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->alist()Z

    move-result v0

    return v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevImei()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevOaid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTTLocation()Lcom/bytedance/sdk/openadsdk/LocationProvider;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->m()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b$a;

    invoke-direct {v1, p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;Landroid/location/Location;)V

    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getTTLocation()Lcom/bytedance/sdk/openadsdk/LocationProvider;

    move-result-object v0

    return-object v0
.end method

.method public isCanUseAndroidId()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->e()Z

    move-result v0

    return v0
.end method

.method public isCanUseLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->b()Z

    move-result v0

    return v0
.end method

.method public isCanUsePermissionRecordAudio()Z
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePermissionRecordAudio()Z

    move-result v0

    return v0
.end method

.method public isCanUsePhoneState()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->f()Z

    move-result v0

    return v0
.end method

.method public isCanUseWifiState()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->d()Z

    move-result v0

    return v0
.end method

.method public isCanUseWriteExternal()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/k;->g()Z

    move-result v0

    return v0
.end method

.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->a(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->b:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 10

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    const-string v1, "onADClicked"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    iget v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->k:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->k:I

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v3, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v4

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    iget-object v5, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->a:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    :goto_0
    move-object v6, v1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    iget-wide v7, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iget-object v9, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-virtual/range {v4 .. v9}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;J[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->b:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;->onAdClicked()V

    :cond_1
    return-void
.end method

.method public onADError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "onADError %s"

    invoke-static {v0, v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public onADExposed()V
    .locals 3

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    const-string v1, "onADExposed "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->b:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    return-void
.end method

.method public onADStatusChanged()V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    const-string v1, "onADStatusChanged"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->b:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    instance-of v1, v0, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$b;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppStatus()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$b;->onADStatusChanged(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->b:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$b;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$b;->onLoadApkProgress(I)V

    :cond_0
    return-void
.end method

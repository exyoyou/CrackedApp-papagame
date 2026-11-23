.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

.field final synthetic d:Landroid/view/ViewGroup;

.field final synthetic e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->c:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    iput-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->d:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->a:Z

    return p0
.end method


# virtual methods
.method public onADExposed()V
    .locals 6

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    const-string v1, "onADExposed "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->a:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/e/l;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->f:Ljava/lang/Object;

    const-string v5, "-1"

    invoke-virtual {v3, v4, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-static {v1, v0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->c:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    return-void
.end method

.method public onADExposureFailed(I)V
    .locals 5

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onADError %d"

    invoke-static {v0, v3, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->d:Landroid/view/ViewGroup;

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a$a;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0x3e8

    invoke-direct {v1, v2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    :goto_0
    return-void
.end method

.method public onADStatusChanged()V
    .locals 3

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    const-string v1, "onADStatusChanged"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->c:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    instance-of v0, v0, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDownloadStatus()I

    move-result v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;I)I

    move-result v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->c:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    check-cast v2, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$b;

    invoke-interface {v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$b;->onADStatusChanged(I)V

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->c:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    check-cast v1, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$b;

    invoke-interface {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$b;->onLoadApkProgress(I)V

    :cond_0
    return-void
.end method

.method public onAdClick()V
    .locals 10

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    const-string v1, "onADClicked"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    iget v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->k:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->k:I

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v3, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v4

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    iget-object v5, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->b:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    :goto_0
    move-object v6, v1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    iget-wide v7, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iget-object v9, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-virtual/range {v4 .. v9}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;J[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->c:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;->onAdClicked()V

    :cond_1
    return-void
.end method

.method public onAdUnionClick()V
    .locals 0

    return-void
.end method

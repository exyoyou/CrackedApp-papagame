.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->b:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 8

    .line 1
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->B:Ljava/lang/String;

    const-string p2, "onADClicked"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;

    iget p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->k:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->k:I

    iget-object p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {p1, p2, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p1

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v2

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;

    iget-object v3, p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->a:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    :goto_0
    move-object v4, p2

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;

    iget-wide v5, p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iget-object v7, p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-virtual/range {v2 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;J[Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->b:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;->onAdClicked()V

    :cond_1
    return-void
.end method

.method public a(Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 4

    .line 2
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->B:Ljava/lang/String;

    const-string v0, "onADExposed "

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/e/l;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->f:Ljava/lang/Object;

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$b;->b:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public onDownloadTipsDialogDismiss()V
    .locals 0

    return-void
.end method

.method public onDownloadTipsDialogShow()V
    .locals 0

    return-void
.end method

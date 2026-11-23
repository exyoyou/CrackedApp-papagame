.class public Lcom/byazt/ouz/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/el/SSWebView$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x15e
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/el/SSWebView;

.field public tt:Lcom/byazt/ete/ic;

.field public ve:Lcom/byazt/omf/d;


# direct methods
.method public constructor <init>(Lcom/byazt/el/SSWebView;Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ouz/p;->c:Lcom/byazt/el/SSWebView;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/byazt/ouz/p;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/byazt/ouz/p;->ve:Lcom/byazt/omf/d;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/p;)Lcom/byazt/omf/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/p;->ve:Lcom/byazt/omf/d;

    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/p;->c:Lcom/byazt/el/SSWebView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/byazt/ouz/p;->tt:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v0, v2, v1}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public c(I)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/byazt/ouz/p;->c()Z

    move-result v0

    const-string v1, "wv:"

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xeasy"

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->rh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/byazt/ouz/p;->c:Lcom/byazt/el/SSWebView;

    if-eqz v0, :cond_1

    .line 8
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/byazt/ouz/p$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ouz/p$1;-><init>(Lcom/byazt/ouz/p;I)V

    invoke-static {v1, v0}, Lcom/byazt/aas/or;->c(Ljava/lang/ref/WeakReference;Lcom/byazt/hkv/ve;)V

    :cond_1
    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/p;->ve:Lcom/byazt/omf/d;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->c(I)V

    :cond_3
    return-void
.end method

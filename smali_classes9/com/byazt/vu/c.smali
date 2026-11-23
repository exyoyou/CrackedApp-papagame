.class public Lcom/byazt/vu/c;
.super Lcom/byazt/hkv/uj;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/wl/c;
.implements Lcom/byazt/hkv/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4d8,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/xl/sl;

.field public da:Landroid/view/View;

.field public volatile n:Z

.field public sl:Lcom/byazt/nk/z;

.field public t:I

.field public tt:Z

.field public uj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/byazt/hkv/uj;-><init>(Landroid/content/Context;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/byazt/vu/c;->n:Z

    .line 7
    .line 8
    const/high16 v0, -0x80000000

    .line 9
    .line 10
    iput v0, p0, Lcom/byazt/vu/c;->t:I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/vu/c;->ve:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/byazt/vu/c;->uj:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method

.method private c(Landroid/view/View;I)V
    .locals 10

    .line 13
    iget-object v0, p0, Lcom/byazt/vu/c;->c:Lcom/byazt/xl/sl;

    if-eqz v0, :cond_4

    .line 14
    iget-boolean v0, p0, Lcom/byazt/vu/c;->tt:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/vu/c;->ve:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    .line 15
    sput-boolean v1, Lcom/byazt/yzg/a;->uj:Z

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    new-array v0, v0, [I

    .line 16
    iget-object v3, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    invoke-virtual {v3}, Lcom/byazt/ete/da;->i()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 17
    invoke-static {v3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;)[I

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v2, v4

    .line 18
    :cond_1
    invoke-static {v3}, Lcom/byazt/aas/pf;->ve(Landroid/view/View;)[I

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v0, v3

    .line 19
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 20
    :try_start_0
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 21
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 22
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u4e0b\u8f7d"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "is_compliant_download"

    .line 23
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    const-string v4, "convertActionType"

    .line 24
    iget v5, p0, Lcom/byazt/vu/c;->t:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const v4, 0x7d06ffdb

    .line 25
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7d06ffda

    .line 26
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7d06ffd9

    .line 27
    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 28
    new-instance v7, Lcom/byazt/ete/gr$c;

    invoke-direct {v7}, Lcom/byazt/ete/gr$c;-><init>()V

    iget-object v8, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 29
    invoke-virtual {v8}, Lcom/byazt/ete/da;->nu()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/byazt/ete/gr$c;->uj(F)Lcom/byazt/ete/gr$c;

    move-result-object v7

    iget-object v8, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 30
    invoke-virtual {v8}, Lcom/byazt/ete/da;->rh()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/byazt/ete/gr$c;->ve(F)Lcom/byazt/ete/gr$c;

    move-result-object v7

    iget-object v8, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 31
    invoke-virtual {v8}, Lcom/byazt/ete/da;->my()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/byazt/ete/gr$c;->tt(F)Lcom/byazt/ete/gr$c;

    move-result-object v7

    iget-object v8, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 32
    invoke-virtual {v8}, Lcom/byazt/ete/da;->gt()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/byazt/ete/gr$c;->c(F)Lcom/byazt/ete/gr$c;

    move-result-object v7

    iget-object v8, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 33
    invoke-virtual {v8}, Lcom/byazt/ete/da;->z()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/byazt/ete/gr$c;->tt(J)Lcom/byazt/ete/gr$c;

    move-result-object v7

    iget-object v8, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 34
    invoke-virtual {v8}, Lcom/byazt/ete/da;->m()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/byazt/ete/gr$c;->c(J)Lcom/byazt/ete/gr$c;

    move-result-object v7

    const/4 v8, 0x0

    aget v9, v2, v8

    .line 35
    invoke-virtual {v7, v9}, Lcom/byazt/ete/gr$c;->c(I)Lcom/byazt/ete/gr$c;

    move-result-object v7

    aget v2, v2, v1

    .line 36
    invoke-virtual {v7, v2}, Lcom/byazt/ete/gr$c;->tt(I)Lcom/byazt/ete/gr$c;

    move-result-object v2

    aget v7, v0, v8

    .line 37
    invoke-virtual {v2, v7}, Lcom/byazt/ete/gr$c;->ve(I)Lcom/byazt/ete/gr$c;

    move-result-object v2

    aget v0, v0, v1

    .line 38
    invoke-virtual {v2, v0}, Lcom/byazt/ete/gr$c;->uj(I)Lcom/byazt/ete/gr$c;

    move-result-object v0

    .line 39
    invoke-direct {p0, p1}, Lcom/byazt/vu/c;->uj(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/gr$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/gr$c;

    move-result-object v0

    .line 40
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/gr$c;->ve(Ljava/lang/String;)Lcom/byazt/ete/gr$c;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v5}, Lcom/byazt/ete/gr$c;->tt(Ljava/lang/String;)Lcom/byazt/ete/gr$c;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v4}, Lcom/byazt/ete/gr$c;->c(Ljava/lang/String;)Lcom/byazt/ete/gr$c;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v6}, Lcom/byazt/ete/gr$c;->uj(Ljava/lang/String;)Lcom/byazt/ete/gr$c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 44
    invoke-virtual {v1}, Lcom/byazt/ete/da;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/gr$c;->c(Z)Lcom/byazt/ete/gr$c;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v3}, Lcom/byazt/ete/gr$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/gr$c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 46
    invoke-virtual {v1}, Lcom/byazt/ete/da;->u()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/gr$c;->c(Landroid/util/SparseArray;)Lcom/byazt/ete/gr$c;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/byazt/ete/gr$c;->c()Lcom/byazt/ete/gr;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/byazt/vu/c;->c:Lcom/byazt/xl/sl;

    const/4 v2, -0x1

    invoke-interface {v1, p1, p2, v0, v2}, Lcom/byazt/xl/sl;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    :cond_4
    return-void
.end method

.method private tt()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/vu/c;->uj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/vu/c;->uj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/byazt/aas/or;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/byazt/vu/c;->t:I

    .line 5
    iget-object v0, p0, Lcom/byazt/vu/c;->da:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/byazt/vu/c;->ve(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private uj(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method private ve(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/byazt/vu/c;->c(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v0, "DynamicClickListener"

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_1
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/byazt/vu/c;->tt()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/byazt/vu/c;->n:Z

    .line 51
    iget-object v0, p0, Lcom/byazt/vu/c;->sl:Lcom/byazt/nk/z;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/byazt/nk/z;->n()V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    invoke-virtual {v0, p1}, Lcom/byazt/ete/da;->tt(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/vu/c;->da:Landroid/view/View;

    .line 10
    iget-boolean p2, p0, Lcom/byazt/vu/c;->n:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/byazt/vu/c;->n:Z

    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/vu/c;->ve(Landroid/view/View;)V

    return-void
.end method

.method public c(Lcom/byazt/xl/sl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vu/c;->c:Lcom/byazt/xl/sl;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "convertActionType"

    const/high16 v1, -0x80000000

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/vu/c;->t:I

    return-void
.end method

.method public c(ZLcom/byazt/nk/z;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/vu/c;->n:Z

    .line 3
    iput-boolean p1, p0, Lcom/byazt/vu/c;->tt:Z

    .line 4
    iput-object p2, p0, Lcom/byazt/vu/c;->sl:Lcom/byazt/nk/z;

    .line 5
    iget-object p1, p0, Lcom/byazt/vu/c;->uj:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/byazt/vu/c;->uj:Ljava/lang/ref/WeakReference;

    invoke-static {p1, p0}, Lcom/byazt/aas/or;->c(Ljava/lang/ref/WeakReference;Lcom/byazt/hkv/ve;)V

    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    invoke-virtual {v0, p1}, Lcom/byazt/ete/da;->c(Landroid/view/View;)V

    return-void
.end method

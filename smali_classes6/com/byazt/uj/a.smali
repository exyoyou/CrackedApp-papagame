.class public Lcom/byazt/uj/a;
.super Lcom/byazt/uj/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf,
        0x22
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/wn/tt;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/wn/tt;",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/uj/ve;-><init>(Lcom/byazt/wn/tt;Ljava/util/function/Function;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/uj/ve;->x:Lcom/byazt/wn/tt;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/wn/tt;->mediationCallShow()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/uj/ve;->i:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    const/16 v1, 0x1fb1

    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v0

    const/16 v1, 0x4e41

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/byazt/uj/ve;->i:Ljava/util/function/Function;

    invoke-static {v0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/byazt/uj/a;->showAd(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

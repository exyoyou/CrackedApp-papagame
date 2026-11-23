.class public Lcom/byazt/lo/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x291,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lo/uj;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lo/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/lo/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lo/uj$1;->c:Lcom/byazt/lo/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/lo/uj$1;->c:Lcom/byazt/lo/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/lo/uj;->c(Lcom/byazt/lo/uj;)Lcom/byazt/xj/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/byazt/lo/uj$1;->c:Lcom/byazt/lo/uj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/lo/uj;->tt(Lcom/byazt/lo/uj;)Lcom/byazt/xj/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/byazt/pj/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/pj/a;->c()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/byazt/kt/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView;->getScrollState()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView;->yp()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/lo/uj$1;->c:Lcom/byazt/lo/uj;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/lo/uj;->ve(Lcom/byazt/lo/uj;)Lcom/byazt/xj/ve;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/byazt/pj/a;

    .line 42
    .line 43
    const-string v1, "header"

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/byazt/pj/a;->c(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :cond_0
    return-void
.end method

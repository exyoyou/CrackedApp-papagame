.class public Lcom/byazt/iym/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kt/RecyclerView$sl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/iym/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/iym/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/iym/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iym/ve$1;->c:Lcom/byazt/iym/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/iym/ve$1;->c:Lcom/byazt/iym/ve;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/iym/ve;->c(Lcom/byazt/iym/ve;)Lcom/byazt/iym/ve$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/iym/ve$1;->c:Lcom/byazt/iym/ve;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->my()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/byazt/iym/ve$1;->c:Lcom/byazt/iym/ve;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/byazt/iym/ve;->c(Lcom/byazt/iym/ve;)Lcom/byazt/iym/ve$c;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/byazt/iym/ve$c;->c()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/ve$1;->c:Lcom/byazt/iym/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/iym/ve;->c(Lcom/byazt/iym/ve;)Lcom/byazt/iym/ve$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/iym/ve$1;->c:Lcom/byazt/iym/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/iym/ve;->c(Lcom/byazt/iym/ve;)Lcom/byazt/iym/ve$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/iym/ve$1;->c:Lcom/byazt/iym/ve;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/byazt/iym/ve;->tt(Lcom/byazt/iym/ve;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/byazt/iym/ve$1;->c:Lcom/byazt/iym/ve;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lcom/byazt/kt/RecyclerView$i;->uj(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-interface {v0, v1, p1}, Lcom/byazt/iym/ve$c;->c(ZI)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

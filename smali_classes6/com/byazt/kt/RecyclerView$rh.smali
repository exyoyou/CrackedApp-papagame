.class public Lcom/byazt/kt/RecyclerView$rh;
.super Lcom/byazt/kt/RecyclerView$ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x9b8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "rh"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kt/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/byazt/kt/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$rh;->c:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/kt/RecyclerView$ve;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$rh;->c:Lcom/byazt/kt/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/kt/RecyclerView;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$rh;->c:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v0, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/byazt/kt/RecyclerView$gt;->a:Z

    .line 3
    invoke-virtual {v0, v2}, Lcom/byazt/kt/RecyclerView;->ve(Z)V

    .line 4
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$rh;->c:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->a:Lcom/byazt/kt/c;

    invoke-virtual {v0}, Lcom/byazt/kt/c;->uj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$rh;->c:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public c(IILjava/lang/Object;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$rh;->c:Lcom/byazt/kt/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/kt/RecyclerView;->c(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$rh;->c:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->a:Lcom/byazt/kt/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/kt/c;->c(IILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$rh;->tt()V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/kt/RecyclerView;->ve:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$rh;->c:Lcom/byazt/kt/RecyclerView;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/byazt/kt/RecyclerView;->rh:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/byazt/kt/RecyclerView;->nu:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lcom/byazt/kt/RecyclerView;->da:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/byazt/fq/sp;->c(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$rh;->c:Lcom/byazt/kt/RecyclerView;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lcom/byazt/kt/RecyclerView;->qy:Z

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView;->requestLayout()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

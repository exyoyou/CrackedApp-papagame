.class public Lcom/byazt/kt/RecyclerView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kt/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x4a0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kt/RecyclerView;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kt/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/byazt/kt/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(I)Lcom/byazt/kt/RecyclerView$gu;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/kt/RecyclerView;->c(IZ)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v1, Lcom/byazt/kt/RecyclerView;->sp:Lcom/byazt/kt/tt;

    iget-object v2, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/byazt/kt/tt;->ve(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public c(II)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/byazt/kt/RecyclerView;->c(IIZ)V

    .line 4
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    iput-boolean v1, p1, Lcom/byazt/kt/RecyclerView;->d:Z

    .line 5
    iget-object p1, p1, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    .line 6
    iget v0, p1, Lcom/byazt/kt/RecyclerView$gt;->ve:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/byazt/kt/RecyclerView$gt;->ve:I

    return-void
.end method

.method public c(IILjava/lang/Object;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/kt/RecyclerView;->c(IILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/byazt/kt/RecyclerView;->eo:Z

    return-void
.end method

.method public tt(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/byazt/kt/RecyclerView;->c(IIZ)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p1, Lcom/byazt/kt/RecyclerView;->d:Z

    .line 11
    .line 12
    return-void
.end method

.method public uj(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/byazt/kt/RecyclerView;->a(II)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p1, Lcom/byazt/kt/RecyclerView;->d:Z

    .line 10
    .line 11
    return-void
.end method

.method public ve(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/byazt/kt/RecyclerView;->sp(II)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$5;->c:Lcom/byazt/kt/RecyclerView;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p1, Lcom/byazt/kt/RecyclerView;->d:Z

    .line 10
    .line 11
    return-void
.end method

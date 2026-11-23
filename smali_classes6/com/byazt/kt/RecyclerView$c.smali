.class public abstract Lcom/byazt/kt/RecyclerView$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x402
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/byazt/kt/RecyclerView$gu;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/kt/RecyclerView$tt;

.field public tt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/kt/RecyclerView$tt;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/kt/RecyclerView$tt;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/kt/RecyclerView$c;->c:Lcom/byazt/kt/RecyclerView$tt;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/kt/RecyclerView$c;->tt:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract c()I
.end method

.method public c(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract c(Landroid/view/ViewGroup;I)Lcom/byazt/kt/RecyclerView$gu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final c(II)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$c;->c:Lcom/byazt/kt/RecyclerView$tt;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/kt/RecyclerView$tt;->c(II)V

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$c;->c:Lcom/byazt/kt/RecyclerView$tt;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/byazt/kt/RecyclerView$tt;->c(IILjava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public abstract c(Lcom/byazt/kt/RecyclerView$gu;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/byazt/kt/RecyclerView$c;->c(Lcom/byazt/kt/RecyclerView$gu;I)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$ve;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$c;->c:Lcom/byazt/kt/RecyclerView$tt;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public tt(I)J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final tt(Landroid/view/ViewGroup;I)Lcom/byazt/kt/RecyclerView$gu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    :try_start_0
    const-string v0, "RV CreateView"

    .line 3
    invoke-static {v0}, Lcom/byazt/km/c;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/byazt/kt/RecyclerView$c;->c(Landroid/view/ViewGroup;I)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object p1

    .line 5
    iget-object v0, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    iput p2, p1, Lcom/byazt/kt/RecyclerView$gu;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lcom/byazt/km/c;->c()V

    return-object p1

    .line 8
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {}, Lcom/byazt/km/c;->c()V

    throw p1
.end method

.method public final tt(Lcom/byazt/kt/RecyclerView$gu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 10
    iput p2, p1, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    .line 11
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$c;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p2}, Lcom/byazt/kt/RecyclerView$c;->tt(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/byazt/kt/RecyclerView$gu;->n:J

    :cond_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/byazt/kt/RecyclerView$gu;->c(II)V

    const-string v0, "RV OnBindView"

    .line 14
    invoke-static {v0}, Lcom/byazt/km/c;->c(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->rl()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/kt/RecyclerView$c;->c(Lcom/byazt/kt/RecyclerView$gu;ILjava/util/List;)V

    .line 16
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->gt()V

    .line 17
    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 18
    instance-of p2, p1, Lcom/byazt/kt/RecyclerView$da;

    if-eqz p2, :cond_1

    .line 19
    check-cast p1, Lcom/byazt/kt/RecyclerView$da;

    iput-boolean v1, p1, Lcom/byazt/kt/RecyclerView$da;->ve:Z

    .line 20
    :cond_1
    invoke-static {}, Lcom/byazt/km/c;->c()V

    return-void
.end method

.method public tt(Lcom/byazt/kt/RecyclerView$ve;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$c;->c:Lcom/byazt/kt/RecyclerView$tt;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final tt()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/byazt/kt/RecyclerView$c;->tt:Z

    return v0
.end method

.method public tt(Lcom/byazt/kt/RecyclerView$gu;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$c;->c:Lcom/byazt/kt/RecyclerView$tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$tt;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

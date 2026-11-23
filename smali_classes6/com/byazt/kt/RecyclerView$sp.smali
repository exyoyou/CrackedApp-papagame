.class public Lcom/byazt/kt/RecyclerView$sp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kt/RecyclerView$a$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x9c0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sp"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kt/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/byazt/kt/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$sp;->c:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/byazt/kt/RecyclerView$gu;->c(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p1, Lcom/byazt/kt/RecyclerView$gu;->x:Lcom/byazt/kt/RecyclerView$gu;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p1, Lcom/byazt/kt/RecyclerView$gu;->i:Lcom/byazt/kt/RecyclerView$gu;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object v1, p1, Lcom/byazt/kt/RecyclerView$gu;->x:Lcom/byazt/kt/RecyclerView$gu;

    .line 15
    .line 16
    :cond_0
    iput-object v1, p1, Lcom/byazt/kt/RecyclerView$gu;->i:Lcom/byazt/kt/RecyclerView$gu;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->gr()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$sp;->c:Lcom/byazt/kt/RecyclerView;

    .line 25
    .line 26
    iget-object v1, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/kt/RecyclerView;->c(Landroid/view/View;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->rh()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$sp;->c:Lcom/byazt/kt/RecyclerView;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, p1, v1}, Lcom/byazt/kt/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.class public abstract Lcom/xuanyu/stickyheader/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xuanyu/stickyheader/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/xuanyu/stickyheader/j;->b(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Class;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/xuanyu/stickyheader/a;->d(Landroid/content/Context;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v0, v1}, Lcom/xuanyu/stickyheader/j;->e(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Class;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object v1, p0, Lcom/xuanyu/stickyheader/a;->c:Landroid/view/View;

    .line 21
    .line 22
    return-object v1
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xuanyu/stickyheader/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xuanyu/stickyheader/a;->b:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract d(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xuanyu/stickyheader/a;->c:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/xuanyu/stickyheader/b;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/xuanyu/stickyheader/b;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/xuanyu/stickyheader/a;->b()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/xuanyu/stickyheader/b;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/xuanyu/stickyheader/a;->b()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/xuanyu/stickyheader/a;->f(Landroid/view/View;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public abstract f(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stickyView",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xuanyu/stickyheader/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerViewItemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xuanyu/stickyheader/a;->b:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

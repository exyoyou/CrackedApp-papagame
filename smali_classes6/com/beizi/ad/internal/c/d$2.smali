.class Lcom/beizi/ad/internal/c/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/internal/c/d;->a(Lcom/beizi/ad/e;Landroid/view/View;Ljava/util/List;Lcom/beizi/ad/internal/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/e;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/beizi/ad/internal/c/b;


# direct methods
.method constructor <init>(Lcom/beizi/ad/e;Landroid/view/View;Ljava/util/List;Lcom/beizi/ad/internal/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/internal/c/d$2;->a:Lcom/beizi/ad/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/ad/internal/c/d$2;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/beizi/ad/internal/c/d$2;->c:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/beizi/ad/internal/c/d$2;->d:Lcom/beizi/ad/internal/c/b;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/internal/c/d$2;->a:Lcom/beizi/ad/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beizi/ad/internal/c/d$2;->b:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/beizi/ad/internal/c/d$2;->c:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/beizi/ad/internal/c/d$2;->d:Lcom/beizi/ad/internal/c/b;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Lcom/beizi/ad/e;->a(Landroid/view/View;Ljava/util/List;Lcom/beizi/ad/internal/c/b;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/beizi/ad/internal/c/d$2;->a:Lcom/beizi/ad/e;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/beizi/ad/internal/c/d$2;->b:Landroid/view/View;

    .line 23
    .line 24
    sget v2, Lcom/beizi/fusion/R$string;->beizi_native_tag:I

    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

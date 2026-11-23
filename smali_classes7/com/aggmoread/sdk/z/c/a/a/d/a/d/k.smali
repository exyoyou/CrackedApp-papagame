.class public abstract Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;
.super Lcom/aggmoread/sdk/z/c/a/a/d/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/c/t/a;


# static fields
.field private static B:Ljava/lang/String; = "AMSTAG"


# instance fields
.field protected A:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

.field private q:Landroid/view/ViewGroup;

.field private r:Landroid/view/View;

.field public s:[Ljava/lang/Object;

.field public t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;",
            ">;"
        }
    .end annotation
.end field

.field public u:Z

.field protected v:Z

.field protected w:Z

.field private x:Z

.field private y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->t:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->u:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->v:Z

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->w:Z

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->x:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/b;->b()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->s:[Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Landroid/content/Context;)V
    .locals 2

    .line 8
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "cs enter"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->q:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->q:Landroid/view/ViewGroup;

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->k:Landroid/view/View;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "cs 1"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->q:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->r:Landroid/view/View;

    if-nez p1, :cond_3

    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v0, "cs 2"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/e;

    invoke-direct {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->r:Landroid/view/View;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->q:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/c/a/a/c/t/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    invoke-static {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->q:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    invoke-static {v2, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->g:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v0, v0, Lcom/aggmoread/sdk/z/c/a/a/c/t/b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k$a;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;Ljava/util/List;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;
    .locals 5

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "wac enter "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;->e:Z

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->s:[Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Landroid/view/View;[Ljava/lang/Object;)V

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/c;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/c;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v2, -0x1

    invoke-virtual {p2, p1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/d;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v4, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v4, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {p1, v3, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->q:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/d;->a(Landroid/view/View;)V

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->u:Z

    :cond_0
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string p2, "wac exist "

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->k(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->c(I)V

    :cond_0
    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->k(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->b(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(J)V
    .locals 5

    .line 4
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onAdTick %s"

    invoke-static {v0, v3, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->r:Landroid/view/View;

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, " \u8df3\u8fc7 %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->A:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/c/t/c;->onAdTick(J)V

    :cond_1
    const-wide/16 v0, 0x258

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    iput-boolean v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->w:Z

    :cond_2
    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 4

    .line 5
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->v:Z

    invoke-virtual {p0, v0, p1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;)V

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->b(Landroid/view/ViewGroup;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->t:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e7f\u544a\u5c55\u793a\u5931\u8d25! ErrMsg :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x3baa1418

    invoke-direct {v1, v2, v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/c/t/c;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->A:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/c;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

    return-void
.end method

.method protected a(Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;)V
    .locals 3

    .line 9
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "rs enter"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->q:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->u:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    aput-object v0, v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    new-array v2, v1, [Landroid/view/View;

    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;[Landroid/view/View;)V

    return-void
.end method

.method protected a(Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;[Landroid/view/View;)V
    .locals 3

    .line 10
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "rs enter"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sk  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->q:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->u:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->s:[Ljava/lang/Object;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/c/j;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/c/j;Landroid/view/View;[Landroid/view/View;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->s:[Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->e()Z

    move-result p2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;ZZ)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->f()[I

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[I)V

    goto :goto_0

    :cond_0
    const-string p1, "AMSTAG"

    const-string p2, "save null"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object p1

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rs edata = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[B)V

    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->s:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string p2, "rs exist"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->j:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method protected b(IILjava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method protected abstract b(Landroid/view/ViewGroup;)V
.end method

.method protected b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "onAdError %s"

    invoke-static {v0, v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->l:Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/v/g;->a()Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->A:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->g:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    :goto_0
    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/c/g;->a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V

    :cond_1
    return-void
.end method

.method protected c(I)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method protected f(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/c/a/a/c/t/a;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->l:Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/v/g;->a()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->x:Z

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "import extras false"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->e(Ljava/util/List;)V

    return-void
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "handle"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->q:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->a(Landroid/view/View;)V

    return-void
.end method

.method protected q()V
    .locals 8

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "onAdClicked"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->w:Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->t:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    :goto_0
    move-object v4, v1

    iget-object v7, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->s:[Ljava/lang/Object;

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;J[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->A:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/f;->onAdClicked()V

    :cond_1
    return-void
.end method

.method protected r()V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "onAdClosed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->t()V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->A:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/f;->a()V

    :cond_1
    return-void
.end method

.method protected s()V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->B:Ljava/lang/String;

    const-string v1, "onAdExposure"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->A:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/c/f;)V

    return-void
.end method

.method protected t()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->A:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/t/c;->e()V

    :cond_0
    return-void
.end method

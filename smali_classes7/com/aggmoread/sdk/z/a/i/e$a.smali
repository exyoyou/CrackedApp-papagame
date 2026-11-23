.class public abstract Lcom/aggmoread/sdk/z/a/i/e$a;
.super Lcom/aggmoread/sdk/z/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/a/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/aggmoread/sdk/z/a/i/e$a;",
        "K:",
        "Lcom/aggmoread/sdk/z/a/i/e;",
        ">",
        "Lcom/aggmoread/sdk/z/a/e;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/aggmoread/sdk/z/a/t/e;

.field private n:Lcom/aggmoread/sdk/z/a/i/b;

.field private o:D

.field private p:I

.field private q:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/e;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->j:Z

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->k:Z

    iput-boolean v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->l:Z

    sget-object v1, Lcom/aggmoread/sdk/z/a/t/e;->k:Lcom/aggmoread/sdk/z/a/t/e;

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->m:Lcom/aggmoread/sdk/z/a/t/e;

    sget-object v1, Lcom/aggmoread/sdk/z/a/i/b;->b:Lcom/aggmoread/sdk/z/a/i/b;

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->n:Lcom/aggmoread/sdk/z/a/i/b;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->o:D

    iput v0, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->p:I

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->d:Landroid/app/Activity;

    :cond_0
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(D)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->o:D

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->h:Landroid/view/View;

    return-object p0
.end method

.method public a(Lcom/aggmoread/sdk/z/a/i/b;)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/a/i/b;",
            ")TT;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->n:Lcom/aggmoread/sdk/z/a/i/b;

    return-object p0
.end method

.method public a(Lcom/aggmoread/sdk/z/a/t/e;)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/a/t/e;",
            ")TT;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->m:Lcom/aggmoread/sdk/z/a/t/e;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 6
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->j:Z

    return-object p0
.end method

.method public b(I)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->i:I

    return-object p0
.end method

.method public b(Z)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->l:Z

    return-object p0
.end method

.method public c(I)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->p:I

    return-object p0
.end method

.method public d(I)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->f:I

    return-object p0
.end method

.method public e()Lcom/aggmoread/sdk/z/a/i/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/i/e$a;->f()Lcom/aggmoread/sdk/z/a/i/e;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->d:Landroid/app/Activity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/e;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->b(Lcom/aggmoread/sdk/z/a/i/e;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->f:I

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->c(Lcom/aggmoread/sdk/z/a/i/e;I)I

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->h:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/e;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/e;Landroid/content/Context;)Landroid/content/Context;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->g:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->b(Lcom/aggmoread/sdk/z/a/i/e;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->i:I

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->d(Lcom/aggmoread/sdk/z/a/i/e;I)I

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->j:Z

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->b(Lcom/aggmoread/sdk/z/a/i/e;Z)Z

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->k:Z

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->c(Lcom/aggmoread/sdk/z/a/i/e;Z)Z

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->m:Lcom/aggmoread/sdk/z/a/t/e;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/e;Lcom/aggmoread/sdk/z/a/t/e;)Lcom/aggmoread/sdk/z/a/t/e;

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->l:Z

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/e;Z)Z

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->n:Lcom/aggmoread/sdk/z/a/i/b;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/e;Lcom/aggmoread/sdk/z/a/i/b;)Lcom/aggmoread/sdk/z/a/i/b;

    iget v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->q:I

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/e;I)I

    iget-wide v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->o:D

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/e;D)D

    iget v1, p0, Lcom/aggmoread/sdk/z/a/i/e$a;->p:I

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/i/e;->b(Lcom/aggmoread/sdk/z/a/i/e;I)I

    invoke-virtual {v0, p0}, Lcom/aggmoread/sdk/z/a/e;->a(Lcom/aggmoread/sdk/z/a/c;)Lcom/aggmoread/sdk/z/a/c;

    :cond_0
    return-object v0
.end method

.method protected abstract f()Lcom/aggmoread/sdk/z/a/i/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

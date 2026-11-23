.class public abstract Lcom/aggmoread/sdk/z/a/i/e;
.super Lcom/aggmoread/sdk/z/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/i/e$a;
    }
.end annotation


# static fields
.field public static t:Ljava/lang/String; = ""


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/aggmoread/sdk/z/a/i/f;

.field private j:I

.field private k:Landroid/view/View;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/aggmoread/sdk/z/a/t/e;

.field private p:Lcom/aggmoread/sdk/z/a/i/b;

.field private q:D

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/e;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->g:I

    sget-object v0, Lcom/aggmoread/sdk/z/a/i/f;->h:Lcom/aggmoread/sdk/z/a/i/f;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->i:Lcom/aggmoread/sdk/z/a/i/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->l:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aggmoread/sdk/z/a/i/e;->m:Z

    iput-boolean v1, p0, Lcom/aggmoread/sdk/z/a/i/e;->n:Z

    sget-object v1, Lcom/aggmoread/sdk/z/a/t/e;->k:Lcom/aggmoread/sdk/z/a/t/e;

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e;->o:Lcom/aggmoread/sdk/z/a/t/e;

    sget-object v1, Lcom/aggmoread/sdk/z/a/i/b;->b:Lcom/aggmoread/sdk/z/a/i/b;

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e;->p:Lcom/aggmoread/sdk/z/a/i/b;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/aggmoread/sdk/z/a/i/e;->q:D

    iput v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->r:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/i/e;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->q:D

    return-wide p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/i/e;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->s:I

    return p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/i/e;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->e:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/i/e;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->k:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/i/e;Lcom/aggmoread/sdk/z/a/i/b;)Lcom/aggmoread/sdk/z/a/i/b;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->p:Lcom/aggmoread/sdk/z/a/i/b;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/i/e;Lcom/aggmoread/sdk/z/a/t/e;)Lcom/aggmoread/sdk/z/a/t/e;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->o:Lcom/aggmoread/sdk/z/a/t/e;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/i/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/i/e;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->f:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/i/e;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/i/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->r:I

    return p1
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/i/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/i/e;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->h:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/i/e;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/i/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->g:I

    return p1
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/i/e;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->m:Z

    return p1
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/i/e;I)I
    .locals 0

    iput p1, p0, Lcom/aggmoread/sdk/z/a/i/e;->j:I

    return p1
.end method

.method private e()Z
    .locals 1

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/h/a;->g()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/a/f/a;)V
    .locals 1

    .line 9
    if-nez p1, :cond_0

    sget-object p1, Lcom/aggmoread/sdk/z/a/f/a;->a:Lcom/aggmoread/sdk/z/a/f/a;

    :cond_0
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/i/e;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/aggmoread/sdk/z/a/g/f;->h:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/a/i/h;->a(Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_1
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/f;->e:Lcom/aggmoread/sdk/z/a/i/f;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->i:Lcom/aggmoread/sdk/z/a/i/f;

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/h;)V

    return-void
.end method

.method protected abstract a(Lcom/aggmoread/sdk/z/a/i/h;)V
.end method

.method public a(Lcom/aggmoread/sdk/z/a/k/a;)V
    .locals 1

    .line 10
    if-nez p1, :cond_0

    sget-object p1, Lcom/aggmoread/sdk/z/a/k/a;->b:Lcom/aggmoread/sdk/z/a/k/a;

    :cond_0
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/i/e;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/aggmoread/sdk/z/a/g/f;->h:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/a/i/h;->a(Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_1
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/f;->d:Lcom/aggmoread/sdk/z/a/i/f;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->i:Lcom/aggmoread/sdk/z/a/i/f;

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/h;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/l/a;)V
    .locals 1

    .line 11
    if-nez p1, :cond_0

    sget-object p1, Lcom/aggmoread/sdk/z/a/l/a;->c:Lcom/aggmoread/sdk/z/a/l/a;

    :cond_0
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/i/e;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/aggmoread/sdk/z/a/g/f;->h:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/a/l/a;->a(Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_1
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/f;->c:Lcom/aggmoread/sdk/z/a/i/f;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->i:Lcom/aggmoread/sdk/z/a/i/f;

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/h;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/s/c;)V
    .locals 1

    .line 12
    if-nez p1, :cond_0

    sget-object p1, Lcom/aggmoread/sdk/z/a/s/c;->d:Lcom/aggmoread/sdk/z/a/s/c;

    :cond_0
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/i/e;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/aggmoread/sdk/z/a/g/f;->h:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/a/i/h;->a(Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_1
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/f;->f:Lcom/aggmoread/sdk/z/a/i/f;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->i:Lcom/aggmoread/sdk/z/a/i/f;

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/h;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/s/d;)V
    .locals 1

    .line 13
    if-nez p1, :cond_0

    sget-object p1, Lcom/aggmoread/sdk/z/a/s/d;->e:Lcom/aggmoread/sdk/z/a/s/d;

    :cond_0
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/f;->g:Lcom/aggmoread/sdk/z/a/i/f;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->i:Lcom/aggmoread/sdk/z/a/i/f;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/i/e;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/aggmoread/sdk/z/a/g/f;->h:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/a/i/h;->a(Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/h;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/s/e;)V
    .locals 1

    .line 14
    if-nez p1, :cond_0

    sget-object p1, Lcom/aggmoread/sdk/z/a/s/e;->f:Lcom/aggmoread/sdk/z/a/s/e;

    :cond_0
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/i/e;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/aggmoread/sdk/z/a/g/f;->h:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/a/i/h;->a(Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_1
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/f;->b:Lcom/aggmoread/sdk/z/a/i/f;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->i:Lcom/aggmoread/sdk/z/a/i/f;

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/a/i/e;->a(Lcom/aggmoread/sdk/z/a/i/h;)V

    return-void
.end method

.method public f()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public h()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->k:Landroid/view/View;

    return-object v0
.end method

.method public i()Lcom/aggmoread/sdk/z/a/i/f;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->i:Lcom/aggmoread/sdk/z/a/i/f;

    return-object v0
.end method

.method public j()Lcom/aggmoread/sdk/z/a/i/b;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->p:Lcom/aggmoread/sdk/z/a/i/b;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->e:Landroid/content/Context;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->r:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o()D
    .locals 2

    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->q:D

    return-wide v0
.end method

.method public p()Lcom/aggmoread/sdk/z/a/t/e;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->o:Lcom/aggmoread/sdk/z/a/t/e;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->m:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->l:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/i/e;->n:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseApiRequest{requestId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", codeId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/i/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", activityWeak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/aggmoread/sdk/z/a/i/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adContainerWeak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/i/e;->i:Lcom/aggmoread/sdk/z/a/i/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

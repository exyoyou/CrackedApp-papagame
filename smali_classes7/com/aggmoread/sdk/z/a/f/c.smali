.class public Lcom/aggmoread/sdk/z/a/f/c;
.super Lcom/aggmoread/sdk/z/a/f/b;
.source "SourceFile"


# instance fields
.field private n:Lcom/aggmoread/sdk/z/a/f/a;

.field private o:Lcom/aggmoread/sdk/z/a/g/c$a$b;

.field private p:Lcom/aggmoread/sdk/z/a/g/c;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;Lcom/aggmoread/sdk/z/a/f/a;)V
    .locals 1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/f/b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/f/c;->n:Lcom/aggmoread/sdk/z/a/f/a;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/f/c;->o:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/f/c;->p:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-direct {p0, p2}, Lcom/aggmoread/sdk/z/a/f/c;->a(Lcom/aggmoread/sdk/z/a/g/c$a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/f/c;)Lcom/aggmoread/sdk/z/a/f/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/f/c;->n:Lcom/aggmoread/sdk/z/a/f/a;

    return-object p0
.end method

.method private a(Lcom/aggmoread/sdk/z/a/g/c$a$b;)V
    .locals 3

    .line 3
    if-eqz p1, :cond_1

    new-instance v0, Lcom/aggmoread/sdk/z/a/g/h;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/a/g/h;-><init>()V

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/g/h;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->g()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/g/h;->e:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/g/h;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/f/c;->p:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/i/e;->j()Lcom/aggmoread/sdk/z/a/i/b;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/g/h;->f:Lcom/aggmoread/sdk/z/a/i/b;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/f/c;->p:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/i/e;->o()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/aggmoread/sdk/z/a/g/h;->h:D

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/a/f/b;->a(Lcom/aggmoread/sdk/z/a/g/h;)V

    :cond_1
    new-instance v0, Lcom/aggmoread/sdk/z/a/f/c$a;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/a/f/c$a;-><init>(Lcom/aggmoread/sdk/z/a/f/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/a/f/b;->a(Lcom/aggmoread/sdk/z/a/f/b$l;)V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/f/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/f/c;->j()V

    return-void
.end method

.method private i()Lcom/aggmoread/sdk/z/a/g/d;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/f/b;->m:Lcom/aggmoread/sdk/z/a/s/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/s/a;->a()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/aggmoread/sdk/z/a/g/d;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/a/g/d;-><init>()V

    return-object v0
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/f/c;->o:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->r()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/f/c;->i()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v1

    const-string v2, "onAdClick"

    invoke-static {v2, v0, v1}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;Lcom/aggmoread/sdk/z/a/g/d;)Ljava/util/List;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/f/b;->h:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/f/c;->a()Landroid/view/View;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/f/c;->p:Lcom/aggmoread/sdk/z/a/g/c;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/f/c;->o:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/f/c;->i()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v3

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/f/c;->n:Lcom/aggmoread/sdk/z/a/f/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aggmoread/sdk/z/a/m/l;->a(Landroid/view/View;Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;Lcom/aggmoread/sdk/z/a/g/d;Lcom/aggmoread/sdk/z/a/i/h;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/aggmoread/sdk/z/a/f/b;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/f/c;->o:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget v0, v0, Lcom/aggmoread/sdk/z/a/g/c$a$b;->t:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/f/c;->o:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

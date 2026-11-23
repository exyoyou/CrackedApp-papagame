.class Lcom/aggmoread/sdk/z/a/r/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/t/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/a;->a(Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/s/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field final synthetic f:Lcom/aggmoread/sdk/z/a/g/c$a;

.field final synthetic g:Lcom/aggmoread/sdk/z/a/s/d;

.field final synthetic h:Lcom/aggmoread/sdk/z/a/g/c$a$b;

.field final synthetic i:Lcom/aggmoread/sdk/z/a/r/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/a;Lcom/aggmoread/sdk/z/a/g/c$a;Lcom/aggmoread/sdk/z/a/s/d;Lcom/aggmoread/sdk/z/a/g/c$a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->i:Lcom/aggmoread/sdk/z/a/r/a;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->f:Lcom/aggmoread/sdk/z/a/g/c$a;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->g:Lcom/aggmoread/sdk/z/a/s/d;

    iput-object p4, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->h:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->a:Z

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->b:Z

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->c:Z

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->d:Z

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->i:Lcom/aggmoread/sdk/z/a/r/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/a;->d(Lcom/aggmoread/sdk/z/a/r/a;)V

    return-void
.end method

.method public a(FI)V
    .locals 4

    .line 2
    const/16 v0, 0xbb8

    const-string v1, "onVideoProgress3"

    const/4 v2, 0x1

    if-lt p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->d:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->d:Z

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->f:Lcom/aggmoread/sdk/z/a/g/c$a;

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p2, v0}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x1388

    if-lt p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->e:Z

    if-nez p2, :cond_1

    iput-boolean v2, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->e:Z

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->f:Lcom/aggmoread/sdk/z/a/g/c$a;

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    :goto_1
    float-to-double p1, p1

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    cmpl-double v3, p1, v0

    if-ltz v3, :cond_2

    iget-boolean v3, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->a:Z

    if-nez v3, :cond_2

    iput-boolean v2, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->a:Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->f:Lcom/aggmoread/sdk/z/a/g/c$a;

    invoke-virtual {p1, v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(D)Ljava/util/List;

    move-result-object p1

    const-string p2, "onVideoProgress 25"

    :goto_2
    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_2
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, p1, v0

    if-ltz v3, :cond_3

    iget-boolean v3, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->b:Z

    if-nez v3, :cond_3

    iput-boolean v2, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->b:Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->f:Lcom/aggmoread/sdk/z/a/g/c$a;

    invoke-virtual {p1, v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(D)Ljava/util/List;

    move-result-object p1

    const-string p2, "onVideoProgress 50"

    goto :goto_2

    :cond_3
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    cmpl-double v3, p1, v0

    if-ltz v3, :cond_4

    iget-boolean p1, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->c:Z

    if-nez p1, :cond_4

    iput-boolean v2, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->c:Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->f:Lcom/aggmoread/sdk/z/a/g/c$a;

    invoke-virtual {p1, v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(D)Ljava/util/List;

    move-result-object p1

    const-string p2, "onVideoProgress 75"

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->i:Lcom/aggmoread/sdk/z/a/r/a;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/r/a;->a(Lcom/aggmoread/sdk/z/a/r/a;Landroid/app/Activity;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/s/a;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->i:Lcom/aggmoread/sdk/z/a/r/a;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/r/a;->a(Lcom/aggmoread/sdk/z/a/r/a;Lcom/aggmoread/sdk/z/a/s/a;)Lcom/aggmoread/sdk/z/a/s/a;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->i:Lcom/aggmoread/sdk/z/a/r/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/a;->a(Lcom/aggmoread/sdk/z/a/r/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->g:Lcom/aggmoread/sdk/z/a/s/d;

    new-instance v1, Lcom/aggmoread/sdk/z/a/g/f;

    const v2, 0xc353

    invoke-direct {v1, v2, p1}, Lcom/aggmoread/sdk/z/a/g/f;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->i:Lcom/aggmoread/sdk/z/a/r/a;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/r/a;->a(Lcom/aggmoread/sdk/z/a/r/a;Ljava/util/Map;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->f:Lcom/aggmoread/sdk/z/a/g/c$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "onVideoSkipClosed"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->h:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/c$a$b;->s:Ljava/util/List;

    const-string v1, "skipClick"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->i:Lcom/aggmoread/sdk/z/a/r/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/a;->b(Lcom/aggmoread/sdk/z/a/r/a;)V

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->f:Lcom/aggmoread/sdk/z/a/g/c$a;

    const v1, 0x18a9b

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "onVideoCached"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->g:Lcom/aggmoread/sdk/z/a/s/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/d;->onVideoCached()V

    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a$a;->i:Lcom/aggmoread/sdk/z/a/r/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/a;->c(Lcom/aggmoread/sdk/z/a/r/a;)V

    return-void
.end method

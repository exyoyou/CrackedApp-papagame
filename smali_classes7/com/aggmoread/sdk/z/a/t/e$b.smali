.class public final Lcom/aggmoread/sdk/z/a/t/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/a/t/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->a:I

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->b:I

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->c:Z

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->f:Z

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->h:Z

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->i:Z

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->j:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/aggmoread/sdk/z/a/t/e$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->b:I

    return-object p0
.end method

.method public a(Z)Lcom/aggmoread/sdk/z/a/t/e$b;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->c:Z

    return-object p0
.end method

.method public a()Lcom/aggmoread/sdk/z/a/t/e;
    .locals 2

    .line 3
    new-instance v0, Lcom/aggmoread/sdk/z/a/t/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/a/t/e;-><init>(Lcom/aggmoread/sdk/z/a/t/e$a;)V

    iget v1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->b:I

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/e;->b(Lcom/aggmoread/sdk/z/a/t/e;I)I

    iget v1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->a:I

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/e;->c(Lcom/aggmoread/sdk/z/a/t/e;I)I

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->c:Z

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/e;->a(Lcom/aggmoread/sdk/z/a/t/e;Z)Z

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->g:Z

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/e;->b(Lcom/aggmoread/sdk/z/a/t/e;Z)Z

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->f:Z

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/e;->c(Lcom/aggmoread/sdk/z/a/t/e;Z)Z

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->h:Z

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/e;->d(Lcom/aggmoread/sdk/z/a/t/e;Z)Z

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->i:Z

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/e;->e(Lcom/aggmoread/sdk/z/a/t/e;Z)Z

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->j:Z

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/e;->f(Lcom/aggmoread/sdk/z/a/t/e;Z)Z

    iget v1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->d:I

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/e;->d(Lcom/aggmoread/sdk/z/a/t/e;I)I

    iget v1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->e:I

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/e;->a(Lcom/aggmoread/sdk/z/a/t/e;I)I

    return-object v0
.end method

.method public b(Z)Lcom/aggmoread/sdk/z/a/t/e$b;
    .locals 0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->h:Z

    return-object p0
.end method

.method public c(Z)Lcom/aggmoread/sdk/z/a/t/e$b;
    .locals 0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->i:Z

    return-object p0
.end method

.method public d(Z)Lcom/aggmoread/sdk/z/a/t/e$b;
    .locals 0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->g:Z

    return-object p0
.end method

.method public e(Z)Lcom/aggmoread/sdk/z/a/t/e$b;
    .locals 0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/e$b;->f:Z

    return-object p0
.end method

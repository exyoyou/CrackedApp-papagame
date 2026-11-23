.class public Lcom/aggmoread/sdk/z/a/r/c;
.super Lcom/aggmoread/sdk/z/a/t/c;
.source "SourceFile"


# instance fields
.field private c:Lcom/aggmoread/sdk/z/a/r/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/c;-><init>()V

    new-instance v0, Lcom/aggmoread/sdk/z/a/r/d;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/a/r/d;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/c;->c:Lcom/aggmoread/sdk/z/a/r/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/aggmoread/sdk/z/a/t/c;->a()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/c;->c:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/r/d;->b()V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/c;->c:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/r/d;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/t/c$b;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/c;->c:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/r/d;->a(Lcom/aggmoread/sdk/z/a/t/c$b;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/t/d;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/c;->c:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/r/d;->a(Lcom/aggmoread/sdk/z/a/t/d;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/c;->c:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/r/d;->a(Z)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/c;->c:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/r/d;->l()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/c;->c:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/r/d;->w()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/c;->c:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/r/d;->C()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/c;->c:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/r/d;->E()V

    return-void
.end method

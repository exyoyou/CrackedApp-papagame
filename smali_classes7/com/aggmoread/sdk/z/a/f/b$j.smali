.class Lcom/aggmoread/sdk/z/a/f/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/f/b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/a/f/b;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/f/b$j;->b:Lcom/aggmoread/sdk/z/a/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/f/b$j;->b:Lcom/aggmoread/sdk/z/a/f/b;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/a/f/b;->h:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/f/b;->b(Lcom/aggmoread/sdk/z/a/f/b;)Lcom/aggmoread/sdk/z/a/u/g;

    move-result-object v0

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/f/b$j;->b:Lcom/aggmoread/sdk/z/a/f/b;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/a/f/b;->f(Lcom/aggmoread/sdk/z/a/f/b;)Lcom/aggmoread/sdk/z/a/g/h;

    move-result-object v2

    iget-object v2, v2, Lcom/aggmoread/sdk/z/a/g/h;->f:Lcom/aggmoread/sdk/z/a/i/b;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/f/b$j;->b:Lcom/aggmoread/sdk/z/a/f/b;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/f/b;->f(Lcom/aggmoread/sdk/z/a/f/b;)Lcom/aggmoread/sdk/z/a/g/h;

    move-result-object v3

    iget-wide v3, v3, Lcom/aggmoread/sdk/z/a/g/h;->h:D

    invoke-static {v1, v0, v2, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/a/i/b;D)Lcom/aggmoread/sdk/z/a/u/q;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/f/b$j;->b:Lcom/aggmoread/sdk/z/a/f/b;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/f/b;->m:Lcom/aggmoread/sdk/z/a/s/a;

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/s/a;->a(Lcom/aggmoread/sdk/z/a/u/q;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/f/b$j;->b:Lcom/aggmoread/sdk/z/a/f/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/f/b;->e(Lcom/aggmoread/sdk/z/a/f/b;)Lcom/aggmoread/sdk/z/a/f/b$l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/f/b$j;->b:Lcom/aggmoread/sdk/z/a/f/b;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/f/b;->e(Lcom/aggmoread/sdk/z/a/f/b;)Lcom/aggmoread/sdk/z/a/f/b$l;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/f/b$l;->a()V

    :cond_0
    return-void
.end method

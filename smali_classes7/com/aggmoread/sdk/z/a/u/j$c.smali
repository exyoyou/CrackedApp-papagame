.class Lcom/aggmoread/sdk/z/a/u/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/j;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/a/u/j;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/j;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/j$c;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$c;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/j;->a(Lcom/aggmoread/sdk/z/a/u/j;)Lcom/aggmoread/sdk/z/a/u/j$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$c;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/j;->a(Lcom/aggmoread/sdk/z/a/u/j;)Lcom/aggmoread/sdk/z/a/u/j$f;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/j$c;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/u/j;->b(Lcom/aggmoread/sdk/z/a/u/j;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/j$c;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/a/u/j;->c(Lcom/aggmoread/sdk/z/a/u/j;)F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/u/j$f;->a(II)V

    :cond_0
    return-void
.end method

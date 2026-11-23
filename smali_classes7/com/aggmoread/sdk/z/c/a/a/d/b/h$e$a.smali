.class Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->a(Lcom/aggmoread/sdk/z/c/a/a/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/e/b;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

    invoke-interface {v0, p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;

    iget-object p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$a$a;

    invoke-direct {p3, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$a;)V

    invoke-virtual {p2, p1, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;)V

    return-void
.end method

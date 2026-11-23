.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->g:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/g;->a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V

    return-void
.end method

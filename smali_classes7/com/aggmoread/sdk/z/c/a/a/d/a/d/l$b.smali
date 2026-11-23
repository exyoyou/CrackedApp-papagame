.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->g:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/c/p/c;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/l$b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/p/c;->a(Ljava/util/List;)V

    return-void
.end method

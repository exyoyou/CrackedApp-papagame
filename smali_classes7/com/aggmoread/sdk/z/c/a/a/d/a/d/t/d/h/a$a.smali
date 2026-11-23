.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    invoke-static {v0, v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;[Landroid/view/View;)V

    :goto_0
    return-void
.end method

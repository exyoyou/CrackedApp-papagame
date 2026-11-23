.class public Lcom/aggmoread/sdk/z/c/a/a/d/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private b:Lcom/aggmoread/sdk/z/c/a/a/c/h;

.field private c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/c/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/l;->b:Lcom/aggmoread/sdk/z/c/a/a/c/h;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/l;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/l;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/l;->b:Lcom/aggmoread/sdk/z/c/a/a/c/h;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->c(Lcom/aggmoread/sdk/z/c/a/a/c/h;)V

    :cond_0
    return-void
.end method

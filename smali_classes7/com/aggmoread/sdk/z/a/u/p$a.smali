.class public Lcom/aggmoread/sdk/z/a/u/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/a/u/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/a/u/p;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/p;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/p$a;->b:Lcom/aggmoread/sdk/z/a/u/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/p$a;->b:Lcom/aggmoread/sdk/z/a/u/p;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/p;->a(Lcom/aggmoread/sdk/z/a/u/p;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/p$a;->b:Lcom/aggmoread/sdk/z/a/u/p;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/p;->b(Lcom/aggmoread/sdk/z/a/u/p;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/p$a;->b:Lcom/aggmoread/sdk/z/a/u/p;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/p;->c(Lcom/aggmoread/sdk/z/a/u/p;)V

    :goto_0
    return-void
.end method

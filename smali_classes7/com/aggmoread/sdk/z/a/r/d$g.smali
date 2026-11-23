.class Lcom/aggmoread/sdk/z/a/r/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/d;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/a/r/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$g;->b:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$g;->b:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->b(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d$g;->b:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/r/d;->a(Lcom/aggmoread/sdk/z/a/r/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$g;->b:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->b(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$g;->b:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->k(Lcom/aggmoread/sdk/z/a/r/d;)V

    return-void
.end method

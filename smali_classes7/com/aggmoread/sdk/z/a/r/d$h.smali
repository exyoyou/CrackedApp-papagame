.class Lcom/aggmoread/sdk/z/a/r/d$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/t/a$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/d;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/r/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$h;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FI)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$h;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$h;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(FI)V

    :cond_0
    return-void
.end method

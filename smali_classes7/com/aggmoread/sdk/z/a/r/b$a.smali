.class Lcom/aggmoread/sdk/z/a/r/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/t/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/b;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/r/b;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b$a;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b$a;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b$a;->a:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/t/c$b;->onVideoCached()V

    :cond_0
    return-void
.end method

.class Lcom/aggmoread/sdk/z/a/t/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/t/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/t/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/aggmoread/sdk/z/a/t/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/t/g$b;

.field final synthetic b:Lcom/aggmoread/sdk/z/a/t/c;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/t/c;Lcom/aggmoread/sdk/z/a/t/g$b;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/c$a;->b:Lcom/aggmoread/sdk/z/a/t/c;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/t/c$a;->a:Lcom/aggmoread/sdk/z/a/t/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preloadLoad onFail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEngineTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/c$a;->a:Lcom/aggmoread/sdk/z/a/t/g$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/aggmoread/sdk/z/a/t/g$b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preloadLoad onCached "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEngineTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/c$a;->b:Lcom/aggmoread/sdk/z/a/t/c;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/t/c;->a(Lcom/aggmoread/sdk/z/a/t/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/c$a;->a:Lcom/aggmoread/sdk/z/a/t/g$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/t/g$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

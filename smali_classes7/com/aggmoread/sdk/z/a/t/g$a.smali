.class Lcom/aggmoread/sdk/z/a/t/g$a;
.super Lcom/aggmoread/sdk/z/a/j/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/t/g;->a(Lcom/aggmoread/sdk/z/a/t/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/a/t/g;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/t/g;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/g$a;->b:Lcom/aggmoread/sdk/z/a/t/g;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/j/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const-string v0, "JuHeVideoPreloadTag"

    const-string v1, "onConnectSuccess enter"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError enter , code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JuHeVideoPreloadTag"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/g$a;->b:Lcom/aggmoread/sdk/z/a/t/g;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/g;->a(Lcom/aggmoread/sdk/z/a/t/g;)Lcom/aggmoread/sdk/z/a/t/g$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aggmoread/sdk/z/a/t/g$b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    .line 3
    const-string v0, "JuHeVideoPreloadTag"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompleted enter , downloadFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/g$a;->b:Lcom/aggmoread/sdk/z/a/t/g;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/g;->a(Lcom/aggmoread/sdk/z/a/t/g;)Lcom/aggmoread/sdk/z/a/t/g$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/t/g$b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "onCompleted enter , downloadFile not found"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/g$a;->b:Lcom/aggmoread/sdk/z/a/t/g;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/g;->a(Lcom/aggmoread/sdk/z/a/t/g;)Lcom/aggmoread/sdk/z/a/t/g$b;

    move-result-object p1

    const/16 v0, -0x7d1

    const-string v1, "cached file not found error"

    invoke-interface {p1, v0, v1}, Lcom/aggmoread/sdk/z/a/t/g$b;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "JuHeVideoPreloadTag"

    const-string v1, "onStartReadBytes enter"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

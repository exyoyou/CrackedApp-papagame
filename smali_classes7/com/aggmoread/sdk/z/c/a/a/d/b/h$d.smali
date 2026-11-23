.class Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/e/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

    invoke-interface {p1, v0, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void

    :cond_0
    const/16 p3, 0xc8

    if-eq p1, p3, :cond_1

    iget-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP error\uff0cstatusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v2, 0x3baa1411

    invoke-direct {v1, v2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0, p2, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void

    :cond_1
    const p1, 0x3baa1412

    if-nez p2, :cond_2

    iget-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const-string v2, "HTTP error\uff0cresponse parse error."

    invoke-direct {v1, p1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0, p2, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void

    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/aggmoread/sdk/z/c/a/a/b;->f(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    new-instance p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-direct {p3, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Ljava/util/Map;)V

    invoke-virtual {p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c()Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

    invoke-interface {p3, v0, p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

    invoke-interface {p1, p3, p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

    new-instance p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v1, 0x3baa1416

    const-string v2, "HTTP error, response parse error, parse json."

    invoke-direct {p3, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    :goto_0
    return-void

    :catch_0
    iget-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const-string v2, "HTTP error\uff0cresponse parse error, encodeing error."

    invoke-direct {v1, p1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0, p2, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

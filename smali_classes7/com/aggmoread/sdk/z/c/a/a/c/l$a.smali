.class final Lcom/aggmoread/sdk/z/c/a/a/c/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/c/l$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/c/l$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/c/l$e;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/c/l$e;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$a;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$a;->b:Lcom/aggmoread/sdk/z/c/a/a/c/l$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 1

    const-string p2, "S2S_TAG"

    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    const-string p3, "callback success "

    invoke-static {p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$a;->a:Ljava/util/Map;

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/c/l;->a(Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/c/l$f;

    move-result-object p1

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$a;->b:Lcom/aggmoread/sdk/z/c/a/a/c/l$e;

    invoke-interface {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/c/l$e;->callback(Lcom/aggmoread/sdk/z/c/a/a/c/l$f;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callback fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$a;->b:Lcom/aggmoread/sdk/z/c/a/a/c/l$e;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/c/l$e;->callback(Lcom/aggmoread/sdk/z/c/a/a/c/l$f;)V

    :goto_0
    return-void
.end method

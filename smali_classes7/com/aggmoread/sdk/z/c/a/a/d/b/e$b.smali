.class Lcom/aggmoread/sdk/z/c/a/a/d/b/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/e/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iput p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 0

    if-nez p3, :cond_1

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_1

    if-eqz p2, :cond_1

    array-length p1, p2

    if-lez p1, :cond_1

    invoke-static {p2}, Lcom/aggmoread/sdk/z/c/a/a/b;->g(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-direct {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    sget-object p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->f:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result p2

    const/16 p3, -0x3e8

    if-ne p2, p3, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a([B)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->g:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance p3, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    check-cast p1, Ljava/util/Map;

    invoke-direct {p3, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->h:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$b;->a:I

    invoke-virtual {p2, p1, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.class final Lcom/aggmoread/sdk/z/c/a/a/d/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/e/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/e/b;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/e/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 3

    const-string p1, "UTF-8"

    const-string v0, "ahpm_tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vcn = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a([B)V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$a;->c:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "r vcn resp err "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

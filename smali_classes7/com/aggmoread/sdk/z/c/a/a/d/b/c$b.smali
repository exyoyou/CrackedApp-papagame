.class final Lcom/aggmoread/sdk/z/c/a/a/d/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/e/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/c/a/a/e/b;)V
    .locals 4

    const-string v0, "d enter "

    const-string v1, "ahpm_tag"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "d b return "

    invoke-static {v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$b;->b:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/c$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;

    invoke-static {v0, v2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/c;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/d/b/c$j;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "d err "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

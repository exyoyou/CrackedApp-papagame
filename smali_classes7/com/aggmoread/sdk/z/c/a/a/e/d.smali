.class public Lcom/aggmoread/sdk/z/c/a/a/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/e/d$d;,
        Lcom/aggmoread/sdk/z/c/a/a/e/d$c;,
        Lcom/aggmoread/sdk/z/c/a/a/e/d$b;,
        Lcom/aggmoread/sdk/z/c/a/a/e/d$e;
    }
.end annotation


# static fields
.field static a:Lcom/aggmoread/sdk/z/c/a/a/e/d$b;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "sha1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AMHTTAG"

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xf

    if-ge v2, v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    :try_start_0
    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->a:Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->e:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AMHTTAG"

    invoke-static {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 4
    :try_start_0
    const-string p0, "okhttp3.OkHttpClient"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$c;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/e/d$c;-><init>()V

    sput-object p0, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a:Lcom/aggmoread/sdk/z/c/a/a/e/d$b;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$d;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/d$d;-><init>(Lcom/aggmoread/sdk/z/c/a/a/e/d$a;)V

    sput-object p0, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a:Lcom/aggmoread/sdk/z/c/a/a/e/d$b;

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aggmoread/sdk/z/c/a/a/e/d$e;",
            ")V"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a:Lcom/aggmoread/sdk/z/c/a/a/e/d$b;

    invoke-interface {v0, p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/d$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V

    return-void
.end method

.method public static a(Ljava/lang/String;[BLjava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aggmoread/sdk/z/c/a/a/e/d$e;",
            ")V"
        }
    .end annotation

    .line 6
    const-string v0, "AMHTTAG"

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "qd/r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v0, "-ads2"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a([BLjava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a:Lcom/aggmoread/sdk/z/c/a/a/e/d$b;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/e/d$b;->a(Ljava/lang/String;[BLjava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V

    return-void
.end method

.method public static b(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    :try_start_0
    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->e:Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->k:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->f:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->m:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->g:Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->h:Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->i:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->j:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->O()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AMHTTAG"

    invoke-static {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a:Ljava/util/Map;

    return-object p0
.end method

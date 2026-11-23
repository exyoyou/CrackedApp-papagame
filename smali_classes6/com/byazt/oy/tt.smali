.class public Lcom/byazt/oy/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c2,
        0xd
    }
.end annotation


# static fields
.field public static a:I = 0x1

.field public static c:Z

.field public static n:Lcom/byazt/gqp/t;

.field public static tt:Landroid/content/Context;

.field public static uj:Z

.field public static ve:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/byazt/oy/tt;->ve:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/byazt/oy/tt;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/byazt/nr/sp;->c(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "ttad_dir"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/byazt/oy/tt;->ve:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/oy/tt;->ve:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/byazt/oy/tt;->tt:Landroid/content/Context;

    .line 9
    sput-object p1, Lcom/byazt/oy/tt;->ve:Ljava/lang/String;

    return-void
.end method

.method public static c(Lcom/byazt/gqp/t;)V
    .locals 0

    .line 11
    sput-object p0, Lcom/byazt/oy/tt;->n:Lcom/byazt/gqp/t;

    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 10
    sput-boolean p0, Lcom/byazt/oy/tt;->uj:Z

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/oy/tt;->tt:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static n()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/oy/tt;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public static tt()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/oy/tt;->uj:Z

    .line 2
    .line 3
    return v0
.end method

.method public static uj()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/oy/tt;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public static ve()Lcom/byazt/gqp/t;
    .locals 4

    .line 1
    sget-object v0, Lcom/byazt/oy/tt;->n:Lcom/byazt/gqp/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/gqp/t$c;

    .line 6
    .line 7
    const-string v1, "v_config"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/byazt/gqp/t$c;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    const-wide/16 v2, 0x2710

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3, v1}, Lcom/byazt/gqp/t$c;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v2, v3, v1}, Lcom/byazt/gqp/t$c;->tt(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v2, v3, v1}, Lcom/byazt/gqp/t$c;->ve(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/byazt/gqp/t$c;->c()Lcom/byazt/gqp/t;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/byazt/oy/tt;->n:Lcom/byazt/gqp/t;

    .line 33
    .line 34
    :cond_0
    sget-object v0, Lcom/byazt/oy/tt;->n:Lcom/byazt/gqp/t;

    .line 35
    .line 36
    return-object v0
.end method

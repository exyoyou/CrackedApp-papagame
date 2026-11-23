.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d<",
        "Lcom/aggmoread/sdk/z/b/b/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/d;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;
    .locals 3

    const-class v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;

    if-nez v1, :cond_1

    const-class v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;

    if-nez v2, :cond_0

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;-><init>()V

    sput-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_1
    :goto_0
    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()Lcom/aggmoread/sdk/z/a/h/a$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/z/a/h/a$a;->c:Lcom/aggmoread/sdk/z/a/h/a$a;

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)Lcom/aggmoread/sdk/z/a/i/e$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/b;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)Lcom/aggmoread/sdk/z/b/b/a$b;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)Lcom/aggmoread/sdk/z/b/b/a$b;
    .locals 1

    new-instance v0, Lcom/aggmoread/sdk/z/b/b/a$b;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/aggmoread/sdk/z/b/b/a$b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

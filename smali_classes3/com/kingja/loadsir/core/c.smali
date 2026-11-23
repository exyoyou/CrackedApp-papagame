.class public Lcom/kingja/loadsir/core/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingja/loadsir/core/c$b;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/kingja/loadsir/core/c;


# instance fields
.field private a:Lcom/kingja/loadsir/core/c$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/kingja/loadsir/core/c$b;

    invoke-direct {v0}, Lcom/kingja/loadsir/core/c$b;-><init>()V

    iput-object v0, p0, Lcom/kingja/loadsir/core/c;->a:Lcom/kingja/loadsir/core/c$b;

    return-void
.end method

.method private constructor <init>(Lcom/kingja/loadsir/core/c$b;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/kingja/loadsir/core/c;->a:Lcom/kingja/loadsir/core/c$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingja/loadsir/core/c$b;Lcom/kingja/loadsir/core/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/c;-><init>(Lcom/kingja/loadsir/core/c$b;)V

    return-void
.end method

.method static synthetic a(Lcom/kingja/loadsir/core/c;Lcom/kingja/loadsir/core/c$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/c;->g(Lcom/kingja/loadsir/core/c$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b()Lcom/kingja/loadsir/core/c$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kingja/loadsir/core/c$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kingja/loadsir/core/c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c()Lcom/kingja/loadsir/core/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/kingja/loadsir/core/c;->b:Lcom/kingja/loadsir/core/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/kingja/loadsir/core/c;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/kingja/loadsir/core/c;->b:Lcom/kingja/loadsir/core/c;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/kingja/loadsir/core/c;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/kingja/loadsir/core/c;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/kingja/loadsir/core/c;->b:Lcom/kingja/loadsir/core/c;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/kingja/loadsir/core/c;->b:Lcom/kingja/loadsir/core/c;

    .line 25
    .line 26
    return-object v0
.end method

.method private g(Lcom/kingja/loadsir/core/c$b;)V
    .locals 0
    .param p1    # Lcom/kingja/loadsir/core/c$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/kingja/loadsir/core/c;->a:Lcom/kingja/loadsir/core/c$b;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Lcom/kingja/loadsir/core/b;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/kingja/loadsir/core/c;->f(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;Lcom/kingja/loadsir/core/a;)Lcom/kingja/loadsir/core/b;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public e(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/core/b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/kingja/loadsir/core/c;->f(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;Lcom/kingja/loadsir/core/a;)Lcom/kingja/loadsir/core/b;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public f(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;Lcom/kingja/loadsir/core/a;)Lcom/kingja/loadsir/core/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/kingja/loadsir/callback/Callback$OnReloadListener;",
            "Lcom/kingja/loadsir/core/a<",
            "TT;>;)",
            "Lcom/kingja/loadsir/core/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/c;->a:Lcom/kingja/loadsir/core/c$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kingja/loadsir/core/c$b;->g()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Li7/b;->a(Ljava/lang/Object;Ljava/util/List;)Lj7/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1, p2}, Lj7/b;->a(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/core/LoadLayout;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lcom/kingja/loadsir/core/b;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kingja/loadsir/core/c;->a:Lcom/kingja/loadsir/core/c$b;

    .line 18
    .line 19
    invoke-direct {p2, p3, p1, v0}, Lcom/kingja/loadsir/core/b;-><init>(Lcom/kingja/loadsir/core/a;Lcom/kingja/loadsir/core/LoadLayout;Lcom/kingja/loadsir/core/c$b;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method

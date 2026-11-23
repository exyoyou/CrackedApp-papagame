.class public Lcom/byazt/sa/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x31b,
        0x2e
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/sa/n;


# instance fields
.field public a:Lcom/byazt/dq/uj;

.field public n:Lcom/byazt/wj/c;

.field public sp:Lcom/byazt/lv/c;

.field public tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/sz/tt;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Lcom/byazt/sa/c;

.field public ve:Lcom/byazt/sz/ve;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/sa/n;->tt:Ljava/util/List;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/sa/n;->ve:Lcom/byazt/sz/ve;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/byazt/sz/ve;->c()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/sa/n;->tt:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/sz/uj;->c(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static c()Lcom/byazt/sa/n;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/sa/n;->c:Lcom/byazt/sa/n;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/sa/n;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/sa/n;->c:Lcom/byazt/sa/n;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/sa/n;

    invoke-direct {v1}, Lcom/byazt/sa/n;-><init>()V

    sput-object v1, Lcom/byazt/sa/n;->c:Lcom/byazt/sa/n;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/sa/n;->c:Lcom/byazt/sa/n;

    return-object v0
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/byazt/sz/ve;Lcom/byazt/sa/c;)V
    .locals 0

    .line 7
    iput-object p2, p0, Lcom/byazt/sa/n;->ve:Lcom/byazt/sz/ve;

    .line 8
    iput-object p3, p0, Lcom/byazt/sa/n;->uj:Lcom/byazt/sa/c;

    .line 9
    invoke-direct {p0}, Lcom/byazt/sa/n;->a()V

    return-void
.end method

.method public c(Lcom/byazt/dq/uj;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/byazt/sa/n;->a:Lcom/byazt/dq/uj;

    return-void
.end method

.method public c(Lcom/byazt/lv/c;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/byazt/sa/n;->sp:Lcom/byazt/lv/c;

    return-void
.end method

.method public c(Lcom/byazt/pm/ve;)V
    .locals 2

    .line 15
    new-instance v0, Lcom/byazt/pm/n;

    invoke-direct {v0}, Lcom/byazt/pm/n;-><init>()V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/byazt/pm/n;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    .line 17
    invoke-interface {p1}, Lcom/byazt/pm/ve;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_0
    invoke-static {v1}, Lcom/byazt/pm/uj;->c(Ljava/util/List;)V

    return-void
.end method

.method public c(Lcom/byazt/pm/x;)V
    .locals 2

    .line 11
    new-instance v0, Lcom/byazt/pm/c;

    invoke-direct {v0}, Lcom/byazt/pm/c;-><init>()V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/byazt/pm/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Lcom/byazt/pm/x;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_0
    invoke-static {v1}, Lcom/byazt/pm/da;->c(Ljava/util/List;)V

    return-void
.end method

.method public c(Lcom/byazt/wj/c;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/byazt/sa/n;->n:Lcom/byazt/wj/c;

    return-void
.end method

.method public n()Lcom/byazt/lv/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sa/n;->sp:Lcom/byazt/lv/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lcom/byazt/sa/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sa/n;->uj:Lcom/byazt/sa/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/dq/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sa/n;->a:Lcom/byazt/dq/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/wj/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sa/n;->n:Lcom/byazt/wj/c;

    .line 2
    .line 3
    return-object v0
.end method

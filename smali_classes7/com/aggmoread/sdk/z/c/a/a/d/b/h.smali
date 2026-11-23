.class public final Lcom/aggmoread/sdk/z/c/a/a/d/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;,
        Lcom/aggmoread/sdk/z/c/a/a/d/b/h$p;
    }
.end annotation


# static fields
.field static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/b;",
            ">;"
        }
    .end annotation
.end field

.field static g:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;


# instance fields
.field private a:Ljava/util/concurrent/CountDownLatch;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/l;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->f:Ljava/util/Map;

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->f:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->g:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-boolean v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->e:I

    sput-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->t:Ljava/lang/Boolean;

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x2766

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x69

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x65

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x6a

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x6b

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    invoke-direct {p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x1f4

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x1f5

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x1f6

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x1f7

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x1f8

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x1f9

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    const/16 p1, 0x1fa

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(I)V

    return-void
.end method

.method private a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->F:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result p1

    const/16 v0, 0xe10

    if-le p1, v0, :cond_0

    const/16 p1, 0xe10

    :cond_0
    return p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private a(I)V
    .locals 4

    .line 7
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/16 v1, 0x69

    if-eq p1, v1, :cond_4

    const/16 v1, 0x6b

    if-eq p1, v1, :cond_3

    const/16 v1, 0x2766

    if-eq p1, v1, :cond_2

    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    const/16 v1, 0x65

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/a;

    goto :goto_0

    :cond_1
    const-class v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/c;

    goto :goto_0

    :cond_2
    const-class v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/a;

    goto :goto_0

    :cond_3
    const-class v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/a;

    goto :goto_0

    :cond_4
    const-class v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/u/a;

    goto :goto_0

    :cond_5
    const-class v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/b;

    :goto_0
    if-eqz v1, :cond_6

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/b;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/b;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "err "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private static a(Landroid/os/Handler$Callback;Ljava/lang/Boolean;)V
    .locals 1

    .line 8
    if-eqz p0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$j;

    invoke-direct {v0, p1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$j;-><init>(Ljava/lang/Boolean;Landroid/os/Handler$Callback;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 3

    .line 10
    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2766

    :cond_0
    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/b;

    if-nez v1, :cond_1

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/b;->a()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$b;

    invoke-direct {v1, p0, v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$c;

    invoke-direct {v0, v1, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a()Z
    .locals 1

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Lcom/aggmoread/sdk/z/c/a/a/d/b/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->g:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    return-object v0
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b(Lcom/aggmoread/sdk/z/c/a/a/c/h;)V
    .locals 2

    .line 3
    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a()V

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$l;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$l;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->e()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$m;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$m;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)V

    invoke-virtual {p0, p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;)V

    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)I
    .locals 0

    iget p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->e:I

    return p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/aggmoread/sdk/z/c/a/a/c/h$a;
    .locals 1

    .line 3
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/d;

    invoke-direct {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)Lcom/aggmoread/sdk/z/c/a/a/c/h$a;
    .locals 1

    .line 4
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/d;

    invoke-direct {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Landroid/os/Handler$Callback;Lcom/aggmoread/sdk/z/c/a/a/d/b/i;)Ljava/lang/Object;
    .locals 6

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->e:I

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 p2, -0x64

    :goto_0
    iput p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->e:I

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Landroid/os/Handler$Callback;Ljava/lang/Boolean;)V

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    sput-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->g:Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    :cond_1
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const p2, 0x3baa102a

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->b()V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object v0

    const-string v2, "debugFile"

    invoke-virtual {v0, v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object v0

    const-string v2, "debugLog"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->r:Ljava/lang/Boolean;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->F()V

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->r:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/aggmoread/sdk/z/c/a/a/b;->a(Landroid/content/Context;Z)Z

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Content-type"

    const-string v5, "application/json"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "tt"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->g()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$f;

    invoke-direct {v5, p0, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$f;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/i;)V

    invoke-static {v4, v0, v2, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a(Ljava/lang/String;[BLjava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a()Lcom/aggmoread/sdk/z/c/a/a/e/o;

    move-result-object p2

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$g;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$g;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)V

    invoke-virtual {p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->c(Landroid/os/Handler$Callback;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a()Lcom/aggmoread/sdk/z/c/a/a/e/o;

    move-result-object p2

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$h;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$h;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)V

    invoke-virtual {p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->b(Landroid/os/Handler$Callback;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->d:Z

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->t:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$i;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$i;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->c(Ljava/lang/Runnable;)V

    :cond_3
    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Landroid/os/Handler$Callback;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p1, -0x65

    iput p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->e:I

    :goto_1
    return-object v1
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/c/h;)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/l;

    invoke-direct {v1, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/l;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/c/h;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$k;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$k;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b(Lcom/aggmoread/sdk/z/c/a/a/c/h;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;)V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/e/b;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a(Lcom/aggmoread/sdk/z/c/a/a/e/b$c;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b$c;->a(Lcom/aggmoread/sdk/z/c/a/a/e/b;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;)V
    .locals 4

    .line 4
    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMGTAG"

    invoke-static {v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tt"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;

    invoke-direct {v3, p0, p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$d;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)V

    invoke-static {v2, v0, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a(Ljava/lang/String;[BLjava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V

    return-void

    :catch_0
    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v0, 0x3baa1414

    const-string v1, "HTTP error, request error"

    invoke-direct {p1, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0, v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public c(Lcom/aggmoread/sdk/z/c/a/a/c/h;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b(Lcom/aggmoread/sdk/z/c/a/a/c/h;)V

    return-void
.end method

.method public c()Z
    .locals 3

    .line 3
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i()V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->i()V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$p;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$p;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/b;->e([Ljava/lang/Object;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->i()V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->k(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->l(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->m(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->n(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->o(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->p(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->g(Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->h(Ljava/lang/String;)V

    return v2

    :catchall_0
    return v0
.end method

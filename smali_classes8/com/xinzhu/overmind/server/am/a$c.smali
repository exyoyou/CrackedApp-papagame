.class public Lcom/xinzhu/overmind/server/am/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/am/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Lcom/xinzhu/overmind/server/am/a$b;

.field private d:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/a$c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/a$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/server/am/a$c;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/am/a$c;->d:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/xinzhu/overmind/server/am/a$c;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/am/a$c;->d:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/am/a$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/xinzhu/overmind/server/am/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/am/a$c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/xinzhu/overmind/server/am/a$c;)Lcom/xinzhu/overmind/server/am/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/am/a$c;->c:Lcom/xinzhu/overmind/server/am/a$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/xinzhu/overmind/server/am/a$c;Lcom/xinzhu/overmind/server/am/a$b;)Lcom/xinzhu/overmind/server/am/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/am/a$c;->c:Lcom/xinzhu/overmind/server/am/a$b;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a$c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/a$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

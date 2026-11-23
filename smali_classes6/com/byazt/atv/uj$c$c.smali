.class public Lcom/byazt/atv/uj$c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0x285
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/atv/uj$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final c:I

.field public final n:Z

.field public final tt:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final uj:Ljava/lang/String;

.field public final ve:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/atv/uj$c$c;->uj:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/byazt/atv/uj$c$c;->c:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/atv/uj$c$c;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    iput p4, p0, Lcom/byazt/atv/uj$c$c;->ve:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/byazt/atv/uj$c$c;->n:Z

    .line 13
    .line 14
    return-void
.end method

.method private c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/atv/uj$c$c;->c:I

    return v0
.end method

.method public static synthetic c(Lcom/byazt/atv/uj$c$c;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$c;->c()I

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/byazt/atv/uj$c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$c;->uj()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private n()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/atv/uj$c$c;->n:Z

    return v0
.end method

.method private tt()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/atv/uj$c$c;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/atv/uj$c$c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$c;->tt()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/atv/uj$c$c;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$c;->ve()I

    move-result p0

    return p0
.end method

.method private uj()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/atv/uj$c$c;->uj:Ljava/lang/String;

    return-object v0
.end method

.method private ve()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/atv/uj$c$c;->ve:I

    return v0
.end method

.method public static synthetic ve(Lcom/byazt/atv/uj$c$c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$c;->n()Z

    move-result p0

    return p0
.end method

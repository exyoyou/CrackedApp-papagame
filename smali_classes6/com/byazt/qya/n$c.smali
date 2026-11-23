.class public Lcom/byazt/qya/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b1,
        0x97
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/qya/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public n:J

.field public tt:Lcom/byazt/qya/n$tt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/qya/n$tt<",
            "TT;>;"
        }
    .end annotation
.end field

.field public uj:J

.field public ve:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/byazt/qya/n$c;->ve:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/byazt/qya/n$c;->uj:J

    const-wide/16 v0, 0x3e8

    .line 4
    iput-wide v0, p0, Lcom/byazt/qya/n$c;->n:J

    .line 5
    iput-object p1, p0, Lcom/byazt/qya/n$c;->c:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/byazt/qya/n$tt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/byazt/qya/n$tt<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 7
    iput v0, p0, Lcom/byazt/qya/n$c;->ve:I

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/byazt/qya/n$c;->uj:J

    const-wide/16 v0, 0x3e8

    .line 9
    iput-wide v0, p0, Lcom/byazt/qya/n$c;->n:J

    .line 10
    iput-object p1, p0, Lcom/byazt/qya/n$c;->c:Ljava/util/concurrent/Callable;

    .line 11
    iput-object p2, p0, Lcom/byazt/qya/n$c;->tt:Lcom/byazt/qya/n$tt;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qya/n$c;)Ljava/util/concurrent/Callable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qya/n$c;->c:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/qya/n$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qya/n$c;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic tt(Lcom/byazt/qya/n$c;)Lcom/byazt/qya/n$tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qya/n$c;->tt:Lcom/byazt/qya/n$tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/qya/n$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qya/n$c;->uj:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/qya/n$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/qya/n$c;->ve:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public c(I)Lcom/byazt/qya/n$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/byazt/qya/n$c<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iput p1, p0, Lcom/byazt/qya/n$c;->ve:I

    return-object p0
.end method

.method public c(J)Lcom/byazt/qya/n$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/byazt/qya/n$c<",
            "TT;>;"
        }
    .end annotation

    .line 3
    iput-wide p1, p0, Lcom/byazt/qya/n$c;->uj:J

    return-object p0
.end method

.method public c()Lcom/byazt/qya/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/qya/n<",
            "TT;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/byazt/qya/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/qya/n;-><init>(Lcom/byazt/qya/n$c;Lcom/byazt/qya/n$1;)V

    return-object v0
.end method

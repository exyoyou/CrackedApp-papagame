.class public Lcom/byazt/gqp/t;
.super Lcom/byazt/gqp/x;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x143,
        0x42
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/gqp/t$c;
    }
.end annotation


# static fields
.field public static final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/gqp/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/gqp/i;",
            ">;"
        }
    .end annotation
.end field

.field public da:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/gqp/u;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/concurrent/TimeUnit;

.field public sl:Lcom/byazt/gu/c;

.field public sp:Ljava/util/concurrent/TimeUnit;

.field public tt:J

.field public uj:J

.field public ve:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/byazt/gqp/u;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/byazt/gqp/u;->uj:Lcom/byazt/gqp/u;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/byazt/gqp/u;->tt:Lcom/byazt/gqp/u;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/na/da;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/byazt/gqp/t;->x:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/gqp/t$c;

    invoke-direct {v0}, Lcom/byazt/gqp/t$c;-><init>()V

    invoke-direct {p0, v0}, Lcom/byazt/gqp/t;-><init>(Lcom/byazt/gqp/t$c;)V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/gqp/t$c;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/byazt/gqp/x;-><init>()V

    .line 3
    iget-wide v0, p1, Lcom/byazt/gqp/t$c;->ve:J

    iput-wide v0, p0, Lcom/byazt/gqp/t;->tt:J

    .line 4
    iget-wide v0, p1, Lcom/byazt/gqp/t$c;->n:J

    iput-wide v0, p0, Lcom/byazt/gqp/t;->uj:J

    .line 5
    iget-wide v0, p1, Lcom/byazt/gqp/t$c;->sp:J

    iput-wide v0, p0, Lcom/byazt/gqp/t;->a:J

    .line 6
    iget-object v0, p1, Lcom/byazt/gqp/t$c;->uj:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/byazt/gqp/t;->ve:Ljava/util/concurrent/TimeUnit;

    .line 7
    iget-object v0, p1, Lcom/byazt/gqp/t$c;->a:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/byazt/gqp/t;->n:Ljava/util/concurrent/TimeUnit;

    .line 8
    iget-object v0, p1, Lcom/byazt/gqp/t$c;->x:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/byazt/gqp/t;->sp:Ljava/util/concurrent/TimeUnit;

    .line 9
    iget-object v0, p1, Lcom/byazt/gqp/t$c;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/byazt/gqp/t;->c:Ljava/util/List;

    .line 10
    iget-object v0, p1, Lcom/byazt/gqp/t$c;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/byazt/gqp/t;->i:Ljava/util/List;

    .line 11
    iget-object v0, p1, Lcom/byazt/gqp/t$c;->da:Ljava/util/Set;

    iput-object v0, p0, Lcom/byazt/gqp/t;->da:Ljava/util/Set;

    .line 12
    iget-object p1, p1, Lcom/byazt/gqp/t$c;->tt:Lcom/byazt/gu/c;

    iput-object p1, p0, Lcom/byazt/gqp/t;->sl:Lcom/byazt/gu/c;

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Lcom/byazt/gqp/uj;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public tt()Lcom/byazt/gqp/t$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/gqp/t$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/gqp/t$c;-><init>(Lcom/byazt/gqp/t;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

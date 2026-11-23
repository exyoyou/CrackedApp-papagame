.class public Lcom/byazt/ogz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a6,
        0x14
    }
.end annotation


# instance fields
.field public a:I

.field public c:Ljava/lang/String;

.field public da:I

.field public gt:J

.field public i:I

.field public m:I

.field public my:Z

.field public n:I

.field public nu:I

.field public qy:I

.field public rh:Z

.field public rl:I

.field public sl:I

.field public sp:I

.field public t:I

.field public tt:I

.field public u:Z

.field public uj:I

.field public ve:I

.field public x:I

.field public yp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public z:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/byazt/ogz/c;->tt:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lcom/byazt/ogz/c;->ve:I

    .line 9
    .line 10
    iput v0, p0, Lcom/byazt/ogz/c;->uj:I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, p0, Lcom/byazt/ogz/c;->n:I

    .line 14
    .line 15
    iput v0, p0, Lcom/byazt/ogz/c;->a:I

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    iput v0, p0, Lcom/byazt/ogz/c;->sp:I

    .line 19
    .line 20
    iput v2, p0, Lcom/byazt/ogz/c;->x:I

    .line 21
    .line 22
    iput v2, p0, Lcom/byazt/ogz/c;->i:I

    .line 23
    .line 24
    iput v2, p0, Lcom/byazt/ogz/c;->da:I

    .line 25
    .line 26
    const/16 v0, 0x5dc

    .line 27
    .line 28
    iput v0, p0, Lcom/byazt/ogz/c;->sl:I

    .line 29
    .line 30
    const/16 v0, 0x7d0

    .line 31
    .line 32
    iput v0, p0, Lcom/byazt/ogz/c;->t:I

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/byazt/ogz/c;->u:Z

    .line 35
    .line 36
    iput v1, p0, Lcom/byazt/ogz/c;->z:I

    .line 37
    .line 38
    const/16 v0, 0x64

    .line 39
    .line 40
    iput v0, p0, Lcom/byazt/ogz/c;->m:I

    .line 41
    .line 42
    iput v2, p0, Lcom/byazt/ogz/c;->nu:I

    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/byazt/ogz/c;->rh:Z

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/byazt/ogz/c;->my:Z

    .line 47
    .line 48
    const-wide/16 v0, 0x0

    .line 49
    .line 50
    iput-wide v0, p0, Lcom/byazt/ogz/c;->gt:J

    .line 51
    .line 52
    return-void
.end method

.method public static c()Lcom/byazt/ogz/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ogz/c;

    invoke-direct {v0}, Lcom/byazt/ogz/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->x:I

    .line 2
    .line 3
    return-object p0
.end method

.method public c(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ogz/c;->qy:I

    return-object p0
.end method

.method public c(J)Lcom/byazt/ogz/c;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/ogz/c;->gt:J

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/ogz/c;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/ogz/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/ogz/c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ogz/c;->rh:Z

    return-object p0
.end method

.method public da(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->uj:I

    .line 2
    .line 3
    return-object p0
.end method

.method public i(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->ve:I

    .line 2
    .line 3
    return-object p0
.end method

.method public n(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->sl:I

    .line 2
    .line 3
    return-object p0
.end method

.method public sl(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->n:I

    .line 2
    .line 3
    return-object p0
.end method

.method public sp(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public t(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->a:I

    .line 2
    .line 3
    return-object p0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ogz/c;->qy:I

    return v0
.end method

.method public tt(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ogz/c;->rl:I

    return-object p0
.end method

.method public tt(Z)Lcom/byazt/ogz/c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ogz/c;->my:Z

    return-object p0
.end method

.method public u(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->z:I

    .line 2
    .line 3
    return-object p0
.end method

.method public uj(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->da:I

    .line 2
    .line 3
    return-object p0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ogz/c;->rl:I

    return v0
.end method

.method public ve(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ogz/c;->t:I

    return-object p0
.end method

.method public ve(Z)Lcom/byazt/ogz/c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ogz/c;->u:Z

    return-object p0
.end method

.method public x(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->tt:I

    .line 2
    .line 3
    return-object p0
.end method

.method public yp(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->m:I

    .line 2
    .line 3
    return-object p0
.end method

.method public z(I)Lcom/byazt/ogz/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ogz/c;->nu:I

    .line 2
    .line 3
    return-object p0
.end method

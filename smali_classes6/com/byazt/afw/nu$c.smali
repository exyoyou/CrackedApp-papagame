.class public Lcom/byazt/afw/nu$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x21e,
        0x1db
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/afw/nu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public c:J

.field public da:I

.field public i:I

.field public n:Z

.field public sl:I

.field public sp:I

.field public t:I

.field public tt:J

.field public u:Z

.field public uj:Z

.field public ve:J

.field public x:I

.field public yp:Lorg/json/JSONArray;

.field public z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/afw/nu$c;->c:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/byazt/afw/nu$c;->tt:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/byazt/afw/nu$c;->ve:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/byazt/afw/nu$c;->uj:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/byazt/afw/nu$c;->n:Z

    .line 16
    .line 17
    iput v0, p0, Lcom/byazt/afw/nu$c;->a:I

    .line 18
    .line 19
    iput v0, p0, Lcom/byazt/afw/nu$c;->sp:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/byazt/afw/nu$c;->u:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/afw/nu$c;->sp:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/afw/nu$c;->t:I

    return-void
.end method

.method public c()Lorg/json/JSONArray;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/afw/nu$c;->yp:Lorg/json/JSONArray;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/afw/nu$c;->a:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/afw/nu$c;->c:J

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/byazt/afw/nu$c;->z:Ljava/util/Map;

    return-void
.end method

.method public c(Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/afw/nu$c;->yp:Lorg/json/JSONArray;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/afw/nu$c;->u:Z

    return-void
.end method

.method public da()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/afw/nu$c;->da:I

    .line 2
    .line 3
    return v0
.end method

.method public i()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/byazt/afw/nu$c;->ve:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-wide v2, p0, Lcom/byazt/afw/nu$c;->c:J

    .line 12
    .line 13
    const-wide/16 v4, 0x64

    .line 14
    .line 15
    mul-long v2, v2, v4

    .line 16
    .line 17
    div-long/2addr v2, v0

    .line 18
    long-to-int v0, v2

    .line 19
    const/16 v1, 0x64

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/afw/nu$c;->z:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/afw/nu$c;->a:I

    return v0
.end method

.method public n(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/afw/nu$c;->da:I

    return-void
.end method

.method public sl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/afw/nu$c;->sl:I

    .line 2
    .line 3
    return v0
.end method

.method public sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/afw/nu$c;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/afw/nu$c;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/afw/nu$c;->c:J

    return-wide v0
.end method

.method public tt(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/afw/nu$c;->sp:I

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/afw/nu$c;->tt:J

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/afw/nu$c;->uj:Z

    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/afw/nu$c;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public uj()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/afw/nu$c;->ve:J

    return-wide v0
.end method

.method public uj(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/afw/nu$c;->i:I

    return-void
.end method

.method public ve()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/afw/nu$c;->tt:J

    return-wide v0
.end method

.method public ve(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/afw/nu$c;->x:I

    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/afw/nu$c;->ve:J

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/afw/nu$c;->n:Z

    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/afw/nu$c;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public yp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/afw/nu$c;->uj:Z

    .line 2
    .line 3
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/afw/nu$c;->n:Z

    .line 2
    .line 3
    return v0
.end method

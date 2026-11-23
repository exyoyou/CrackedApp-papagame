.class public Lcom/byazt/hm/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a7,
        0xd
    }
.end annotation


# instance fields
.field public final a:J

.field public final c:I

.field public final da:Z

.field public i:Ljava/io/File;

.field public final n:J

.field public sl:[B

.field public sp:Lcom/byazt/gqp/sl;

.field public final tt:Ljava/lang/String;

.field public final uj:Ljava/lang/String;

.field public final ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/hm/tt;->i:Ljava/io/File;

    .line 3
    iput-object v0, p0, Lcom/byazt/hm/tt;->sl:[B

    .line 4
    iput-boolean p1, p0, Lcom/byazt/hm/tt;->da:Z

    .line 5
    iput p2, p0, Lcom/byazt/hm/tt;->c:I

    .line 6
    iput-object p3, p0, Lcom/byazt/hm/tt;->tt:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/byazt/hm/tt;->ve:Ljava/util/Map;

    .line 8
    iput-object p5, p0, Lcom/byazt/hm/tt;->uj:Ljava/lang/String;

    .line 9
    iput-wide p6, p0, Lcom/byazt/hm/tt;->n:J

    .line 10
    iput-wide p8, p0, Lcom/byazt/hm/tt;->a:J

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJLjava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/byazt/hm/tt;->i:Ljava/io/File;

    .line 13
    iput-object v0, p0, Lcom/byazt/hm/tt;->sl:[B

    .line 14
    iput-boolean p1, p0, Lcom/byazt/hm/tt;->da:Z

    .line 15
    iput p2, p0, Lcom/byazt/hm/tt;->c:I

    .line 16
    iput-object p3, p0, Lcom/byazt/hm/tt;->tt:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/byazt/hm/tt;->ve:Ljava/util/Map;

    .line 18
    iput-object p5, p0, Lcom/byazt/hm/tt;->uj:Ljava/lang/String;

    .line 19
    iput-wide p6, p0, Lcom/byazt/hm/tt;->n:J

    .line 20
    iput-wide p8, p0, Lcom/byazt/hm/tt;->a:J

    .line 21
    iput-object p10, p0, Lcom/byazt/hm/tt;->x:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/hm/tt;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hm/tt;->x:Ljava/lang/Throwable;

    return-object v0
.end method

.method public c(Lcom/byazt/gqp/sl;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/hm/tt;->sp:Lcom/byazt/gqp/sl;

    return-void
.end method

.method public c(Ljava/io/File;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/hm/tt;->i:Ljava/io/File;

    return-void
.end method

.method public c([B)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/hm/tt;->sl:[B

    return-void
.end method

.method public da()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/byazt/hm/tt;->n:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/byazt/hm/tt;->a:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hm/tt;->da:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hm/tt;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hm/tt;->sl:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/hm/tt;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public t()Lcom/byazt/gqp/sl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hm/tt;->sp:Lcom/byazt/gqp/sl;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/hm/tt;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public uj()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hm/tt;->ve:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hm/tt;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hm/tt;->i:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

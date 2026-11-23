.class public Lcom/byazt/ete/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0xd
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/dj/tt;

.field public c:Ljava/lang/String;

.field public da:J

.field public i:J

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public sl:J

.field public sp:I

.field public t:Lorg/json/JSONObject;

.field public tt:I

.field public uj:Ljava/lang/String;

.field public ve:I

.field public x:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/byazt/ete/tt;->ve:I

    .line 6
    .line 7
    return-void
.end method

.method public static c(Lcom/byazt/ete/tt;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/byazt/ete/tt;->sp()Lcom/byazt/dj/tt;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/tt;->tt()I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x8

    if-ne v0, v1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v1, Lcom/byazt/ete/tt$1;

    invoke-direct {v1, p0}, Lcom/byazt/ete/tt$1;-><init>(Lcom/byazt/ete/tt;)V

    const-string p0, "rd_client_custom_error"

    invoke-virtual {v0, v1, p0}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/tt;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/tt;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/tt;->tt:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/byazt/ete/tt;->x:J

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/ete/tt;->a:Lcom/byazt/dj/tt;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/tt;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/byazt/ete/tt;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/ete/tt;->t:Lorg/json/JSONObject;

    return-void
.end method

.method public da()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/tt;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/tt;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public n()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/tt;->t:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/tt;->da:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public sp()Lcom/byazt/dj/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/tt;->a:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/tt;->sl:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/tt;->tt:I

    return v0
.end method

.method public tt(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/tt;->sp:I

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/ete/tt;->i:J

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ete/tt;->uj:Ljava/lang/String;

    return-void
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/tt;->uj:Ljava/lang/String;

    return-object v0
.end method

.method public uj(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ete/tt;->sl:J

    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/tt;->sp:I

    return v0
.end method

.method public ve(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/tt;->ve:I

    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/ete/tt;->da:J

    return-void
.end method

.method public x()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/tt;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.class public Lcom/byazt/ete/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x14
    }
.end annotation


# instance fields
.field public a:J

.field public c:Ljava/lang/String;

.field public n:Lorg/json/JSONObject;

.field public tt:I

.field public uj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ete/c;->uj:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/ete/c;->tt:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/c;->tt:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/byazt/ete/c;->a:J

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/ete/c;->uj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ete/c;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/byazt/ete/c;->uj:Ljava/util/List;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/ete/c;->n:Lorg/json/JSONObject;

    return-void
.end method

.method public tt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/ete/c;->uj:Ljava/util/List;

    return-object v0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ete/c;->ve:Ljava/lang/String;

    return-void
.end method

.method public ve()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/c;->n:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

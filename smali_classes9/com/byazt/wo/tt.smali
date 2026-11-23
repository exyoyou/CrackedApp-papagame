.class public Lcom/byazt/wo/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7a1,
        0xd
    }
.end annotation


# instance fields
.field public c:[B

.field public n:Lorg/json/JSONObject;

.field public tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public uj:I

.field public ve:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wo/tt;->n:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/wo/tt;->uj:I

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/byazt/wo/tt;->tt:Ljava/util/Map;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/wo/tt;->n:Lorg/json/JSONObject;

    return-void
.end method

.method public c([B)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/wo/tt;->c:[B

    return-void
.end method

.method public n()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/byazt/wo/tt;->tt:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/wo/tt;->uj:I

    return v0
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/wo/tt;->ve:Lorg/json/JSONObject;

    return-void
.end method

.method public uj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wo/tt;->ve:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wo/tt;->c:[B

    .line 2
    .line 3
    return-object v0
.end method

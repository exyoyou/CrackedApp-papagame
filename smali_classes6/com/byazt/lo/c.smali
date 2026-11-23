.class public Lcom/byazt/lo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x291,
        0x14
    }
.end annotation


# instance fields
.field public c:Lorg/json/JSONArray;

.field public n:Lorg/json/JSONObject;

.field public tt:Lorg/json/JSONObject;

.field public uj:Lorg/json/JSONObject;

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
.method public c()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lo/c;->c:Lorg/json/JSONArray;

    return-object v0
.end method

.method public c(Lorg/json/JSONArray;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lo/c;->c:Lorg/json/JSONArray;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/lo/c;->tt:Lorg/json/JSONObject;

    return-void
.end method

.method public n()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lo/c;->n:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lo/c;->tt:Lorg/json/JSONObject;

    return-object v0
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lo/c;->ve:Lorg/json/JSONObject;

    return-void
.end method

.method public uj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lo/c;->uj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public uj(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lo/c;->n:Lorg/json/JSONObject;

    return-void
.end method

.method public ve()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lo/c;->ve:Lorg/json/JSONObject;

    return-object v0
.end method

.method public ve(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lo/c;->uj:Lorg/json/JSONObject;

    return-void
.end method

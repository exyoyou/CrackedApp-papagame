.class public Lcom/byazt/dk/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x47
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:Ljava/lang/String;

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

.method public static c()Lcom/byazt/dk/x;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/dk/x;

    invoke-direct {v0}, Lcom/byazt/dk/x;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/byazt/dk/x;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/dk/x;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/dk/x;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/dk/x;->uj:Lorg/json/JSONObject;

    return-object p0
.end method

.method public n()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/x;->uj:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/dk/x;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dk/x;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public tt(Lorg/json/JSONObject;)Lcom/byazt/dk/x;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/dk/x;->ve:Lorg/json/JSONObject;

    return-object p0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/dk/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method public uj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/x;->ve:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/x;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

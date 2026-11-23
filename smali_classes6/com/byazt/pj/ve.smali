.class public Lcom/byazt/pj/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x69d,
        0x36
    }
.end annotation


# instance fields
.field public c:Lorg/json/JSONObject;

.field public tt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/byazt/pj/ve;->c:Lorg/json/JSONObject;

    .line 4
    iput p2, p0, Lcom/byazt/pj/ve;->tt:I

    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pj/ve;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/pj/ve;->tt:I

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/pj/ve;->c:Lorg/json/JSONObject;

    return-void
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/pj/ve;->tt:I

    .line 2
    .line 3
    return v0
.end method

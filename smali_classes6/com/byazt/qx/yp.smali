.class public Lcom/byazt/qx/yp;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0xd7
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/pct/n<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qx/yp;->c:Lorg/json/JSONObject;

    .line 5
    .line 6
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lorg/json/JSONObject;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/qx/yp;

    invoke-direct {v0, p1}, Lcom/byazt/qx/yp;-><init>(Lorg/json/JSONObject;)V

    const-string p1, "getData"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/yp;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object p2, p0, Lcom/byazt/qx/yp;->c:Lorg/json/JSONObject;

    invoke-static {p2, p1}, Lcom/byazt/jlk/tt;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

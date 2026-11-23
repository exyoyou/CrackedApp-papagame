.class public final Lcom/byazt/ddx/uj$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ya/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0x35c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ddx/uj;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lorg/json/JSONObject;

.field public final synthetic ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(JLorg/json/JSONObject;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/ddx/uj$15;->c:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/ddx/uj$15;->tt:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/ddx/uj$15;->ve:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onSend(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "duration"

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/byazt/ddx/uj$15;->c:J

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ddx/uj$15;->tt:Lorg/json/JSONObject;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/ddx/uj$15;->ve:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/byazt/ic/c;->c(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/ddx/uj$15;->tt:Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "ad_extra_data"

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    return-void
.end method

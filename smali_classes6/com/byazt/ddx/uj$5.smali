.class public final Lcom/byazt/ddx/uj$5;
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
        0x6b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ddx/uj;->c(JLcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(JLcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/ddx/uj$5;->c:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/ddx/uj$5;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onSend(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "skip_duration"

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/byazt/ddx/uj$5;->c:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/ddx/uj$5;->tt:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/byazt/ic/c;->c(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "ad_extra_data"

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    return-void
.end method

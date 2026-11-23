.class public Lcom/haima/hmcp/beans/FrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected id:J

.field protected renderedTimeStamp:J


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
.method public setId(J)Lcom/haima/hmcp/beans/FrameInfo;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/FrameInfo;->id:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setRenderedTime(J)Lcom/haima/hmcp/beans/FrameInfo;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/FrameInfo;->renderedTimeStamp:J

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "id"

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/haima/hmcp/beans/FrameInfo;->id:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "rendered_time_stamp"

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/haima/hmcp/beans/FrameInfo;->renderedTimeStamp:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

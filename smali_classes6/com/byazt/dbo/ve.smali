.class public final Lcom/byazt/dbo/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3c1,
        0x36
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;)V
    .locals 5

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "correct_action_code"

    const-wide/16 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/byazt/ete/ic;->x(J)V

    const-string v0, "correct_result_code"

    .line 2
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/byazt/ete/ic;->i(J)V

    const-string v0, "cali_timestamp"

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/byazt/ete/ic;->da(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Z)V
    .locals 6

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->xw()J

    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->tu()J

    move-result-wide v2

    .line 6
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->ra()J

    move-result-wide v4

    :try_start_0
    const-string p0, "correct_action_code"

    .line 7
    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "correct_result_code"

    .line 8
    invoke-virtual {p1, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string p0, "cali_timestamp"

    .line 9
    invoke-virtual {p1, p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    const-string p1, "CaliTrackUtils"

    const-string p2, "putCaliExtra error"

    .line 10
    invoke-static {p1, p2, p0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

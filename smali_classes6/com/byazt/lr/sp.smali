.class public Lcom/byazt/lr/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9b,
        0x5b
    }
.end annotation


# direct methods
.method public static c(IJ)V
    .locals 2

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "error_code"

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p0

    .line 15
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object p1

    const-string p2, "lp_compliance_error"

    .line 16
    invoke-virtual {p0, p2, v0, p1}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public static c(ILcom/byazt/nn/n;)V
    .locals 2

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "error_code"

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p0

    const-string v1, "lp_compliance_error"

    invoke-virtual {p0, v1, v0, p1}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public static c(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/byazt/nn/n;->gr()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p1, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    invoke-interface {p2, p0}, Lcom/byazt/su/DownloadEventConfig;->setRefer(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p0

    const-string p2, "lp_app_dialog_click"

    invoke-virtual {p0, p2, p1}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lcom/byazt/dd/c;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/nn/n;)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 2

    .line 5
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, p2}, Lcom/byazt/lr/sp;->c(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

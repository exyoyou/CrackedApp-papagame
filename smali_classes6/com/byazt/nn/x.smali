.class public Lcom/byazt/nn/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3fc,
        0x47
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/nn/x;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/nn/x;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/nn/x;->c:Lcom/byazt/nn/x;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/nn/uj;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/nn/x;->c:Lcom/byazt/nn/x;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/nn/x;

    invoke-direct {v1}, Lcom/byazt/nn/x;-><init>()V

    sput-object v1, Lcom/byazt/nn/x;->c:Lcom/byazt/nn/x;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/nn/x;->c:Lcom/byazt/nn/x;

    return-object v0
.end method


# virtual methods
.method public c(IILcom/byazt/dd/tt;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p3}, Lcom/byazt/dd/tt;->my()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "report_api_hijack"

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sub-int v1, p2, p1

    if-lez p1, :cond_2

    const-string p1, "check_api_hijack_version_code_diff"

    const/16 v2, 0x1f4

    .line 9
    invoke-virtual {v0, p1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p1

    if-le v1, p1, :cond_2

    .line 10
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "version_code_diff"

    .line 11
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "installed_version_code"

    .line 12
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "hijack_type"

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 14
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 15
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p2

    const-string v0, "api_hijack"

    invoke-virtual {p2, v0, p1, p3}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    :cond_2
    return-void
.end method

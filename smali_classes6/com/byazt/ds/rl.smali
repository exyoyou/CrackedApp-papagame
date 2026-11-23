.class public Lcom/byazt/ds/rl;
.super Lcom/byazt/ds/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5c8,
        0x75
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/ds/x;

.field public final n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ds/x;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/byazt/ds/ve;-><init>(ZZ)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/ds/rl;->n:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/byazt/ds/rl;->a:Lcom/byazt/ds/x;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ds/rl;->n:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "phone"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "carrier"

    .line 19
    .line 20
    invoke-static {p1, v3, v2}, Lcom/byazt/ds/i;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "mcc_mnc"

    .line 28
    .line 29
    invoke-static {p1, v3, v2}, Lcom/byazt/ds/i;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/byazt/ds/rl;->a:Lcom/byazt/ds/x;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/byazt/ds/x;->aw()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-static {v0}, Lcom/byazt/yv/a;->c(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/byazt/ds/rl;->a:Lcom/byazt/ds/x;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/byazt/ds/x;->bx()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    const-string v2, "udid"

    .line 52
    .line 53
    invoke-static {p1, v2, v0}, Lcom/byazt/ds/i;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :catch_0
    move-exception p1

    .line 59
    invoke-static {p1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return v1
.end method

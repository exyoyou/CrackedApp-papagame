.class Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

.field private b:Lcom/cmic/gen/sdk/a;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;Lcom/cmic/gen/sdk/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->b:Lcom/cmic/gen/sdk/a;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->a(Z)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Z)Z
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->c:Z

    .line 3
    iput-boolean p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, v0, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const-string v0, "\u8bf7\u6c42\u8d85\u65f6"

    .line 2
    .line 3
    const-string v1, "102507"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {p0, v2}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->a(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    new-instance v3, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    const-string v4, "resultCode"

    .line 18
    .line 19
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v4, "resultString"

    .line 23
    .line 24
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static {v4, v5}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->b(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;Z)Z

    .line 36
    .line 37
    .line 38
    const-string v4, "authClickFailed"

    .line 39
    .line 40
    invoke-static {v4}, Lcom/cmic/gen/sdk/d/a;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 44
    .line 45
    invoke-static {v4}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->k(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$a;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->b:Lcom/cmic/gen/sdk/a;

    .line 53
    .line 54
    const-string v4, "loginTime"

    .line 55
    .line 56
    const-wide/16 v5, 0x0

    .line 57
    .line 58
    invoke-virtual {v2, v4, v5, v6}, Lcom/cmic/gen/sdk/a;->b(Ljava/lang/String;J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    cmp-long v2, v7, v5

    .line 63
    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->b:Lcom/cmic/gen/sdk/a;

    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v5

    .line 72
    sub-long/2addr v5, v7

    .line 73
    invoke-virtual {v2, v4, v5, v6}, Lcom/cmic/gen/sdk/a;->a(Ljava/lang/String;J)V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->a:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$c;->b:Lcom/cmic/gen/sdk/a;

    .line 79
    .line 80
    invoke-static {v2, v1, v0, v4, v3}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/a;Lorg/json/JSONObject;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method

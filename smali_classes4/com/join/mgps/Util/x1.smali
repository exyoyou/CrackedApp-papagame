.class public Lcom/join/mgps/Util/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/x1$c;,
        Lcom/join/mgps/Util/x1$b;
    }
.end annotation


# static fields
.field static a:Lcom/join/mgps/Util/x1;


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

.method static synthetic a(Lcom/join/mgps/Util/x1;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/x1;->d()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static c()Lcom/join/mgps/Util/x1;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/x1;->a:Lcom/join/mgps/Util/x1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/Util/x1;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/Util/x1;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/Util/x1;->a:Lcom/join/mgps/Util/x1;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/join/mgps/Util/x1;->a:Lcom/join/mgps/Util/x1;

    .line 13
    .line 14
    return-object v0
.end method

.method private d()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x5265c00

    .line 6
    .line 7
    .line 8
    add-long/2addr v0, v2

    .line 9
    return-wide v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/x1$b;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "appkey",
            "listener"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method checkPayGameResult() called.appkey="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "xxxxx"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/join/mgps/Util/x1$c;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/x1$c;-><init>(Lcom/join/mgps/Util/x1;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    new-instance v8, Lcom/join/mgps/Util/x1$a;

    .line 29
    .line 30
    move-object v2, v8

    .line 31
    move-object v3, p0

    .line 32
    move-object v4, p1

    .line 33
    move-object v5, p2

    .line 34
    move-object v6, v0

    .line 35
    move-object v7, p3

    .line 36
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/Util/x1$a;-><init>(Lcom/join/mgps/Util/x1;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/x1$c;Lcom/join/mgps/Util/x1$b;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "checkPayGamePay::Exception"

    .line 50
    .line 51
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {v1, p2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    invoke-interface {p3, v0}, Lcom/join/mgps/Util/x1$b;->a(Lcom/join/mgps/Util/x1$c;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appKey",
            "gid"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "com.join.android.wufun.sdk.wfsg.broadcast."

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Lcom/join/mgps/Util/x1$c;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/join/mgps/Util/x1$c;-><init>(Lcom/join/mgps/Util/x1;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p2, v1}, Lcom/join/mgps/Util/x1$c;->d(I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/join/mgps/Util/x1;->d()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-virtual {p2, v1, v2}, Lcom/join/mgps/Util/x1$c;->f(J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/x1$c;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->defaultAll()Lcom/join/android/app/common/utils/JsonMapper;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3, p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string p3, "result"

    .line 51
    .line 52
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

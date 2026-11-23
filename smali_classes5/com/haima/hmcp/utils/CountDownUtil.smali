.class public Lcom/haima/hmcp/utils/CountDownUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;,
        Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;
    }
.end annotation


# static fields
.field public static final CID_CACHE_TIMER:Ljava/lang/String; = "cidCacheTimer"

.field private static final CID_COUNT_DOWN_INTERVAL:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "CountDownUtil"

.field private static mCountdownMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static cancel(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CountDownUtil"

    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;

    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->cancel()V

    .line 4
    sget-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;->listener:Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;

    .line 5
    sget-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;

    iput-object v1, v0, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;->tag:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static cancel(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/CountDownUtil;->prepareCancle(Ljava/lang/String;Landroid/content/Context;)V

    .line 8
    invoke-static {p0}, Lcom/haima/hmcp/utils/CountDownUtil;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method public static cancelAll()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/CountDownTimer;->cancel()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static createCidCacheTimer(Landroid/content/Context;J)V
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const-string v2, "CountDownUtil"

    .line 4
    .line 5
    cmp-long v3, p1, v0

    .line 6
    .line 7
    if-gtz v3, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "cidCacheInterval wrong value: "

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v2, p0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "createCidCacheTimer(): --- "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "s"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-wide v3, 0x7fffffffffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    const-wide/16 v5, 0x2710

    .line 61
    .line 62
    const-string v7, "cidCacheTimer"

    .line 63
    .line 64
    new-instance v8, Lcom/haima/hmcp/utils/CountDownUtil$1;

    .line 65
    .line 66
    invoke-direct {v8, p1, p2, p0}, Lcom/haima/hmcp/utils/CountDownUtil$1;-><init>(JLandroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-static/range {v3 .. v8}, Lcom/haima/hmcp/utils/CountDownUtil;->newTimer(JJLjava/lang/String;Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static newTimer(JJLjava/lang/String;Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;)V
    .locals 8

    .line 1
    invoke-static {p4}, Lcom/haima/hmcp/utils/CountDownUtil;->cancel(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v7, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;

    .line 5
    .line 6
    move-object v0, v7

    .line 7
    move-wide v1, p0

    .line 8
    move-wide v3, p2

    .line 9
    move-object v5, p4

    .line 10
    move-object v6, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;-><init>(JJLjava/lang/String;Lcom/haima/hmcp/utils/CountDownUtil$CountDownListener;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {p0, p4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {p4}, Lcom/haima/hmcp/utils/CountDownUtil;->start(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static prepareCancle(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "cidCacheTimer"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "cid_cache_interval"

    .line 34
    .line 35
    sget-wide v2, Lcom/haima/hmcp/Constants;->DEFAULT_CID_CACHE_INTERVAL:J

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2, v3}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    const-wide/16 v2, 0x0

    .line 42
    .line 43
    cmp-long v4, v0, v2

    .line 44
    .line 45
    if-lez v4, :cond_0

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    const-wide/16 v4, 0x3e8

    .line 52
    .line 53
    mul-long v0, v0, v4

    .line 54
    .line 55
    add-long/2addr v2, v0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v0, "cid_cache_expire_time"

    .line 65
    .line 66
    invoke-virtual {p1, v0, v2, v3}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;J)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p0, "update expireTime:  --- "

    .line 78
    .line 79
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/CountDownUtil;->toDateStr(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string p1, "CountDownUtil"

    .line 94
    .line 95
    invoke-static {p1, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    return-void
.end method

.method private static start(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/CountDownUtil;->mCountdownMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/haima/hmcp/utils/CountDownUtil$CidCacheTimer;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/CountDownTimer;->start()Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static toDateStr(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

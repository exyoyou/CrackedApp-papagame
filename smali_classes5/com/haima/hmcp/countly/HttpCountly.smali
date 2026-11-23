.class public Lcom/haima/hmcp/countly/HttpCountly;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COUNT_KEY:Ljava/lang/String; = "count"

.field private static final DAY_OF_WEEK:Ljava/lang/String; = "dow"

.field private static final DUR_KEY:Ljava/lang/String; = "dur"

.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final SEGMENTATION_KEY:Ljava/lang/String; = "segmentation"

.field private static final SUM_KEY:Ljava/lang/String; = "sum"

.field private static final TAG:Ljava/lang/String; = "HttpCountly"

.field private static final TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"

.field private static lastTsMs:J


# instance fields
.field private appKey:Ljava/lang/String;

.field public dur:D

.field private mHttpImpl:Lcom/haima/hmcp/business/IHttp;

.field private sendErrorCount:I

.field private serverURL_:Ljava/lang/String;

.field private serverUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sum:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/countly/HttpCountly;->sendErrorCount:I

    .line 6
    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/haima/hmcp/countly/HttpCountly;->setServerInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lcom/haima/hmcp/countly/HttpCountly;->appKey:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p2, Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 13
    .line 14
    const/16 p3, 0xa

    .line 15
    .line 16
    invoke-direct {p2, p1, p3}, Lcom/haima/hmcp/business/HttpVolleyImpl;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/haima/hmcp/countly/HttpCountly;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 20
    .line 21
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/countly/HttpCountly;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$108(Lcom/haima/hmcp/countly/HttpCountly;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/countly/HttpCountly;->sendErrorCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/haima/hmcp/countly/HttpCountly;->sendErrorCount:I

    .line 6
    .line 7
    return v0
.end method

.method static currentDayOfWeek()I
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x7

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :pswitch_0
    const/4 v0, 0x6

    .line 16
    return v0

    .line 17
    :pswitch_1
    const/4 v0, 0x5

    .line 18
    return v0

    .line 19
    :pswitch_2
    const/4 v0, 0x4

    .line 20
    return v0

    .line 21
    :pswitch_3
    const/4 v0, 0x3

    .line 22
    return v0

    .line 23
    :pswitch_4
    const/4 v0, 0x2

    .line 24
    return v0

    .line 25
    :pswitch_5
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static currentHour()I
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method static declared-synchronized currentTimestampMs()J
    .locals 6

    .line 1
    const-class v0, Lcom/haima/hmcp/countly/HttpCountly;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    sget-wide v3, Lcom/haima/hmcp/countly/HttpCountly;->lastTsMs:J

    .line 9
    .line 10
    cmp-long v5, v3, v1

    .line 11
    .line 12
    if-ltz v5, :cond_0

    .line 13
    .line 14
    const-wide/16 v1, 0x1

    .line 15
    .line 16
    add-long/2addr v1, v3

    .line 17
    :cond_0
    sput-wide v1, Lcom/haima/hmcp/countly/HttpCountly;->lastTsMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-wide v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    .line 23
    throw v1
.end method

.method private getEventDatas(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/util/Map;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 7
    .line 8
    .line 9
    const-string p2, ""

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v9, v1

    .line 22
    check-cast v9, Ljava/util/Map;

    .line 23
    .line 24
    invoke-static {}, Lcom/haima/hmcp/countly/HttpCountly;->currentTimestampMs()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    invoke-static {}, Lcom/haima/hmcp/countly/HttpCountly;->currentHour()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-static {}, Lcom/haima/hmcp/countly/HttpCountly;->currentDayOfWeek()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    move-object v2, p0

    .line 37
    move-object v3, p1

    .line 38
    move v4, p3

    .line 39
    invoke-virtual/range {v2 .. v9}, Lcom/haima/hmcp/countly/HttpCountly;->toJSON(Ljava/lang/String;IJIILjava/util/Map;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p2, ","

    .line 77
    .line 78
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p2}, Lcom/haima/hmcp/utils/StringUtils;->replaceSpecialStr(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string p3, "app_key="

    .line 96
    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object p3, p0, Lcom/haima/hmcp/countly/HttpCountly;->appKey:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p3, "&events=["

    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p1, "]"

    .line 118
    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    return-object p1
.end method


# virtual methods
.method public isServerInfoInited()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverURL_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/countly/HttpCountly;->appKey:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public postEventData(Ljava/lang/String;Ljava/util/Map;IZ)Z
    .locals 1

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 13
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/haima/hmcp/countly/HttpCountly;->postEventData(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;IZ)Z

    move-result p1

    return p1
.end method

.method public postEventData(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;IZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/util/Map;",
            ">;IZ)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverURL_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/i?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/haima/hmcp/countly/HttpCountly;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countly url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverURL_:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->getInstance()Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->addEvents(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    return v3

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/countly/HttpCountly;->getEventDatas(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===postEventData=="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p3, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    invoke-direct {p3}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;-><init>()V

    .line 8
    invoke-virtual {p3, v0}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->url(Ljava/lang/String;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    move-result-object p3

    .line 9
    invoke-virtual {p3, p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->params(Ljava/lang/Object;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->build()Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    move-result-object p3

    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/countly/HttpCountly;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    new-instance v1, Lcom/haima/hmcp/countly/HttpCountly$1;

    invoke-direct {v1, p0, p1, p4, p2}, Lcom/haima/hmcp/countly/HttpCountly$1;-><init>(Lcom/haima/hmcp/countly/HttpCountly;Ljava/lang/String;ZLjava/util/concurrent/ConcurrentLinkedQueue;)V

    invoke-interface {v0, p3, v1}, Lcom/haima/hmcp/business/IHttp;->post(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V

    return v3
.end method

.method public postSendFailedEventData(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/util/Map;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverUrlList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverUrlList:Ljava/util/List;

    .line 17
    .line 18
    iget v2, p0, Lcom/haima/hmcp/countly/HttpCountly;->sendErrorCount:I

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    rem-int/2addr v2, v3

    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "/i?"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v0, ""

    .line 45
    .line 46
    :goto_0
    sget-object v1, Lcom/haima/hmcp/countly/HttpCountly;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "postSendFailedEventData url = "

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "--errorCount:"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v3, p0, Lcom/haima/hmcp/countly/HttpCountly;->sendErrorCount:I

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const/4 v3, 0x1

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    invoke-static {}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->getInstance()Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->addEvents(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 90
    .line 91
    .line 92
    return v3

    .line 93
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/countly/HttpCountly;->getEventDatas(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance p3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v2, "===postSendFailedEventData=="

    .line 103
    .line 104
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    invoke-static {v1, p3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance p3, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    .line 118
    .line 119
    invoke-direct {p3}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, v0}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->url(Ljava/lang/String;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p3, p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->params(Ljava/lang/Object;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p3}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->build()Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    iget-object v0, p0, Lcom/haima/hmcp/countly/HttpCountly;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 135
    .line 136
    new-instance v1, Lcom/haima/hmcp/countly/HttpCountly$2;

    .line 137
    .line 138
    invoke-direct {v1, p0, p1, p2}, Lcom/haima/hmcp/countly/HttpCountly$2;-><init>(Lcom/haima/hmcp/countly/HttpCountly;Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v0, p3, v1}, Lcom/haima/hmcp/business/IHttp;->post(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V

    .line 142
    .line 143
    .line 144
    return v3
.end method

.method public setServerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getCountlyUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "https://countly.haimawan.com"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getCountlyUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverURL_:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverURL_:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iput-object v1, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverURL_:Ljava/lang/String;

    .line 38
    .line 39
    :goto_0
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getCountlyKey()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Lcom/haima/hmcp/HmcpManager;->getCountlyKey()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iput-object p2, p0, Lcom/haima/hmcp/countly/HttpCountly;->appKey:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    iput-object p2, p0, Lcom/haima/hmcp/countly/HttpCountly;->appKey:Ljava/lang/String;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const-string p2, "9c0edb3f80d8d9adc71bb544b6dc87743340e829"

    .line 74
    .line 75
    iput-object p2, p0, Lcom/haima/hmcp/countly/HttpCountly;->appKey:Ljava/lang/String;

    .line 76
    .line 77
    :goto_1
    sget-object p2, Lcom/haima/hmcp/countly/HttpCountly;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "AppSet: "

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/haima/hmcp/HmcpManager;->getCountlyUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, " Package: "

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, " Mongo: "

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, " Final: "

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverURL_:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p1, " Key:"

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/haima/hmcp/countly/HttpCountly;->appKey:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public setServerList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverUrlList:Ljava/util/List;

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverURL_:Ljava/lang/String;

    .line 14
    .line 15
    filled-new-array {p1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverUrlList:Ljava/util/List;

    .line 24
    .line 25
    :goto_1
    sget-object p1, Lcom/haima/hmcp/countly/HttpCountly;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "setServerList for countly:"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/haima/hmcp/countly/HttpCountly;->serverUrlList:Ljava/util/List;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method toJSON(Ljava/lang/String;IJIILjava/util/Map;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "key"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p1, "count"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p1, "timestamp"

    .line 17
    .line 18
    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string p1, "hour"

    .line 22
    .line 23
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string p1, "dow"

    .line 27
    .line 28
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    if-eqz p7, :cond_0

    .line 32
    .line 33
    const-string p1, "segmentation"

    .line 34
    .line 35
    new-instance p2, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {p2, p7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    :cond_0
    const-string p1, "sum"

    .line 44
    .line 45
    iget-wide p2, p0, Lcom/haima/hmcp/countly/HttpCountly;->sum:D

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    iget-wide p1, p0, Lcom/haima/hmcp/countly/HttpCountly;->dur:D

    .line 51
    .line 52
    const-wide/16 p3, 0x0

    .line 53
    .line 54
    cmpl-double p5, p1, p3

    .line 55
    .line 56
    if-lez p5, :cond_1

    .line 57
    .line 58
    const-string p3, "dur"

    .line 59
    .line 60
    invoke-virtual {v0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    sget-object p2, Lcom/haima/hmcp/countly/HttpCountly;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p3, "Got exception converting an Event to JSON"

    .line 68
    .line 69
    invoke-static {p2, p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-object v0
.end method

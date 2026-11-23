.class public Lcom/beizi/fusion/events/EventCar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/beizi/fusion/events/EventCar;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/Messenger$EventsBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x80

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/beizi/fusion/events/EventCar;->d:J

    .line 7
    .line 8
    const-wide/32 v0, 0xa4cb800

    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lcom/beizi/fusion/events/EventCar;->e:J

    .line 12
    .line 13
    iput-object p1, p0, Lcom/beizi/fusion/events/EventCar;->b:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/beizi/fusion/model/RequestInfo;->init()Lcom/beizi/fusion/model/RequestInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/beizi/fusion/model/RequestInfo;->isInit()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/beizi/fusion/model/RequestInfo;->init()Lcom/beizi/fusion/model/RequestInfo;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 42
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 43
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(Lcom/beizi/fusion/events/EventBean;)V
    .locals 8

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/events/EventCar;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/ResponseInfo;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/beizi/fusion/events/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/beizi/fusion/events/EventCar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getMessenger()Lcom/beizi/fusion/model/Messenger;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getMessenger()Lcom/beizi/fusion/model/Messenger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beizi/fusion/model/Messenger;->getEvents()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/beizi/fusion/events/EventCar;->c:Ljava/util/List;

    .line 6
    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getMessenger()Lcom/beizi/fusion/model/Messenger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beizi/fusion/model/Messenger;->getFileMaxSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/beizi/fusion/events/EventCar;->d:J

    .line 7
    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getMessenger()Lcom/beizi/fusion/model/Messenger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/Messenger;->getExpireTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/beizi/fusion/events/EventCar;->e:J

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/events/EventCar;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/beizi/fusion/events/EventCar;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 10
    iget-object v3, p0, Lcom/beizi/fusion/events/EventCar;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/beizi/fusion/model/Messenger$EventsBean;

    .line 11
    invoke-virtual {v3}, Lcom/beizi/fusion/model/Messenger$EventsBean;->getCodes()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 12
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    .line 13
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/beizi/fusion/events/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lcom/beizi/fusion/events/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 15
    :cond_0
    invoke-virtual {v3}, Lcom/beizi/fusion/model/Messenger$EventsBean;->getIsOnline()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 16
    invoke-virtual {v3}, Lcom/beizi/fusion/model/Messenger$EventsBean;->getUploadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/beizi/fusion/events/EventBean;->setUrl(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, v3, p1}, Lcom/beizi/fusion/events/EventCar;->a(Lcom/beizi/fusion/model/Messenger$EventsBean;Lcom/beizi/fusion/events/EventBean;)V

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    .line 18
    invoke-direct {p0, v3, p1, v6}, Lcom/beizi/fusion/events/EventCar;->a(Lcom/beizi/fusion/model/Messenger$EventsBean;Lcom/beizi/fusion/events/EventBean;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/events/EventCar;Lcom/beizi/fusion/events/EventBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/events/EventCar;->a(Lcom/beizi/fusion/events/EventBean;)V

    return-void
.end method

.method private a(Lcom/beizi/fusion/model/Messenger$EventsBean;Lcom/beizi/fusion/events/EventBean;)V
    .locals 5

    const-string v0, "590.200"

    if-eqz p2, :cond_3

    .line 22
    :try_start_0
    invoke-virtual {p2}, Lcom/beizi/fusion/events/EventBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 23
    invoke-virtual {p2}, Lcom/beizi/fusion/events/EventBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {p2}, Lcom/beizi/fusion/events/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {p2}, Lcom/beizi/fusion/events/EventBean;->getTaskReqUrl()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "?"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 27
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p2}, Lcom/beizi/fusion/events/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/beizi/fusion/events/EventCar;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/beizi/fusion/events/EventBean;->getAppLinks()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lcom/beizi/fusion/tool/at;->a(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/events/EventBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/events/EventCar;->b:Landroid/content/Context;

    invoke-static {v0, v1, p2}, Lcom/beizi/fusion/tool/at;->a(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/events/EventBean;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_0
    invoke-static {v0}, Lcom/beizi/fusion/tool/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/beizi/fusion/tool/aa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/beizi/fusion/tool/x;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 36
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 37
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    .line 38
    invoke-direct {p0, p1, p2, v4}, Lcom/beizi/fusion/events/EventCar;->a(Lcom/beizi/fusion/model/Messenger$EventsBean;Lcom/beizi/fusion/events/EventBean;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 39
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2, v4}, Lcom/beizi/fusion/events/EventCar;->a(Lcom/beizi/fusion/model/Messenger$EventsBean;Lcom/beizi/fusion/events/EventBean;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method private a(Lcom/beizi/fusion/model/Messenger$EventsBean;Lcom/beizi/fusion/events/EventBean;Z)V
    .locals 17

    move-object/from16 v1, p0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===================doOffline===================:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/beizi/fusion/events/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :try_start_0
    iget-object v0, v1, Lcom/beizi/fusion/events/EventCar;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/tool/g;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v2, "BeiZis"

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doOffline storagePath == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/beizi/fusion/model/Messenger$EventsBean;->getOfflineUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/beizi/fusion/model/Messenger$EventsBean;->getUploadUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "?"

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "?"

    .line 53
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    iget-object v5, v1, Lcom/beizi/fusion/events/EventCar;->b:Landroid/content/Context;

    move-object/from16 v7, p2

    invoke-static {v5, v2, v7}, Lcom/beizi/fusion/tool/at;->a(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/events/EventBean;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {}, Lcom/beizi/fusion/tool/aa;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/beizi/fusion/tool/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/beizi/fusion/model/Messenger$EventsBean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/beizi/fusion/tool/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/BeiZi/offline/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 60
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_1
    new-instance v7, Ljava/io/File;

    const-string v8, "10000.txt"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    const-class v8, Lcom/beizi/fusion/events/EventCar;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 64
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 65
    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v7, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 66
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 67
    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V

    .line 69
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 70
    invoke-virtual {v9}, Ljava/io/Writer;->close()V

    .line 71
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 73
    array-length v7, v3

    const-wide/16 v8, 0x0

    move-wide v11, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_4

    aget-object v13, v3, v10

    .line 74
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 75
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 76
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v16, v14, v11

    if-lez v16, :cond_3

    .line 77
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    cmp-long v3, v11, v8

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x2710

    cmp-long v7, v11, v3

    if-eqz v7, :cond_5

    .line 78
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/beizi/fusion/events/EventCar;->d:J

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    cmp-long v0, v7, v9

    if-gez v0, :cond_5

    .line 80
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 81
    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 82
    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 84
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 87
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void

    .line 88
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 89
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 91
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 92
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 93
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 95
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 96
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 97
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    :catchall_1
    :cond_6
    :goto_2
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;
    .locals 2

    .line 1
    sget-object v0, Lcom/beizi/fusion/events/EventCar;->a:Lcom/beizi/fusion/events/EventCar;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/beizi/fusion/events/EventCar;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/beizi/fusion/events/EventCar;->a:Lcom/beizi/fusion/events/EventCar;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/beizi/fusion/events/EventCar;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/beizi/fusion/events/EventCar;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/beizi/fusion/events/EventCar;->a:Lcom/beizi/fusion/events/EventCar;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/beizi/fusion/events/EventCar;->a:Lcom/beizi/fusion/events/EventCar;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public doUpLoadLogs()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "BeiZis"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "===================doUpLoadLogs===================:"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    iget-object v4, v0, Lcom/beizi/fusion/events/EventCar;->b:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v4}, Lcom/beizi/fusion/tool/g;->a(Landroid/content/Context;)Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v6, "doUpLoadLogs storagePath == "

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v1, v5}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-eqz v4, :cond_8

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, "/BeiZi/offline/"

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v4, Ljava/io/File;

    .line 87
    .line 88
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_8

    .line 96
    .line 97
    array-length v5, v4

    .line 98
    if-lez v5, :cond_8

    .line 99
    .line 100
    array-length v5, v4

    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    :goto_0
    if-ge v7, v5, :cond_8

    .line 104
    .line 105
    aget-object v8, v4, v7

    .line 106
    .line 107
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_6

    .line 112
    .line 113
    const-string v9, ""

    .line 114
    .line 115
    new-instance v10, Ljava/io/File;

    .line 116
    .line 117
    new-instance v11, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v12, "/10000.txt"

    .line 130
    .line 131
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-direct {v10, v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    if-eqz v11, :cond_0

    .line 146
    .line 147
    invoke-static {v10}, Lcom/beizi/fusion/events/EventCar;->a(Ljava/io/File;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    goto :goto_1

    .line 152
    :cond_0
    invoke-static {v8}, Lcom/beizi/fusion/tool/al;->a(Ljava/io/File;)V

    .line 153
    .line 154
    .line 155
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_1

    .line 160
    .line 161
    goto/16 :goto_4

    .line 162
    .line 163
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    array-length v11, v10

    .line 168
    const/4 v12, 0x0

    .line 169
    :goto_2
    if-ge v12, v11, :cond_5

    .line 170
    .line 171
    aget-object v13, v10, v12

    .line 172
    .line 173
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    const-string v15, "10000.txt"

    .line 178
    .line 179
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v14

    .line 183
    if-eqz v14, :cond_2

    .line 184
    .line 185
    move/from16 v16, v7

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    const-string v15, "."

    .line 193
    .line 194
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v15

    .line 202
    invoke-virtual {v15, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 211
    .line 212
    .line 213
    move-result-wide v14

    .line 214
    sub-long v14, v2, v14

    .line 215
    .line 216
    move/from16 v16, v7

    .line 217
    .line 218
    iget-wide v6, v0, Lcom/beizi/fusion/events/EventCar;->e:J

    .line 219
    .line 220
    cmp-long v17, v14, v6

    .line 221
    .line 222
    if-gez v17, :cond_3

    .line 223
    .line 224
    invoke-static {v9, v13}, Lcom/beizi/fusion/tool/x;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    if-nez v7, :cond_4

    .line 233
    .line 234
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    .line 235
    .line 236
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string v6, "code"

    .line 240
    .line 241
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    const/16 v7, 0xc8

    .line 246
    .line 247
    if-ne v6, v7, :cond_4

    .line 248
    .line 249
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_3
    :try_start_2
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 254
    .line 255
    .line 256
    :catch_0
    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 257
    .line 258
    move/from16 v7, v16

    .line 259
    .line 260
    const/4 v6, 0x0

    .line 261
    goto :goto_2

    .line 262
    :cond_5
    move/from16 v16, v7

    .line 263
    .line 264
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    array-length v6, v6

    .line 269
    const/4 v7, 0x1

    .line 270
    if-gt v6, v7, :cond_7

    .line 271
    .line 272
    invoke-static {v8}, Lcom/beizi/fusion/tool/al;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 273
    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_6
    :goto_4
    move/from16 v16, v7

    .line 277
    .line 278
    :cond_7
    :goto_5
    add-int/lit8 v7, v16, 0x1

    .line 279
    .line 280
    const/4 v6, 0x0

    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :catch_1
    :cond_8
    return-void
.end method

.method public goRoad(Lcom/beizi/fusion/events/EventBean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/beizi/fusion/tool/e;->b()Lcom/beizi/fusion/tool/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/e;->e()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/beizi/fusion/events/EventCar$1;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/events/EventCar$1;-><init>(Lcom/beizi/fusion/events/EventCar;Lcom/beizi/fusion/events/EventBean;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public goRoadWithoutThread(Lcom/beizi/fusion/events/EventBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/events/EventCar;->a(Lcom/beizi/fusion/events/EventBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

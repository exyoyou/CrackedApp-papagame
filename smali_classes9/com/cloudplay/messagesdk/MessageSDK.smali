.class public final Lcom/cloudplay/messagesdk/MessageSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile u:Lcom/cloudplay/messagesdk/MessageSDK;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/cloudplay/messagesdk/entity/CidInfo;

.field private d:Lcom/cloudplay/messagesdk/entity/PayInfo;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/cloudplay/messagesdk/socket/a;

.field private i:Lcom/cloudplay/messagesdk/listener/ConfigObserver;

.field private j:Lcom/cloudplay/messagesdk/listener/MessageHandler;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private final t:Lcom/cloudplay/messagesdk/listener/ConfigObserver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->f:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->k:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->m:Z

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->o:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v0, Lcom/cloudplay/messagesdk/MessageSDK$c;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/cloudplay/messagesdk/MessageSDK$c;-><init>(Lcom/cloudplay/messagesdk/MessageSDK;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->t:Lcom/cloudplay/messagesdk/listener/ConfigObserver;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Lcom/cloudplay/messagesdk/socket/a;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/cloudplay/messagesdk/socket/a;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/MessageSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloudplay/messagesdk/a/c;->d(Ljava/lang/String;)Lcom/cloudplay/messagesdk/entity/LinkBean;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/entity/LinkBean;->getSocketUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/entity/LinkBean;->getbId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/entity/LinkBean;->getSign()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "m_"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 69
    iget-object v2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getCid()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/entity/LinkBean;->getbId()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->a:Ljava/lang/String;

    const/4 v6, 0x5

    aput-object v2, v1, v6

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/entity/LinkBean;->getSign()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v1, v6

    const-string v2, "uid=%s&cid=%s%s&did=%s&appId=%s&packageName=%s&sign=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 70
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/entity/LinkBean;->getSocketUrl()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    const-string v0, "%s/websocket?%s&cli=m_master-2.4.0-cdfca6c7"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->b:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "linkType"

    const-string v2, "local"

    .line 72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object v1

    const-string v2, "4005"

    invoke-virtual {v1, v2, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloudplay/messagesdk/socket/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/MessageSDK;->b()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/MessageSDK;Lcom/cloudplay/messagesdk/socket/SocketType;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Lcom/cloudplay/messagesdk/socket/SocketType;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/cloudplay/messagesdk/socket/SocketType;Ljava/lang/String;)V
    .locals 4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageSDK"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "hm_sys_config_notify"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    const-class v0, Lcom/cloudplay/messagesdk/entity/HmSysNotify;

    invoke-static {p2, v0}, Lcom/cloudplay/messagesdk/a/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloudplay/messagesdk/entity/HmSysNotify;

    if-eqz p2, :cond_6

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/entity/HmSysNotify;->getSocketId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/entity/HmSysNotify;->getHm_sys_config_notify()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/32 v2, 0xea60

    invoke-static {p1, p2, v2, v3}, Lcom/cloudplay/messagesdk/a/a;->a(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 12
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/entity/HmSysNotify;->getCli()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->n:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    iget-boolean p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->k:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/cloudplay/messagesdk/socket/SocketType;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/socket/a;->b()Lcom/cloudplay/messagesdk/socket/SocketType;

    move-result-object p2

    if-eq p1, p2, :cond_1

    .line 15
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {p2, p1}, Lcom/cloudplay/messagesdk/socket/a;->c(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    .line 16
    :cond_1
    invoke-direct {p0, v1}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "hm_sys_config_channelType_ability"

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    const-class p1, Lcom/cloudplay/messagesdk/entity/HMSysAbility;

    invoke-static {p2, p1}, Lcom/cloudplay/messagesdk/a/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloudplay/messagesdk/entity/HMSysAbility;

    .line 19
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMSysAbility;->getHm_sys_config_channelType_ability()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p2, v2, v0

    if-nez p2, :cond_6

    .line 20
    invoke-virtual {p1, v2, v3}, Lcom/cloudplay/messagesdk/entity/HMSysAbility;->setHm_sys_config_channelType_ability(J)V

    .line 21
    invoke-static {p1}, Lcom/cloudplay/messagesdk/a/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/socket/a;->d()Lcom/cloudplay/messagesdk/socket/b/d;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 23
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/socket/a;->d()Lcom/cloudplay/messagesdk/socket/b/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->sendMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "hm_sys_config_channelType"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "payload"

    .line 26
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object v2

    const-string v3, "4006"

    invoke-virtual {v2, v3, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 29
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_6

    .line 30
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    if-eqz p2, :cond_6

    .line 31
    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/SocketType;->a(I)Lcom/cloudplay/messagesdk/socket/SocketType;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {p2, p1}, Lcom/cloudplay/messagesdk/socket/a;->c(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    const-string p1, "connected"

    .line 33
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "ack"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "type"

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "mid"

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 38
    const-class p1, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

    invoke-static {p2, p1}, Lcom/cloudplay/messagesdk/a/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

    .line 39
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getAck()I

    move-result p2

    .line 40
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getType()I

    move-result v0

    if-nez p2, :cond_6

    const/4 p2, 0x1

    if-ne v0, p2, :cond_6

    .line 41
    invoke-virtual {p1, p2}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->setAck(I)V

    .line 42
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getFrom()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->setFrom(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, p2}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->setTo(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/entity/HMMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    .line 47
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->getPayload()Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->j:Lcom/cloudplay/messagesdk/listener/MessageHandler;

    if-eqz p2, :cond_5

    .line 49
    invoke-interface {p2, p1}, Lcom/cloudplay/messagesdk/listener/MessageHandler;->onTextMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "mMessageHandler is null"

    .line 50
    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object p2

    const-string v0, "4023"

    invoke-virtual {p2, v0, p1}, Lcom/cloudplay/messagesdk/a/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mIsNotifyConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isInited:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageSDK"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->o:Ljava/util/Map;

    iget-object v2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->n:Ljava/lang/String;

    const-string v3, "cli"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "connected"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-boolean p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->p:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->p:Z

    .line 81
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->j:Lcom/cloudplay/messagesdk/listener/MessageHandler;

    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1}, Lcom/cloudplay/messagesdk/listener/MessageHandler;->onReady()V

    goto :goto_0

    :cond_0
    const-string p1, "mMessageHandler is null"

    .line 83
    invoke-static {v1, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object v0

    const-string v1, "4023"

    invoke-virtual {v0, v1, p1}, Lcom/cloudplay/messagesdk/a/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object p1

    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->o:Ljava/util/Map;

    const-string v1, "4021"

    invoke-virtual {p1, v1, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/MessageSDK;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->l:Z

    return p0
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/MessageSDK;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->l:Z

    return p1
.end method

.method private a(Z)Z
    .locals 6

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isReport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageSDK"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/a;->b()Lcom/cloudplay/messagesdk/socket/SocketType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v0

    sget-object v2, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    move-result v2

    and-int/2addr v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    iget-object v4, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {v4}, Lcom/cloudplay/messagesdk/socket/a;->c()Lcom/cloudplay/messagesdk/socket/b/d;

    move-result-object v4

    const-string v5, ""

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "try to register again..."

    .line 56
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "mLinkAddress is null"

    .line 57
    invoke-static {v5, v3, v3, p1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/socket/a;->a()V

    .line 59
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/MessageSDK;->a()V

    return v3

    :cond_2
    if-eqz v4, :cond_4

    .line 60
    invoke-virtual {v4}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    const-string p1, "socket not connected "

    .line 61
    invoke-static {v5, v3, v3, p1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/socket/a;->a()V

    .line 63
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/socket/a;->a(Ljava/lang/String;)V

    return v3

    :cond_4
    return v2
.end method

.method static synthetic b(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/socket/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->f:Z

    const-string v1, "MessageSDK"

    if-eqz v0, :cond_0

    const-string v0, "isRegistering"

    .line 4
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/a/c;->a(Ljava/lang/String;)Lcom/cloudplay/messagesdk/entity/CidInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    if-nez v0, :cond_2

    const-string v0, "cidInfo can not be null, make sure get cidInfo correctly!"

    .line 8
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->f:Z

    .line 10
    iget-object v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->a:Ljava/lang/String;

    new-instance v2, Lcom/cloudplay/messagesdk/MessageSDK$b;

    invoke-direct {v2, p0}, Lcom/cloudplay/messagesdk/MessageSDK$b;-><init>(Lcom/cloudplay/messagesdk/MessageSDK;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/cloudplay/messagesdk/a/j;->a(Lcom/cloudplay/messagesdk/entity/CidInfo;Ljava/lang/String;ILcom/cloudplay/messagesdk/network/HttpResultListener;)V

    return-void
.end method

.method static synthetic b(Lcom/cloudplay/messagesdk/MessageSDK;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->f:Z

    return p1
.end method

.method private b(Z)Z
    .locals 4

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBinary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageSDK"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    const-string v2, ""

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "no init"

    .line 13
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v2, p1, v3, v0}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    return v3

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    if-nez v0, :cond_1

    const-string v0, "isRunningCloud is false"

    .line 16
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {v2, p1, v3, v0}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    return v3

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c(Lcom/cloudplay/messagesdk/MessageSDK;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/cloudplay/messagesdk/MessageSDK;Z)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/listener/MessageHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->j:Lcom/cloudplay/messagesdk/listener/MessageHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/cloudplay/messagesdk/MessageSDK;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/listener/ConfigObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->i:Lcom/cloudplay/messagesdk/listener/ConfigObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getInstance()Lcom/cloudplay/messagesdk/MessageSDK;
    .locals 4

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/MessageSDK;->u:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/cloudplay/messagesdk/MessageSDK;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/cloudplay/messagesdk/MessageSDK;->u:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/cloudplay/messagesdk/MessageSDK;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/cloudplay/messagesdk/MessageSDK;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/cloudplay/messagesdk/MessageSDK;->u:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/cloudplay/messagesdk/MessageSDK;->u:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "transId"

    .line 53
    .line 54
    invoke-virtual {v2, v3, v1}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    monitor-exit v0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/cloudplay/messagesdk/MessageSDK;->u:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 63
    .line 64
    return-object v0
.end method


# virtual methods
.method public getConfigInfo()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "MessageSDK"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    .line 9
    .line 10
    const-string v2, ",mHasReadExternalStoragePermission:"

    .line 11
    .line 12
    const-string v3, "isInited:"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->k:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/cloudplay/messagesdk/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-boolean v4, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-boolean v4, p0, Lcom/cloudplay/messagesdk/MessageSDK;->k:Z

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_1
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    .line 70
    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-boolean v2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->k:Z

    .line 78
    .line 79
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ",configInfo:"

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string v3, "4024"

    .line 95
    .line 96
    invoke-virtual {v1, v3, v2}, Lcom/cloudplay/messagesdk/a/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v0
.end method

.method public getPayInfo()Lcom/cloudplay/messagesdk/entity/PayInfo;
    .locals 3

    .line 1
    const-string v0, "MessageSDK"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getCid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/cloudplay/messagesdk/a/c;->e(Ljava/lang/String;)Lcom/cloudplay/messagesdk/entity/PayInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->d:Lcom/cloudplay/messagesdk/entity/PayInfo;

    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "isInited:"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ",mHasReadExternalStoragePermission:"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->k:Z

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ",mPayInfo:"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->d:Lcom/cloudplay/messagesdk/entity/PayInfo;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "4025"

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/cloudplay/messagesdk/a/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->d:Lcom/cloudplay/messagesdk/entity/PayInfo;

    .line 71
    .line 72
    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "master-2.4.0-cdfca6c7"

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "init() version:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/MessageSDK;->getSDKVersion()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ",isInited:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ",pkgName:"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "vendor.cf.cid"

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "vendor.cf.bid"

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "vendor.cf.address"

    .line 53
    .line 54
    invoke-static {v2, v1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v4, "init() cfAddress:"

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "MessageSDK"

    .line 76
    .line 77
    invoke-static {v4, v3}, Lcom/cloudplay/messagesdk/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_0

    .line 85
    .line 86
    const-string v3, "https"

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_0

    .line 93
    .line 94
    sput-object v2, Lcom/cloudplay/messagesdk/a/b;->d:Ljava/lang/String;

    .line 95
    .line 96
    :cond_0
    const-string v2, "android.agent.instanceId"

    .line 97
    .line 98
    invoke-static {v2, v1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iput-object v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->s:Ljava/lang/String;

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v2, "init mCid:"

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, ",bId:"

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v2, ",mInstanceId:"

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->s:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v4, v1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_1

    .line 151
    .line 152
    iget-object v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v1}, Lcom/cloudplay/messagesdk/a/c;->c(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    iput-boolean v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->m:Z

    .line 159
    .line 160
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iget-object v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->s:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v5, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v1, v3, v5}, Lcom/cloudplay/messagesdk/a/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_2

    .line 176
    .line 177
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const-string v3, "bid"

    .line 182
    .line 183
    invoke-virtual {v1, v3, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_2
    const-string v0, "4002"

    .line 187
    .line 188
    const-string v1, "errorMSG"

    .line 189
    .line 190
    if-nez p1, :cond_3

    .line 191
    .line 192
    const-string p1, "init context is null"

    .line 193
    .line 194
    invoke-static {v4, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance p1, Ljava/util/HashMap;

    .line 198
    .line 199
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string p2, "context is null"

    .line 203
    .line 204
    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {p2, v0, p1}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    iput-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->a:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {}, Lcom/cloudplay/messagesdk/network/b;->a()Lcom/cloudplay/messagesdk/network/b;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-virtual {p2, p1}, Lcom/cloudplay/messagesdk/network/b;->init(Landroid/content/Context;)V

    .line 226
    .line 227
    .line 228
    iget-boolean p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    .line 229
    .line 230
    if-eqz p2, :cond_4

    .line 231
    .line 232
    const-string p1, "init inited"

    .line 233
    .line 234
    invoke-static {v4, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_4
    invoke-static {}, Lcom/cloudplay/messagesdk/a/c;->b()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    const-string v3, "cloud"

    .line 243
    .line 244
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    iput-boolean p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    .line 249
    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v3, "isRunningCloud:"

    .line 256
    .line 257
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-boolean v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    .line 261
    .line 262
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    invoke-static {v4, p2}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-boolean p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    .line 273
    .line 274
    if-nez p2, :cond_5

    .line 275
    .line 276
    const-string p1, "isRunningCloud false"

    .line 277
    .line 278
    invoke-static {v4, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance p1, Ljava/util/HashMap;

    .line 282
    .line 283
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string p2, "not run in HM cloud env"

    .line 287
    .line 288
    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-virtual {p2, v0, p1}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_5
    const/4 p2, 0x1

    .line 300
    iput-boolean p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    .line 301
    .line 302
    invoke-static {p1}, Lcom/cloudplay/messagesdk/a/j;->a(Landroid/content/Context;)Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->k:Z

    .line 307
    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string p2, "mHasReadExternalStoragePermission:"

    .line 314
    .line 315
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->k:Z

    .line 319
    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-static {v4, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    iget-boolean p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->k:Z

    .line 343
    .line 344
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    invoke-virtual {p1, p2}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    .line 355
    .line 356
    sget-object p2, Lcom/cloudplay/messagesdk/socket/SocketType;->c:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 357
    .line 358
    invoke-virtual {p1, p2}, Lcom/cloudplay/messagesdk/socket/a;->c(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    .line 359
    .line 360
    .line 361
    new-instance p1, Lcom/cloudplay/messagesdk/MessageSDK$a;

    .line 362
    .line 363
    invoke-direct {p1, p0}, Lcom/cloudplay/messagesdk/MessageSDK$a;-><init>(Lcom/cloudplay/messagesdk/MessageSDK;)V

    .line 364
    .line 365
    .line 366
    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->q:Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    .line 367
    .line 368
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    .line 369
    .line 370
    invoke-virtual {p2, p1}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;)V

    .line 371
    .line 372
    .line 373
    iget-boolean p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->k:Z

    .line 374
    .line 375
    if-nez p1, :cond_6

    .line 376
    .line 377
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    .line 378
    .line 379
    sget-object p2, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 380
    .line 381
    invoke-virtual {p1, p2}, Lcom/cloudplay/messagesdk/socket/a;->c(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    .line 385
    .line 386
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/socket/a;->a()V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_0

    .line 390
    .line 391
    :cond_6
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->a:Ljava/lang/String;

    .line 392
    .line 393
    invoke-static {p1}, Lcom/cloudplay/messagesdk/a/c;->a(Ljava/lang/String;)Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 398
    .line 399
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 400
    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-eqz p1, :cond_9

    .line 406
    .line 407
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 408
    .line 409
    if-eqz p1, :cond_9

    .line 410
    .line 411
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getCid()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 416
    .line 417
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->s:Ljava/lang/String;

    .line 418
    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    if-eqz p1, :cond_7

    .line 424
    .line 425
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 426
    .line 427
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getServiceId()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->s:Ljava/lang/String;

    .line 432
    .line 433
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    const-string p2, "mCid:"

    .line 439
    .line 440
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->s:Ljava/lang/String;

    .line 452
    .line 453
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-static {v4, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 464
    .line 465
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    if-nez p1, :cond_8

    .line 470
    .line 471
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 472
    .line 473
    invoke-static {p1}, Lcom/cloudplay/messagesdk/a/c;->c(Ljava/lang/String;)Z

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->m:Z

    .line 478
    .line 479
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->s:Ljava/lang/String;

    .line 484
    .line 485
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {p1, p2, v0}, Lcom/cloudplay/messagesdk/a/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .line 494
    .line 495
    const-string p2, "mIsReportMSG:"

    .line 496
    .line 497
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    iget-boolean p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->m:Z

    .line 501
    .line 502
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    invoke-static {v4, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    :cond_9
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    .line 513
    .line 514
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/socket/a;->a()V

    .line 515
    .line 516
    .line 517
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->r:Ljava/lang/String;

    .line 518
    .line 519
    invoke-static {p1}, Lcom/cloudplay/messagesdk/a/c;->e(Ljava/lang/String;)Lcom/cloudplay/messagesdk/entity/PayInfo;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->d:Lcom/cloudplay/messagesdk/entity/PayInfo;

    .line 524
    .line 525
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->a:Ljava/lang/String;

    .line 526
    .line 527
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 528
    .line 529
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->t:Lcom/cloudplay/messagesdk/listener/ConfigObserver;

    .line 530
    .line 531
    invoke-static {p1, p2, v0}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;Lcom/cloudplay/messagesdk/entity/CidInfo;Lcom/cloudplay/messagesdk/listener/ConfigObserver;)V

    .line 532
    .line 533
    .line 534
    new-instance p1, Ljava/util/HashMap;

    .line 535
    .line 536
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 537
    .line 538
    .line 539
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->a:Ljava/lang/String;

    .line 540
    .line 541
    const-string v0, "pkgName"

    .line 542
    .line 543
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 547
    .line 548
    .line 549
    move-result-object p2

    .line 550
    const-string v0, "4000"

    .line 551
    .line 552
    invoke-virtual {p2, v0, p1}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 553
    .line 554
    .line 555
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/MessageSDK;->a()V

    .line 556
    .line 557
    .line 558
    :goto_0
    return-void
.end method

.method public isRunningCloud()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isRunningCloud:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "MessageSDK"

    .line 21
    .line 22
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lcom/cloudplay/messagesdk/a/c;->b()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v3, "cloud"

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    .line 40
    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    .line 62
    .line 63
    return v0
.end method

.method public sendMessage(Ljava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)Ljava/lang/String;
    .locals 7

    const-string v0, "MessageSDK"

    const-string v1, ""

    .line 19
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 20
    invoke-direct {p0, v2}, Lcom/cloudplay/messagesdk/MessageSDK;->b(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 21
    invoke-static {v2, v1, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-object v1

    .line 22
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "payload is empty"

    .line 23
    invoke-static {v1, v2, v2, p1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 24
    invoke-static {v2, v1, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-object v1

    .line 25
    :cond_1
    iget-object v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    if-eqz v3, :cond_2

    .line 26
    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getCid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 27
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    new-instance v5, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;

    invoke-direct {v5}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;-><init>()V

    .line 29
    invoke-virtual {v5, v4}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->setMid(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v5, p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->setPayload(Ljava/lang/String;)V

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m_"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    move-object v6, v1

    goto :goto_1

    :cond_3
    move-object v6, v3

    :goto_1
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->setFrom(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5, v3}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->setTo(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 33
    invoke-virtual {v5, p1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->setType(I)V

    .line 34
    invoke-virtual {v5, v1}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->setUid(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v5, v2}, Lcom/cloudplay/messagesdk/entity/HMTxtMessage;->setAck(I)V

    .line 36
    iget-object v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/socket/a;->d()Lcom/cloudplay/messagesdk/socket/b/d;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 37
    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 38
    iget-object v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {v3, v5, p2}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/entity/HMMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    .line 39
    iget-object v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/socket/a;->b()Lcom/cloudplay/messagesdk/socket/SocketType;

    move-result-object v3

    sget-object v6, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    if-ne v3, v6, :cond_5

    return-object v4

    .line 40
    :cond_4
    iget-object v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/socket/a;->a()V

    .line 41
    iget-object v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/socket/a;->b()Lcom/cloudplay/messagesdk/socket/SocketType;

    move-result-object v3

    sget-object v6, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    if-ne v3, v6, :cond_5

    const-string p1, "WS_SERVER socket not connected"

    .line 42
    invoke-static {v1, v2, v2, p1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 43
    invoke-static {v2, v1, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-object v1

    .line 44
    :cond_5
    iget-boolean v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->k:Z

    const-string v6, "link socket not connected"

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/cloudplay/messagesdk/MessageSDK;->c:Lcom/cloudplay/messagesdk/entity/CidInfo;

    if-nez v3, :cond_6

    const-string p1, "cidInfo can not be null, make sure get cidInfo correctly!"

    .line 45
    invoke-static {v0, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {v1, v2, v2, v6}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 47
    invoke-static {v2, v1, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-object v1

    .line 48
    :cond_6
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Z)Z

    move-result p1

    if-nez p1, :cond_7

    .line 49
    invoke-static {v2, v1, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    .line 50
    invoke-static {v1, v2, v2, v6}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    return-object v1

    .line 51
    :cond_7
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {p1, v5, p2}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/entity/HMMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-object v4
.end method

.method public sendMessage([BLcom/cloudplay/messagesdk/listener/SendListener;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInited:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageSDK"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/MessageSDK;->b(Z)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    if-nez v1, :cond_0

    .line 3
    invoke-static {v2, v3, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-object v3

    :cond_0
    if-eqz p1, :cond_4

    .line 4
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/a;->e()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-direct {p0, v2}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Z)Z

    const-string p1, "WSServer Socket is not connected"

    .line 7
    invoke-static {v3, v0, v2, p1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 8
    invoke-static {v2, v3, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-object v3

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "M"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v4, Lcom/cloudplay/messagesdk/entity/HMBinaryMessage;

    invoke-direct {v4}, Lcom/cloudplay/messagesdk/entity/HMBinaryMessage;-><init>()V

    .line 11
    invoke-virtual {v4, v1}, Lcom/cloudplay/messagesdk/entity/HMBinaryMessage;->setMid(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4, p1}, Lcom/cloudplay/messagesdk/entity/HMBinaryMessage;->setPayload([B)V

    .line 13
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1, v4, p2}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/entity/HMMessage;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-object v1

    :cond_3
    const-string p1, "mWebSocketManager is null"

    .line 15
    invoke-static {v3, v0, v2, p1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 16
    invoke-static {v2, v3, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-object v3

    :cond_4
    :goto_0
    const-string p1, "payload is empty"

    .line 17
    invoke-static {v3, v0, v2, p1}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 18
    invoke-static {v2, v3, p2}, Lcom/cloudplay/messagesdk/a/j;->a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V

    return-object v3
.end method

.method public setConfigObserver(Lcom/cloudplay/messagesdk/listener/ConfigObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->i:Lcom/cloudplay/messagesdk/listener/ConfigObserver;

    .line 2
    .line 3
    return-void
.end method

.method public setDebug(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "debug:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    sput-boolean p1, Lcom/cloudplay/messagesdk/a/e;->a:Z

    .line 15
    .line 16
    sput-boolean p1, Lcom/cloudplay/messagesdk/a/e;->c:Z

    .line 17
    .line 18
    sput-boolean p1, Lcom/cloudplay/messagesdk/a/e;->b:Z

    .line 19
    .line 20
    sput-boolean p1, Lcom/cloudplay/messagesdk/a/e;->d:Z

    .line 21
    .line 22
    sput-boolean p1, Lcom/cloudplay/messagesdk/a/e;->e:Z

    .line 23
    .line 24
    return-void
.end method

.method public setMessageHandler(Lcom/cloudplay/messagesdk/listener/MessageHandler;)V
    .locals 2

    .line 1
    const-string v0, "MessageSDK"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->j:Lcom/cloudplay/messagesdk/listener/MessageHandler;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/cloudplay/messagesdk/listener/MessageHandler;->getSchedulerMessageHandlerObserveOn()Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isRunningCloud:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ",isInited:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "MessageSDK"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->l:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->p:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->g:Z

    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->e:Z

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "4003"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/cloudplay/messagesdk/a/j;->a()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->h:Lcom/cloudplay/messagesdk/socket/a;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/a;->f()V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK;->q:Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;

    .line 78
    .line 79
    :cond_2
    return-void
.end method

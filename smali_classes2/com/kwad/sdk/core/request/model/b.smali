.class public Lcom/kwad/sdk/core/request/model/b;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# static fields
.field private static final aWP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile aWQ:Lorg/json/JSONArray;


# instance fields
.field public Np:Ljava/lang/String;

.field public Nq:Ljava/lang/String;

.field public Nr:Ljava/lang/String;

.field public Ns:Ljava/lang/String;

.field public Nt:Ljava/lang/String;

.field public Sp:I

.field public Sq:I

.field public aQZ:Ljava/lang/String;

.field public aRa:Ljava/lang/String;

.field public aWR:Ljava/lang/String;

.field public aWS:Ljava/lang/String;

.field public aWT:Ljava/lang/String;

.field public aWU:Ljava/lang/String;

.field public aWV:Ljava/lang/String;

.field public aWW:I

.field public aWX:I

.field public aWY:Ljava/lang/String;

.field public aWZ:Ljava/lang/String;

.field public aXa:Ljava/lang/String;

.field public aXb:Ljava/lang/String;

.field public aXc:Lorg/json/JSONArray;

.field public aXd:Ljava/lang/String;

.field public aXe:Ljava/lang/String;

.field public aXf:I

.field public aXg:Ljava/lang/String;

.field public aXh:Ljava/lang/String;

.field public aXi:Ljava/lang/String;

.field public aXj:J

.field public aXk:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public aXl:Ljava/lang/String;

.field public aXm:I

.field public apb:I

.field public aqw:I

.field public aqy:I

.field public aqz:Ljava/lang/String;

.field public uaid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/kwad/sdk/core/request/model/b;->aWP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/kwad/sdk/core/request/model/b;->aXf:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/kwad/sdk/core/request/model/b;->aXj:J

    .line 10
    .line 11
    return-void
.end method

.method private static FM()Z
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/kwad/sdk/service/a/h;->FM()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static FN()Z
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/kwad/sdk/service/a/h;->FN()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static Nr()Lcom/kwad/sdk/core/request/model/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/request/model/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/request/model/b;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/utils/bf;->getOaid()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/b;->aRa:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lcom/kwad/sdk/utils/bf;->getDeviceId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/b;->Nt:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WK()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/b;->Np:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput v1, v0, Lcom/kwad/sdk/core/request/model/b;->aqw:I

    .line 26
    .line 27
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WX()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, v0, Lcom/kwad/sdk/core/request/model/b;->aqy:I

    .line 32
    .line 33
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->getOsVersion()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/b;->Nr:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->getEGid()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/b;->aXb:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vr()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vq()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/b;->aXd:Ljava/lang/String;

    .line 56
    .line 57
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vs()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vp()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vp()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/b;->uaid:Ljava/lang/String;

    .line 78
    .line 79
    :cond_1
    const-class v1, Lcom/kwad/sdk/components/h;

    .line 80
    .line 81
    invoke-static {v1}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/kwad/sdk/components/h;

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-interface {v1}, Lcom/kwad/sdk/components/h;->qQ()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/b;->aXa:Ljava/lang/String;

    .line 94
    .line 95
    :cond_2
    const-class v1, Lcom/kwad/sdk/service/a/f;

    .line 96
    .line 97
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/kwad/sdk/service/a/f;

    .line 102
    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/kwad/sdk/utils/bf;->dO(Landroid/content/Context;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/b;->aQZ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v1

    .line 117
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_0
    return-object v0
.end method

.method private static a(Lcom/kwad/sdk/service/a/f;Lcom/kwad/sdk/core/request/model/b;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "i="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/kwad/sdk/service/a/f;->getAppId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ",n="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Lcom/kwad/sdk/service/a/f;->getAppName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ",external:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Lcom/kwad/sdk/service/a/f;->Fu()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ",v1:"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lcom/kwad/sdk/service/a/f;->getApiVersion()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p0, ",v2:5.4.10.1"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p0, ",d:"

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object p0, p1, Lcom/kwad/sdk/core/request/model/b;->Nt:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, ",dh:"

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object p0, p1, Lcom/kwad/sdk/core/request/model/b;->Nt:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz p0, :cond_0

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const-string p0, ""

    .line 85
    .line 86
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p0, ",b:396"

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p0, ",p:"

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-static {p2}, Lcom/kwad/sdk/utils/ba;->isInMainProcess(Landroid/content/Context;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p0, ",dy:"

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    sget-object p0, Lcom/kwad/framework/a/a;->ayN:Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {}, Lcom/kwad/sdk/core/request/model/b;->FN()Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-nez p2, :cond_1

    .line 125
    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p0, ",o:"

    .line 135
    .line 136
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object p0, p1, Lcom/kwad/sdk/core/request/model/b;->aRa:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    :cond_1
    return-object p0
.end method

.method private static ca(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 3

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/request/model/b;->aWP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-class v0, Lcom/kwad/sdk/components/p;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/kwad/sdk/components/p;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "getAppList: OptDataFetchComponent: "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "DeviceInfo"

    .line 34
    .line 35
    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-static {}, Lcom/kwad/sdk/utils/t;->UK()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    new-instance v1, Lcom/kwad/sdk/core/request/model/b$1;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/kwad/sdk/core/request/model/b$1;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, p0, v1}, Lcom/kwad/sdk/components/p;->a(Landroid/content/Context;Lcom/kwad/sdk/g/a;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    sget-object p0, Lcom/kwad/sdk/core/request/model/b;->aWQ:Lorg/json/JSONArray;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    sput-object v0, Lcom/kwad/sdk/core/request/model/b;->aWQ:Lorg/json/JSONArray;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_1
    return-object v0
.end method

.method static synthetic f(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .line 1
    sput-object p0, Lcom/kwad/sdk/core/request/model/b;->aWQ:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static h(ZI)Lcom/kwad/sdk/core/request/model/b;
    .locals 4

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/request/model/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/request/model/b;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/kwad/sdk/utils/bf;->dO(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/b;->aQZ:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/kwad/sdk/utils/bf;->dR(Landroid/content/Context;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/b;->aWR:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/kwad/sdk/utils/bf;->dS(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/b;->aWS:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/kwad/sdk/utils/bt;->ev(Landroid/content/Context;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/b;->aWT:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {}, Lcom/kwad/sdk/utils/bf;->getOaid()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/b;->aRa:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WK()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/b;->Np:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WM()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/b;->Nq:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    iput v2, v0, Lcom/kwad/sdk/core/request/model/b;->aqw:I

    .line 54
    .line 55
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WX()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iput v2, v0, Lcom/kwad/sdk/core/request/model/b;->aqy:I

    .line 60
    .line 61
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->getOsVersion()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/b;->Nr:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {}, Lcom/kwad/sdk/utils/n;->getLanguage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/b;->aqz:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/kwad/sdk/utils/n;->getScreenHeight(Landroid/content/Context;)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iput v2, v0, Lcom/kwad/sdk/core/request/model/b;->Sp:I

    .line 78
    .line 79
    invoke-static {v1}, Lcom/kwad/sdk/utils/n;->getScreenWidth(Landroid/content/Context;)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iput v2, v0, Lcom/kwad/sdk/core/request/model/b;->Sq:I

    .line 84
    .line 85
    invoke-static {v1}, Lcom/kwad/sdk/utils/n;->dd(Landroid/content/Context;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iput v2, v0, Lcom/kwad/sdk/core/request/model/b;->aWW:I

    .line 90
    .line 91
    invoke-static {v1}, Lcom/kwad/sdk/utils/n;->de(Landroid/content/Context;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iput v2, v0, Lcom/kwad/sdk/core/request/model/b;->aWX:I

    .line 96
    .line 97
    invoke-static {v1}, Lcom/kwad/sdk/utils/bf;->dP(Landroid/content/Context;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iput-object v2, v0, Lcom/kwad/sdk/core/request/model/b;->aWY:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz p0, :cond_0

    .line 104
    .line 105
    invoke-static {v1}, Lcom/kwad/sdk/core/request/model/b;->ca(Landroid/content/Context;)Lorg/json/JSONArray;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aXc:Lorg/json/JSONArray;

    .line 110
    .line 111
    :cond_0
    const-class p0, Lcom/kwad/sdk/service/a/h;

    .line 112
    .line 113
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Lcom/kwad/sdk/service/a/h;

    .line 118
    .line 119
    invoke-interface {p0}, Lcom/kwad/sdk/service/a/h;->Gl()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    iput p0, v0, Lcom/kwad/sdk/core/request/model/b;->aXm:I

    .line 124
    .line 125
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WW()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aXe:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vr()Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_1

    .line 136
    .line 137
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vq()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aXd:Ljava/lang/String;

    .line 142
    .line 143
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vs()Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-eqz p0, :cond_2

    .line 148
    .line 149
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vp()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-nez p0, :cond_2

    .line 158
    .line 159
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vp()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->uaid:Ljava/lang/String;

    .line 164
    .line 165
    :cond_2
    invoke-static {}, Lcom/kwad/sdk/utils/bf;->getDeviceId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->Nt:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WL()J

    .line 172
    .line 173
    .line 174
    move-result-wide v2

    .line 175
    iput-wide v2, v0, Lcom/kwad/sdk/core/request/model/b;->aXj:J

    .line 176
    .line 177
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WU()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aWZ:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->getEGid()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aXb:Ljava/lang/String;

    .line 188
    .line 189
    const-class p0, Lcom/kwad/sdk/components/h;

    .line 190
    .line 191
    invoke-static {p0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    check-cast p0, Lcom/kwad/sdk/components/h;

    .line 196
    .line 197
    if-eqz p0, :cond_3

    .line 198
    .line 199
    invoke-interface {p0}, Lcom/kwad/sdk/components/h;->qQ()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aXa:Ljava/lang/String;

    .line 204
    .line 205
    :cond_3
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WV()I

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    iput p0, v0, Lcom/kwad/sdk/core/request/model/b;->apb:I

    .line 210
    .line 211
    const-class p0, Lcom/kwad/sdk/service/a/f;

    .line 212
    .line 213
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    check-cast p0, Lcom/kwad/sdk/service/a/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .line 219
    :try_start_1
    invoke-static {p0, v0, v1}, Lcom/kwad/sdk/core/request/model/b;->a(Lcom/kwad/sdk/service/a/f;Lcom/kwad/sdk/core/request/model/b;Landroid/content/Context;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    const-string v2, "DeviceInfo"

    .line 224
    .line 225
    invoke-static {v2, p0}, Lcom/kwad/sdk/core/d/c;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .line 227
    .line 228
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WW()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aXe:Ljava/lang/String;

    .line 233
    .line 234
    iput p1, v0, Lcom/kwad/sdk/core/request/model/b;->aXf:I

    .line 235
    .line 236
    invoke-static {}, Lcom/kwad/sdk/core/request/model/b;->FM()Z

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    if-eqz p0, :cond_4

    .line 241
    .line 242
    invoke-static {}, Lcom/kwad/sdk/app/b;->HO()Lcom/kwad/sdk/app/b;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    if-eqz p0, :cond_4

    .line 247
    .line 248
    invoke-static {}, Lcom/kwad/sdk/app/b;->HO()Lcom/kwad/sdk/app/b;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    const-string p1, "com.smile.gifmaker"

    .line 253
    .line 254
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/app/b;->getVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aXg:Ljava/lang/String;

    .line 259
    .line 260
    invoke-static {}, Lcom/kwad/sdk/app/b;->HO()Lcom/kwad/sdk/app/b;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    const-string p1, "com.kuaishou.nebula"

    .line 265
    .line 266
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/app/b;->getVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aXh:Ljava/lang/String;

    .line 271
    .line 272
    invoke-static {}, Lcom/kwad/sdk/app/b;->HO()Lcom/kwad/sdk/app/b;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    const-string p1, "com.tencent.mm"

    .line 277
    .line 278
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/app/b;->getVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aXi:Ljava/lang/String;

    .line 283
    .line 284
    :cond_4
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WS()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->Ns:Ljava/lang/String;

    .line 289
    .line 290
    invoke-static {v1}, Lcom/kwad/sdk/utils/ao;->dx(Landroid/content/Context;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aWV:Ljava/lang/String;

    .line 295
    .line 296
    const-string p0, "/data/data"

    .line 297
    .line 298
    invoke-static {p0}, Lcom/kwad/sdk/utils/bt;->iq(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    iput-object p0, v0, Lcom/kwad/sdk/core/request/model/b;->aXl:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    .line 304
    goto :goto_0

    .line 305
    :catchall_0
    move-exception p0

    .line 306
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final i(ZI)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aQZ:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/sdk/utils/bf;->dO(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aQZ:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aWR:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/sdk/utils/bf;->dR(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aWR:Ljava/lang/String;

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aWS:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-static {v0}, Lcom/kwad/sdk/utils/bf;->dS(Landroid/content/Context;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aWS:Ljava/lang/String;

    .line 46
    .line 47
    :cond_2
    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aWT:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-static {v0}, Lcom/kwad/sdk/utils/bt;->ev(Landroid/content/Context;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aWT:Ljava/lang/String;

    .line 60
    .line 61
    :cond_3
    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aRa:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-static {}, Lcom/kwad/sdk/utils/bf;->getOaid()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aRa:Ljava/lang/String;

    .line 74
    .line 75
    :cond_4
    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aWY:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-static {v0}, Lcom/kwad/sdk/utils/bf;->dP(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iput-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->aWY:Ljava/lang/String;

    .line 88
    .line 89
    :cond_5
    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->Nt:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    invoke-static {}, Lcom/kwad/sdk/utils/bf;->getDeviceId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, p0, Lcom/kwad/sdk/core/request/model/b;->Nt:Ljava/lang/String;

    .line 102
    .line 103
    :cond_6
    if-eqz p1, :cond_8

    .line 104
    .line 105
    iget-object p1, p0, Lcom/kwad/sdk/core/request/model/b;->aXc:Lorg/json/JSONArray;

    .line 106
    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    :cond_7
    invoke-static {v0}, Lcom/kwad/sdk/core/request/model/b;->ca(Landroid/content/Context;)Lorg/json/JSONArray;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lcom/kwad/sdk/core/request/model/b;->aXc:Lorg/json/JSONArray;

    .line 120
    .line 121
    :cond_8
    iput p2, p0, Lcom/kwad/sdk/core/request/model/b;->aXf:I

    .line 122
    .line 123
    return-void
.end method

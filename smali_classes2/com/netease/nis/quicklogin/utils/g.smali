.class public Lcom/netease/nis/quicklogin/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/utils/g$b;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/netease/nis/quicklogin/utils/g;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/netease/nis/quicklogin/utils/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/netease/nis/quicklogin/utils/g$b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/netease/nis/quicklogin/utils/g$b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    .line 10
    .line 11
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pid="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v1, v1, Lcom/netease/nis/quicklogin/utils/g$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&bid="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v1, v1, Lcom/netease/nis/quicklogin/utils/g$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&nts="

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v1, v1, Lcom/netease/nis/quicklogin/utils/g$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&tt="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v1, v1, Lcom/netease/nis/quicklogin/utils/g$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&os="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v1, v1, Lcom/netease/nis/quicklogin/utils/g$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&model="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v1, v1, Lcom/netease/nis/quicklogin/utils/g$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&version="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v1, v1, Lcom/netease/nis/quicklogin/utils/g$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&dataVersion="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v1, v1, Lcom/netease/nis/quicklogin/utils/g$b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&type="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v1, v1, Lcom/netease/nis/quicklogin/utils/g$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&name="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b;->j:Lcom/netease/nis/quicklogin/utils/g$b$a;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b$a;->a:Ljava/lang/String;

    const-string v3, "errType"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b;->j:Lcom/netease/nis/quicklogin/utils/g$b$a;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b$a;->b:Ljava/lang/String;

    const-string v3, "target"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b;->j:Lcom/netease/nis/quicklogin/utils/g$b$a;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b$a;->c:Ljava/lang/String;

    const-string v3, "msg"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b;->j:Lcom/netease/nis/quicklogin/utils/g$b$a;

    iget v2, v2, Lcom/netease/nis/quicklogin/utils/g$b$a;->d:I

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b;->j:Lcom/netease/nis/quicklogin/utils/g$b$a;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b$a;->e:Ljava/lang/String;

    const-string v3, "params"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b;->j:Lcom/netease/nis/quicklogin/utils/g$b$a;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b$a;->f:Ljava/lang/String;

    const-string v3, "response"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b;->g:Ljava/lang/String;

    const-string v3, "m"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iget-object v2, v2, Lcom/netease/nis/quicklogin/utils/g$b;->h:Ljava/lang/String;

    const-string v3, "os"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "&value="

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    .line 2
    .line 3
    const-string v1, "3.3.8"

    .line 4
    .line 5
    iput-object v1, v0, Lcom/netease/nis/quicklogin/utils/g$b;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/netease/nis/quicklogin/utils/g$b;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    .line 18
    .line 19
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, v0, Lcom/netease/nis/quicklogin/utils/g$b;->g:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/netease/nis/quicklogin/utils/g$b;->h:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public static c()Lcom/netease/nis/quicklogin/utils/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/nis/quicklogin/utils/g;->b:Lcom/netease/nis/quicklogin/utils/g;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/netease/nis/quicklogin/utils/g;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/netease/nis/quicklogin/utils/g;->b:Lcom/netease/nis/quicklogin/utils/g;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/netease/nis/quicklogin/utils/g;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/netease/nis/quicklogin/utils/g;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/netease/nis/quicklogin/utils/g;->b:Lcom/netease/nis/quicklogin/utils/g;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/nis/quicklogin/utils/g;->b:Lcom/netease/nis/quicklogin/utils/g;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/utils/g;->b()V

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    const-string v1, "userErr"

    iput-object v1, v0, Lcom/netease/nis/quicklogin/utils/g$b;->f:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/netease/nis/quicklogin/utils/g$b;->j:Lcom/netease/nis/quicklogin/utils/g$b$a;

    iput p1, v0, Lcom/netease/nis/quicklogin/utils/g$b$a;->d:I

    .line 5
    iput-object p2, v0, Lcom/netease/nis/quicklogin/utils/g$b$a;->c:Ljava/lang/String;

    const-string p1, ""

    .line 6
    iput-object p1, v0, Lcom/netease/nis/quicklogin/utils/g$b$a;->a:Ljava/lang/String;

    .line 7
    iput-object p1, v0, Lcom/netease/nis/quicklogin/utils/g$b$a;->b:Ljava/lang/String;

    .line 8
    iput-object p1, v0, Lcom/netease/nis/quicklogin/utils/g$b$a;->e:Ljava/lang/String;

    .line 9
    iput-object p1, v0, Lcom/netease/nis/quicklogin/utils/g$b$a;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iput-object p1, v0, Lcom/netease/nis/quicklogin/utils/g$b;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/utils/g;->b()V

    .line 11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    iput-object p1, v0, Lcom/netease/nis/quicklogin/utils/g$b;->f:Ljava/lang/String;

    .line 12
    iget-object p1, v0, Lcom/netease/nis/quicklogin/utils/g$b;->j:Lcom/netease/nis/quicklogin/utils/g$b$a;

    iput-object p2, p1, Lcom/netease/nis/quicklogin/utils/g$b$a;->a:Ljava/lang/String;

    .line 13
    iput-object p3, p1, Lcom/netease/nis/quicklogin/utils/g$b$a;->b:Ljava/lang/String;

    .line 14
    iput p4, p1, Lcom/netease/nis/quicklogin/utils/g$b$a;->d:I

    .line 15
    iput-object p5, p1, Lcom/netease/nis/quicklogin/utils/g$b$a;->c:Ljava/lang/String;

    .line 16
    iput-object p6, p1, Lcom/netease/nis/quicklogin/utils/g$b$a;->e:Ljava/lang/String;

    .line 17
    iput-object p7, p1, Lcom/netease/nis/quicklogin/utils/g$b$a;->f:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/netease/nis/quicklogin/QuickLogin;->isAllowedUploadInfo:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/utils/g;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "https://da.dun.163.com/sn.gif?d="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "utf-8"

    .line 21
    .line 22
    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/netease/nis/quicklogin/utils/g$a;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/utils/g$a;-><init>(Lcom/netease/nis/quicklogin/utils/g;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/netease/nis/basesdk/HttpUtil;->doGetRequestByForm(Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

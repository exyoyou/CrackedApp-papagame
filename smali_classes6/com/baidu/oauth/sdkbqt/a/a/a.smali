.class public Lcom/baidu/oauth/sdkbqt/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/passbqt/http/PassHttpClient;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/a/a/a;->c:Z

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/passbqt/http/PassHttpClient;->a()Lcom/baidu/passbqt/http/PassHttpClient;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/a/a/a;->a:Lcom/baidu/passbqt/http/PassHttpClient;

    .line 12
    .line 13
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->getAuthInfo()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/a/a/a;->b:Landroid/content/Context;

    .line 22
    .line 23
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)Lcom/baidu/passbqt/http/PassHttpParamDTO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/oauth/sdkbqt/a/a/g;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/baidu/passbqt/http/PassHttpParamDTO;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;

    invoke-direct {v0}, Lcom/baidu/passbqt/http/PassHttpParamDTO;-><init>()V

    .line 38
    iput-object p1, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->a:Ljava/lang/String;

    .line 39
    iput-object p2, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->d:Lcom/baidu/passbqt/http/HttpHashMap;

    .line 40
    iput-object p3, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->h:Ljava/util/HashMap;

    .line 41
    iput-object p4, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->b:Ljava/util/List;

    .line 42
    iput-object p5, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->c:Ljava/lang/String;

    .line 43
    iput p6, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->e:I

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/baidu/passbqt/http/HttpHashMap;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)Lcom/baidu/passbqt/http/PassHttpParamDTO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/passbqt/http/HttpHashMap;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/baidu/passbqt/http/PassHttpParamDTO;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;

    invoke-direct {v0}, Lcom/baidu/passbqt/http/PassHttpParamDTO;-><init>()V

    .line 16
    iput-object p1, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->a:Ljava/lang/String;

    .line 17
    iput-object p2, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->d:Lcom/baidu/passbqt/http/HttpHashMap;

    .line 18
    iput-object p3, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->h:Ljava/util/HashMap;

    .line 19
    iput-object p4, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->b:Ljava/util/List;

    .line 20
    iput-object p5, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->c:Ljava/lang/String;

    .line 21
    iput p6, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->e:I

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/baidu/passbqt/http/ReqPriority;Lcom/baidu/passbqt/http/HttpHashMap;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)Lcom/baidu/passbqt/http/PassHttpParamDTO;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/passbqt/http/ReqPriority;",
            "Lcom/baidu/passbqt/http/HttpHashMap;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/baidu/passbqt/http/PassHttpParamDTO;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Ljava/lang/String;Lcom/baidu/passbqt/http/HttpHashMap;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)Lcom/baidu/passbqt/http/PassHttpParamDTO;

    move-result-object p1

    .line 14
    iput-object p2, p1, Lcom/baidu/passbqt/http/PassHttpParamDTO;->g:Lcom/baidu/passbqt/http/ReqPriority;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/oauth/sdkbqt/a/a/a;Lcom/baidu/oauth/sdkbqt/a/a/f;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Lcom/baidu/oauth/sdkbqt/a/a/f;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/baidu/oauth/sdkbqt/a/a/f;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 27
    const-class v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0xcb

    goto :goto_0

    :cond_0
    const/16 v0, -0xc9

    .line 30
    :goto_0
    invoke-virtual {p1, p2, v0, p3}, Lcom/baidu/oauth/sdkbqt/a/a/f;->a(Ljava/lang/Throwable;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/oauth/sdkbqt/a/a/a;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/baidu/oauth/sdkbqt/a/a/a;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/oauth/sdkbqt/a/a/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/baidu/oauth/sdkbqt/a/a/a;->c:Z

    return p1
.end method

.method private a(Lcom/baidu/oauth/sdkbqt/a/a/f;)Z
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/a/a/a;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, -0xce

    const-string v3, "SDK\u672a\u521d\u59cb\u5316"

    .line 32
    invoke-virtual {p1, v2, v0, v3}, Lcom/baidu/oauth/sdkbqt/a/a/f;->a(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/a/a/f;->b()V

    return v1

    .line 34
    :cond_0
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, -0xcb

    const-string v3, "\u7f51\u7edc\u5f02\u5e38"

    .line 35
    invoke-virtual {p1, v2, v0, v3}, Lcom/baidu/oauth/sdkbqt/a/a/f;->a(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/a/a/f;->b()V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/baidu/passbqt/http/ReqPriority;Lcom/baidu/passbqt/http/HttpHashMap;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;ILcom/baidu/oauth/sdkbqt/a/a/f;)Lcom/baidu/passbqt/http/PassHttpClientRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/passbqt/http/ReqPriority;",
            "Lcom/baidu/passbqt/http/HttpHashMap;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/oauth/sdkbqt/a/a/f;",
            ")",
            "Lcom/baidu/passbqt/http/PassHttpClientRequest;"
        }
    .end annotation

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/oauth/sdkbqt/a/a/b;

    invoke-direct {v1, p0, p8}, Lcom/baidu/oauth/sdkbqt/a/a/b;-><init>(Lcom/baidu/oauth/sdkbqt/a/a/a;Lcom/baidu/oauth/sdkbqt/a/a/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    invoke-direct {p0, p8}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Lcom/baidu/oauth/sdkbqt/a/a/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/a/a/a;->a:Lcom/baidu/passbqt/http/PassHttpClient;

    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/a/a/a;->b:Landroid/content/Context;

    invoke-direct/range {p0 .. p7}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Ljava/lang/String;Lcom/baidu/passbqt/http/ReqPriority;Lcom/baidu/passbqt/http/HttpHashMap;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)Lcom/baidu/passbqt/http/PassHttpParamDTO;

    move-result-object p1

    new-instance p2, Lcom/baidu/oauth/sdkbqt/a/a/c;

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p8}, Lcom/baidu/oauth/sdkbqt/a/a/f;->c()Z

    move-result p4

    invoke-direct {p2, p0, p3, p4, p8}, Lcom/baidu/oauth/sdkbqt/a/a/c;-><init>(Lcom/baidu/oauth/sdkbqt/a/a/a;Landroid/os/Looper;ZLcom/baidu/oauth/sdkbqt/a/a/f;)V

    .line 12
    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/passbqt/http/PassHttpClient;->a(Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/baidu/passbqt/http/ReqPriority;Lcom/baidu/passbqt/http/HttpHashMap;Ljava/util/List;Ljava/lang/String;ILcom/baidu/oauth/sdkbqt/a/a/f;)Lcom/baidu/passbqt/http/PassHttpClientRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/passbqt/http/ReqPriority;",
            "Lcom/baidu/passbqt/http/HttpHashMap;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/oauth/sdkbqt/a/a/f;",
            ")",
            "Lcom/baidu/passbqt/http/PassHttpClientRequest;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 7
    invoke-virtual/range {v0 .. v8}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Ljava/lang/String;Lcom/baidu/passbqt/http/ReqPriority;Lcom/baidu/passbqt/http/HttpHashMap;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;ILcom/baidu/oauth/sdkbqt/a/a/f;)Lcom/baidu/passbqt/http/PassHttpClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/f;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/List;Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Lcom/baidu/oauth/sdkbqt/a/a/f;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/List;Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;ILcom/baidu/oauth/sdkbqt/a/a/f;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/oauth/sdkbqt/a/a/g;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/oauth/sdkbqt/a/a/f;",
            ")V"
        }
    .end annotation

    move-object/from16 v11, p0

    .line 22
    invoke-virtual/range {p7 .. p7}, Lcom/baidu/oauth/sdkbqt/a/a/f;->a()V

    move-object/from16 v4, p7

    .line 23
    invoke-direct {v11, v4}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Lcom/baidu/oauth/sdkbqt/a/a/f;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v12, v11, Lcom/baidu/oauth/sdkbqt/a/a/a;->a:Lcom/baidu/passbqt/http/PassHttpClient;

    iget-object v13, v11, Lcom/baidu/oauth/sdkbqt/a/a/a;->b:Landroid/content/Context;

    invoke-direct/range {p0 .. p6}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)Lcom/baidu/passbqt/http/PassHttpParamDTO;

    move-result-object v14

    new-instance v15, Lcom/baidu/oauth/sdkbqt/a/a/d;

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Lcom/baidu/oauth/sdkbqt/a/a/f;->c()Z

    move-result v3

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/baidu/oauth/sdkbqt/a/a/d;-><init>(Lcom/baidu/oauth/sdkbqt/a/a/a;Landroid/os/Looper;ZLcom/baidu/oauth/sdkbqt/a/a/f;Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v12, v13, v14, v15}, Lcom/baidu/passbqt/http/PassHttpClient;->a(Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/List;Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/oauth/sdkbqt/a/a/g;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/baidu/oauth/sdkbqt/a/a/f;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    .line 6
    invoke-virtual/range {v0 .. v7}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;ILcom/baidu/oauth/sdkbqt/a/a/f;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Lcom/baidu/oauth/sdkbqt/a/a/f;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/oauth/sdkbqt/a/a/a;->b(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/List;Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/f;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;ILcom/baidu/oauth/sdkbqt/a/a/f;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/oauth/sdkbqt/a/a/g;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/oauth/sdkbqt/a/a/f;",
            ")V"
        }
    .end annotation

    move-object/from16 v11, p0

    .line 3
    invoke-virtual/range {p7 .. p7}, Lcom/baidu/oauth/sdkbqt/a/a/f;->a()V

    move-object/from16 v4, p7

    .line 4
    invoke-direct {v11, v4}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Lcom/baidu/oauth/sdkbqt/a/a/f;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v12, v11, Lcom/baidu/oauth/sdkbqt/a/a/a;->a:Lcom/baidu/passbqt/http/PassHttpClient;

    iget-object v13, v11, Lcom/baidu/oauth/sdkbqt/a/a/a;->b:Landroid/content/Context;

    invoke-direct/range {p0 .. p6}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)Lcom/baidu/passbqt/http/PassHttpParamDTO;

    move-result-object v14

    new-instance v15, Lcom/baidu/oauth/sdkbqt/a/a/e;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Lcom/baidu/oauth/sdkbqt/a/a/f;->c()Z

    move-result v3

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/baidu/oauth/sdkbqt/a/a/e;-><init>(Lcom/baidu/oauth/sdkbqt/a/a/a;Landroid/os/Looper;ZLcom/baidu/oauth/sdkbqt/a/a/f;Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v12, v13, v14, v15}, Lcom/baidu/passbqt/http/PassHttpClient;->b(Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/List;Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/oauth/sdkbqt/a/a/g;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/baidu/oauth/sdkbqt/a/a/f;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/baidu/oauth/sdkbqt/a/a/a;->b(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;ILcom/baidu/oauth/sdkbqt/a/a/f;)V

    return-void
.end method

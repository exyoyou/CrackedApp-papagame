.class public Lcom/netease/nis/quicklogin/helper/b;
.super Lcom/netease/nis/quicklogin/helper/a;
.source "SourceFile"


# instance fields
.field private final b:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/helper/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/b;->b:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/b;->c:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/b;->e:Landroid/content/Context;

    .line 15
    .line 16
    sget p1, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchNumberTimeout:I

    .line 17
    .line 18
    int-to-long p1, p1

    .line 19
    const-wide/16 v1, 0x3e8

    .line 20
    .line 21
    mul-long p1, p1, v1

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/cmic/gen/sdk/auth/c;->setOverTime(J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/helper/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "phone"

    .line 7
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "accessToken"

    .line 8
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/netease/nis/quicklogin/utils/f;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "randomId"

    .line 11
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 13
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0xc

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-lt p2, v2, :cond_1

    .line 14
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {p2, v1, v0}, Lcom/netease/nis/quicklogin/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 19
    :goto_0
    iget-object v5, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x10

    if-ge v4, v5, :cond_2

    const-string v5, "a"

    .line 20
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {p2, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-static {v1, v2, p2}, Lcom/netease/nis/quicklogin/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/netease/nis/quicklogin/helper/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/netease/nis/quicklogin/helper/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 27
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    const-string v1, "parseErr"

    const-string v7, ""

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/netease/nis/quicklogin/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 29
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    const-string v1, "apiErr"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/netease/nis/quicklogin/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/helper/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/helper/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/b;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 2

    .line 26
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/b;->b:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    new-instance v1, Lcom/netease/nis/quicklogin/helper/b$c;

    invoke-direct {v1, p0, p4, p3}, Lcom/netease/nis/quicklogin/helper/b$c;-><init>(Lcom/netease/nis/quicklogin/helper/b;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b;->b:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    new-instance v3, Lcom/netease/nis/quicklogin/helper/b$a;

    invoke-direct {v3, p0, p2, p1}, Lcom/netease/nis/quicklogin/helper/b$a;-><init>(Lcom/netease/nis/quicklogin/helper/b;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b;->b:Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    new-instance v3, Lcom/netease/nis/quicklogin/helper/b$b;

    invoke-direct {v3, p0, p2, p1}, Lcom/netease/nis/quicklogin/helper/b$b;-><init>(Lcom/netease/nis/quicklogin/helper/b;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/auth/GenTokenListener;)V

    return-void
.end method

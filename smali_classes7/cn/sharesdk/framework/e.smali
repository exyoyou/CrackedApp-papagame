.class public Lcn/sharesdk/framework/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field a:Ljava/util/regex/Pattern;

.field b:Ljava/util/regex/Pattern;

.field private c:Lcn/sharesdk/framework/PlatformActionListener;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/sharesdk/framework/Platform;",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "(?:errorCode|code|errCode|error_code)\\s*[=:]\\s*(\\d+)"

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcn/sharesdk/framework/e;->a:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    const-string v0, "(?:errorMsg|msg|errorMessage|errMsg|errStr|errorDesc|message)\\s*[=:]\\s*([^,\\n]+)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcn/sharesdk/framework/e;->b:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcn/sharesdk/framework/e;->d:Ljava/util/HashMap;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/e;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/framework/e;Lcn/sharesdk/framework/PlatformActionListener;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 3

    .line 50
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    const/16 v0, 0xf

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "nickname"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "icon"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "gender"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "snsUserUrl"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "resume"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "secretType"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "secret"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "birthday"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "followerCount"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "favouriteCount"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "shareCount"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "snsregat"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "snsUserLevel"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "educationJSONArrayStr"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "workJSONArrayStr"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 51
    invoke-direct {p0, p1, v0}, Lcn/sharesdk/framework/e;->a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 52
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p2, v3

    if-lez v4, :cond_0

    const/16 v6, 0x7c

    .line 56
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 58
    invoke-virtual {p1, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "utf-8"

    .line 61
    invoke-static {v5, v6}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======UserData: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/String;)I

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcn/sharesdk/framework/e;Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/e;->a(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "error_code"

    const-string v1, "code"

    const-string v2, "errCode"

    const-string v3, "errorCode"

    const-string v4, ""

    .line 65
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object v4

    .line 74
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/framework/e;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, p1

    :catchall_0
    :cond_4
    return-object v4
.end method

.method private a(IILcn/sharesdk/framework/Platform;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_3

    const/16 v3, 0x9

    if-eq p2, v3, :cond_0

    goto :goto_3

    :cond_0
    if-ne p1, v1, :cond_1

    .line 7
    new-instance p1, Lcn/sharesdk/framework/a/b/i;

    invoke-direct {p1}, Lcn/sharesdk/framework/a/b/i;-><init>()V

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_2

    .line 8
    new-instance p1, Lcn/sharesdk/framework/a/b/h;

    invoke-direct {p1}, Lcn/sharesdk/framework/a/b/h;-><init>()V

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    invoke-direct {p0, v2, p3}, Lcn/sharesdk/framework/e;->a(Lcn/sharesdk/framework/a/b/j;Lcn/sharesdk/framework/Platform;)V

    goto :goto_3

    :cond_3
    if-ne p1, v1, :cond_4

    .line 10
    new-instance v2, Lcn/sharesdk/framework/a/b/c;

    invoke-direct {v2}, Lcn/sharesdk/framework/a/b/c;-><init>()V

    goto :goto_2

    :cond_4
    if-ne p1, v0, :cond_5

    .line 11
    new-instance v2, Lcn/sharesdk/framework/a/b/b;

    invoke-direct {v2}, Lcn/sharesdk/framework/a/b/b;-><init>()V

    .line 12
    :cond_5
    :goto_2
    invoke-direct {p0, v2, p3}, Lcn/sharesdk/framework/e;->a(Lcn/sharesdk/framework/a/b/d;Lcn/sharesdk/framework/Platform;)V

    :goto_3
    if-eqz v2, :cond_8

    .line 13
    invoke-static {}, Lcn/sharesdk/framework/a/d;->a()Lcn/sharesdk/framework/a/d;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eqz p4, :cond_7

    .line 14
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 15
    :goto_4
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcn/sharesdk/framework/a/b/e;->m:Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcn/sharesdk/framework/a/b/e;->n:Ljava/lang/String;

    .line 17
    :cond_7
    invoke-static {}, Lcn/sharesdk/framework/a/d;->a()Lcn/sharesdk/framework/a/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/sharesdk/framework/a/d;->a(Lcn/sharesdk/framework/a/b/e;)V

    :cond_8
    return-void
.end method

.method private a(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 44
    new-instance v1, Lcn/sharesdk/framework/e$1;

    invoke-direct {v1, p0, v0, p2, p3}, Lcn/sharesdk/framework/e$1;-><init>(Lcn/sharesdk/framework/e;Lcn/sharesdk/framework/PlatformActionListener;ILjava/util/HashMap;)V

    iput-object v1, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/Platform;->innerShowUser(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcn/sharesdk/framework/a/b/d;Lcn/sharesdk/framework/Platform;)V
    .locals 2

    .line 18
    :try_start_0
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v0

    iput v0, p1, Lcn/sharesdk/framework/a/b/d;->a:I

    const-string v0, "TencentWeibo"

    .line 19
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcn/sharesdk/framework/a/b/d;->b:Ljava/lang/String;

    .line 20
    invoke-direct {p0, p2}, Lcn/sharesdk/framework/e;->a(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/sharesdk/framework/a/b/d;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 21
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private a(Lcn/sharesdk/framework/a/b/j;Lcn/sharesdk/framework/Platform;)V
    .locals 4

    .line 22
    :try_start_0
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WechatMoments"

    .line 23
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WechatFavorite"

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "Wechat"

    .line 25
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const-string v2, "InnerPlatformActionListener wechat is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const-string v1, "TencentWeibo"

    .line 28
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v1

    iput v1, p1, Lcn/sharesdk/framework/a/b/j;->a:I

    .line 31
    iput-object v0, p1, Lcn/sharesdk/framework/a/b/j;->b:Ljava/lang/String;

    .line 32
    invoke-direct {p0, p2}, Lcn/sharesdk/framework/e;->b(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/a/b/j;->o:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcn/sharesdk/framework/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {v0}, Lcn/sharesdk/framework/InnerShareParams;->getCustomFlag()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcn/sharesdk/framework/a/b/j;->p:[Ljava/lang/String;

    .line 35
    invoke-virtual {p2, v0}, Lcn/sharesdk/framework/Platform;->filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_3

    .line 37
    :try_start_3
    const-class p2, Lcn/sharesdk/framework/a/b/j$a;

    invoke-static {v1, p2}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/sharesdk/framework/a/b/j$a;

    iput-object p2, p1, Lcn/sharesdk/framework/a/b/j;->d:Lcn/sharesdk/framework/a/b/j$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 38
    :try_start_4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 39
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v0, v1}, Lcn/sharesdk/framework/Platform;->filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/a/b/j$a;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 40
    iget-object v0, p2, Lcn/sharesdk/framework/a/b/j$a;->a:Ljava/lang/String;

    iput-object v0, p1, Lcn/sharesdk/framework/a/b/j;->c:Ljava/lang/String;

    .line 41
    iput-object p2, p1, Lcn/sharesdk/framework/a/b/j;->d:Lcn/sharesdk/framework/a/b/j$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 42
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private b(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 6

    .line 32
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "WechatMoments"

    .line 33
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "WechatFavorite"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserGender()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "Wechat"

    .line 35
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 36
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    const-string v4, "InnerPlatformActionListener getUserDataBrief catch "

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4, v5}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    :cond_1
    const/4 p1, 0x5

    :try_start_1
    new-array p1, p1, [Ljava/lang/String;

    const-string v1, "gender"

    aput-object v1, p1, v2

    const-string v1, "birthday"

    const/4 v2, 0x1

    aput-object v1, p1, v2

    const-string v1, "secretType"

    const/4 v2, 0x2

    aput-object v1, p1, v2

    const-string v1, "educationJSONArrayStr"

    const/4 v2, 0x3

    aput-object v1, p1, v2

    const-string v1, "workJSONArrayStr"

    const/4 v2, 0x4

    aput-object v1, p1, v2

    .line 38
    invoke-direct {p0, v0, p1}, Lcn/sharesdk/framework/e;->a(Lcn/sharesdk/framework/PlatformDb;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    .line 39
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "errorDesc"

    const-string v1, "msg"

    const-string v2, "errStr"

    const-string v3, "errMsg"

    const-string v4, "errorMessage"

    const-string v5, "errorMsg"

    const-string v6, ""

    .line 40
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 42
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 52
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-object v6

    .line 53
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/framework/e;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    goto :goto_1

    :catchall_0
    nop

    .line 56
    :cond_6
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, v6

    :goto_2
    return-object p1
.end method

.method private b(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    if-eqz p3, :cond_0

    const-string v0, "ShareParams"

    .line 2
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    move-object v1, p3

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 5
    new-instance v4, Lcn/sharesdk/framework/a/b/j;

    invoke-direct {v4}, Lcn/sharesdk/framework/a/b/j;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcn/sharesdk/framework/InnerShareParams;->getCustomFlag()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/sharesdk/framework/a/b/j;->p:[Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WechatMoments"

    .line 8
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "WechatFavorite"

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_1
    const-string v6, "Wechat"

    .line 10
    invoke-static {v6}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v7

    const-string v8, "InnerPlatformActionListener wechat is null"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8, v9}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v6, v3

    :goto_1
    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v6}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v6, "TencentWeibo"

    .line 13
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 14
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 15
    :cond_3
    :goto_2
    iput-object v5, v4, Lcn/sharesdk/framework/a/b/j;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v5

    iput v5, v4, Lcn/sharesdk/framework/a/b/j;->a:I

    .line 17
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 19
    :try_start_2
    const-class v0, Lcn/sharesdk/framework/a/b/j$a;

    invoke-static {v5, v0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/a/b/j$a;

    iput-object v0, v4, Lcn/sharesdk/framework/a/b/j;->d:Lcn/sharesdk/framework/a/b/j$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 20
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    goto :goto_3

    .line 21
    :cond_4
    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/Platform;->filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/a/b/j$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v1, v0, Lcn/sharesdk/framework/a/b/j$a;->a:Ljava/lang/String;

    iput-object v1, v4, Lcn/sharesdk/framework/a/b/j;->c:Ljava/lang/String;

    .line 23
    iput-object v0, v4, Lcn/sharesdk/framework/a/b/j;->d:Lcn/sharesdk/framework/a/b/j$a;

    .line 24
    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/e;->b(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcn/sharesdk/framework/a/b/j;->o:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcn/sharesdk/framework/a/d;->a()Lcn/sharesdk/framework/a/d;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {v0, v4}, Lcn/sharesdk/framework/a/d;->a(Lcn/sharesdk/framework/a/b/e;)V

    .line 27
    :cond_6
    iget-object v0, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_7

    .line 28
    :try_start_3
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 29
    iput-object v3, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 30
    iput v2, p0, Lcn/sharesdk/framework/e;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    .line 31
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method a()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .line 5
    iget-object v0, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method a(Lcn/sharesdk/framework/Platform;ILjava/lang/Object;)V
    .locals 2

    .line 46
    iput p2, p0, Lcn/sharesdk/framework/e;->e:I

    .line 47
    iget-object v0, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 48
    new-instance v1, Lcn/sharesdk/framework/e$2;

    invoke-direct {v1, p0, v0, p2, p3}, Lcn/sharesdk/framework/e$2;-><init>(Lcn/sharesdk/framework/e;Lcn/sharesdk/framework/PlatformActionListener;ILjava/lang/Object;)V

    iput-object v1, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x0

    .line 49
    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/Platform;->doAuthorize([Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcn/sharesdk/framework/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0, v0, p2, p1, v1}, Lcn/sharesdk/framework/e;->a(IILcn/sharesdk/framework/Platform;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcn/sharesdk/framework/e;->e:I

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcn/sharesdk/framework/CustomPlatform;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 12
    .line 13
    .line 14
    iput-object v2, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 15
    .line 16
    iput v1, p0, Lcn/sharesdk/framework/e;->e:I

    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    if-eq p2, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0x9

    .line 23
    .line 24
    if-eq p2, v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 31
    .line 32
    .line 33
    const-string p3, "Wechat"

    .line 34
    .line 35
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_5

    .line 44
    .line 45
    iget p1, p0, Lcn/sharesdk/framework/e;->e:I

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    if-ne p1, p2, :cond_5

    .line 50
    .line 51
    :cond_2
    iput-object v2, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 52
    .line 53
    iput v1, p0, Lcn/sharesdk/framework/e;->e:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/framework/e;->b(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/framework/e;->a(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, v0, p2, p1, p3}, Lcn/sharesdk/framework/e;->a(IILcn/sharesdk/framework/Platform;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1, p2, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcn/sharesdk/framework/e;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcn/sharesdk/framework/e;->e:I

    .line 26
    .line 27
    :cond_0
    return-void
.end method

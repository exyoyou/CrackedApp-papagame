.class public Lcom/sdk/base/framework/utils/log/MobileLogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileLogManager"

.field private static mobileLog:Lcom/sdk/f/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMobileLog()Lcom/sdk/f/b;
    .locals 1

    sget-object v0, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->init()V

    :cond_0
    sget-object v0, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    return-object v0
.end method

.method private static group$101005Logs()Lorg/json/JSONObject;
    .locals 9

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "clientTimeOut"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "type"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    new-instance v1, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    const-string v3, "url"

    .line 30
    .line 31
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    const-string v4, "time"

    .line 36
    .line 37
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    const-string v2, "fieldType"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    new-instance v1, Lorg/json/JSONArray;

    .line 46
    .line 47
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v2, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/sdk/f/b;->b:Lcom/sdk/f/b$a;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/sdk/f/b$a;->a:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Lcom/sdk/f/b$a$a;

    .line 71
    .line 72
    new-instance v6, Lorg/json/JSONObject;

    .line 73
    .line 74
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string v5, ""

    .line 81
    .line 82
    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    const-wide/16 v7, 0x0

    .line 86
    .line 87
    invoke-virtual {v6, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    const-string v2, "content"

    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    return-object v0
.end method

.method private static group$302001Logs()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "clientTimeOut"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "type"

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    new-instance v1, Lorg/json/JSONArray;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/sdk/f/b;->b:Lcom/sdk/f/b$a;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/sdk/f/b$a;->b:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v2, "content"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method private static group$302002Logs()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "clientTimeOut"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "type"

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    new-instance v1, Lorg/json/JSONArray;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/sdk/f/b;->b:Lcom/sdk/f/b$a;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/sdk/f/b$a;->c:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v2, "content"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method private static group$302003Logs()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "clientTimeOut"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "type"

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    new-instance v1, Lorg/json/JSONArray;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/sdk/f/b;->b:Lcom/sdk/f/b$a;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/sdk/f/b$a;->d:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 35
    .line 36
    .line 37
    const-string v2, "content"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public static groupStatusLogs(I)Ljava/lang/String;
    .locals 1

    const v0, 0x18a8d

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->group$302003Logs()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->group$302002Logs()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->group$302001Logs()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->group$101005Logs()Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x49bb1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static init()V
    .locals 1

    new-instance v0, Lcom/sdk/f/b;

    invoke-direct {v0}, Lcom/sdk/f/b;-><init>()V

    sput-object v0, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    return-void
.end method

.method private static setRequestSeq(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/sdk/f/b;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "sequenceNumber"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "ret_url"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-static {p0}, Lcom/sdk/p/d;->a(Ljava/lang/String;)[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    new-instance v0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v0, "seq"

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_0
    sget-object p0, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/sdk/f/b;->c:Ljava/lang/String;

    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public static status101005(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public static status302001(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sdk/f/b;->b:Lcom/sdk/f/b$a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/sdk/f/b$a;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    sget-object p0, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/sdk/f/b;->b:Lcom/sdk/f/b$a;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/sdk/f/b$a;->b:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    :catchall_0
    return-void
.end method

.method public static status302002(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sdk/f/b;->b:Lcom/sdk/f/b$a;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/sdk/f/b$a;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    sget-object p0, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/sdk/f/b;->b:Lcom/sdk/f/b$a;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/sdk/f/b$a;->c:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    :catchall_0
    return-void
.end method

.method public static status302003(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/sdk/base/framework/utils/log/MobileLogManager;->mobileLog:Lcom/sdk/f/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sdk/f/b;->b:Lcom/sdk/f/b$a;

    .line 4
    .line 5
    iput-object p0, v0, Lcom/sdk/f/b$a;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    :catchall_0
    return-void
.end method

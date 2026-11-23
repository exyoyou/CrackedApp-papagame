.class public Lcom/join/mgps/Util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EBean;
    scope = .enum Lorg/androidannotations/annotations/EBean$Scope;->Singleton:Lorg/androidannotations/annotations/EBean$Scope;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "b"


# instance fields
.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "uid"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const-string v3, "token"

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "t"

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    const-string v4, "\\|"

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v1, 0x0

    .line 64
    :goto_0
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-ne v2, v4, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_2

    .line 81
    .line 82
    array-length p0, v1

    .line 83
    const/4 v2, 0x1

    .line 84
    if-le p0, v2, :cond_2

    .line 85
    .line 86
    aget-object p0, v1, v2

    .line 87
    .line 88
    invoke-static {p0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    aget-object p0, v1, v2

    .line 95
    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    if-lez p0, :cond_2

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    :catch_0
    :cond_2
    :goto_1
    return v0
.end method

.method public static pivCld(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sKey"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [Ljava/lang/String;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v0, "\\|"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    .line 33
    .line 34
    return-object p0
.end method

.method public static pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "uid"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const-string v3, "token"

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "c"

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    const-string v4, "\\|"

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v1, 0x0

    .line 72
    :goto_0
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v2, v4, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    array-length p0, v1

    .line 91
    const/4 v2, 0x1

    .line 92
    if-le p0, v2, :cond_3

    .line 93
    .line 94
    const-string p0, "true"

    .line 95
    .line 96
    aget-object v1, v1, v2

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    return v0
.end method

.method public static vl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sec"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "0"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const-string v0, "\\|"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    array-length p0, v0

    .line 28
    const/4 v2, 0x1

    .line 29
    if-le p0, v2, :cond_2

    .line 30
    .line 31
    aget-object p0, v0, v2

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    return-object v1
.end method


# virtual methods
.method public accountLoginOut(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/join/mgps/rpc/h;->d0:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->accountDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_login_out"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/join/mgps/Util/r0;->N()V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/join/mgps/Util/r0;->g1()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->M()V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lcom/join/mgps/Util/b1;->e(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/mgps/rpc/h;->d0:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/ObjectUtils;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 23
    .line 24
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->newBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->accountDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->decryptBuf(Ljava/lang/String;)[B

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->parseFrom([B)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lcom/join/mgps/rpc/h;->d0:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->accountDataV2()Lorg/androidannotations/api/sharedpreferences/p;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const-string v2, ""

    .line 90
    .line 91
    const-class v3, Lcom/join/mgps/dto/AccountBean;

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->accountDataV2()Lorg/androidannotations/api/sharedpreferences/p;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    invoke-static {v0}, Lg8/a;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sput-object v0, Lcom/join/mgps/rpc/h;->d0:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    const/4 v0, 0x0

    .line 128
    :goto_0
    if-eqz v0, :cond_5

    .line 129
    .line 130
    iget-object v1, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->accountDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v2}, Lcom/join/mgps/Util/AESUtils;->e([B)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    return-object v0

    .line 148
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->accountData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_8

    .line 165
    .line 166
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    .line 179
    .line 180
    iget-object v1, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->accountData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    if-eqz v0, :cond_8

    .line 190
    .line 191
    invoke-static {v0}, Lg8/a;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sput-object v0, Lcom/join/mgps/rpc/h;->d0:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 196
    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    iget-object v1, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->accountDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v2}, Lcom/join/mgps/Util/AESUtils;->e([B)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    return-object v0

    .line 217
    :cond_8
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->newBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 222
    .line 223
    .line 224
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    return-object v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 228
    .line 229
    .line 230
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->newBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    return-object v0
.end method

.method public getAccountStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->accountDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public getLocalUserIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->localUserIcon()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "0"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "0"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public isTourist()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x2

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    return v1
.end method

.method public reload()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/event/b;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lcom/join/mgps/event/b;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountBean",
            "context"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Lt6/l0;->p()Lt6/l0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-long v2, v2

    .line 17
    invoke-virtual {v1, v2, v3}, Lt6/l0;->o(J)Lcom/join/mgps/db/tables/TokenTable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/db/tables/TokenTable;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/join/mgps/db/tables/TokenTable;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-long v2, v2

    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/db/tables/TokenTable;->setUid(J)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/TokenTable;->setToken(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lt6/l0;->p()Lt6/l0;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, v1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    sput-object p1, Lcom/join/mgps/rpc/h;->d0:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v3, 0x2

    .line 64
    if-ne v2, v3, :cond_3

    .line 65
    .line 66
    iget-object v2, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    int-to-long v3, v3

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-static {v1}, Lcom/join/mgps/Util/AESUtils;->e([B)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->accountDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p2, v1}, Lk6/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p2}, Lk6/a;->a(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eq v0, p1, :cond_5

    .line 114
    .line 115
    :cond_4
    invoke-static {p2}, Lk6/a;->c(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance v0, Lcom/join/mgps/event/b;

    .line 123
    .line 124
    const/4 v1, 0x4

    .line 125
    invoke-direct {v0, v1}, Lcom/join/mgps/event/b;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_6

    .line 136
    .line 137
    invoke-static {p2}, Lcom/join/mgps/Util/b1;->d(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    return-void
.end method

.method public setLocalUserIcon(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "FilePath"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->localUserIcon()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

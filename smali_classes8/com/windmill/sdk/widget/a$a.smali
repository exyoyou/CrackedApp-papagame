.class Lcom/windmill/sdk/widget/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privacy"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/widget/a$a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getPrivacyInfo()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/a$a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "app_name"

    .line 11
    .line 12
    iget-object v2, p0, Lcom/windmill/sdk/widget/a$a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 13
    .line 14
    invoke-interface {v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getAppName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v1, "app_size"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/windmill/sdk/widget/a$a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getAppPackageSize()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string v1, "app_version"

    .line 33
    .line 34
    iget-object v2, p0, Lcom/windmill/sdk/widget/a$a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 35
    .line 36
    invoke-interface {v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getAppVersion()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    const-string v1, "app_package"

    .line 44
    .line 45
    iget-object v2, p0, Lcom/windmill/sdk/widget/a$a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 46
    .line 47
    invoke-interface {v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getAppPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    const-string v1, "app_company"

    .line 55
    .line 56
    iget-object v2, p0, Lcom/windmill/sdk/widget/a$a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 57
    .line 58
    invoke-interface {v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getDeveloperName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    const-string v1, "app_privacy_url"

    .line 66
    .line 67
    iget-object v2, p0, Lcom/windmill/sdk/widget/a$a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 68
    .line 69
    invoke-interface {v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getPrivacyUrl()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v1, "app_permission"

    .line 77
    .line 78
    iget-object v2, p0, Lcom/windmill/sdk/widget/a$a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 79
    .line 80
    invoke-interface {v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getPermissionInfo()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string v1, "app_permission_url"

    .line 88
    .line 89
    iget-object v2, p0, Lcom/windmill/sdk/widget/a$a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 90
    .line 91
    invoke-interface {v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getPermissionInfoUrl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string v1, "app_func_url"

    .line 99
    .line 100
    iget-object v2, p0, Lcom/windmill/sdk/widget/a$a;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 101
    .line 102
    invoke-interface {v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getFunctionDescUrl()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v2, "-----------getPrivacyInfo------------:"

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 143
    return-object v0
.end method

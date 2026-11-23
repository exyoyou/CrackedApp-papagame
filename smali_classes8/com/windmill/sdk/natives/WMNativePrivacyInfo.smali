.class public Lcom/windmill/sdk/natives/WMNativePrivacyInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;


# instance fields
.field private appName:Ljava/lang/String;

.field private appPackageName:Ljava/lang/String;

.field private appPackageSize:J

.field private appVersion:Ljava/lang/String;

.field private developerName:Ljava/lang/String;

.field private functionDescUrl:Ljava/lang/String;

.field private permissionInfo:Ljava/lang/String;

.field private permissionInfoUrl:Ljava/lang/String;

.field private privacyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appName",
            "appVersion",
            "appPackageSize",
            "appPackageName",
            "developerName",
            "privacyUrl",
            "permissionInfo",
            "permissionInfoUrl",
            "functionDescUrl"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->appName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->appVersion:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->appPackageSize:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->appPackageName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->developerName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->privacyUrl:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->permissionInfo:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->permissionInfoUrl:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->functionDescUrl:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->appPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPackageSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->appPackageSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->developerName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFunctionDescUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->functionDescUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermissionInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->permissionInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermissionInfoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->permissionInfoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivacyUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;->privacyUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

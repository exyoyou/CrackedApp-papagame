.class public final Lde/robv/android/xposed/SELinuxHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sIsSELinuxEnabled:Z

.field private static sServiceAppDataFile:Lde/robv/android/xposed/services/BaseService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lde/robv/android/xposed/services/DirectAccessService;

    .line 2
    .line 3
    invoke-direct {v0}, Lde/robv/android/xposed/services/DirectAccessService;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lde/robv/android/xposed/SELinuxHelper;->sServiceAppDataFile:Lde/robv/android/xposed/services/BaseService;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAppDataFileService()Lde/robv/android/xposed/services/BaseService;
    .locals 1

    .line 1
    sget-object v0, Lde/robv/android/xposed/SELinuxHelper;->sServiceAppDataFile:Lde/robv/android/xposed/services/BaseService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lde/robv/android/xposed/services/DirectAccessService;

    .line 7
    .line 8
    invoke-direct {v0}, Lde/robv/android/xposed/services/DirectAccessService;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static getContext()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isSELinuxEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lde/robv/android/xposed/SELinuxHelper;->sIsSELinuxEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isSELinuxEnforced()Z
    .locals 1

    .line 1
    sget-boolean v0, Lde/robv/android/xposed/SELinuxHelper;->sIsSELinuxEnabled:Z

    .line 2
    .line 3
    return v0
.end method

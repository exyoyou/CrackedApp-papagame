.class public final Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
.super Lde/robv/android/xposed/callbacks/XCallback$Param;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/callbacks/XC_LoadPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadPackageParam"
.end annotation


# instance fields
.field public appInfo:Landroid/content/pm/ApplicationInfo;

.field public classLoader:Ljava/lang/ClassLoader;

.field public isFirstApplication:Z

.field public packageName:Ljava/lang/String;

.field public processName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet<",
            "Lde/robv/android/xposed/callbacks/XC_LoadPackage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lde/robv/android/xposed/callbacks/XCallback$Param;-><init>(Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/swift/sandhook/xposedcompat/XposedCompat;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    sget-object p1, Lcom/swift/sandhook/xposedcompat/XposedCompat;->processName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    .line 11
    .line 12
    sget-object p1, Lcom/swift/sandhook/xposedcompat/XposedCompat;->classLoader:Ljava/lang/ClassLoader;

    .line 13
    .line 14
    iput-object p1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 15
    .line 16
    sget-object p1, Lcom/swift/sandhook/xposedcompat/XposedCompat;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    sget-boolean p1, Lcom/swift/sandhook/xposedcompat/XposedCompat;->isFirstApplication:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->isFirstApplication:Z

    .line 27
    .line 28
    return-void
.end method

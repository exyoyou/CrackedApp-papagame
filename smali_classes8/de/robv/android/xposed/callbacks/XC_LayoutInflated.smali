.class public abstract Lde/robv/android/xposed/callbacks/XC_LayoutInflated;
.super Lde/robv/android/xposed/callbacks/XCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;,
        Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lde/robv/android/xposed/callbacks/XCallback;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lde/robv/android/xposed/callbacks/XCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected call(Lde/robv/android/xposed/callbacks/XCallback$Param;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/callbacks/XC_LayoutInflated;->handleLayoutInflated(Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public abstract handleLayoutInflated(Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

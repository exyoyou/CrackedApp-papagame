.class public final Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
.super Lde/robv/android/xposed/callbacks/XCallback$Param;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodHookParam"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Member;

.field private result:Ljava/lang/Object;

.field public returnEarly:Z

.field public thisObject:Ljava/lang/Object;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lde/robv/android/xposed/callbacks/XCallback$Param;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResultOrThrowable()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    throw v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasThrowable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 8
    .line 9
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 8
    .line 9
    return-void
.end method

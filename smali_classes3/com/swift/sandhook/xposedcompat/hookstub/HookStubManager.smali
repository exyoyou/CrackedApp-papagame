.class public Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;
    }
.end annotation


# static fields
.field public static ALL_STUB:I = 0x0

.field public static final MAX_64_ARGS:I = 0x7

.field public static MAX_STUB_ARGS:I

.field public static additionalHookInfos:[Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

.field public static curUseStubIndexes:[Ljava/util/concurrent/atomic/AtomicInteger;

.field public static hasStubBackup:Z

.field public static hookMethodEntities:[Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;

.field public static volatile is64Bit:Z

.field public static originMethods:[Ljava/lang/reflect/Member;

.field public static stubSizes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/swift/sandhook/SandHook;->is64Bit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->is64Bit:Z

    .line 6
    .line 7
    sget-boolean v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->is64Bit:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-class v0, Lcom/swift/sandhook/xposedcompat/hookstub/MethodHookerStubs64;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-class v0, Lcom/swift/sandhook/xposedcompat/hookstub/MethodHookerStubs32;

    .line 15
    .line 16
    :goto_0
    const-string v1, "stubSizes"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, [I

    .line 23
    .line 24
    sput-object v1, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->stubSizes:[I

    .line 25
    .line 26
    const-string v1, "hasStubBackup"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    sget-boolean v0, Lcom/swift/sandhook/xposedcompat/XposedCompat;->useNewCallBackup:Z

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_1
    sput-boolean v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->hasStubBackup:Z

    .line 52
    .line 53
    sget-object v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->stubSizes:[I

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    array-length v3, v0

    .line 58
    if-lez v3, :cond_3

    .line 59
    .line 60
    array-length v0, v0

    .line 61
    sub-int/2addr v0, v2

    .line 62
    sput v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->MAX_STUB_ARGS:I

    .line 63
    .line 64
    add-int/2addr v0, v2

    .line 65
    new-array v0, v0, [Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    .line 67
    sput-object v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->curUseStubIndexes:[Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    :goto_2
    sget v3, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->MAX_STUB_ARGS:I

    .line 71
    .line 72
    add-int/2addr v3, v2

    .line 73
    if-ge v0, v3, :cond_2

    .line 74
    .line 75
    sget-object v3, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->curUseStubIndexes:[Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    .line 77
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    .line 79
    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 80
    .line 81
    .line 82
    aput-object v4, v3, v0

    .line 83
    .line 84
    sget v3, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->ALL_STUB:I

    .line 85
    .line 86
    sget-object v4, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->stubSizes:[I

    .line 87
    .line 88
    aget v4, v4, v0

    .line 89
    .line 90
    add-int/2addr v3, v4

    .line 91
    sput v3, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->ALL_STUB:I

    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    sget v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->ALL_STUB:I

    .line 97
    .line 98
    new-array v1, v0, [Ljava/lang/reflect/Member;

    .line 99
    .line 100
    sput-object v1, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->originMethods:[Ljava/lang/reflect/Member;

    .line 101
    .line 102
    new-array v1, v0, [Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;

    .line 103
    .line 104
    sput-object v1, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->hookMethodEntities:[Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;

    .line 105
    .line 106
    new-array v0, v0, [Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

    .line 107
    .line 108
    sput-object v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->additionalHookInfos:[Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

    .line 109
    .line 110
    :cond_3
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

.method public static final callOrigin(Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->backup:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-static {p1, v0, p2, p3}, Lcom/swift/sandhook/SandHook;->callOriginMethod(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->getResultAddress(Ljava/lang/Object;)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static getBackupMethodName(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "stub_backup_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getCallOriginClassName(II)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "call_origin_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, "_"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static getCallOriginMethod(II)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->is64Bit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/swift/sandhook/xposedcompat/hookstub/MethodHookerStubs64;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-class v0, Lcom/swift/sandhook/xposedcompat/hookstub/MethodHookerStubs32;

    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "$"

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->getCallOriginClassName(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "call"

    .line 60
    .line 61
    new-array v0, v0, [Ljava/lang/Class;

    .line 62
    .line 63
    const-class v1, [J

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    aput-object v1, v0, v2

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    return-object p0

    .line 73
    :catchall_0
    const/4 p0, 0x0

    .line 74
    return-object p0
.end method

.method public static getFindMethodParTypes(ZI)[Ljava/lang/Class;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-array v0, p1, [Ljava/lang/Class;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    :goto_0
    if-ge v1, p1, :cond_2

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    aput-object p0, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    if-ge v1, p1, :cond_2

    .line 20
    .line 21
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    aput-object p0, v0, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    return-object v0
.end method

.method public static getHookMethodEntity(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;)Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;
    .locals 8

    .line 1
    invoke-static {}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->support()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    instance-of v2, p0, Ljava/lang/reflect/Method;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    check-cast v2, Ljava/lang/reflect/Method;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    instance-of v2, p0, Ljava/lang/reflect/Constructor;

    .line 34
    .line 35
    if-eqz v2, :cond_a

    .line 36
    .line 37
    move-object v2, p0

    .line 38
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 39
    .line 40
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_0
    invoke-static {v3}, Lcom/swift/sandhook/utils/ParamWrapper;->support(Ljava/lang/Class;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_2
    xor-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v2, :cond_6

    .line 57
    .line 58
    array-length v5, v2

    .line 59
    add-int/2addr v0, v5

    .line 60
    sget v5, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->MAX_STUB_ARGS:I

    .line 61
    .line 62
    if-le v0, v5, :cond_3

    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_3
    sget-boolean v5, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->is64Bit:Z

    .line 66
    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    const/4 v5, 0x7

    .line 70
    if-le v0, v5, :cond_4

    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_4
    array-length v5, v2

    .line 74
    :goto_1
    if-ge v4, v5, :cond_7

    .line 75
    .line 76
    aget-object v6, v2, v4

    .line 77
    .line 78
    invoke-static {v6}, Lcom/swift/sandhook/utils/ParamWrapper;->support(Ljava/lang/Class;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_5

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    new-array v2, v4, [Ljava/lang/Class;

    .line 89
    .line 90
    :cond_7
    const-class v4, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;

    .line 91
    .line 92
    monitor-enter v4

    .line 93
    :try_start_0
    sget-boolean v5, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->is64Bit:Z

    .line 94
    .line 95
    invoke-static {v5, v0}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->getStubMethodPair(ZI)Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-nez v0, :cond_8

    .line 100
    .line 101
    monitor-exit v4

    .line 102
    return-object v1

    .line 103
    :cond_8
    new-instance v5, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;

    .line 104
    .line 105
    iget-object v6, v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;->hook:Ljava/lang/reflect/Method;

    .line 106
    .line 107
    iget-object v7, v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;->backup:Ljava/lang/reflect/Method;

    .line 108
    .line 109
    invoke-direct {v5, p0, v6, v7}, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 110
    .line 111
    .line 112
    iput-object v3, v5, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->retType:Ljava/lang/Class;

    .line 113
    .line 114
    iput-object v2, v5, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->parType:[Ljava/lang/Class;

    .line 115
    .line 116
    sget-boolean v2, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->hasStubBackup:Z

    .line 117
    .line 118
    if-eqz v2, :cond_9

    .line 119
    .line 120
    iget-object v2, v5, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->backup:Ljava/lang/reflect/Method;

    .line 121
    .line 122
    iget v3, v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;->args:I

    .line 123
    .line 124
    iget v6, v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;->index:I

    .line 125
    .line 126
    invoke-static {v2, v3, v6}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->tryCompileAndResolveCallOriginMethod(Ljava/lang/reflect/Method;II)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_9

    .line 131
    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string p1, "internal stub <"

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object p1, v5, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->hook:Ljava/lang/reflect/Method;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p1, "> call origin compile failure, skip use internal stub"

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-static {p0}, Lcom/swift/sandhook/xposedcompat/utils/DexLog;->w(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    monitor-exit v4

    .line 164
    return-object v1

    .line 165
    :cond_9
    iget v1, v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;->args:I

    .line 166
    .line 167
    iget v0, v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;->index:I

    .line 168
    .line 169
    invoke-static {v1, v0}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->getMethodId(II)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    sget-object v1, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->originMethods:[Ljava/lang/reflect/Member;

    .line 174
    .line 175
    aput-object p0, v1, v0

    .line 176
    .line 177
    sget-object p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->hookMethodEntities:[Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;

    .line 178
    .line 179
    aput-object v5, p0, v0

    .line 180
    .line 181
    sget-object p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->additionalHookInfos:[Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

    .line 182
    .line 183
    aput-object p1, p0, v0

    .line 184
    .line 185
    monitor-exit v4

    .line 186
    return-object v5

    .line 187
    :catchall_0
    move-exception p0

    .line 188
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    throw p0

    .line 190
    :cond_a
    return-object v1
.end method

.method public static getHookMethodName(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "stub_hook_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getMatchStubArgsCount(I)I
    .locals 2

    .line 1
    :goto_0
    sget v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->MAX_STUB_ARGS:I

    .line 2
    .line 3
    if-gt p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->curUseStubIndexes:[Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    aget-object v0, v0, p0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-object v1, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->stubSizes:[I

    .line 14
    .line 15
    aget v1, v1, p0

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, -0x1

    .line 24
    return p0
.end method

.method public static getMethodId(II)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p0, :cond_0

    .line 3
    .line 4
    sget-object v1, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->stubSizes:[I

    .line 5
    .line 6
    aget v1, v1, v0

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return p1
.end method

.method private static declared-synchronized getStubMethodPair(ZI)Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;
    .locals 6

    .line 1
    const-class v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->getMatchStubArgsCount(I)I

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :cond_0
    :try_start_1
    sget-object v2, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->curUseStubIndexes:[Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    aget-object v2, v2, p1

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {p0, p1}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->getFindMethodParTypes(ZI)[Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    if-eqz p0, :cond_4

    .line 26
    .line 27
    :try_start_2
    const-class p0, Lcom/swift/sandhook/xposedcompat/hookstub/MethodHookerStubs64;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->getHookMethodName(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {p0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    sget-boolean v4, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->hasStubBackup:Z

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    const-class v4, Lcom/swift/sandhook/xposedcompat/hookstub/MethodHookerStubs64;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->getBackupMethodName(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->getStubMethod()Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_0
    if-eqz p0, :cond_3

    .line 57
    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    new-instance v4, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;

    .line 62
    .line 63
    invoke-direct {v4, p1, v2, p0, v3}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;-><init>(IILjava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    .line 66
    monitor-exit v0

    .line 67
    return-object v4

    .line 68
    :cond_3
    :goto_1
    monitor-exit v0

    .line 69
    return-object v1

    .line 70
    :cond_4
    :try_start_3
    const-class p0, Lcom/swift/sandhook/xposedcompat/hookstub/MethodHookerStubs32;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->getHookMethodName(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {p0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    sget-boolean v4, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->hasStubBackup:Z

    .line 81
    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    const-class v4, Lcom/swift/sandhook/xposedcompat/hookstub/MethodHookerStubs32;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->getBackupMethodName(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    invoke-static {}, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->getStubMethod()Ljava/lang/reflect/Method;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :goto_2
    if-eqz p0, :cond_7

    .line 100
    .line 101
    if-nez v3, :cond_6

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    new-instance v4, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;

    .line 105
    .line 106
    invoke-direct {v4, p1, v2, p0, v3}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager$StubMethodsInfo;-><init>(IILjava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .line 108
    .line 109
    monitor-exit v0

    .line 110
    return-object v4

    .line 111
    :cond_7
    :goto_3
    monitor-exit v0

    .line 112
    return-object v1

    .line 113
    :catchall_0
    monitor-exit v0

    .line 114
    return-object v1

    .line 115
    :catchall_1
    move-exception p0

    .line 116
    monitor-exit v0

    .line 117
    throw p0
.end method

.method private static varargs hasArgs([J)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    if-lez p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public static varargs hookBridge(ILcom/swift/sandhook/xposedcompat/hookstub/CallOriginCallBack;[J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->originMethods:[Ljava/lang/reflect/Member;

    aget-object v0, v0, p0

    .line 2
    sget-object v1, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->hookMethodEntities:[Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;

    aget-object v1, v1, p0

    .line 3
    invoke-static {p2}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->hasArgs([J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 4
    aget-wide v5, p2, v3

    invoke-virtual {v1, v5, v6}, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->getThis(J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v1, p2}, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->getArgs([J)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v2, v4

    move-object v5, v2

    .line 6
    :goto_0
    sget-boolean v6, Lde/robv/android/xposed/XposedBridge;->disableHooks:Z

    if-eqz v6, :cond_2

    .line 7
    sget-boolean p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->hasStubBackup:Z

    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p1, p2}, Lcom/swift/sandhook/xposedcompat/hookstub/CallOriginCallBack;->call([J)J

    move-result-wide p0

    return-wide p0

    .line 9
    :cond_1
    invoke-static {v1, v0, v2, v5}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->callOrigin(Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0

    .line 10
    :cond_2
    invoke-static {v0}, Lcom/swift/sandhook/xposedcompat/utils/DexLog;->printMethodHookIn(Ljava/lang/reflect/Member;)V

    .line 11
    sget-object v6, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->additionalHookInfos:[Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

    aget-object p0, v6, p0

    iget-object p0, p0, Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {p0}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 12
    array-length v6, p0

    if-nez v6, :cond_3

    goto/16 :goto_4

    .line 13
    :cond_3
    new-instance v6, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-direct {v6}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;-><init>()V

    .line 14
    iput-object v0, v6, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 15
    iput-object v2, v6, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 16
    iput-object v5, v6, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v5, 0x0

    .line 17
    :cond_4
    :try_start_0
    aget-object v7, p0, v5

    check-cast v7, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {v7, v6}, Lde/robv/android/xposed/XC_MethodHook;->callBeforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-boolean v7, v6, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-eqz v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19
    :catchall_0
    invoke-virtual {v6, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 20
    iput-boolean v3, v6, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 21
    array-length v7, p0

    if-lt v5, v7, :cond_4

    .line 22
    :goto_1
    iget-boolean v3, v6, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-nez v3, :cond_7

    .line 23
    :try_start_1
    sget-boolean v3, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->hasStubBackup:Z

    if-eqz v3, :cond_6

    .line 24
    iget-object v0, v6, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-virtual {v1, p2, v0}, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->getArgsAddress([J[Ljava/lang/Object;)[J

    move-result-object p2

    .line 25
    invoke-interface {p1, p2}, Lcom/swift/sandhook/xposedcompat/hookstub/CallOriginCallBack;->call([J)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->getResult(J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v6, p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 26
    :cond_6
    iget-object p1, v1, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->backup:Ljava/lang/reflect/Method;

    iget-object p2, v6, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v0, p1, v2, p2}, Lcom/swift/sandhook/SandHook;->callOriginMethod(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v6, p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 27
    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 28
    invoke-virtual {v6, p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 29
    :cond_8
    invoke-virtual {v6}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 30
    invoke-virtual {v6}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    .line 31
    :try_start_2
    aget-object v0, p0, v5

    check-cast v0, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {v0, v6}, Lde/robv/android/xposed/XC_MethodHook;->callAfterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 32
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    if-nez p2, :cond_9

    .line 33
    invoke-virtual {v6, p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 34
    :cond_9
    invoke-virtual {v6, p2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_8

    .line 35
    invoke-virtual {v6}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p0

    if-nez p0, :cond_a

    .line 36
    invoke-virtual {v6}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;->getResultAddress(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0

    .line 37
    :cond_a
    invoke-virtual {v6}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 38
    :cond_b
    :goto_4
    sget-boolean p0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->hasStubBackup:Z

    if-eqz p0, :cond_c

    .line 39
    invoke-interface {p1, p2}, Lcom/swift/sandhook/xposedcompat/hookstub/CallOriginCallBack;->call([J)J

    move-result-wide p0

    return-wide p0

    .line 40
    :cond_c
    invoke-static {v1, v0, v2, v5}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->callOrigin(Lcom/swift/sandhook/xposedcompat/hookstub/HookMethodEntity;Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs hookBridge(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    sget-boolean v0, Lde/robv/android/xposed/XposedBridge;->disableHooks:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, p1, p3, p4}, Lcom/swift/sandhook/SandHook;->callOriginMethod(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/swift/sandhook/xposedcompat/utils/DexLog;->printMethodHookIn(Ljava/lang/reflect/Member;)V

    .line 44
    iget-object p2, p2, Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {p2}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 45
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_3

    .line 46
    :cond_1
    new-instance v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-direct {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;-><init>()V

    .line 47
    iput-object p0, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 48
    iput-object p3, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 49
    iput-object p4, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 p4, 0x0

    .line 50
    :cond_2
    :try_start_0
    aget-object v2, p2, p4

    check-cast v2, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {v2, v0}, Lde/robv/android/xposed/XC_MethodHook;->callBeforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-boolean v2, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-eqz v2, :cond_3

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :catchall_0
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 53
    iput-boolean v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    :cond_3
    add-int/lit8 p4, p4, 0x1

    .line 54
    array-length v2, p2

    if-lt p4, v2, :cond_2

    .line 55
    :goto_0
    iget-boolean v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-nez v1, :cond_4

    .line 56
    :try_start_1
    iget-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, p1, p3, v1}, Lcom/swift/sandhook/SandHook;->callOriginMethod(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 57
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 58
    invoke-virtual {v0, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    add-int/lit8 p4, p4, -0x1

    .line 59
    :cond_5
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 60
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    .line 61
    :try_start_2
    aget-object p3, p2, p4

    check-cast p3, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {p3, v0}, Lde/robv/android/xposed/XC_MethodHook;->callAfterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p3

    .line 62
    invoke-static {p3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    if-nez p1, :cond_6

    .line 63
    invoke-virtual {v0, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 64
    :cond_6
    invoke-virtual {v0, p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 p4, p4, -0x1

    if-gez p4, :cond_5

    .line 65
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p0

    if-nez p0, :cond_7

    .line 66
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 67
    :cond_7
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 68
    :cond_8
    :goto_3
    invoke-static {p0, p1, p3, p4}, Lcom/swift/sandhook/SandHook;->callOriginMethod(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static support()Z
    .locals 1

    .line 1
    sget v0, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->MAX_STUB_ARGS:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/swift/sandhook/SandHook;->canGetObject()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/swift/sandhook/SandHook;->canGetObjectAddress()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public static tryCompileAndResolveCallOriginMethod(Ljava/lang/reflect/Method;II)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;->getCallOriginMethod(II)Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p0}, Lcom/swift/sandhook/SandHookMethodResolver;->resolveMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/swift/sandhook/SandHook;->compileMethod(Ljava/lang/reflect/Member;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

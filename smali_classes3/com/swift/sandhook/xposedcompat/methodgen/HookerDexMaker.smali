.class public Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/swift/sandhook/xposedcompat/methodgen/HookMaker;


# static fields
.field private static final CALLBACK_METHOD_NAME_AFTER:Ljava/lang/String; = "callAfterHookedMethod"

.field private static final CALLBACK_METHOD_NAME_BEFORE:Ljava/lang/String; = "callBeforeHookedMethod"

.field private static final CLASS_DESC_PREFIX:Ljava/lang/String; = "L"

.field private static final CLASS_NAME_PREFIX:Ljava/lang/String; = "SandHooker"

.field private static final FIELD_NAME_BACKUP_METHOD:Ljava/lang/String; = "backupMethod"

.field private static final FIELD_NAME_HOOK_INFO:Ljava/lang/String; = "additionalHookInfo"

.field private static final FIELD_NAME_METHOD:Ljava/lang/String; = "method"

.field public static final METHOD_NAME_BACKUP:Ljava/lang/String; = "backup"

.field public static final METHOD_NAME_CALL_BACKUP:Ljava/lang/String; = "callBackup"

.field public static final METHOD_NAME_HOOK:Ljava/lang/String; = "hook"

.field public static final METHOD_NAME_LOG:Ljava/lang/String; = "printMethodHookIn"

.field public static final METHOD_NAME_SETUP:Ljava/lang/String; = "setup"

.field private static final PARAMS_FIELD_NAME_ARGS:Ljava/lang/String; = "args"

.field private static final PARAMS_FIELD_NAME_METHOD:Ljava/lang/String; = "method"

.field private static final PARAMS_FIELD_NAME_THIS_OBJECT:Ljava/lang/String; = "thisObject"

.field private static final callAfterCallbackMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "Lde/robv/android/xposed/XC_MethodHook;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final callBeforeCallbackMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "Lde/robv/android/xposed/XC_MethodHook;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final callbackTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ">;"
        }
    .end annotation
.end field

.field private static final callbacksTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final getResultMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final getThrowableMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final hasThrowableMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final hookInfoTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final logThrowableMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "Lde/robv/android/xposed/XposedBridge;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final memberTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation
.end field

.field private static final methodTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final objArrayTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final paramTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            ">;"
        }
    .end annotation
.end field

.field private static final returnEarlyFieldId:Lcom/android/dx/FieldId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/FieldId<",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final setResultMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final setThrowableMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final throwableTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final xposedBridgeTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "Lde/robv/android/xposed/XposedBridge;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActualParameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mAppClassLoader:Ljava/lang/ClassLoader;

.field private mBackupMethod:Ljava/lang/reflect/Method;

.field private mBackupMethodFieldId:Lcom/android/dx/FieldId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/FieldId<",
            "*",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "**>;"
        }
    .end annotation
.end field

.field private mCallBackupMethod:Ljava/lang/reflect/Method;

.field private mCallBackupMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "**>;"
        }
    .end annotation
.end field

.field private mDexDirPath:Ljava/lang/String;

.field private mDexMaker:Lcom/android/dx/DexMaker;

.field private mHasThrowable:Z

.field private mHookClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mHookInfo:Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

.field private mHookInfoFieldId:Lcom/android/dx/FieldId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/FieldId<",
            "*",
            "Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHookMethod:Ljava/lang/reflect/Method;

.field private mHookMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "**>;"
        }
    .end annotation
.end field

.field private mHookerTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "*>;"
        }
    .end annotation
.end field

.field private mIsStatic:Z

.field private mMember:Ljava/lang/reflect/Member;

.field private mMethodFieldId:Lcom/android/dx/FieldId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/FieldId<",
            "*",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation
.end field

.field private mParameterTypeIds:[Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/dx/TypeId<",
            "*>;"
        }
    .end annotation
.end field

.field private mPrintLogMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "**>;"
        }
    .end annotation
.end field

.field private mReturnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mReturnTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "*>;"
        }
    .end annotation
.end field

.field private mSandHookCallOriginMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, [Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->objArrayTypeId:Lcom/android/dx/TypeId;

    .line 8
    .line 9
    const-class v0, Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->throwableTypeId:Lcom/android/dx/TypeId;

    .line 16
    .line 17
    const-class v1, Ljava/lang/reflect/Member;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->memberTypeId:Lcom/android/dx/TypeId;

    .line 24
    .line 25
    const-class v1, Ljava/lang/reflect/Method;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sput-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->methodTypeId:Lcom/android/dx/TypeId;

    .line 32
    .line 33
    const-class v1, Lde/robv/android/xposed/XC_MethodHook;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sput-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->callbackTypeId:Lcom/android/dx/TypeId;

    .line 40
    .line 41
    const-class v2, Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sput-object v2, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->hookInfoTypeId:Lcom/android/dx/TypeId;

    .line 48
    .line 49
    const-class v2, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sput-object v2, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->callbacksTypeId:Lcom/android/dx/TypeId;

    .line 56
    .line 57
    const-class v2, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sput-object v2, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->paramTypeId:Lcom/android/dx/TypeId;

    .line 64
    .line 65
    sget-object v3, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    new-array v5, v4, [Lcom/android/dx/TypeId;

    .line 69
    .line 70
    sget-object v6, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    aput-object v6, v5, v7

    .line 74
    .line 75
    const-string v8, "setResult"

    .line 76
    .line 77
    invoke-virtual {v2, v3, v8, v5}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    sput-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->setResultMethodId:Lcom/android/dx/MethodId;

    .line 82
    .line 83
    new-array v5, v4, [Lcom/android/dx/TypeId;

    .line 84
    .line 85
    aput-object v0, v5, v7

    .line 86
    .line 87
    const-string v8, "setThrowable"

    .line 88
    .line 89
    invoke-virtual {v2, v3, v8, v5}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    sput-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->setThrowableMethodId:Lcom/android/dx/MethodId;

    .line 94
    .line 95
    const-string v5, "getResult"

    .line 96
    .line 97
    new-array v8, v7, [Lcom/android/dx/TypeId;

    .line 98
    .line 99
    invoke-virtual {v2, v6, v5, v8}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    sput-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->getResultMethodId:Lcom/android/dx/MethodId;

    .line 104
    .line 105
    const-string v5, "getThrowable"

    .line 106
    .line 107
    new-array v6, v7, [Lcom/android/dx/TypeId;

    .line 108
    .line 109
    invoke-virtual {v2, v0, v5, v6}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    sput-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->getThrowableMethodId:Lcom/android/dx/MethodId;

    .line 114
    .line 115
    sget-object v5, Lcom/android/dx/TypeId;->BOOLEAN:Lcom/android/dx/TypeId;

    .line 116
    .line 117
    const-string v6, "hasThrowable"

    .line 118
    .line 119
    new-array v8, v7, [Lcom/android/dx/TypeId;

    .line 120
    .line 121
    invoke-virtual {v2, v5, v6, v8}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    sput-object v6, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->hasThrowableMethodId:Lcom/android/dx/MethodId;

    .line 126
    .line 127
    new-array v6, v4, [Lcom/android/dx/TypeId;

    .line 128
    .line 129
    aput-object v2, v6, v7

    .line 130
    .line 131
    const-string v8, "callAfterHookedMethod"

    .line 132
    .line 133
    invoke-virtual {v1, v3, v8, v6}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    sput-object v6, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->callAfterCallbackMethodId:Lcom/android/dx/MethodId;

    .line 138
    .line 139
    new-array v6, v4, [Lcom/android/dx/TypeId;

    .line 140
    .line 141
    aput-object v2, v6, v7

    .line 142
    .line 143
    const-string v8, "callBeforeHookedMethod"

    .line 144
    .line 145
    invoke-virtual {v1, v3, v8, v6}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    sput-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->callBeforeCallbackMethodId:Lcom/android/dx/MethodId;

    .line 150
    .line 151
    const-string v1, "returnEarly"

    .line 152
    .line 153
    invoke-virtual {v2, v5, v1}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    sput-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->returnEarlyFieldId:Lcom/android/dx/FieldId;

    .line 158
    .line 159
    const-class v1, Lde/robv/android/xposed/XposedBridge;

    .line 160
    .line 161
    invoke-static {v1}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    sput-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->xposedBridgeTypeId:Lcom/android/dx/TypeId;

    .line 166
    .line 167
    new-array v2, v4, [Lcom/android/dx/TypeId;

    .line 168
    .line 169
    aput-object v0, v2, v7

    .line 170
    .line 171
    const-string v0, "log"

    .line 172
    .line 173
    invoke-virtual {v1, v3, v0, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sput-object v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->logThrowableMethodId:Lcom/android/dx/MethodId;

    .line 178
    .line 179
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

.method private createParameterLocals(Lcom/android/dx/Code;)[Lcom/android/dx/Local;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [Lcom/android/dx/Local;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge v1, v3, :cond_0

    .line 11
    .line 12
    aget-object v2, v2, v1

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method

.method private doMake(Ljava/lang/String;Ljava/lang/String;)Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "L"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ";"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, ".generated"

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v4, 0x1

    .line 49
    sget-object v5, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    new-array v6, v0, [Lcom/android/dx/TypeId;

    .line 53
    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/TypeId;Ljava/lang/String;ILcom/android/dx/TypeId;[Lcom/android/dx/TypeId;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->generateFields()V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->generateSetupMethod()V

    .line 61
    .line 62
    .line 63
    sget-boolean v0, Lcom/swift/sandhook/xposedcompat/XposedCompat;->retryWhenCallOriginError:Z

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->generateBackupAndCallOriginCheckMethod()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->generateBackupMethod()V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-direct {p0}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->generateCallBackupMethod()V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->generateHookMethod()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexDirPath:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/16 v1, 0x1a

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    sget p2, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 92
    .line 93
    if-lt p2, v1, :cond_1

    .line 94
    .line 95
    iget-object p2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/android/dx/DexMaker;->generate()[B

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {}, Lc8/b;->a()V

    .line 102
    .line 103
    .line 104
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mAppClassLoader:Ljava/lang/ClassLoader;

    .line 109
    .line 110
    invoke-static {p2, v0}, Lc8/a;->a(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)Ldalvik/system/InMemoryDexClassLoader;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string p2, "dexDirPath should not be empty!!!"

    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 124
    .line 125
    iget-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mAppClassLoader:Ljava/lang/ClassLoader;

    .line 126
    .line 127
    new-instance v4, Ljava/io/File;

    .line 128
    .line 129
    iget-object v5, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexDirPath:Ljava/lang/String;

    .line 130
    .line 131
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3, v4, p2}, Lcom/android/dx/DexMaker;->generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/lang/String;)Ljava/lang/ClassLoader;

    .line 135
    .line 136
    .line 137
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_1

    .line 139
    :catch_0
    nop

    .line 140
    sget p2, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 141
    .line 142
    if-lt p2, v1, :cond_3

    .line 143
    .line 144
    iget-object p2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/android/dx/DexMaker;->generate()[B

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-static {}, Lc8/b;->a()V

    .line 151
    .line 152
    .line 153
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mAppClassLoader:Ljava/lang/ClassLoader;

    .line 158
    .line 159
    invoke-static {p2, v0}, Lc8/a;->a(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)Ldalvik/system/InMemoryDexClassLoader;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    goto :goto_1

    .line 164
    :cond_3
    move-object p2, v2

    .line 165
    :goto_1
    if-nez p2, :cond_4

    .line 166
    .line 167
    return-object v2

    .line 168
    :cond_4
    invoke-direct {p0, p2, p1}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->loadHookerClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    return-object p1
.end method

.method private generateBackupAndCallOriginCheckMethod()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 6
    .line 7
    const-string v3, "backup"

    .line 8
    .line 9
    iget-object v4, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodId:Lcom/android/dx/MethodId;

    .line 16
    .line 17
    const-class v1, Lcom/swift/sandhook/xposedcompat/methodgen/ErrorCatch;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-class v2, Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x4

    .line 30
    new-array v5, v4, [Lcom/android/dx/TypeId;

    .line 31
    .line 32
    sget-object v6, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->memberTypeId:Lcom/android/dx/TypeId;

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    aput-object v6, v5, v7

    .line 36
    .line 37
    sget-object v8, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->methodTypeId:Lcom/android/dx/TypeId;

    .line 38
    .line 39
    const/4 v9, 0x1

    .line 40
    aput-object v8, v5, v9

    .line 41
    .line 42
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v10, 0x2

    .line 47
    aput-object v2, v5, v10

    .line 48
    .line 49
    const-class v2, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v11, 0x3

    .line 56
    aput-object v2, v5, v11

    .line 57
    .line 58
    const-string v2, "callOriginError"

    .line 59
    .line 60
    invoke-virtual {v1, v3, v2, v5}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mSandHookCallOriginMethodId:Lcom/android/dx/MethodId;

    .line 65
    .line 66
    const-class v1, Lcom/swift/sandhook/xposedcompat/utils/DexLog;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    new-array v3, v9, [Lcom/android/dx/TypeId;

    .line 79
    .line 80
    aput-object v8, v3, v7

    .line 81
    .line 82
    const-string v5, "printCallOriginError"

    .line 83
    .line 84
    invoke-virtual {v1, v2, v5, v3}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v2, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 89
    .line 90
    iget-object v3, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodId:Lcom/android/dx/MethodId;

    .line 91
    .line 92
    const/16 v5, 0x9

    .line 93
    .line 94
    invoke-virtual {v2, v3, v5}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2, v6}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2, v8}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    sget-object v6, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 107
    .line 108
    invoke-virtual {v2, v6}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    sget-object v12, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->objArrayTypeId:Lcom/android/dx/TypeId;

    .line 113
    .line 114
    invoke-virtual {v2, v12}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    sget-object v13, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    .line 119
    .line 120
    invoke-virtual {v2, v13}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    invoke-virtual {v2, v13}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    invoke-virtual {v2, v6}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    new-instance v15, Lcom/android/dx/Label;

    .line 133
    .line 134
    invoke-direct {v15}, Lcom/android/dx/Label;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v2}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->createParameterLocals(Lcom/android/dx/Code;)[Lcom/android/dx/Local;

    .line 138
    .line 139
    .line 140
    move-result-object v16

    .line 141
    invoke-static {v2}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->createResultLocals(Lcom/android/dx/Code;)Ljava/util/Map;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    sget-object v10, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->throwableTypeId:Lcom/android/dx/TypeId;

    .line 146
    .line 147
    invoke-virtual {v2, v10, v15}, Lcom/android/dx/Code;->addCatchClause(Lcom/android/dx/TypeId;Lcom/android/dx/Label;)V

    .line 148
    .line 149
    .line 150
    iget-object v10, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mMethodFieldId:Lcom/android/dx/FieldId;

    .line 151
    .line 152
    invoke-virtual {v2, v10, v3}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 153
    .line 154
    .line 155
    new-array v10, v9, [Lcom/android/dx/Local;

    .line 156
    .line 157
    aput-object v3, v10, v7

    .line 158
    .line 159
    const/4 v9, 0x0

    .line 160
    invoke-virtual {v2, v1, v9, v10}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v12, v9}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v2, v13, v1}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodFieldId:Lcom/android/dx/FieldId;

    .line 174
    .line 175
    invoke-virtual {v2, v1, v5}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 179
    .line 180
    array-length v1, v1

    .line 181
    iget-boolean v10, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mIsStatic:Z

    .line 182
    .line 183
    if-eqz v10, :cond_0

    .line 184
    .line 185
    invoke-virtual {v2, v8, v9}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    const/4 v10, 0x0

    .line 189
    goto :goto_0

    .line 190
    :cond_0
    aget-object v10, v16, v7

    .line 191
    .line 192
    invoke-virtual {v2, v8, v10}, Lcom/android/dx/Code;->move(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 193
    .line 194
    .line 195
    const/4 v10, 0x1

    .line 196
    :goto_0
    sub-int v17, v1, v10

    .line 197
    .line 198
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-virtual {v2, v14, v9}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v12, v14}, Lcom/android/dx/Code;->newArray(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 206
    .line 207
    .line 208
    move v9, v10

    .line 209
    :goto_1
    if-ge v9, v1, :cond_1

    .line 210
    .line 211
    aget-object v14, v16, v9

    .line 212
    .line 213
    invoke-static {v2, v6, v14}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->autoBoxIfNecessary(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 214
    .line 215
    .line 216
    sub-int v14, v9, v10

    .line 217
    .line 218
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v14

    .line 222
    invoke-virtual {v2, v13, v14}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v12, v13, v6}, Lcom/android/dx/Code;->aput(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 226
    .line 227
    .line 228
    add-int/lit8 v9, v9, 0x1

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_1
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 232
    .line 233
    sget-object v9, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 234
    .line 235
    invoke-virtual {v1, v9}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_2

    .line 240
    .line 241
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mSandHookCallOriginMethodId:Lcom/android/dx/MethodId;

    .line 242
    .line 243
    new-array v4, v4, [Lcom/android/dx/Local;

    .line 244
    .line 245
    aput-object v3, v4, v7

    .line 246
    .line 247
    const/4 v10, 0x1

    .line 248
    aput-object v5, v4, v10

    .line 249
    .line 250
    const/4 v13, 0x2

    .line 251
    aput-object v8, v4, v13

    .line 252
    .line 253
    const/4 v14, 0x3

    .line 254
    aput-object v12, v4, v14

    .line 255
    .line 256
    const/4 v3, 0x0

    .line 257
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Lcom/android/dx/Code;->returnVoid()V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_2
    const/4 v10, 0x1

    .line 265
    const/4 v13, 0x2

    .line 266
    const/4 v14, 0x3

    .line 267
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mSandHookCallOriginMethodId:Lcom/android/dx/MethodId;

    .line 268
    .line 269
    new-array v4, v4, [Lcom/android/dx/Local;

    .line 270
    .line 271
    aput-object v3, v4, v7

    .line 272
    .line 273
    aput-object v5, v4, v10

    .line 274
    .line 275
    aput-object v8, v4, v13

    .line 276
    .line 277
    aput-object v12, v4, v14

    .line 278
    .line 279
    invoke-virtual {v2, v1, v6, v4}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 283
    .line 284
    invoke-static {v1}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->getObjTypeIdIfPrimitive(Lcom/android/dx/TypeId;)Lcom/android/dx/TypeId;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    check-cast v1, Lcom/android/dx/Local;

    .line 293
    .line 294
    invoke-virtual {v2, v1, v6}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 295
    .line 296
    .line 297
    iget-object v3, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 298
    .line 299
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    check-cast v3, Lcom/android/dx/Local;

    .line 304
    .line 305
    const/4 v4, 0x1

    .line 306
    invoke-static {v2, v3, v1, v11, v4}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->autoUnboxIfNecessary(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;Ljava/util/Map;Z)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2, v3}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 310
    .line 311
    .line 312
    :goto_2
    invoke-virtual {v2, v15}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 313
    .line 314
    .line 315
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 316
    .line 317
    invoke-virtual {v1, v9}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_3

    .line 322
    .line 323
    invoke-virtual {v2}, Lcom/android/dx/Code;->returnVoid()V

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_3
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 328
    .line 329
    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    check-cast v1, Lcom/android/dx/Local;

    .line 334
    .line 335
    invoke-virtual {v2, v1}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 336
    .line 337
    .line 338
    :goto_3
    return-void
.end method

.method private generateBackupMethod()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 4
    .line 5
    const-string v2, "backup"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodId:Lcom/android/dx/MethodId;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 16
    .line 17
    const/16 v2, 0x9

    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->memberTypeId:Lcom/android/dx/TypeId;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->createResultLocals(Lcom/android/dx/Code;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-class v4, Lcom/swift/sandhook/xposedcompat/utils/DexLog;

    .line 34
    .line 35
    invoke-static {v4}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-static {v5}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const/4 v6, 0x1

    .line 46
    new-array v7, v6, [Lcom/android/dx/TypeId;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    aput-object v1, v7, v8

    .line 50
    .line 51
    const-string v1, "printCallOriginError"

    .line 52
    .line 53
    invoke-virtual {v4, v5, v1, v7}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v4, Lcom/android/dx/Label;

    .line 58
    .line 59
    invoke-direct {v4}, Lcom/android/dx/Label;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->throwableTypeId:Lcom/android/dx/TypeId;

    .line 63
    .line 64
    invoke-virtual {v0, v5, v4}, Lcom/android/dx/Code;->addCatchClause(Lcom/android/dx/TypeId;Lcom/android/dx/Label;)V

    .line 65
    .line 66
    .line 67
    iget-object v5, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mMethodFieldId:Lcom/android/dx/FieldId;

    .line 68
    .line 69
    invoke-virtual {v0, v5, v2}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 70
    .line 71
    .line 72
    new-array v5, v6, [Lcom/android/dx/Local;

    .line 73
    .line 74
    aput-object v2, v5, v8

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v4}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 84
    .line 85
    sget-object v2, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/dx/Code;->returnVoid()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 98
    .line 99
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/android/dx/Local;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method

.method private generateCallBackupMethod()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 4
    .line 5
    const-string v2, "callBackup"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mCallBackupMethodId:Lcom/android/dx/MethodId;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 16
    .line 17
    const/16 v2, 0x9

    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->memberTypeId:Lcom/android/dx/TypeId;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v3, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->methodTypeId:Lcom/android/dx/TypeId;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {p0, v0}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->createParameterLocals(Lcom/android/dx/Code;)[Lcom/android/dx/Local;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-static {v0}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->createResultLocals(Lcom/android/dx/Code;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v7, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mMethodFieldId:Lcom/android/dx/FieldId;

    .line 44
    .line 45
    invoke-virtual {v0, v7, v2}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 46
    .line 47
    .line 48
    iget-object v7, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodFieldId:Lcom/android/dx/FieldId;

    .line 49
    .line 50
    invoke-virtual {v0, v7, v4}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 51
    .line 52
    .line 53
    const-class v7, Lcom/swift/sandhook/SandHook;

    .line 54
    .line 55
    invoke-static {v7}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 60
    .line 61
    invoke-static {v8}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const/4 v9, 0x2

    .line 66
    new-array v10, v9, [Lcom/android/dx/TypeId;

    .line 67
    .line 68
    const/4 v11, 0x0

    .line 69
    aput-object v1, v10, v11

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    aput-object v3, v10, v1

    .line 73
    .line 74
    const-string v3, "ensureBackupMethod"

    .line 75
    .line 76
    invoke-virtual {v7, v8, v3, v10}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    new-array v7, v9, [Lcom/android/dx/Local;

    .line 81
    .line 82
    aput-object v2, v7, v11

    .line 83
    .line 84
    aput-object v4, v7, v1

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v3, v1, v7}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 91
    .line 92
    sget-object v3, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_0

    .line 99
    .line 100
    iget-object v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodId:Lcom/android/dx/MethodId;

    .line 101
    .line 102
    invoke-virtual {v0, v2, v1, v5}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/android/dx/Code;->returnVoid()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 110
    .line 111
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/android/dx/Local;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodId:Lcom/android/dx/MethodId;

    .line 118
    .line 119
    invoke-virtual {v0, v2, v1, v5}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    return-void
.end method

.method private generateFields()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 2
    .line 3
    sget-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->hookInfoTypeId:Lcom/android/dx/TypeId;

    .line 4
    .line 5
    const-string v2, "additionalHookInfo"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookInfoFieldId:Lcom/android/dx/FieldId;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 14
    .line 15
    sget-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->memberTypeId:Lcom/android/dx/TypeId;

    .line 16
    .line 17
    const-string v2, "method"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mMethodFieldId:Lcom/android/dx/FieldId;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 26
    .line 27
    sget-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->methodTypeId:Lcom/android/dx/TypeId;

    .line 28
    .line 29
    const-string v2, "backupMethod"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodFieldId:Lcom/android/dx/FieldId;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookInfoFieldId:Lcom/android/dx/FieldId;

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/FieldId;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mMethodFieldId:Lcom/android/dx/FieldId;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/FieldId;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodFieldId:Lcom/android/dx/FieldId;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/FieldId;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private generateHookMethod()V
    .locals 48

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 6
    .line 7
    const-string v3, "hook"

    .line 8
    .line 9
    iget-object v4, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookMethodId:Lcom/android/dx/MethodId;

    .line 16
    .line 17
    const-class v1, Lcom/swift/sandhook/xposedcompat/utils/DexLog;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    new-array v4, v3, [Lcom/android/dx/TypeId;

    .line 31
    .line 32
    const-class v5, Ljava/lang/reflect/Member;

    .line 33
    .line 34
    invoke-static {v5}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    aput-object v5, v4, v6

    .line 44
    .line 45
    const-string v5, "printMethodHookIn"

    .line 46
    .line 47
    invoke-virtual {v1, v2, v5, v4}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mPrintLogMethodId:Lcom/android/dx/MethodId;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 54
    .line 55
    iget-object v2, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookMethodId:Lcom/android/dx/MethodId;

    .line 56
    .line 57
    const/16 v4, 0x9

    .line 58
    .line 59
    invoke-virtual {v1, v2, v4}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lcom/android/dx/Label;

    .line 64
    .line 65
    invoke-direct {v2}, Lcom/android/dx/Label;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v4, Lcom/android/dx/Label;

    .line 69
    .line 70
    invoke-direct {v4}, Lcom/android/dx/Label;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v5, Lcom/android/dx/Label;

    .line 74
    .line 75
    invoke-direct {v5}, Lcom/android/dx/Label;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v8, Lcom/android/dx/Label;

    .line 79
    .line 80
    invoke-direct {v8}, Lcom/android/dx/Label;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v9, Lcom/android/dx/Label;

    .line 84
    .line 85
    invoke-direct {v9}, Lcom/android/dx/Label;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v10, Lcom/android/dx/Label;

    .line 89
    .line 90
    invoke-direct {v10}, Lcom/android/dx/Label;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance v11, Lcom/android/dx/Label;

    .line 94
    .line 95
    invoke-direct {v11}, Lcom/android/dx/Label;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v12, Lcom/android/dx/Label;

    .line 99
    .line 100
    invoke-direct {v12}, Lcom/android/dx/Label;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v13, Lcom/android/dx/Label;

    .line 104
    .line 105
    invoke-direct {v13}, Lcom/android/dx/Label;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v14, Lcom/android/dx/Label;

    .line 109
    .line 110
    invoke-direct {v14}, Lcom/android/dx/Label;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v15, Lcom/android/dx/Label;

    .line 114
    .line 115
    invoke-direct {v15}, Lcom/android/dx/Label;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v6, Lcom/android/dx/Label;

    .line 119
    .line 120
    invoke-direct {v6}, Lcom/android/dx/Label;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v3, Lcom/android/dx/Label;

    .line 124
    .line 125
    invoke-direct {v3}, Lcom/android/dx/Label;-><init>()V

    .line 126
    .line 127
    .line 128
    move-object/from16 v17, v3

    .line 129
    .line 130
    sget-object v3, Lcom/android/dx/TypeId;->BOOLEAN:Lcom/android/dx/TypeId;

    .line 131
    .line 132
    move-object/from16 v18, v6

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    move-object/from16 v19, v15

    .line 139
    .line 140
    sget-object v15, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->hookInfoTypeId:Lcom/android/dx/TypeId;

    .line 141
    .line 142
    move-object/from16 v20, v14

    .line 143
    .line 144
    invoke-virtual {v1, v15}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    move-object/from16 v21, v11

    .line 149
    .line 150
    sget-object v11, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->callbacksTypeId:Lcom/android/dx/TypeId;

    .line 151
    .line 152
    move-object/from16 v22, v12

    .line 153
    .line 154
    invoke-virtual {v1, v11}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    move-object/from16 v23, v13

    .line 159
    .line 160
    sget-object v13, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->objArrayTypeId:Lcom/android/dx/TypeId;

    .line 161
    .line 162
    move-object/from16 v24, v9

    .line 163
    .line 164
    invoke-virtual {v1, v13}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    move-object/from16 v25, v4

    .line 169
    .line 170
    sget-object v4, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    .line 171
    .line 172
    move-object/from16 v26, v8

    .line 173
    .line 174
    invoke-virtual {v1, v4}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    move-object/from16 v27, v5

    .line 179
    .line 180
    sget-object v5, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 181
    .line 182
    move-object/from16 v28, v10

    .line 183
    .line 184
    invoke-virtual {v1, v5}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    move-object/from16 v29, v10

    .line 189
    .line 190
    sget-object v10, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->callbackTypeId:Lcom/android/dx/TypeId;

    .line 191
    .line 192
    invoke-virtual {v1, v10}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    move-object/from16 v30, v10

    .line 197
    .line 198
    invoke-virtual {v1, v5}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    move-object/from16 v31, v10

    .line 203
    .line 204
    invoke-virtual {v1, v4}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    move-object/from16 v32, v9

    .line 209
    .line 210
    invoke-virtual {v1, v5}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    move-object/from16 v33, v12

    .line 215
    .line 216
    sget-object v12, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->throwableTypeId:Lcom/android/dx/TypeId;

    .line 217
    .line 218
    move-object/from16 v34, v11

    .line 219
    .line 220
    invoke-virtual {v1, v12}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    move-object/from16 v35, v11

    .line 225
    .line 226
    sget-object v11, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->paramTypeId:Lcom/android/dx/TypeId;

    .line 227
    .line 228
    invoke-virtual {v1, v11}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    move-object/from16 v36, v11

    .line 233
    .line 234
    sget-object v11, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->memberTypeId:Lcom/android/dx/TypeId;

    .line 235
    .line 236
    invoke-virtual {v1, v11}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    move-object/from16 v37, v15

    .line 241
    .line 242
    invoke-virtual {v1, v5}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 243
    .line 244
    .line 245
    move-result-object v15

    .line 246
    move-object/from16 v38, v15

    .line 247
    .line 248
    invoke-virtual {v1, v13}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 249
    .line 250
    .line 251
    move-result-object v15

    .line 252
    move-object/from16 v39, v13

    .line 253
    .line 254
    invoke-virtual {v1, v3}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 255
    .line 256
    .line 257
    move-result-object v13

    .line 258
    move-object/from16 v40, v13

    .line 259
    .line 260
    invoke-virtual {v1, v4}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 261
    .line 262
    .line 263
    move-result-object v13

    .line 264
    move-object/from16 v41, v13

    .line 265
    .line 266
    invoke-virtual {v1, v4}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 267
    .line 268
    .line 269
    move-result-object v13

    .line 270
    invoke-virtual {v1, v4}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v1, v5}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {v1, v12}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    move-object/from16 v42, v12

    .line 283
    .line 284
    invoke-virtual {v1, v3}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    move-object/from16 v43, v12

    .line 289
    .line 290
    invoke-direct {v0, v1}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->createParameterLocals(Lcom/android/dx/Code;)[Lcom/android/dx/Local;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    move-object/from16 v44, v5

    .line 295
    .line 296
    invoke-static {v1}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->createResultLocals(Lcom/android/dx/Code;)Ljava/util/Map;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    move-object/from16 v45, v5

    .line 301
    .line 302
    const/4 v5, 0x0

    .line 303
    invoke-virtual {v1, v15, v5}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v13, v7}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    const/16 v46, 0x1

    .line 310
    .line 311
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-virtual {v1, v10, v5}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v8, v7}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    const/4 v5, 0x0

    .line 322
    invoke-virtual {v1, v9, v5}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    iget-object v5, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mMethodFieldId:Lcom/android/dx/FieldId;

    .line 326
    .line 327
    invoke-virtual {v1, v5, v11}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 328
    .line 329
    .line 330
    iget-object v5, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mPrintLogMethodId:Lcom/android/dx/MethodId;

    .line 331
    .line 332
    move-object/from16 v46, v9

    .line 333
    .line 334
    move-object/from16 v47, v10

    .line 335
    .line 336
    const/4 v10, 0x1

    .line 337
    new-array v9, v10, [Lcom/android/dx/Local;

    .line 338
    .line 339
    const/4 v10, 0x0

    .line 340
    aput-object v11, v9, v10

    .line 341
    .line 342
    const/4 v10, 0x0

    .line 343
    invoke-virtual {v1, v5, v10, v9}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 344
    .line 345
    .line 346
    sget-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->xposedBridgeTypeId:Lcom/android/dx/TypeId;

    .line 347
    .line 348
    const-string v9, "disableHooks"

    .line 349
    .line 350
    invoke-virtual {v5, v3, v9}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v1, v3, v6}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 355
    .line 356
    .line 357
    sget-object v3, Lcom/android/dx/Comparison;->NE:Lcom/android/dx/Comparison;

    .line 358
    .line 359
    invoke-virtual {v1, v3, v2, v6}, Lcom/android/dx/Code;->compareZ(Lcom/android/dx/Comparison;Lcom/android/dx/Label;Lcom/android/dx/Local;)V

    .line 360
    .line 361
    .line 362
    iget-object v3, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookInfoFieldId:Lcom/android/dx/FieldId;

    .line 363
    .line 364
    invoke-virtual {v1, v3, v14}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 365
    .line 366
    .line 367
    const-string v3, "callbacks"

    .line 368
    .line 369
    move-object/from16 v6, v34

    .line 370
    .line 371
    move-object/from16 v5, v37

    .line 372
    .line 373
    invoke-virtual {v5, v6, v3}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    move-object/from16 v5, v33

    .line 378
    .line 379
    invoke-virtual {v1, v3, v5, v14}, Lcom/android/dx/Code;->iget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 380
    .line 381
    .line 382
    const-string v3, "getSnapshot"

    .line 383
    .line 384
    const/4 v9, 0x0

    .line 385
    new-array v10, v9, [Lcom/android/dx/TypeId;

    .line 386
    .line 387
    move-object/from16 v14, v39

    .line 388
    .line 389
    invoke-virtual {v6, v14, v3, v10}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    new-array v6, v9, [Lcom/android/dx/Local;

    .line 394
    .line 395
    move-object/from16 v10, v32

    .line 396
    .line 397
    invoke-virtual {v1, v3, v10, v5, v6}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1, v8, v10}, Lcom/android/dx/Code;->arrayLength(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 401
    .line 402
    .line 403
    sget-object v3, Lcom/android/dx/Comparison;->EQ:Lcom/android/dx/Comparison;

    .line 404
    .line 405
    invoke-virtual {v1, v3, v2, v8}, Lcom/android/dx/Code;->compareZ(Lcom/android/dx/Comparison;Lcom/android/dx/Label;Lcom/android/dx/Local;)V

    .line 406
    .line 407
    .line 408
    iget-object v3, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 409
    .line 410
    array-length v3, v3

    .line 411
    iget-boolean v5, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mIsStatic:Z

    .line 412
    .line 413
    if-eqz v5, :cond_0

    .line 414
    .line 415
    move-object/from16 v5, v38

    .line 416
    .line 417
    const/4 v6, 0x0

    .line 418
    invoke-virtual {v1, v5, v6}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    goto :goto_0

    .line 422
    :cond_0
    move-object/from16 v5, v38

    .line 423
    .line 424
    aget-object v6, v12, v9

    .line 425
    .line 426
    invoke-virtual {v1, v5, v6}, Lcom/android/dx/Code;->move(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 427
    .line 428
    .line 429
    const/4 v9, 0x1

    .line 430
    :goto_0
    sub-int v6, v3, v9

    .line 431
    .line 432
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    move-object/from16 v14, v41

    .line 437
    .line 438
    invoke-virtual {v1, v14, v6}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1, v15, v14}, Lcom/android/dx/Code;->newArray(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 442
    .line 443
    .line 444
    move v6, v9

    .line 445
    :goto_1
    if-ge v6, v3, :cond_1

    .line 446
    .line 447
    aget-object v14, v12, v6

    .line 448
    .line 449
    move/from16 v32, v3

    .line 450
    .line 451
    move-object/from16 v3, v31

    .line 452
    .line 453
    invoke-static {v1, v3, v14}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->autoBoxIfNecessary(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 454
    .line 455
    .line 456
    sub-int v14, v6, v9

    .line 457
    .line 458
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 459
    .line 460
    .line 461
    move-result-object v14

    .line 462
    invoke-virtual {v1, v13, v14}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v15, v13, v3}, Lcom/android/dx/Code;->aput(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 466
    .line 467
    .line 468
    add-int/lit8 v6, v6, 0x1

    .line 469
    .line 470
    move/from16 v3, v32

    .line 471
    .line 472
    goto :goto_1

    .line 473
    :cond_1
    move-object/from16 v3, v31

    .line 474
    .line 475
    sget-object v6, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->paramTypeId:Lcom/android/dx/TypeId;

    .line 476
    .line 477
    const/4 v9, 0x0

    .line 478
    new-array v14, v9, [Lcom/android/dx/TypeId;

    .line 479
    .line 480
    invoke-virtual {v6, v14}, Lcom/android/dx/TypeId;->getConstructor([Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 481
    .line 482
    .line 483
    move-result-object v14

    .line 484
    move-object/from16 v31, v2

    .line 485
    .line 486
    new-array v2, v9, [Lcom/android/dx/Local;

    .line 487
    .line 488
    move-object/from16 v9, v36

    .line 489
    .line 490
    invoke-virtual {v1, v9, v14, v2}, Lcom/android/dx/Code;->newInstance(Lcom/android/dx/Local;Lcom/android/dx/MethodId;[Lcom/android/dx/Local;)V

    .line 491
    .line 492
    .line 493
    sget-object v2, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->memberTypeId:Lcom/android/dx/TypeId;

    .line 494
    .line 495
    const-string v14, "method"

    .line 496
    .line 497
    invoke-virtual {v6, v2, v14}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v1, v2, v9, v11}, Lcom/android/dx/Code;->iput(Lcom/android/dx/FieldId;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 502
    .line 503
    .line 504
    sget-object v2, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 505
    .line 506
    const-string v11, "thisObject"

    .line 507
    .line 508
    invoke-virtual {v6, v2, v11}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v1, v2, v9, v5}, Lcom/android/dx/Code;->iput(Lcom/android/dx/FieldId;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 513
    .line 514
    .line 515
    sget-object v2, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->objArrayTypeId:Lcom/android/dx/TypeId;

    .line 516
    .line 517
    const-string v5, "args"

    .line 518
    .line 519
    invoke-virtual {v6, v2, v5}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-virtual {v1, v2, v9, v15}, Lcom/android/dx/Code;->iput(Lcom/android/dx/FieldId;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1, v4, v7}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    move-object/from16 v2, v28

    .line 530
    .line 531
    invoke-virtual {v1, v2}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 532
    .line 533
    .line 534
    sget-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->throwableTypeId:Lcom/android/dx/TypeId;

    .line 535
    .line 536
    move-object/from16 v6, v27

    .line 537
    .line 538
    invoke-virtual {v1, v5, v6}, Lcom/android/dx/Code;->addCatchClause(Lcom/android/dx/TypeId;Lcom/android/dx/Label;)V

    .line 539
    .line 540
    .line 541
    move-object/from16 v7, v29

    .line 542
    .line 543
    invoke-virtual {v1, v7, v10, v4}, Lcom/android/dx/Code;->aget(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 544
    .line 545
    .line 546
    move-object/from16 v11, v30

    .line 547
    .line 548
    invoke-virtual {v1, v11, v7}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 549
    .line 550
    .line 551
    sget-object v14, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->callBeforeCallbackMethodId:Lcom/android/dx/MethodId;

    .line 552
    .line 553
    move-object/from16 v32, v10

    .line 554
    .line 555
    const/4 v7, 0x1

    .line 556
    new-array v10, v7, [Lcom/android/dx/Local;

    .line 557
    .line 558
    const/16 v16, 0x0

    .line 559
    .line 560
    aput-object v9, v10, v16

    .line 561
    .line 562
    const/4 v7, 0x0

    .line 563
    invoke-virtual {v1, v14, v7, v11, v10}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 564
    .line 565
    .line 566
    move-object/from16 v10, v26

    .line 567
    .line 568
    invoke-virtual {v1, v10}, Lcom/android/dx/Code;->jump(Lcom/android/dx/Label;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v5}, Lcom/android/dx/Code;->removeCatchClause(Lcom/android/dx/TypeId;)Lcom/android/dx/Label;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1, v6}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 575
    .line 576
    .line 577
    move-object/from16 v6, v35

    .line 578
    .line 579
    invoke-virtual {v1, v6}, Lcom/android/dx/Code;->moveException(Lcom/android/dx/Local;)V

    .line 580
    .line 581
    .line 582
    sget-object v14, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->logThrowableMethodId:Lcom/android/dx/MethodId;

    .line 583
    .line 584
    const/4 v7, 0x1

    .line 585
    new-array v11, v7, [Lcom/android/dx/Local;

    .line 586
    .line 587
    aput-object v6, v11, v16

    .line 588
    .line 589
    const/4 v7, 0x0

    .line 590
    invoke-virtual {v1, v14, v7, v11}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 591
    .line 592
    .line 593
    sget-object v11, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->setResultMethodId:Lcom/android/dx/MethodId;

    .line 594
    .line 595
    const/4 v14, 0x1

    .line 596
    new-array v6, v14, [Lcom/android/dx/Local;

    .line 597
    .line 598
    aput-object v46, v6, v16

    .line 599
    .line 600
    invoke-virtual {v1, v11, v7, v9, v6}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 601
    .line 602
    .line 603
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 604
    .line 605
    move-object/from16 v7, v40

    .line 606
    .line 607
    invoke-virtual {v1, v7, v6}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    sget-object v6, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->returnEarlyFieldId:Lcom/android/dx/FieldId;

    .line 611
    .line 612
    invoke-virtual {v1, v6, v9, v7}, Lcom/android/dx/Code;->iput(Lcom/android/dx/FieldId;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 613
    .line 614
    .line 615
    move-object/from16 v11, v25

    .line 616
    .line 617
    invoke-virtual {v1, v11}, Lcom/android/dx/Code;->jump(Lcom/android/dx/Label;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1, v10}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1, v6, v7, v9}, Lcom/android/dx/Code;->iget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 624
    .line 625
    .line 626
    sget-object v10, Lcom/android/dx/Comparison;->EQ:Lcom/android/dx/Comparison;

    .line 627
    .line 628
    invoke-virtual {v1, v10, v11, v7}, Lcom/android/dx/Code;->compareZ(Lcom/android/dx/Comparison;Lcom/android/dx/Label;Lcom/android/dx/Local;)V

    .line 629
    .line 630
    .line 631
    sget-object v10, Lcom/android/dx/BinaryOp;->ADD:Lcom/android/dx/BinaryOp;

    .line 632
    .line 633
    move-object/from16 v14, v47

    .line 634
    .line 635
    invoke-virtual {v1, v10, v4, v4, v14}, Lcom/android/dx/Code;->op(Lcom/android/dx/BinaryOp;Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 636
    .line 637
    .line 638
    move-object/from16 v25, v3

    .line 639
    .line 640
    move-object/from16 v3, v24

    .line 641
    .line 642
    invoke-virtual {v1, v3}, Lcom/android/dx/Code;->jump(Lcom/android/dx/Label;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v1, v11}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1, v10, v4, v4, v14}, Lcom/android/dx/Code;->op(Lcom/android/dx/BinaryOp;Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 649
    .line 650
    .line 651
    sget-object v10, Lcom/android/dx/Comparison;->LT:Lcom/android/dx/Comparison;

    .line 652
    .line 653
    invoke-virtual {v1, v10, v2, v4, v8}, Lcom/android/dx/Code;->compare(Lcom/android/dx/Comparison;Lcom/android/dx/Label;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v1, v3}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v1, v6, v7, v9}, Lcom/android/dx/Code;->iget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 660
    .line 661
    .line 662
    sget-object v2, Lcom/android/dx/Comparison;->NE:Lcom/android/dx/Comparison;

    .line 663
    .line 664
    move-object/from16 v3, v23

    .line 665
    .line 666
    invoke-virtual {v1, v2, v3, v7}, Lcom/android/dx/Code;->compareZ(Lcom/android/dx/Comparison;Lcom/android/dx/Label;Lcom/android/dx/Local;)V

    .line 667
    .line 668
    .line 669
    move-object/from16 v2, v22

    .line 670
    .line 671
    invoke-virtual {v1, v5, v2}, Lcom/android/dx/Code;->addCatchClause(Lcom/android/dx/TypeId;Lcom/android/dx/Label;)V

    .line 672
    .line 673
    .line 674
    iget-boolean v5, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mIsStatic:Z

    .line 675
    .line 676
    const/4 v6, 0x1

    .line 677
    xor-int/2addr v5, v6

    .line 678
    move v7, v5

    .line 679
    :goto_2
    array-length v8, v12

    .line 680
    if-ge v7, v8, :cond_2

    .line 681
    .line 682
    sub-int v8, v7, v5

    .line 683
    .line 684
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 685
    .line 686
    .line 687
    move-result-object v8

    .line 688
    invoke-virtual {v1, v13, v8}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 689
    .line 690
    .line 691
    move-object/from16 v8, v25

    .line 692
    .line 693
    invoke-virtual {v1, v8, v15, v13}, Lcom/android/dx/Code;->aget(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 694
    .line 695
    .line 696
    aget-object v10, v12, v7

    .line 697
    .line 698
    move-object/from16 v11, v45

    .line 699
    .line 700
    invoke-static {v1, v10, v8, v11, v6}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->autoUnboxIfNecessary(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;Ljava/util/Map;Z)V

    .line 701
    .line 702
    .line 703
    add-int/lit8 v7, v7, 0x1

    .line 704
    .line 705
    goto :goto_2

    .line 706
    :cond_2
    move-object/from16 v8, v25

    .line 707
    .line 708
    move-object/from16 v11, v45

    .line 709
    .line 710
    iget-object v5, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 711
    .line 712
    sget-object v7, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 713
    .line 714
    invoke-virtual {v5, v7}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v5

    .line 718
    if-eqz v5, :cond_3

    .line 719
    .line 720
    iget-object v5, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodId:Lcom/android/dx/MethodId;

    .line 721
    .line 722
    const/4 v10, 0x0

    .line 723
    invoke-virtual {v1, v5, v10, v12}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 724
    .line 725
    .line 726
    sget-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->setResultMethodId:Lcom/android/dx/MethodId;

    .line 727
    .line 728
    new-array v13, v6, [Lcom/android/dx/Local;

    .line 729
    .line 730
    const/4 v15, 0x0

    .line 731
    aput-object v46, v13, v15

    .line 732
    .line 733
    invoke-virtual {v1, v5, v10, v9, v13}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 734
    .line 735
    .line 736
    goto :goto_3

    .line 737
    :cond_3
    const/4 v10, 0x0

    .line 738
    const/4 v15, 0x0

    .line 739
    iget-object v5, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 740
    .line 741
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v5

    .line 745
    check-cast v5, Lcom/android/dx/Local;

    .line 746
    .line 747
    iget-object v13, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodId:Lcom/android/dx/MethodId;

    .line 748
    .line 749
    invoke-virtual {v1, v13, v5, v12}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 750
    .line 751
    .line 752
    invoke-static {v1, v8, v5}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->autoBoxIfNecessary(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 753
    .line 754
    .line 755
    sget-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->setResultMethodId:Lcom/android/dx/MethodId;

    .line 756
    .line 757
    new-array v13, v6, [Lcom/android/dx/Local;

    .line 758
    .line 759
    aput-object v8, v13, v15

    .line 760
    .line 761
    invoke-virtual {v1, v5, v10, v9, v13}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 762
    .line 763
    .line 764
    :goto_3
    invoke-virtual {v1, v3}, Lcom/android/dx/Code;->jump(Lcom/android/dx/Label;)V

    .line 765
    .line 766
    .line 767
    sget-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->throwableTypeId:Lcom/android/dx/TypeId;

    .line 768
    .line 769
    invoke-virtual {v1, v5}, Lcom/android/dx/Code;->removeCatchClause(Lcom/android/dx/TypeId;)Lcom/android/dx/Label;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v1, v2}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 773
    .line 774
    .line 775
    move-object/from16 v2, v35

    .line 776
    .line 777
    invoke-virtual {v1, v2}, Lcom/android/dx/Code;->moveException(Lcom/android/dx/Local;)V

    .line 778
    .line 779
    .line 780
    sget-object v13, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->setThrowableMethodId:Lcom/android/dx/MethodId;

    .line 781
    .line 782
    move-object/from16 v22, v12

    .line 783
    .line 784
    new-array v12, v6, [Lcom/android/dx/Local;

    .line 785
    .line 786
    aput-object v2, v12, v15

    .line 787
    .line 788
    invoke-virtual {v1, v13, v10, v9, v12}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v1, v3}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 792
    .line 793
    .line 794
    sget-object v3, Lcom/android/dx/BinaryOp;->SUBTRACT:Lcom/android/dx/BinaryOp;

    .line 795
    .line 796
    invoke-virtual {v1, v3, v4, v4, v14}, Lcom/android/dx/Code;->op(Lcom/android/dx/BinaryOp;Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 797
    .line 798
    .line 799
    move-object/from16 v6, v21

    .line 800
    .line 801
    invoke-virtual {v1, v6}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 802
    .line 803
    .line 804
    sget-object v10, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->getResultMethodId:Lcom/android/dx/MethodId;

    .line 805
    .line 806
    new-array v12, v15, [Lcom/android/dx/Local;

    .line 807
    .line 808
    move-object/from16 v15, v44

    .line 809
    .line 810
    invoke-virtual {v1, v10, v15, v9, v12}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 811
    .line 812
    .line 813
    sget-object v12, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->getThrowableMethodId:Lcom/android/dx/MethodId;

    .line 814
    .line 815
    move-object/from16 v25, v8

    .line 816
    .line 817
    move-object/from16 v45, v11

    .line 818
    .line 819
    const/4 v11, 0x0

    .line 820
    new-array v8, v11, [Lcom/android/dx/Local;

    .line 821
    .line 822
    move-object/from16 v11, v42

    .line 823
    .line 824
    invoke-virtual {v1, v12, v11, v9, v8}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 825
    .line 826
    .line 827
    move-object/from16 v8, v20

    .line 828
    .line 829
    invoke-virtual {v1, v5, v8}, Lcom/android/dx/Code;->addCatchClause(Lcom/android/dx/TypeId;Lcom/android/dx/Label;)V

    .line 830
    .line 831
    .line 832
    move-object/from16 v21, v10

    .line 833
    .line 834
    move-object/from16 v20, v12

    .line 835
    .line 836
    move-object/from16 v10, v29

    .line 837
    .line 838
    move-object/from16 v12, v32

    .line 839
    .line 840
    invoke-virtual {v1, v10, v12, v4}, Lcom/android/dx/Code;->aget(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 841
    .line 842
    .line 843
    move-object/from16 v12, v30

    .line 844
    .line 845
    invoke-virtual {v1, v12, v10}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 846
    .line 847
    .line 848
    sget-object v10, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->callAfterCallbackMethodId:Lcom/android/dx/MethodId;

    .line 849
    .line 850
    move-object/from16 v23, v7

    .line 851
    .line 852
    const/4 v7, 0x1

    .line 853
    new-array v0, v7, [Lcom/android/dx/Local;

    .line 854
    .line 855
    const/4 v7, 0x0

    .line 856
    aput-object v9, v0, v7

    .line 857
    .line 858
    const/4 v7, 0x0

    .line 859
    invoke-virtual {v1, v10, v7, v12, v0}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 860
    .line 861
    .line 862
    move-object/from16 v0, v19

    .line 863
    .line 864
    invoke-virtual {v1, v0}, Lcom/android/dx/Code;->jump(Lcom/android/dx/Label;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v1, v5}, Lcom/android/dx/Code;->removeCatchClause(Lcom/android/dx/TypeId;)Lcom/android/dx/Label;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v1, v8}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v1, v2}, Lcom/android/dx/Code;->moveException(Lcom/android/dx/Local;)V

    .line 874
    .line 875
    .line 876
    sget-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->logThrowableMethodId:Lcom/android/dx/MethodId;

    .line 877
    .line 878
    const/4 v8, 0x1

    .line 879
    new-array v10, v8, [Lcom/android/dx/Local;

    .line 880
    .line 881
    const/4 v12, 0x0

    .line 882
    aput-object v2, v10, v12

    .line 883
    .line 884
    invoke-virtual {v1, v5, v7, v10}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 885
    .line 886
    .line 887
    sget-object v5, Lcom/android/dx/Comparison;->EQ:Lcom/android/dx/Comparison;

    .line 888
    .line 889
    move-object/from16 v10, v18

    .line 890
    .line 891
    invoke-virtual {v1, v5, v10, v11}, Lcom/android/dx/Code;->compareZ(Lcom/android/dx/Comparison;Lcom/android/dx/Label;Lcom/android/dx/Local;)V

    .line 892
    .line 893
    .line 894
    new-array v5, v8, [Lcom/android/dx/Local;

    .line 895
    .line 896
    aput-object v11, v5, v12

    .line 897
    .line 898
    invoke-virtual {v1, v13, v7, v9, v5}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v1, v0}, Lcom/android/dx/Code;->jump(Lcom/android/dx/Label;)V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v1, v10}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 905
    .line 906
    .line 907
    sget-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->setResultMethodId:Lcom/android/dx/MethodId;

    .line 908
    .line 909
    new-array v10, v8, [Lcom/android/dx/Local;

    .line 910
    .line 911
    aput-object v15, v10, v12

    .line 912
    .line 913
    invoke-virtual {v1, v5, v7, v9, v10}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v1, v0}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v1, v3, v4, v4, v14}, Lcom/android/dx/Code;->op(Lcom/android/dx/BinaryOp;Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 920
    .line 921
    .line 922
    sget-object v0, Lcom/android/dx/Comparison;->GE:Lcom/android/dx/Comparison;

    .line 923
    .line 924
    invoke-virtual {v1, v0, v6, v4}, Lcom/android/dx/Code;->compareZ(Lcom/android/dx/Comparison;Lcom/android/dx/Label;Lcom/android/dx/Local;)V

    .line 925
    .line 926
    .line 927
    sget-object v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->hasThrowableMethodId:Lcom/android/dx/MethodId;

    .line 928
    .line 929
    new-array v3, v12, [Lcom/android/dx/Local;

    .line 930
    .line 931
    move-object/from16 v4, v43

    .line 932
    .line 933
    invoke-virtual {v1, v0, v4, v9, v3}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 934
    .line 935
    .line 936
    sget-object v0, Lcom/android/dx/Comparison;->NE:Lcom/android/dx/Comparison;

    .line 937
    .line 938
    move-object/from16 v3, v17

    .line 939
    .line 940
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/dx/Code;->compareZ(Lcom/android/dx/Comparison;Lcom/android/dx/Label;Lcom/android/dx/Local;)V

    .line 941
    .line 942
    .line 943
    move-object/from16 v0, p0

    .line 944
    .line 945
    iget-object v4, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 946
    .line 947
    move-object/from16 v5, v23

    .line 948
    .line 949
    invoke-virtual {v4, v5}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 950
    .line 951
    .line 952
    move-result v4

    .line 953
    if-eqz v4, :cond_4

    .line 954
    .line 955
    invoke-virtual {v1}, Lcom/android/dx/Code;->returnVoid()V

    .line 956
    .line 957
    .line 958
    move-object/from16 v7, v45

    .line 959
    .line 960
    goto :goto_4

    .line 961
    :cond_4
    new-array v4, v12, [Lcom/android/dx/Local;

    .line 962
    .line 963
    move-object/from16 v7, v21

    .line 964
    .line 965
    move-object/from16 v6, v25

    .line 966
    .line 967
    invoke-virtual {v1, v7, v6, v9, v4}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 968
    .line 969
    .line 970
    iget-object v4, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 971
    .line 972
    invoke-static {v4}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->getObjTypeIdIfPrimitive(Lcom/android/dx/TypeId;)Lcom/android/dx/TypeId;

    .line 973
    .line 974
    .line 975
    move-result-object v4

    .line 976
    move-object/from16 v7, v45

    .line 977
    .line 978
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v4

    .line 982
    check-cast v4, Lcom/android/dx/Local;

    .line 983
    .line 984
    invoke-virtual {v1, v4, v6}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 985
    .line 986
    .line 987
    iget-object v6, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 988
    .line 989
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object v6

    .line 993
    check-cast v6, Lcom/android/dx/Local;

    .line 994
    .line 995
    const/4 v8, 0x1

    .line 996
    invoke-static {v1, v6, v4, v7, v8}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->autoUnboxIfNecessary(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;Ljava/util/Map;Z)V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v1, v6}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 1000
    .line 1001
    .line 1002
    :goto_4
    invoke-virtual {v1, v3}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 1003
    .line 1004
    .line 1005
    const/4 v3, 0x0

    .line 1006
    new-array v3, v3, [Lcom/android/dx/Local;

    .line 1007
    .line 1008
    move-object/from16 v4, v20

    .line 1009
    .line 1010
    invoke-virtual {v1, v4, v2, v9, v3}, Lcom/android/dx/Code;->invokeVirtual(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v1, v2}, Lcom/android/dx/Code;->throwValue(Lcom/android/dx/Local;)V

    .line 1014
    .line 1015
    .line 1016
    move-object/from16 v2, v31

    .line 1017
    .line 1018
    invoke-virtual {v1, v2}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    .line 1019
    .line 1020
    .line 1021
    iget-object v2, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 1022
    .line 1023
    invoke-virtual {v2, v5}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v2

    .line 1027
    if-eqz v2, :cond_5

    .line 1028
    .line 1029
    iget-object v2, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodId:Lcom/android/dx/MethodId;

    .line 1030
    .line 1031
    move-object/from16 v3, v22

    .line 1032
    .line 1033
    const/4 v4, 0x0

    .line 1034
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v1}, Lcom/android/dx/Code;->returnVoid()V

    .line 1038
    .line 1039
    .line 1040
    goto :goto_5

    .line 1041
    :cond_5
    move-object/from16 v3, v22

    .line 1042
    .line 1043
    iget-object v2, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 1044
    .line 1045
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v2

    .line 1049
    check-cast v2, Lcom/android/dx/Local;

    .line 1050
    .line 1051
    iget-object v4, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodId:Lcom/android/dx/MethodId;

    .line 1052
    .line 1053
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v1, v2}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 1057
    .line 1058
    .line 1059
    :goto_5
    return-void
.end method

.method private generateSetupMethod()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 2
    .line 3
    sget-object v1, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [Lcom/android/dx/TypeId;

    .line 7
    .line 8
    sget-object v3, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->memberTypeId:Lcom/android/dx/TypeId;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    sget-object v5, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->methodTypeId:Lcom/android/dx/TypeId;

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    aput-object v5, v2, v6

    .line 17
    .line 18
    sget-object v7, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->hookInfoTypeId:Lcom/android/dx/TypeId;

    .line 19
    .line 20
    const/4 v8, 0x2

    .line 21
    aput-object v7, v2, v8

    .line 22
    .line 23
    const-string v9, "setup"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v9, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 30
    .line 31
    const/16 v2, 0x9

    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v4, v3}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v6, v5}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v8, v7}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-object v4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mMethodFieldId:Lcom/android/dx/FieldId;

    .line 50
    .line 51
    invoke-virtual {v0, v4, v1}, Lcom/android/dx/Code;->sput(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethodFieldId:Lcom/android/dx/FieldId;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/android/dx/Code;->sput(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookInfoFieldId:Lcom/android/dx/FieldId;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v3}, Lcom/android/dx/Code;->sput(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/dx/Code;->returnVoid()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private getClassName(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SandHooker_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private static getParameterTypeIds([Ljava/lang/Class;Z)[Lcom/android/dx/TypeId;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;Z)[",
            "Lcom/android/dx/TypeId<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    :goto_0
    new-array v0, v0, [Lcom/android/dx/TypeId;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    sget-object p1, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 13
    .line 14
    aput-object p1, v0, v1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_1
    array-length v2, p0

    .line 20
    if-ge v1, v2, :cond_2

    .line 21
    .line 22
    add-int v2, v1, p1

    .line 23
    .line 24
    aget-object v3, p0, v1

    .line 25
    .line 26
    invoke-static {v3}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aput-object v3, v0, v2

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    return-object v0
.end method

.method private static getParameterTypes([Ljava/lang/Class;Z)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;Z)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    array-length p1, p0

    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p1, v0

    .line 7
    new-array p1, p1, [Ljava/lang/Class;

    .line 8
    .line 9
    const-class v1, Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, p1, v2

    .line 13
    .line 14
    array-length v1, p0

    .line 15
    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method private loadHookerClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookClass:Ljava/lang/Class;

    .line 6
    .line 7
    const-string p2, "hook"

    .line 8
    .line 9
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mActualParameterTypes:[Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookMethod:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookClass:Ljava/lang/Class;

    .line 18
    .line 19
    const-string p2, "backup"

    .line 20
    .line 21
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mActualParameterTypes:[Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethod:Ljava/lang/reflect/Method;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookClass:Ljava/lang/Class;

    .line 30
    .line 31
    const-string p2, "callBackup"

    .line 32
    .line 33
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mActualParameterTypes:[Ljava/lang/Class;

    .line 34
    .line 35
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mCallBackupMethod:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/swift/sandhook/SandHook;->resolveStaticMethod(Ljava/lang/reflect/Member;)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mCallBackupMethod:Ljava/lang/reflect/Method;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethod:Ljava/lang/reflect/Method;

    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/swift/sandhook/SandHookMethodResolver;->resolveMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mCallBackupMethod:Ljava/lang/reflect/Method;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/swift/sandhook/SandHook;->compileMethod(Ljava/lang/reflect/Member;)Z

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookClass:Ljava/lang/Class;

    .line 57
    .line 58
    const/4 p2, 0x3

    .line 59
    new-array v0, p2, [Ljava/lang/Class;

    .line 60
    .line 61
    const-class v1, Ljava/lang/reflect/Member;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    aput-object v1, v0, v2

    .line 65
    .line 66
    const-class v1, Ljava/lang/reflect/Method;

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    aput-object v1, v0, v3

    .line 70
    .line 71
    const-class v1, Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

    .line 72
    .line 73
    const/4 v4, 0x2

    .line 74
    aput-object v1, v0, v4

    .line 75
    .line 76
    const-string v1, "setup"

    .line 77
    .line 78
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-array p2, p2, [Ljava/lang/Object;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mMember:Ljava/lang/reflect/Member;

    .line 85
    .line 86
    aput-object v0, p2, v2

    .line 87
    .line 88
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethod:Ljava/lang/reflect/Method;

    .line 89
    .line 90
    aput-object v0, p2, v3

    .line 91
    .line 92
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookInfo:Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

    .line 93
    .line 94
    aput-object v0, p2, v4

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    new-instance p1, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    .line 101
    .line 102
    iget-object p2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mMember:Ljava/lang/reflect/Member;

    .line 103
    .line 104
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookMethod:Ljava/lang/reflect/Method;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethod:Ljava/lang/reflect/Method;

    .line 107
    .line 108
    invoke-direct {p1, p2, v0, v1}, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 109
    .line 110
    .line 111
    return-object p1
.end method


# virtual methods
.method public getBackupMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mBackupMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallBackupMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mCallBackupMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHookClass()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHookMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public start(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Ljava/lang/reflect/Method;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iput-boolean v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mIsStatic:Z

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnType:Ljava/lang/Class;

    .line 25
    .line 26
    const-class v4, Ljava/lang/Void;

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    iget-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnType:Ljava/lang/Class;

    .line 35
    .line 36
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    iget-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnType:Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-class v3, Ljava/lang/Object;

    .line 54
    .line 55
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnType:Ljava/lang/Class;

    .line 56
    .line 57
    sget-object v3, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 58
    .line 59
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnType:Ljava/lang/Class;

    .line 63
    .line 64
    invoke-static {v3}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 69
    .line 70
    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-boolean v4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mIsStatic:Z

    .line 75
    .line 76
    invoke-static {v3, v4}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->getParameterTypeIds([Ljava/lang/Class;Z)[Lcom/android/dx/TypeId;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-boolean v4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mIsStatic:Z

    .line 87
    .line 88
    invoke-static {v3, v4}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->getParameterTypes([Ljava/lang/Class;Z)[Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mActualParameterTypes:[Ljava/lang/Class;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    array-length v0, v0

    .line 99
    if-lez v0, :cond_2

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    const/4 v1, 0x0

    .line 103
    :goto_2
    iput-boolean v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHasThrowable:Z

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/Constructor;

    .line 107
    .line 108
    if-eqz v0, :cond_9

    .line 109
    .line 110
    move-object v0, p1

    .line 111
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 112
    .line 113
    iput-boolean v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mIsStatic:Z

    .line 114
    .line 115
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 116
    .line 117
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnType:Ljava/lang/Class;

    .line 118
    .line 119
    sget-object v3, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 120
    .line 121
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-boolean v4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mIsStatic:Z

    .line 128
    .line 129
    invoke-static {v3, v4}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->getParameterTypeIds([Ljava/lang/Class;Z)[Lcom/android/dx/TypeId;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-boolean v4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mIsStatic:Z

    .line 140
    .line 141
    invoke-static {v3, v4}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->getParameterTypes([Ljava/lang/Class;Z)[Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mActualParameterTypes:[Ljava/lang/Class;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    array-length v0, v0

    .line 152
    if-lez v0, :cond_4

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    const/4 v1, 0x0

    .line 156
    :goto_3
    iput-boolean v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHasThrowable:Z

    .line 157
    .line 158
    :goto_4
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mMember:Ljava/lang/reflect/Member;

    .line 159
    .line 160
    iput-object p2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mHookInfo:Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

    .line 161
    .line 162
    iput-object p4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexDirPath:Ljava/lang/String;

    .line 163
    .line 164
    if-eqz p3, :cond_6

    .line 165
    .line 166
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-string p2, "java.lang.BootClassLoader"

    .line 175
    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_5

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_5
    iput-object p3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mAppClassLoader:Ljava/lang/ClassLoader;

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_6
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mAppClassLoader:Ljava/lang/ClassLoader;

    .line 195
    .line 196
    :goto_6
    new-instance p1, Lcom/android/dx/DexMaker;

    .line 197
    .line 198
    invoke-direct {p1}, Lcom/android/dx/DexMaker;-><init>()V

    .line 199
    .line 200
    .line 201
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 202
    .line 203
    iget-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mMember:Ljava/lang/reflect/Member;

    .line 204
    .line 205
    invoke-direct {p0, p1}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->getClassName(Ljava/lang/reflect/Member;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string p3, ".jar"

    .line 218
    .line 219
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    const/4 p3, 0x0

    .line 227
    :try_start_0
    iget-object p4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 228
    .line 229
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mAppClassLoader:Ljava/lang/ClassLoader;

    .line 230
    .line 231
    new-instance v1, Ljava/io/File;

    .line 232
    .line 233
    iget-object v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->mDexDirPath:Ljava/lang/String;

    .line 234
    .line 235
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p4, v0, v1, p2}, Lcom/android/dx/DexMaker;->loadClassDirect(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/lang/String;)Ljava/lang/ClassLoader;

    .line 239
    .line 240
    .line 241
    move-result-object p4

    .line 242
    if-eqz p4, :cond_7

    .line 243
    .line 244
    invoke-direct {p0, p4, p1}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->loadHookerClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    .line 245
    .line 246
    .line 247
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    goto :goto_7

    .line 249
    :catchall_0
    nop

    .line 250
    :cond_7
    :goto_7
    if-nez p3, :cond_8

    .line 251
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMaker;->doMake(Ljava/lang/String;Ljava/lang/String;)Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    :cond_8
    invoke-static {p3}, Lcom/swift/sandhook/SandHook;->hook(Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :cond_9
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    if-nez p2, :cond_b

    .line 269
    .line 270
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 271
    .line 272
    .line 273
    move-result p2

    .line 274
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    if-eqz p2, :cond_a

    .line 279
    .line 280
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 281
    .line 282
    new-instance p3, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string p4, "Cannot hook abstract methods: "

    .line 288
    .line 289
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw p2

    .line 307
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 308
    .line 309
    new-instance p3, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string p4, "Only methods and constructors can be hooked: "

    .line 315
    .line 316
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw p2

    .line 334
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 335
    .line 336
    new-instance p3, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    const-string p4, "Cannot hook interfaces: "

    .line 342
    .line 343
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw p2
.end method

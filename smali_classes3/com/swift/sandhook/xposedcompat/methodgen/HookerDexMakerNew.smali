.class public Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/swift/sandhook/xposedcompat/methodgen/HookMaker;


# static fields
.field private static final CLASS_DESC_PREFIX:Ljava/lang/String; = "L"

.field private static final CLASS_NAME_PREFIX:Ljava/lang/String; = "SandHookerNew"

.field private static final FIELD_NAME_BACKUP_METHOD:Ljava/lang/String; = "backupMethod"

.field private static final FIELD_NAME_HOOK_INFO:Ljava/lang/String; = "additionalHookInfo"

.field private static final FIELD_NAME_METHOD:Ljava/lang/String; = "method"

.field public static final METHOD_NAME_BACKUP:Ljava/lang/String; = "backup"

.field public static final METHOD_NAME_HOOK:Ljava/lang/String; = "hook"

.field private static final hookInfoTypeId:Lcom/android/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/TypeId<",
            "Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;",
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

.field private mSandHookBridgeMethodId:Lcom/android/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dx/MethodId<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

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
    sput-object v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->objArrayTypeId:Lcom/android/dx/TypeId;

    .line 8
    .line 9
    const-class v0, Ljava/lang/reflect/Member;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->memberTypeId:Lcom/android/dx/TypeId;

    .line 16
    .line 17
    const-class v0, Ljava/lang/reflect/Method;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->methodTypeId:Lcom/android/dx/TypeId;

    .line 24
    .line 25
    const-class v0, Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->hookInfoTypeId:Lcom/android/dx/TypeId;

    .line 32
    .line 33
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
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mParameterTypeIds:[Lcom/android/dx/TypeId;

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
    iget-object v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mParameterTypeIds:[Lcom/android/dx/TypeId;

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
    iput-object v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexMaker:Lcom/android/dx/DexMaker;

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
    invoke-direct {p0}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->generateFields()V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->generateHookMethod()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->generateBackupMethod()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexDirPath:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/16 v1, 0x1a

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    sget p2, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 78
    .line 79
    if-lt p2, v1, :cond_0

    .line 80
    .line 81
    iget-object p2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/android/dx/DexMaker;->generate()[B

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {}, Lc8/b;->a()V

    .line 88
    .line 89
    .line 90
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mAppClassLoader:Ljava/lang/ClassLoader;

    .line 95
    .line 96
    invoke-static {p2, v0}, Lc8/a;->a(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)Ldalvik/system/InMemoryDexClassLoader;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string p2, "dexDirPath should not be empty!!!"

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 110
    .line 111
    iget-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mAppClassLoader:Ljava/lang/ClassLoader;

    .line 112
    .line 113
    new-instance v4, Ljava/io/File;

    .line 114
    .line 115
    iget-object v5, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexDirPath:Ljava/lang/String;

    .line 116
    .line 117
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v3, v4, p2}, Lcom/android/dx/DexMaker;->generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/lang/String;)Ljava/lang/ClassLoader;

    .line 121
    .line 122
    .line 123
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 125
    :catch_0
    nop

    .line 126
    sget p2, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 127
    .line 128
    if-lt p2, v1, :cond_2

    .line 129
    .line 130
    iget-object p2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/android/dx/DexMaker;->generate()[B

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {}, Lc8/b;->a()V

    .line 137
    .line 138
    .line 139
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mAppClassLoader:Ljava/lang/ClassLoader;

    .line 144
    .line 145
    invoke-static {p2, v0}, Lc8/a;->a(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)Ldalvik/system/InMemoryDexClassLoader;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    goto :goto_0

    .line 150
    :cond_2
    move-object p2, v2

    .line 151
    :goto_0
    if-nez p2, :cond_3

    .line 152
    .line 153
    return-object v2

    .line 154
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->loadHookerClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    return-object p1
.end method

.method private generateBackupMethod()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 2
    .line 3
    sget-object v1, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Lcom/android/dx/TypeId;

    .line 7
    .line 8
    const-string v3, "backup"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mBackupMethodId:Lcom/android/dx/MethodId;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 17
    .line 18
    const/16 v2, 0x9

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/dx/Code;->returnVoid()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private generateFields()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 2
    .line 3
    sget-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->hookInfoTypeId:Lcom/android/dx/TypeId;

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
    iput-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookInfoFieldId:Lcom/android/dx/FieldId;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 14
    .line 15
    sget-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->memberTypeId:Lcom/android/dx/TypeId;

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
    iput-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mMethodFieldId:Lcom/android/dx/FieldId;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 26
    .line 27
    sget-object v1, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->methodTypeId:Lcom/android/dx/TypeId;

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
    iput-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mBackupMethodFieldId:Lcom/android/dx/FieldId;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookInfoFieldId:Lcom/android/dx/FieldId;

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
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mMethodFieldId:Lcom/android/dx/FieldId;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/FieldId;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mBackupMethodFieldId:Lcom/android/dx/FieldId;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/FieldId;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private generateHookMethod()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookerTypeId:Lcom/android/dx/TypeId;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 6
    .line 7
    const-string v3, "hook"

    .line 8
    .line 9
    iget-object v4, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookMethodId:Lcom/android/dx/MethodId;

    .line 16
    .line 17
    const-class v1, Lcom/swift/sandhook/xposedcompat/hookstub/HookStubManager;

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
    const/4 v4, 0x5

    .line 30
    new-array v5, v4, [Lcom/android/dx/TypeId;

    .line 31
    .line 32
    sget-object v6, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->memberTypeId:Lcom/android/dx/TypeId;

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    aput-object v6, v5, v7

    .line 36
    .line 37
    sget-object v8, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->methodTypeId:Lcom/android/dx/TypeId;

    .line 38
    .line 39
    const/4 v9, 0x1

    .line 40
    aput-object v8, v5, v9

    .line 41
    .line 42
    sget-object v10, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->hookInfoTypeId:Lcom/android/dx/TypeId;

    .line 43
    .line 44
    const/4 v11, 0x2

    .line 45
    aput-object v10, v5, v11

    .line 46
    .line 47
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v12, 0x3

    .line 52
    aput-object v2, v5, v12

    .line 53
    .line 54
    const-class v2, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/4 v13, 0x4

    .line 61
    aput-object v2, v5, v13

    .line 62
    .line 63
    const-string v2, "hookBridge"

    .line 64
    .line 65
    invoke-virtual {v1, v3, v2, v5}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mSandHookBridgeMethodId:Lcom/android/dx/MethodId;

    .line 70
    .line 71
    iget-object v1, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 72
    .line 73
    iget-object v2, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookMethodId:Lcom/android/dx/MethodId;

    .line 74
    .line 75
    const/16 v3, 0x9

    .line 76
    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1, v6}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v8}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v1, v10}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    sget-object v6, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 94
    .line 95
    invoke-virtual {v1, v6}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    sget-object v10, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->objArrayTypeId:Lcom/android/dx/TypeId;

    .line 100
    .line 101
    invoke-virtual {v1, v10}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    sget-object v14, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    .line 106
    .line 107
    invoke-virtual {v1, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 108
    .line 109
    .line 110
    move-result-object v15

    .line 111
    invoke-virtual {v1, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    invoke-virtual {v1, v6}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-direct {v0, v1}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->createParameterLocals(Lcom/android/dx/Code;)[Lcom/android/dx/Local;

    .line 120
    .line 121
    .line 122
    move-result-object v16

    .line 123
    invoke-static {v1}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->createResultLocals(Lcom/android/dx/Code;)Ljava/util/Map;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    const/4 v12, 0x0

    .line 128
    invoke-virtual {v1, v10, v12}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    invoke-virtual {v1, v14, v11}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-object v11, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mMethodFieldId:Lcom/android/dx/FieldId;

    .line 139
    .line 140
    invoke-virtual {v1, v11, v2}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 141
    .line 142
    .line 143
    iget-object v11, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mBackupMethodFieldId:Lcom/android/dx/FieldId;

    .line 144
    .line 145
    invoke-virtual {v1, v11, v3}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 146
    .line 147
    .line 148
    iget-object v11, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookInfoFieldId:Lcom/android/dx/FieldId;

    .line 149
    .line 150
    invoke-virtual {v1, v11, v5}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 151
    .line 152
    .line 153
    iget-object v11, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 154
    .line 155
    array-length v11, v11

    .line 156
    iget-boolean v9, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mIsStatic:Z

    .line 157
    .line 158
    if-eqz v9, :cond_0

    .line 159
    .line 160
    invoke-virtual {v1, v8, v12}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    const/4 v9, 0x0

    .line 164
    goto :goto_0

    .line 165
    :cond_0
    aget-object v9, v16, v7

    .line 166
    .line 167
    invoke-virtual {v1, v8, v9}, Lcom/android/dx/Code;->move(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 168
    .line 169
    .line 170
    const/4 v9, 0x1

    .line 171
    :goto_0
    sub-int v17, v11, v9

    .line 172
    .line 173
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    invoke-virtual {v1, v15, v12}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v10, v15}, Lcom/android/dx/Code;->newArray(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 181
    .line 182
    .line 183
    move v12, v9

    .line 184
    :goto_1
    if-ge v12, v11, :cond_1

    .line 185
    .line 186
    aget-object v15, v16, v12

    .line 187
    .line 188
    invoke-static {v1, v6, v15}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->autoBoxIfNecessary(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 189
    .line 190
    .line 191
    sub-int v15, v12, v9

    .line 192
    .line 193
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    invoke-virtual {v1, v14, v15}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v10, v14, v6}, Lcom/android/dx/Code;->aput(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 201
    .line 202
    .line 203
    add-int/lit8 v12, v12, 0x1

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_1
    iget-object v9, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 207
    .line 208
    sget-object v11, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 209
    .line 210
    invoke-virtual {v9, v11}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    if-eqz v9, :cond_2

    .line 215
    .line 216
    iget-object v6, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mSandHookBridgeMethodId:Lcom/android/dx/MethodId;

    .line 217
    .line 218
    new-array v4, v4, [Lcom/android/dx/Local;

    .line 219
    .line 220
    aput-object v2, v4, v7

    .line 221
    .line 222
    const/4 v9, 0x1

    .line 223
    aput-object v3, v4, v9

    .line 224
    .line 225
    const/4 v11, 0x2

    .line 226
    aput-object v5, v4, v11

    .line 227
    .line 228
    const/4 v12, 0x3

    .line 229
    aput-object v8, v4, v12

    .line 230
    .line 231
    const/4 v14, 0x4

    .line 232
    aput-object v10, v4, v14

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    invoke-virtual {v1, v6, v2, v4}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/android/dx/Code;->returnVoid()V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_2
    const/4 v9, 0x1

    .line 243
    const/4 v11, 0x2

    .line 244
    const/4 v12, 0x3

    .line 245
    const/4 v14, 0x4

    .line 246
    iget-object v15, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mSandHookBridgeMethodId:Lcom/android/dx/MethodId;

    .line 247
    .line 248
    new-array v4, v4, [Lcom/android/dx/Local;

    .line 249
    .line 250
    aput-object v2, v4, v7

    .line 251
    .line 252
    aput-object v3, v4, v9

    .line 253
    .line 254
    aput-object v5, v4, v11

    .line 255
    .line 256
    aput-object v8, v4, v12

    .line 257
    .line 258
    aput-object v10, v4, v14

    .line 259
    .line 260
    invoke-virtual {v1, v15, v6, v4}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 261
    .line 262
    .line 263
    iget-object v2, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 264
    .line 265
    invoke-static {v2}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->getObjTypeIdIfPrimitive(Lcom/android/dx/TypeId;)Lcom/android/dx/TypeId;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    check-cast v2, Lcom/android/dx/Local;

    .line 274
    .line 275
    invoke-virtual {v1, v2, v6}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 276
    .line 277
    .line 278
    iget-object v3, v0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 279
    .line 280
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    check-cast v3, Lcom/android/dx/Local;

    .line 285
    .line 286
    const/4 v4, 0x1

    .line 287
    invoke-static {v1, v3, v2, v13, v4}, Lcom/swift/sandhook/xposedcompat/utils/DexMakerUtils;->autoUnboxIfNecessary(Lcom/android/dx/Code;Lcom/android/dx/Local;Lcom/android/dx/Local;Ljava/util/Map;Z)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v3}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    .line 291
    .line 292
    .line 293
    :goto_2
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
    const-string v1, "SandHookerNew_"

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
    .locals 3
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
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookClass:Ljava/lang/Class;

    .line 6
    .line 7
    const-string p2, "hook"

    .line 8
    .line 9
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mActualParameterTypes:[Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookMethod:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookClass:Ljava/lang/Class;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    new-array v0, p2, [Ljava/lang/Class;

    .line 21
    .line 22
    const-string v1, "backup"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mBackupMethod:Ljava/lang/reflect/Method;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookClass:Ljava/lang/Class;

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->setup(Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mMember:Ljava/lang/reflect/Member;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookMethod:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mBackupMethod:Ljava/lang/reflect/Method;

    .line 42
    .line 43
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method

.method private setup(Ljava/lang/Class;)V
    .locals 2

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mMember:Ljava/lang/reflect/Member;

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "backupMethod"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mBackupMethod:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "additionalHookInfo"

    .line 16
    .line 17
    iget-object v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookInfo:Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

    .line 18
    .line 19
    invoke-static {p1, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public getBackupMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mBackupMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallBackupMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mBackupMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHookClass()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHookMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookMethod:Ljava/lang/reflect/Method;

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
    iput-boolean v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mIsStatic:Z

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnType:Ljava/lang/Class;

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
    iget-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnType:Ljava/lang/Class;

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
    iget-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnType:Ljava/lang/Class;

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
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnType:Ljava/lang/Class;

    .line 56
    .line 57
    sget-object v3, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    .line 58
    .line 59
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnType:Ljava/lang/Class;

    .line 63
    .line 64
    invoke-static {v3}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 69
    .line 70
    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-boolean v4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mIsStatic:Z

    .line 75
    .line 76
    invoke-static {v3, v4}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->getParameterTypeIds([Ljava/lang/Class;Z)[Lcom/android/dx/TypeId;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-boolean v4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mIsStatic:Z

    .line 87
    .line 88
    invoke-static {v3, v4}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->getParameterTypes([Ljava/lang/Class;Z)[Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mActualParameterTypes:[Ljava/lang/Class;

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
    iput-boolean v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHasThrowable:Z

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
    iput-boolean v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mIsStatic:Z

    .line 114
    .line 115
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 116
    .line 117
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnType:Ljava/lang/Class;

    .line 118
    .line 119
    sget-object v3, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    .line 120
    .line 121
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mReturnTypeId:Lcom/android/dx/TypeId;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-boolean v4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mIsStatic:Z

    .line 128
    .line 129
    invoke-static {v3, v4}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->getParameterTypeIds([Ljava/lang/Class;Z)[Lcom/android/dx/TypeId;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mParameterTypeIds:[Lcom/android/dx/TypeId;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-boolean v4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mIsStatic:Z

    .line 140
    .line 141
    invoke-static {v3, v4}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->getParameterTypes([Ljava/lang/Class;Z)[Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iput-object v3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mActualParameterTypes:[Ljava/lang/Class;

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
    iput-boolean v1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHasThrowable:Z

    .line 157
    .line 158
    :goto_4
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mMember:Ljava/lang/reflect/Member;

    .line 159
    .line 160
    iput-object p2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mHookInfo:Lde/robv/android/xposed/XposedBridge$AdditionalHookInfo;

    .line 161
    .line 162
    iput-object p4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexDirPath:Ljava/lang/String;

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
    iput-object p3, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mAppClassLoader:Ljava/lang/ClassLoader;

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
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mAppClassLoader:Ljava/lang/ClassLoader;

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
    iput-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 202
    .line 203
    iget-object p1, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mMember:Ljava/lang/reflect/Member;

    .line 204
    .line 205
    invoke-direct {p0, p1}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->getClassName(Ljava/lang/reflect/Member;)Ljava/lang/String;

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
    iget-object p4, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexMaker:Lcom/android/dx/DexMaker;

    .line 228
    .line 229
    iget-object v0, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mAppClassLoader:Ljava/lang/ClassLoader;

    .line 230
    .line 231
    new-instance v1, Ljava/io/File;

    .line 232
    .line 233
    iget-object v2, p0, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->mDexDirPath:Ljava/lang/String;

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
    invoke-direct {p0, p4, p1}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->loadHookerClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

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
    invoke-direct {p0, p1, p2}, Lcom/swift/sandhook/xposedcompat/methodgen/HookerDexMakerNew;->doMake(Ljava/lang/String;Ljava/lang/String;)Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

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

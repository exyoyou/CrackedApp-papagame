.class public Lcom/swift/sandhook/SandHookMethodResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static artMethodField:Ljava/lang/reflect/Field;

.field public static canResolvedInJava:Z

.field public static dexCacheField:Ljava/lang/reflect/Field;

.field public static dexMethodIndex:I

.field public static dexMethodIndexField:Ljava/lang/reflect/Field;

.field public static entryPointFromCompiledCode:J

.field public static entryPointFromInterpreter:J

.field public static fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

.field public static fieldEntryPointFromInterpreter:Ljava/lang/reflect/Field;

.field public static isArtMethod:Z

.field public static resolvedMethodsAddress:J

.field public static resolvedMethodsField:Ljava/lang/reflect/Field;

.field public static testArtMethod:Ljava/lang/Object;

.field public static testMethod:Ljava/lang/reflect/Method;


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

.method private static checkSupport()V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const-string v1, "artMethod"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    .line 10
    .line 11
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testMethod:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {}, Lcom/swift/sandhook/SandHook;->hasJavaArtMethod()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/swift/sandhook/SandHookMethodResolver;->checkSupportForArtMethod()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    sput-boolean v0, Lcom/swift/sandhook/SandHookMethodResolver;->isArtMethod:Z

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    .line 43
    .line 44
    instance-of v0, v0, Ljava/lang/Long;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lcom/swift/sandhook/SandHookMethodResolver;->checkSupportForArtMethodId()V

    .line 50
    .line 51
    .line 52
    sput-boolean v1, Lcom/swift/sandhook/SandHookMethodResolver;->isArtMethod:Z

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    sput-boolean v1, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    :catch_0
    :goto_0
    return-void
.end method

.method private static checkSupportForArtMethod()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    .line 2
    .line 3
    const-string v1, "dexMethodIndex"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    sget-object v0, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    .line 13
    .line 14
    const-string v1, "methodDexIndex"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;

    .line 21
    .line 22
    :goto_0
    const-class v0, Ljava/lang/Class;

    .line 23
    .line 24
    const-string v1, "dexCache"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexCacheField:Ljava/lang/reflect/Field;

    .line 31
    .line 32
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testMethod:Ljava/lang/reflect/Method;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "resolvedMethods"

    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sput-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsField:Ljava/lang/reflect/Field;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    instance-of v0, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    sput-boolean v0, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z

    .line 64
    .line 65
    :cond_0
    :try_start_1
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;

    .line 66
    .line 67
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sput v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    :catchall_0
    :try_start_2
    sget-object v0, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    .line 82
    .line 83
    const-string v1, "entryPointFromQuickCompiledCode"

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_1
    :try_start_3
    sget-object v0, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    .line 93
    .line 94
    const-string v1, "entryPointFromCompiledCode"

    .line 95
    .line 96
    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    .line 101
    .line 102
    :goto_1
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 109
    .line 110
    if-ne v0, v1, :cond_1

    .line 111
    .line 112
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    .line 113
    .line 114
    sget-object v2, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    int-to-long v2, v0

    .line 121
    sput-wide v2, Lcom/swift/sandhook/SandHookMethodResolver;->entryPointFromCompiledCode:J

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_1
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 131
    .line 132
    if-ne v0, v2, :cond_2

    .line 133
    .line 134
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    .line 135
    .line 136
    sget-object v2, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    sput-wide v2, Lcom/swift/sandhook/SandHookMethodResolver;->entryPointFromCompiledCode:J

    .line 143
    .line 144
    :cond_2
    :goto_2
    sget-object v0, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    .line 145
    .line 146
    const-string v2, "entryPointFromInterpreter"

    .line 147
    .line 148
    invoke-static {v0, v2}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromInterpreter:Ljava/lang/reflect/Field;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-ne v0, v1, :cond_3

    .line 159
    .line 160
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromInterpreter:Ljava/lang/reflect/Field;

    .line 161
    .line 162
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    int-to-long v0, v0

    .line 169
    sput-wide v0, Lcom/swift/sandhook/SandHookMethodResolver;->entryPointFromInterpreter:J

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_3
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 179
    .line 180
    if-ne v0, v1, :cond_4

    .line 181
    .line 182
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromInterpreter:Ljava/lang/reflect/Field;

    .line 183
    .line 184
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    sput-wide v0, Lcom/swift/sandhook/SandHookMethodResolver;->entryPointFromInterpreter:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 191
    .line 192
    :catchall_2
    :cond_4
    :goto_3
    return-void
.end method

.method private static checkSupportForArtMethodId()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const-string v1, "dexMethodIndex"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;

    .line 10
    .line 11
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testMethod:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndex:I

    .line 24
    .line 25
    const-class v0, Ljava/lang/Class;

    .line 26
    .line 27
    const-string v1, "dexCache"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexCacheField:Ljava/lang/reflect/Field;

    .line 34
    .line 35
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testMethod:Ljava/lang/reflect/Method;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "resolvedMethods"

    .line 50
    .line 51
    invoke-static {v1, v2}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sput-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsField:Ljava/lang/reflect/Field;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    instance-of v1, v0, Ljava/lang/Long;

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    sput-boolean v1, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Long;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    sput-wide v0, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsAddress:J

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    instance-of v1, v0, [J

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    sput-boolean v2, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    instance-of v0, v0, [I

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    sput-boolean v2, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z

    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void
.end method

.method public static getArtMethod(Ljava/lang/reflect/Member;)J
    .locals 3

    .line 1
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/Long;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-wide v0

    .line 19
    :catch_0
    return-wide v1
.end method

.method public static init()V
    .locals 1

    .line 1
    sget-object v0, Lcom/swift/sandhook/SandHook;->testOffsetMethod1:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->testMethod:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    invoke-static {}, Lcom/swift/sandhook/SandHookMethodResolver;->checkSupport()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static resolveInJava(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexCacheField:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-boolean v0, Lcom/swift/sandhook/SandHookMethodResolver;->isArtMethod:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsField:Ljava/lang/reflect/Field;

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object p1, p0, v0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsField:Ljava/lang/reflect/Field;

    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    instance-of v1, p0, [J

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Ljava/lang/Long;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    check-cast p0, [J

    .line 79
    .line 80
    aput-wide v1, p0, v0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    instance-of v1, p0, [I

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    check-cast p0, [I

    .line 108
    .line 109
    aput p1, p0, v0

    .line 110
    .line 111
    :goto_0
    return-void

    .line 112
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 113
    .line 114
    const-string p1, "un support"

    .line 115
    .line 116
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0
.end method

.method private static resolveInNative(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/swift/sandhook/SandHook;->ensureMethodCached(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static resolveMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0, p1}, Lcom/swift/sandhook/SandHookMethodResolver;->resolveInJava(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    invoke-static {p0, p1}, Lcom/swift/sandhook/SandHookMethodResolver;->resolveInNative(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p0, p1}, Lcom/swift/sandhook/SandHookMethodResolver;->resolveInNative(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

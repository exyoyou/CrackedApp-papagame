.class public Lcom/swift/sandhook/utils/ClassStatusUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static fieldStatusOfClass:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/Class;

    .line 2
    .line 3
    const-string v1, "status"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/swift/sandhook/utils/ClassStatusUtils;->fieldStatusOfClass:Ljava/lang/reflect/Field;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
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

.method public static getClassStatus(Ljava/lang/Class;Z)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    sget-object v1, Lcom/swift/sandhook/utils/ClassStatusUtils;->fieldStatusOfClass:Ljava/lang/reflect/Field;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    nop

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Lcom/swift/sandhook/utils/ClassStatusUtils;->toUnsignedLong(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    const/16 v0, 0x1c

    .line 20
    .line 21
    shr-long/2addr p0, v0

    .line 22
    long-to-int v0, p0

    .line 23
    :cond_1
    return v0
.end method

.method public static isInitialized(Ljava/lang/Class;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/swift/sandhook/utils/ClassStatusUtils;->fieldStatusOfClass:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget v0, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 8
    .line 9
    const/16 v2, 0x1e

    .line 10
    .line 11
    const/16 v3, 0xe

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-lt v0, v2, :cond_2

    .line 15
    .line 16
    invoke-static {p0, v1}, Lcom/swift/sandhook/utils/ClassStatusUtils;->getClassStatus(Ljava/lang/Class;Z)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-lt p0, v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    return v1

    .line 25
    :cond_2
    sget v0, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 26
    .line 27
    const/16 v2, 0x1c

    .line 28
    .line 29
    if-lt v0, v2, :cond_4

    .line 30
    .line 31
    invoke-static {p0, v1}, Lcom/swift/sandhook/utils/ClassStatusUtils;->getClassStatus(Ljava/lang/Class;Z)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-ne p0, v3, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    const/4 v1, 0x0

    .line 39
    :goto_1
    return v1

    .line 40
    :cond_4
    sget v0, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 41
    .line 42
    const/16 v2, 0x1b

    .line 43
    .line 44
    if-ne v0, v2, :cond_6

    .line 45
    .line 46
    invoke-static {p0, v4}, Lcom/swift/sandhook/utils/ClassStatusUtils;->getClassStatus(Ljava/lang/Class;Z)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const/16 v0, 0xb

    .line 51
    .line 52
    if-ne p0, v0, :cond_5

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    const/4 v1, 0x0

    .line 56
    :goto_2
    return v1

    .line 57
    :cond_6
    invoke-static {p0, v4}, Lcom/swift/sandhook/utils/ClassStatusUtils;->getClassStatus(Ljava/lang/Class;Z)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    const/16 v0, 0xa

    .line 62
    .line 63
    if-ne p0, v0, :cond_7

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_7
    const/4 v1, 0x0

    .line 67
    :goto_3
    return v1
.end method

.method public static isStaticAndNoInited(Ljava/lang/reflect/Member;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-static {v0}, Lcom/swift/sandhook/utils/ClassStatusUtils;->isInitialized(Ljava/lang/Class;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_1
    return v1
.end method

.method public static toUnsignedLong(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

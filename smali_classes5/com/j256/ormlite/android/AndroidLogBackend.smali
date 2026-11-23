.class public Lcom/j256/ormlite/android/AndroidLogBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/logger/LogBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/android/AndroidLogBackend$AndroidLogBackendFactory;
    }
.end annotation


# static fields
.field private static final ALL_LOGS_NAME:Ljava/lang/String; = "ORMLite"

.field private static final MAX_TAG_LENGTH:I = 0x17

.field private static final REFRESH_LEVEL_CACHE_EVERY:I = 0xc8


# instance fields
.field private final className:Ljava/lang/String;

.field private final levelCache:[Z

.field private volatile levelCacheC:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/j256/ormlite/android/AndroidLogBackend;->levelCacheC:I

    .line 6
    .line 7
    invoke-static {p1}, Lcom/j256/ormlite/logger/LoggerFactory;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v3, 0x17

    .line 16
    .line 17
    if-le v2, v3, :cond_0

    .line 18
    .line 19
    add-int/lit8 v1, v2, -0x17

    .line 20
    .line 21
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidLogBackend;->className:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {}, Lcom/j256/ormlite/logger/Level;->values()[Lcom/j256/ormlite/logger/Level;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    array-length v1, p1

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-ge v0, v1, :cond_2

    .line 34
    .line 35
    aget-object v3, p1, v0

    .line 36
    .line 37
    invoke-direct {p0, v3}, Lcom/j256/ormlite/android/AndroidLogBackend;->levelToAndroidLevel(Lcom/j256/ormlite/logger/Level;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-le v3, v2, :cond_1

    .line 42
    .line 43
    move v2, v3

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    new-array p1, v2, [Z

    .line 50
    .line 51
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidLogBackend;->levelCache:[Z

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidLogBackend;->refreshLevelCache()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private isLevelEnabledInternal(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLogBackend;->className:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "ORMLite"

    .line 10
    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method private levelToAndroidLevel(Lcom/j256/ormlite/logger/Level;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/j256/ormlite/android/AndroidLogBackend$1;->$SwitchMap$com$j256$ormlite$logger$Level:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x6

    .line 20
    const/4 v2, 0x4

    .line 21
    if-eq p1, v2, :cond_0

    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    return v0

    .line 27
    :cond_1
    return v1

    .line 28
    :cond_2
    return v0

    .line 29
    :cond_3
    return v1
.end method

.method private refreshLevelCache()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/j256/ormlite/logger/Level;->values()[Lcom/j256/ormlite/logger/Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-direct {p0, v3}, Lcom/j256/ormlite/android/AndroidLogBackend;->levelToAndroidLevel(Lcom/j256/ormlite/logger/Level;)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidLogBackend;->levelCache:[Z

    .line 16
    .line 17
    array-length v5, v4

    .line 18
    if-ge v3, v5, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, v3}, Lcom/j256/ormlite/android/AndroidLogBackend;->isLevelEnabledInternal(I)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    aput-boolean v5, v4, v3

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Level;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/j256/ormlite/android/AndroidLogBackend;->levelCacheC:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/j256/ormlite/android/AndroidLogBackend;->levelCacheC:I

    .line 6
    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidLogBackend;->refreshLevelCache()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/j256/ormlite/android/AndroidLogBackend;->levelCacheC:I

    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/AndroidLogBackend;->levelToAndroidLevel(Lcom/j256/ormlite/logger/Level;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLogBackend;->levelCache:[Z

    .line 22
    .line 23
    array-length v1, v0

    .line 24
    if-ge p1, v1, :cond_1

    .line 25
    .line 26
    aget-boolean p1, v0, p1

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/AndroidLogBackend;->isLevelEnabledInternal(I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/j256/ormlite/android/AndroidLogBackend$1;->$SwitchMap$com$j256$ormlite$logger$Level:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    sget-object p2, Lcom/j256/ormlite/android/AndroidLogBackend$1;->$SwitchMap$com$j256$ormlite$logger$Level:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    return-void
.end method

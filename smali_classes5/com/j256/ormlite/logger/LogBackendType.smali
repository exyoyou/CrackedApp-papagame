.class public final enum Lcom/j256/ormlite/logger/LogBackendType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/logger/LogBackendFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/j256/ormlite/logger/LogBackendType;",
        ">;",
        "Lcom/j256/ormlite/logger/LogBackendFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/logger/LogBackendType;

.field public static final enum ANDROID:Lcom/j256/ormlite/logger/LogBackendType;

.field public static final enum COMMONS_LOGGING:Lcom/j256/ormlite/logger/LogBackendType;

.field public static final enum CONSOLE:Lcom/j256/ormlite/logger/LogBackendType;

.field public static final enum JAVA_UTIL:Lcom/j256/ormlite/logger/LogBackendType;

.field public static final enum LOCAL:Lcom/j256/ormlite/logger/LogBackendType;

.field public static final enum LOG4J:Lcom/j256/ormlite/logger/LogBackendType;

.field public static final enum LOG4J2:Lcom/j256/ormlite/logger/LogBackendType;

.field public static final enum LOGBACK:Lcom/j256/ormlite/logger/LogBackendType;

.field public static final enum NULL:Lcom/j256/ormlite/logger/LogBackendType;

.field public static final enum SLF4J:Lcom/j256/ormlite/logger/LogBackendType;


# instance fields
.field private final factory:Lcom/j256/ormlite/logger/LogBackendFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/j256/ormlite/logger/LogBackendType;

    .line 2
    .line 3
    const-string v1, "com.j256.ormlite.logger.Slf4jLoggingLogBackend$Slf4jLoggingLogBackendFactory"

    .line 4
    .line 5
    const-string v2, "SLF4J"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/j256/ormlite/logger/LogBackendType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/j256/ormlite/logger/LogBackendType;->SLF4J:Lcom/j256/ormlite/logger/LogBackendType;

    .line 12
    .line 13
    new-instance v1, Lcom/j256/ormlite/logger/LogBackendType;

    .line 14
    .line 15
    const-string v2, "com.j256.ormlite.android.AndroidLogBackend$AndroidLogBackendFactory"

    .line 16
    .line 17
    const-string v4, "ANDROID"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lcom/j256/ormlite/logger/LogBackendType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/j256/ormlite/logger/LogBackendType;->ANDROID:Lcom/j256/ormlite/logger/LogBackendType;

    .line 24
    .line 25
    new-instance v2, Lcom/j256/ormlite/logger/LogBackendType;

    .line 26
    .line 27
    const-string v4, "com.j256.ormlite.logger.LogbackLogBackend$LogbackLogBackendFactory"

    .line 28
    .line 29
    const-string v6, "LOGBACK"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lcom/j256/ormlite/logger/LogBackendType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/j256/ormlite/logger/LogBackendType;->LOGBACK:Lcom/j256/ormlite/logger/LogBackendType;

    .line 36
    .line 37
    new-instance v4, Lcom/j256/ormlite/logger/LogBackendType;

    .line 38
    .line 39
    const-string v6, "com.j256.ormlite.logger.CommonsLoggingLogBackend$CommonsLoggingLogBackendFactory"

    .line 40
    .line 41
    const-string v8, "COMMONS_LOGGING"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v9, v6}, Lcom/j256/ormlite/logger/LogBackendType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/j256/ormlite/logger/LogBackendType;->COMMONS_LOGGING:Lcom/j256/ormlite/logger/LogBackendType;

    .line 48
    .line 49
    new-instance v6, Lcom/j256/ormlite/logger/LogBackendType;

    .line 50
    .line 51
    const-string v8, "com.j256.ormlite.logger.Log4j2LogBackend$Log4j2LogBackendFactory"

    .line 52
    .line 53
    const-string v10, "LOG4J2"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    invoke-direct {v6, v10, v11, v8}, Lcom/j256/ormlite/logger/LogBackendType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v6, Lcom/j256/ormlite/logger/LogBackendType;->LOG4J2:Lcom/j256/ormlite/logger/LogBackendType;

    .line 60
    .line 61
    new-instance v8, Lcom/j256/ormlite/logger/LogBackendType;

    .line 62
    .line 63
    const-string v10, "com.j256.ormlite.logger.Log4jLogBackend$Log4jLogBackendFactory"

    .line 64
    .line 65
    const-string v12, "LOG4J"

    .line 66
    .line 67
    const/4 v13, 0x5

    .line 68
    invoke-direct {v8, v12, v13, v10}, Lcom/j256/ormlite/logger/LogBackendType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v8, Lcom/j256/ormlite/logger/LogBackendType;->LOG4J:Lcom/j256/ormlite/logger/LogBackendType;

    .line 72
    .line 73
    new-instance v10, Lcom/j256/ormlite/logger/LogBackendType;

    .line 74
    .line 75
    new-instance v12, Lcom/j256/ormlite/logger/LocalLogBackend$LocalLogBackendFactory;

    .line 76
    .line 77
    invoke-direct {v12}, Lcom/j256/ormlite/logger/LocalLogBackend$LocalLogBackendFactory;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v14, "LOCAL"

    .line 81
    .line 82
    const/4 v15, 0x6

    .line 83
    invoke-direct {v10, v14, v15, v12}, Lcom/j256/ormlite/logger/LogBackendType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/logger/LogBackendFactory;)V

    .line 84
    .line 85
    .line 86
    sput-object v10, Lcom/j256/ormlite/logger/LogBackendType;->LOCAL:Lcom/j256/ormlite/logger/LogBackendType;

    .line 87
    .line 88
    new-instance v12, Lcom/j256/ormlite/logger/LogBackendType;

    .line 89
    .line 90
    new-instance v14, Lcom/j256/ormlite/logger/ConsoleLogBackend$ConsoleLogBackendFactory;

    .line 91
    .line 92
    invoke-direct {v14}, Lcom/j256/ormlite/logger/ConsoleLogBackend$ConsoleLogBackendFactory;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v15, "CONSOLE"

    .line 96
    .line 97
    const/4 v13, 0x7

    .line 98
    invoke-direct {v12, v15, v13, v14}, Lcom/j256/ormlite/logger/LogBackendType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/logger/LogBackendFactory;)V

    .line 99
    .line 100
    .line 101
    sput-object v12, Lcom/j256/ormlite/logger/LogBackendType;->CONSOLE:Lcom/j256/ormlite/logger/LogBackendType;

    .line 102
    .line 103
    new-instance v14, Lcom/j256/ormlite/logger/LogBackendType;

    .line 104
    .line 105
    const-string v15, "com.j256.ormlite.logger.JavaUtilLogBackend$JavaUtilLogBackendFactory"

    .line 106
    .line 107
    const-string v13, "JAVA_UTIL"

    .line 108
    .line 109
    const/16 v11, 0x8

    .line 110
    .line 111
    invoke-direct {v14, v13, v11, v15}, Lcom/j256/ormlite/logger/LogBackendType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sput-object v14, Lcom/j256/ormlite/logger/LogBackendType;->JAVA_UTIL:Lcom/j256/ormlite/logger/LogBackendType;

    .line 115
    .line 116
    new-instance v13, Lcom/j256/ormlite/logger/LogBackendType;

    .line 117
    .line 118
    new-instance v15, Lcom/j256/ormlite/logger/NullLogBackend$NullLogBackendFactory;

    .line 119
    .line 120
    invoke-direct {v15}, Lcom/j256/ormlite/logger/NullLogBackend$NullLogBackendFactory;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v11, "NULL"

    .line 124
    .line 125
    const/16 v9, 0x9

    .line 126
    .line 127
    invoke-direct {v13, v11, v9, v15}, Lcom/j256/ormlite/logger/LogBackendType;-><init>(Ljava/lang/String;ILcom/j256/ormlite/logger/LogBackendFactory;)V

    .line 128
    .line 129
    .line 130
    sput-object v13, Lcom/j256/ormlite/logger/LogBackendType;->NULL:Lcom/j256/ormlite/logger/LogBackendType;

    .line 131
    .line 132
    const/16 v11, 0xa

    .line 133
    .line 134
    new-array v11, v11, [Lcom/j256/ormlite/logger/LogBackendType;

    .line 135
    .line 136
    aput-object v0, v11, v3

    .line 137
    .line 138
    aput-object v1, v11, v5

    .line 139
    .line 140
    aput-object v2, v11, v7

    .line 141
    .line 142
    const/4 v0, 0x3

    .line 143
    aput-object v4, v11, v0

    .line 144
    .line 145
    const/4 v0, 0x4

    .line 146
    aput-object v6, v11, v0

    .line 147
    .line 148
    const/4 v0, 0x5

    .line 149
    aput-object v8, v11, v0

    .line 150
    .line 151
    const/4 v0, 0x6

    .line 152
    aput-object v10, v11, v0

    .line 153
    .line 154
    const/4 v0, 0x7

    .line 155
    aput-object v12, v11, v0

    .line 156
    .line 157
    const/16 v0, 0x8

    .line 158
    .line 159
    aput-object v14, v11, v0

    .line 160
    .line 161
    aput-object v13, v11, v9

    .line 162
    .line 163
    sput-object v11, Lcom/j256/ormlite/logger/LogBackendType;->$VALUES:[Lcom/j256/ormlite/logger/LogBackendType;

    .line 164
    .line 165
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/j256/ormlite/logger/LogBackendFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/logger/LogBackendFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/j256/ormlite/logger/LogBackendType;->factory:Lcom/j256/ormlite/logger/LogBackendFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0, p3}, Lcom/j256/ormlite/logger/LogBackendType;->detectFactory(Ljava/lang/String;)Lcom/j256/ormlite/logger/LogBackendFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/logger/LogBackendType;->factory:Lcom/j256/ormlite/logger/LogBackendFactory;

    return-void
.end method

.method private detectFactory(Ljava/lang/String;)Lcom/j256/ormlite/logger/LogBackendFactory;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/j256/ormlite/logger/LogBackendFactory;

    .line 10
    .line 11
    const-string v1, "test"

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/j256/ormlite/logger/LogBackendFactory;->createLogBackend(Ljava/lang/String;)Lcom/j256/ormlite/logger/LogBackend;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/j256/ormlite/logger/LogBackend;->isLevelEnabled(Lcom/j256/ormlite/logger/Level;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Unable to create instance of class "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " for log type "

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ", using local log: "

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Lcom/j256/ormlite/logger/LocalLogBackend$LocalLogBackendFactory;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Lcom/j256/ormlite/logger/LocalLogBackend$LocalLogBackendFactory;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/LogBackendType;
    .locals 1

    .line 1
    const-class v0, Lcom/j256/ormlite/logger/LogBackendType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/j256/ormlite/logger/LogBackendType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/j256/ormlite/logger/LogBackendType;
    .locals 1

    .line 1
    sget-object v0, Lcom/j256/ormlite/logger/LogBackendType;->$VALUES:[Lcom/j256/ormlite/logger/LogBackendType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/j256/ormlite/logger/LogBackendType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/j256/ormlite/logger/LogBackendType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public createLogBackend(Ljava/lang/String;)Lcom/j256/ormlite/logger/LogBackend;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/logger/LogBackendType;->factory:Lcom/j256/ormlite/logger/LogBackendFactory;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/LogBackendFactory;->createLogBackend(Ljava/lang/String;)Lcom/j256/ormlite/logger/LogBackend;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/j256/ormlite/logger/LogBackendType;->LOCAL:Lcom/j256/ormlite/logger/LogBackendType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/j256/ormlite/logger/LogBackendType;->NULL:Lcom/j256/ormlite/logger/LogBackendType;

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/j256/ormlite/logger/LogBackendType;->factory:Lcom/j256/ormlite/logger/LogBackendFactory;

    .line 10
    .line 11
    instance-of v0, v0, Lcom/j256/ormlite/logger/LocalLogBackend$LocalLogBackendFactory;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

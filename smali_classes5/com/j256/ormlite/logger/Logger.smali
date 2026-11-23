.class public Lcom/j256/ormlite/logger/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ARG_STRING:Ljava/lang/String; = "{}"

.field private static final ARG_STRING_LENGTH:I = 0x2

.field private static final DEFAULT_FULL_MESSAGE_LENGTH:I = 0x80

.field private static final UNKNOWN_ARG:Ljava/lang/Object;

.field private static globalLevel:Lcom/j256/ormlite/logger/Level;


# instance fields
.field private final backend:Lcom/j256/ormlite/logger/LogBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/logger/LogBackend;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/j256/ormlite/logger/Logger;->backend:Lcom/j256/ormlite/logger/LogBackend;

    .line 5
    .line 6
    return-void
.end method

.method private appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    const-string p2, "null"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    const/16 v0, 0x5b

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-ge v1, v0, :cond_3

    .line 35
    .line 36
    if-lez v1, :cond_2

    .line 37
    .line 38
    const-string v2, ", "

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {p0, p1, v2}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/16 p2, 0x5d

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :goto_1
    return-void
.end method

.method private buildFullMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const-string v3, "{}"

    .line 5
    .line 6
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 v4, -0x1

    .line 11
    if-ne v3, v4, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {v0, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const/16 v4, 0x80

    .line 33
    .line 34
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {v0, p1, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    sget v1, Lcom/j256/ormlite/logger/Logger;->ARG_STRING_LENGTH:I

    .line 41
    .line 42
    add-int/2addr v1, v3

    .line 43
    if-nez p6, :cond_6

    .line 44
    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    invoke-direct {p0, v0, p2}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/4 v3, 0x1

    .line 52
    if-ne v2, v3, :cond_4

    .line 53
    .line 54
    invoke-direct {p0, v0, p3}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    const/4 v3, 0x2

    .line 59
    if-ne v2, v3, :cond_5

    .line 60
    .line 61
    invoke-direct {p0, v0, p4}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    const/4 v3, 0x3

    .line 66
    if-ne v2, v3, :cond_7

    .line 67
    .line 68
    invoke-direct {p0, v0, p5}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_6
    array-length v3, p6

    .line 73
    if-ge v2, v3, :cond_7

    .line 74
    .line 75
    aget-object v3, p6, v2

    .line 76
    .line 77
    invoke-direct {p0, v0, v3}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0
.end method

.method private logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/j256/ormlite/logger/Logger;->globalLevel:Lcom/j256/ormlite/logger/Level;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/logger/Level;->isEnabled(Lcom/j256/ormlite/logger/Level;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->backend:Lcom/j256/ormlite/logger/LogBackend;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/LogBackend;->isLevelEnabled(Lcom/j256/ormlite/logger/Level;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    move-object v1, p3

    .line 22
    move-object v2, p4

    .line 23
    move-object v3, p5

    .line 24
    move-object v4, p6

    .line 25
    move-object v5, p7

    .line 26
    move-object v6, p8

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/logger/Logger;->buildFullMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/j256/ormlite/logger/Logger;->backend:Lcom/j256/ormlite/logger/LogBackend;

    .line 34
    .line 35
    invoke-interface {p2, p1, p3}, Lcom/j256/ormlite/logger/LogBackend;->log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p4, p0, Lcom/j256/ormlite/logger/Logger;->backend:Lcom/j256/ormlite/logger/LogBackend;

    .line 40
    .line 41
    invoke-interface {p4, p1, p3, p2}, Lcom/j256/ormlite/logger/LogBackend;->log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public static setGlobalLogLevel(Lcom/j256/ormlite/logger/Level;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/j256/ormlite/logger/Logger;->globalLevel:Lcom/j256/ormlite/logger/Level;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 2
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 3
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 4
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 5
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 6
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9

    .line 7
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 8
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 9
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 10
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 11
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 12
    sget-object v1, Lcom/j256/ormlite/logger/Level;->DEBUG:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 2
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 3
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 4
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 5
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 6
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9

    .line 7
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 8
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 9
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 10
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 11
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 12
    sget-object v1, Lcom/j256/ormlite/logger/Level;->ERROR:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 2
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 3
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 4
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 5
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 6
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9

    .line 7
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 8
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 9
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 10
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 11
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 12
    sget-object v1, Lcom/j256/ormlite/logger/Level;->FATAL:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public getLogBackend()Lcom/j256/ormlite/logger/LogBackend;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->backend:Lcom/j256/ormlite/logger/LogBackend;

    .line 2
    .line 3
    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 2
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 3
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 4
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 5
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 6
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9

    .line 7
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 8
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 9
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 10
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 11
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 12
    sget-object v1, Lcom/j256/ormlite/logger/Level;->INFO:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public isLevelEnabled(Lcom/j256/ormlite/logger/Level;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->backend:Lcom/j256/ormlite/logger/LogBackend;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/LogBackend;->isLevelEnabled(Lcom/j256/ormlite/logger/Level;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    .line 1
    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    const/4 v2, 0x0

    .line 2
    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    const/4 v2, 0x0

    .line 3
    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    const/4 v2, 0x0

    .line 4
    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 5
    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    const/4 v2, 0x0

    .line 6
    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9

    .line 7
    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 8
    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 9
    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 10
    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 12
    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 2
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 3
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 4
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 5
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 6
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9

    .line 7
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 8
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 9
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 10
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 11
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 12
    sget-object v1, Lcom/j256/ormlite/logger/Level;->TRACE:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 2
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 3
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 4
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 5
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 6
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    const/4 v2, 0x0

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9

    .line 7
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 8
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 9
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 10
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 11
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 12
    sget-object v1, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    sget-object v7, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

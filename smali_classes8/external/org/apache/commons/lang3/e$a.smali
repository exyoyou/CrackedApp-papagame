.class Lexternal/org/apache/commons/lang3/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/Throwable;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/lang/Throwable;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/Object;

.field private static final g:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lexternal/org/apache/commons/lang3/e$a;->c:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    sput-object v0, Lexternal/org/apache/commons/lang3/e$a;->g:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v5, "java.text.Normalizer$Form"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "NFD"

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-string v7, "java.text.Normalizer"

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string v7, "normalize"

    .line 54
    .line 55
    new-array v8, v0, [Ljava/lang/Class;

    .line 56
    .line 57
    const-class v9, Ljava/lang/CharSequence;

    .line 58
    .line 59
    aput-object v9, v8, v2

    .line 60
    .line 61
    aput-object v4, v8, v1

    .line 62
    .line 63
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    move-object v1, v3

    .line 68
    move-object v2, v1

    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception v4

    .line 71
    goto :goto_0

    .line 72
    :catch_1
    move-exception v4

    .line 73
    move-object v5, v3

    .line 74
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const-string v7, "sun.text.Normalizer"

    .line 83
    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    const-string v7, "decompose"

    .line 89
    .line 90
    const/4 v8, 0x3

    .line 91
    new-array v8, v8, [Ljava/lang/Class;

    .line 92
    .line 93
    const-class v9, Ljava/lang/String;

    .line 94
    .line 95
    aput-object v9, v8, v2

    .line 96
    .line 97
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 98
    .line 99
    aput-object v2, v8, v1

    .line 100
    .line 101
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 102
    .line 103
    aput-object v1, v8, v0

    .line 104
    .line 105
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    .line 107
    .line 108
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    move-object v2, v0

    .line 110
    move-object v0, v3

    .line 111
    move-object v1, v0

    .line 112
    goto :goto_1

    .line 113
    :catch_2
    move-exception v0

    .line 114
    move-object v1, v0

    .line 115
    move-object v0, v3

    .line 116
    move-object v2, v0

    .line 117
    :goto_1
    move-object v3, v4

    .line 118
    :goto_2
    sput-object v3, Lexternal/org/apache/commons/lang3/e$a;->d:Ljava/lang/Throwable;

    .line 119
    .line 120
    sput-object v5, Lexternal/org/apache/commons/lang3/e$a;->f:Ljava/lang/Object;

    .line 121
    .line 122
    sput-object v0, Lexternal/org/apache/commons/lang3/e$a;->e:Ljava/lang/reflect/Method;

    .line 123
    .line 124
    sput-object v1, Lexternal/org/apache/commons/lang3/e$a;->a:Ljava/lang/Throwable;

    .line 125
    .line 126
    sput-object v2, Lexternal/org/apache/commons/lang3/e$a;->b:Ljava/lang/reflect/Method;

    .line 127
    .line 128
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/e$a;->e:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/e$a;->b:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c()Ljava/lang/Throwable;
    .locals 1

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/e$a;->d:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d()Ljava/lang/Throwable;
    .locals 1

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/e$a;->a:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/e$a;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic f()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/e$a;->g:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic g()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/e$a;->c:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    return-object v0
.end method

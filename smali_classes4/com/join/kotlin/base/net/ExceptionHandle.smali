.class public final Lcom/join/kotlin/base/net/ExceptionHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/join/kotlin/base/net/ExceptionHandle;",
        "",
        "<init>",
        "()V",
        "handleException",
        "Lcom/join/kotlin/base/net/AppException;",
        "e",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/join/kotlin/base/net/ExceptionHandle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/join/kotlin/base/net/ExceptionHandle;

    invoke-direct {v0}, Lcom/join/kotlin/base/net/ExceptionHandle;-><init>()V

    sput-object v0, Lcom/join/kotlin/base/net/ExceptionHandle;->INSTANCE:Lcom/join/kotlin/base/net/ExceptionHandle;

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


# virtual methods
.method public final handleException(Ljava/lang/Throwable;)Lcom/join/kotlin/base/net/AppException;
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    instance-of v0, p1, Lretrofit2/HttpException;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/join/kotlin/base/net/AppException;

    .line 8
    .line 9
    sget-object v1, Lcom/join/kotlin/base/net/Error;->NETWORK_ERROR:Lcom/join/kotlin/base/net/Error;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lcom/join/kotlin/base/net/AppException;-><init>(Lcom/join/kotlin/base/net/Error;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/google/gson/JsonParseException;

    .line 16
    .line 17
    if-nez v0, :cond_8

    .line 18
    .line 19
    instance-of v0, p1, Lorg/json/JSONException;

    .line 20
    .line 21
    if-nez v0, :cond_8

    .line 22
    .line 23
    instance-of v0, p1, Landroid/net/ParseException;

    .line 24
    .line 25
    if-nez v0, :cond_8

    .line 26
    .line 27
    instance-of v0, p1, Lcom/google/gson/stream/MalformedJsonException;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    instance-of v0, p1, Ljava/net/ConnectException;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    new-instance v0, Lcom/join/kotlin/base/net/AppException;

    .line 37
    .line 38
    sget-object v1, Lcom/join/kotlin/base/net/Error;->NETWORK_ERROR:Lcom/join/kotlin/base/net/Error;

    .line 39
    .line 40
    invoke-direct {v0, v1, p1}, Lcom/join/kotlin/base/net/AppException;-><init>(Lcom/join/kotlin/base/net/Error;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    new-instance v0, Lcom/join/kotlin/base/net/AppException;

    .line 49
    .line 50
    sget-object v1, Lcom/join/kotlin/base/net/Error;->SSL_ERROR:Lcom/join/kotlin/base/net/Error;

    .line 51
    .line 52
    invoke-direct {v0, v1, p1}, Lcom/join/kotlin/base/net/AppException;-><init>(Lcom/join/kotlin/base/net/Error;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_3
    instance-of v0, p1, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    new-instance v0, Lcom/join/kotlin/base/net/AppException;

    .line 61
    .line 62
    sget-object v1, Lcom/join/kotlin/base/net/Error;->TIMEOUT_ERROR:Lcom/join/kotlin/base/net/Error;

    .line 63
    .line 64
    invoke-direct {v0, v1, p1}, Lcom/join/kotlin/base/net/AppException;-><init>(Lcom/join/kotlin/base/net/Error;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    new-instance v0, Lcom/join/kotlin/base/net/AppException;

    .line 73
    .line 74
    sget-object v1, Lcom/join/kotlin/base/net/Error;->TIMEOUT_ERROR:Lcom/join/kotlin/base/net/Error;

    .line 75
    .line 76
    invoke-direct {v0, v1, p1}, Lcom/join/kotlin/base/net/AppException;-><init>(Lcom/join/kotlin/base/net/Error;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_5
    instance-of v0, p1, Ljava/net/UnknownHostException;

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    new-instance v0, Lcom/join/kotlin/base/net/AppException;

    .line 85
    .line 86
    sget-object v1, Lcom/join/kotlin/base/net/Error;->TIMEOUT_ERROR:Lcom/join/kotlin/base/net/Error;

    .line 87
    .line 88
    invoke-direct {v0, v1, p1}, Lcom/join/kotlin/base/net/AppException;-><init>(Lcom/join/kotlin/base/net/Error;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_6
    instance-of v0, p1, Lcom/join/kotlin/base/net/AppException;

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    check-cast p1, Lcom/join/kotlin/base/net/AppException;

    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_7
    new-instance v0, Lcom/join/kotlin/base/net/AppException;

    .line 100
    .line 101
    sget-object v1, Lcom/join/kotlin/base/net/Error;->UNKNOWN:Lcom/join/kotlin/base/net/Error;

    .line 102
    .line 103
    invoke-direct {v0, v1, p1}, Lcom/join/kotlin/base/net/AppException;-><init>(Lcom/join/kotlin/base/net/Error;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_8
    :goto_0
    new-instance v0, Lcom/join/kotlin/base/net/AppException;

    .line 108
    .line 109
    sget-object v1, Lcom/join/kotlin/base/net/Error;->PARSE_ERROR:Lcom/join/kotlin/base/net/Error;

    .line 110
    .line 111
    invoke-direct {v0, v1, p1}, Lcom/join/kotlin/base/net/AppException;-><init>(Lcom/join/kotlin/base/net/Error;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_9
    new-instance v0, Lcom/join/kotlin/base/net/AppException;

    .line 116
    .line 117
    sget-object v1, Lcom/join/kotlin/base/net/Error;->UNKNOWN:Lcom/join/kotlin/base/net/Error;

    .line 118
    .line 119
    invoke-direct {v0, v1, p1}, Lcom/join/kotlin/base/net/AppException;-><init>(Lcom/join/kotlin/base/net/Error;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    return-object v0
.end method

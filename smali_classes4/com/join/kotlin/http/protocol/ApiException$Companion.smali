.class public final Lcom/join/kotlin/http/protocol/ApiException$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/http/protocol/ApiException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/join/kotlin/http/protocol/ApiException$Companion;",
        "",
        "<init>",
        "()V",
        "CODE_NET_ERROR",
        "",
        "CODE_TIMEOUT",
        "CODE_JSON_PARSE_ERROR",
        "CODE_SERVER_ERROR",
        "CODE_AUTH_INVALID",
        "build",
        "Lcom/join/kotlin/http/protocol/ApiException;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/http/protocol/ApiException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Ljava/lang/Throwable;)Lcom/join/kotlin/http/protocol/ApiException;
    .locals 12
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Lretrofit2/HttpException;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    .line 14
    .line 15
    const/16 v2, 0xfa0

    .line 16
    .line 17
    const-string v3, "\u7f51\u7edc\u5f02\u5e38"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v1, p1

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    instance-of v0, p1, Ljava/net/UnknownHostException;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    .line 32
    .line 33
    const/16 v2, 0xfa0

    .line 34
    .line 35
    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u540e\u518d\u8bd5"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x4

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v1, p1

    .line 41
    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    instance-of v0, p1, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 46
    .line 47
    if-nez v0, :cond_6

    .line 48
    .line 49
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    .line 59
    .line 60
    const/16 v2, 0xfa0

    .line 61
    .line 62
    const-string v3, "\u7f51\u7edc\u5f02\u5e38"

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x4

    .line 66
    const/4 v6, 0x0

    .line 67
    move-object v1, p1

    .line 68
    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    instance-of v0, p1, Lcom/google/gson/JsonParseException;

    .line 73
    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    instance-of p1, p1, Lorg/json/JSONException;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    .line 82
    .line 83
    const/16 v1, 0x1388

    .line 84
    .line 85
    const-string v2, "\u7cfb\u7edf\u9519\u8bef"

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v4, 0x4

    .line 89
    const/4 v5, 0x0

    .line 90
    move-object v0, p1

    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    :goto_0
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    .line 96
    .line 97
    const/16 v7, 0xfaa

    .line 98
    .line 99
    const-string v8, "\u6570\u636e\u89e3\u6790\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    const/4 v10, 0x4

    .line 103
    const/4 v11, 0x0

    .line 104
    move-object v6, p1

    .line 105
    invoke-direct/range {v6 .. v11}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    :goto_1
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    .line 110
    .line 111
    const/16 v1, 0xff0

    .line 112
    .line 113
    const-string v2, "\u8bf7\u6c42\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 114
    .line 115
    const/4 v3, 0x0

    .line 116
    const/4 v4, 0x4

    .line 117
    const/4 v5, 0x0

    .line 118
    move-object v0, p1

    .line 119
    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    return-object p1
.end method

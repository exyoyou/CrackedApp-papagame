.class Lcom/join/android/app/common/http/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/d;->w(Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/http/d$p;

.field final synthetic b:Lcom/join/android/app/common/http/d;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$resCallBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$e;->b:Lcom/join/android/app/common/http/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/common/http/d$e;->a:Lcom/join/android/app/common/http/d$p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Request;Ljava/io/IOException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "request",
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$e;->b:Lcom/join/android/app/common/http/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/common/http/d$e;->a:Lcom/join/android/app/common/http/d$p;

    .line 4
    .line 5
    invoke-static {v0, p1, p2, v1}, Lcom/join/android/app/common/http/d;->f(Lcom/join/android/app/common/http/d;Lokhttp3/Request;Ljava/lang/Exception;Lcom/join/android/app/common/http/d$p;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lokhttp3/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/android/app/common/http/d$e;->a:Lcom/join/android/app/common/http/d$p;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/join/android/app/common/http/d$p;->a:Ljava/lang/reflect/Type;

    .line 12
    .line 13
    const-class v3, Ljava/lang/String;

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/android/app/common/http/d$e;->b:Lcom/join/android/app/common/http/d;

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Lcom/join/android/app/common/http/d;->g(Lcom/join/android/app/common/http/d;Ljava/lang/Object;Lcom/join/android/app/common/http/d$p;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of v1, v2, Ljava/lang/reflect/ParameterizedType;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/android/app/common/http/d$e;->b:Lcom/join/android/app/common/http/d;

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/join/android/app/common/http/d;->k(Lcom/join/android/app/common/http/d;Ljava/lang/reflect/Type;)[Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    array-length v2, v1

    .line 34
    const/4 v3, 0x1

    .line 35
    sub-int/2addr v2, v3

    .line 36
    new-array v4, v2, [Ljava/lang/Class;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static {v1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/join/android/app/common/http/d$e;->b:Lcom/join/android/app/common/http/d;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/join/android/app/common/http/d;->l(Lcom/join/android/app/common/http/d;)Lcom/papa/sim/statistic/JsonMapper;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/join/android/app/common/http/d$e;->b:Lcom/join/android/app/common/http/d;

    .line 49
    .line 50
    invoke-static {v3}, Lcom/join/android/app/common/http/d;->l(Lcom/join/android/app/common/http/d;)Lcom/papa/sim/statistic/JsonMapper;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    aget-object v1, v1, v5

    .line 55
    .line 56
    invoke-virtual {v3, v1, v4}, Lcom/papa/sim/statistic/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v2, v0, v1}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/join/android/app/common/http/d$e;->b:Lcom/join/android/app/common/http/d;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/join/android/app/common/http/d$e;->a:Lcom/join/android/app/common/http/d$p;

    .line 67
    .line 68
    invoke-static {v1, v0, v2}, Lcom/join/android/app/common/http/d;->g(Lcom/join/android/app/common/http/d;Ljava/lang/Object;Lcom/join/android/app/common/http/d$p;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "class "

    .line 77
    .line 78
    const-string v3, ""

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/join/android/app/common/http/d$e;->b:Lcom/join/android/app/common/http/d;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/join/android/app/common/http/d;->l(Lcom/join/android/app/common/http/d;)Lcom/papa/sim/statistic/JsonMapper;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v2, v0, v1}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/join/android/app/common/http/d$e;->b:Lcom/join/android/app/common/http/d;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/join/android/app/common/http/d$e;->a:Lcom/join/android/app/common/http/d$p;

    .line 101
    .line 102
    invoke-static {v1, v0, v2}, Lcom/join/android/app/common/http/d;->g(Lcom/join/android/app/common/http/d;Ljava/lang/Object;Lcom/join/android/app/common/http/d$p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/join/android/app/common/http/d$e;->b:Lcom/join/android/app/common/http/d;

    .line 108
    .line 109
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v2, p0, Lcom/join/android/app/common/http/d$e;->a:Lcom/join/android/app/common/http/d$p;

    .line 114
    .line 115
    invoke-static {v1, p1, v0, v2}, Lcom/join/android/app/common/http/d;->f(Lcom/join/android/app/common/http/d;Lokhttp3/Request;Ljava/lang/Exception;Lcom/join/android/app/common/http/d$p;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "e"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/join/android/app/common/http/d$e;->a(Lokhttp3/Request;Ljava/io/IOException;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/http/d$e;->b(Lokhttp3/Response;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

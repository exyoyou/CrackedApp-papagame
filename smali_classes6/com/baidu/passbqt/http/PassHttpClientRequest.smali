.class public Lcom/baidu/passbqt/http/PassHttpClientRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/passbqt/NoProguard;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/passbqt/NoProguard;",
        "Ljava/lang/Comparable<",
        "Lcom/baidu/passbqt/http/PassHttpClientRequest;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "PassHttpClientRequest"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/baidu/passbqt/http/HttpResponseHandler;

.field public c:Lcom/baidu/passbqt/http/HttpRequestHandler;

.field public d:Lcom/baidu/passbqt/http/PassHttpParamDTO;

.field public e:Lcom/baidu/passbqt/http/Method;

.field public volatile f:Z

.field private h:I


# direct methods
.method constructor <init>(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;ILcom/baidu/passbqt/http/HttpRequestHandler;Lcom/baidu/passbqt/http/HttpResponseHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->f:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->h:I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->e:Lcom/baidu/passbqt/http/Method;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->d:Lcom/baidu/passbqt/http/PassHttpParamDTO;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->b:Lcom/baidu/passbqt/http/HttpResponseHandler;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->c:Lcom/baidu/passbqt/http/HttpRequestHandler;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/passbqt/http/PassHttpClientRequest;)I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->d:Lcom/baidu/passbqt/http/PassHttpParamDTO;

    iget-object v0, v0, Lcom/baidu/passbqt/http/PassHttpParamDTO;->g:Lcom/baidu/passbqt/http/ReqPriority;

    .line 4
    iget-object v1, p1, Lcom/baidu/passbqt/http/PassHttpClientRequest;->d:Lcom/baidu/passbqt/http/PassHttpParamDTO;

    iget-object v1, v1, Lcom/baidu/passbqt/http/PassHttpParamDTO;->g:Lcom/baidu/passbqt/http/ReqPriority;

    if-ne v0, v1, :cond_0

    .line 5
    iget v0, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->h:I

    iget p1, p1, Lcom/baidu/passbqt/http/PassHttpClientRequest;->h:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->f:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->b:Lcom/baidu/passbqt/http/HttpResponseHandler;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/baidu/passbqt/http/PassHttpClientRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/passbqt/http/PassHttpClientRequest;->a(Lcom/baidu/passbqt/http/PassHttpClientRequest;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->b:Lcom/baidu/passbqt/http/HttpResponseHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/passbqt/http/HttpResponseHandler;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v2, "network request already run"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    const-string v2, "PassHttpClientRequest"

    .line 17
    .line 18
    invoke-static {v2, v1}, Lcom/baidu/passbqt/common/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    new-instance v1, Lcom/baidu/passbqt/http/HttpStack;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/baidu/passbqt/http/HttpStack;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->c:Lcom/baidu/passbqt/http/HttpRequestHandler;

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Lcom/baidu/passbqt/http/HttpStack;->a(Lcom/baidu/passbqt/http/HttpRequestHandler;)Lcom/baidu/passbqt/http/HttpStack;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, p0}, Lcom/baidu/passbqt/http/HttpStack;->a(Lcom/baidu/passbqt/http/PassHttpClientRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v5, "PassHttpClientRequestrun "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    aput-object v4, v0, v3

    .line 61
    .line 62
    invoke-static {v2, v0}, Lcom/baidu/passbqt/common/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->b:Lcom/baidu/passbqt/http/HttpResponseHandler;

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/baidu/passbqt/http/HttpResponseHandler;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/passbqt/http/PassHttpClientRequest;->b:Lcom/baidu/passbqt/http/HttpResponseHandler;

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/baidu/passbqt/http/HttpResponseHandler;->d()V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method

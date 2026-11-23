.class public Lcom/baidu/passbqt/http/BinaryHttpResponseHandler;
.super Lcom/baidu/passbqt/http/HttpResponseHandler;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/passbqt/NoProguard;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/passbqt/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    const-string p1, "image/jpg"

    const-string v0, "image/gif"

    const-string v1, "image/png"

    const-string v2, "image/jpeg"

    .line 2
    filled-new-array {v1, v2, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/passbqt/http/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/passbqt/http/BinaryHttpResponseHandler;-><init>(Landroid/os/Looper;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;[Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/baidu/passbqt/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 5
    iput-object p2, p0, Lcom/baidu/passbqt/http/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/baidu/passbqt/http/HttpResponseHandler;->o:Z

    return-void
.end method


# virtual methods
.method a(ILjava/util/HashMap;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/baidu/passbqt/http/HttpResponseHandler;->o:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/passbqt/http/BinaryHttpResponseHandler;->b(ILjava/util/HashMap;[B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method protected a(I[B)V
    .locals 0

    .line 1
    return-void
.end method

.method b(ILjava/util/HashMap;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_4

    .line 3
    .line 4
    const-string v1, "Content-Type"

    .line 5
    .line 6
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/baidu/passbqt/http/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v2, :cond_2

    .line 25
    .line 26
    aget-object v5, v1, v4

    .line 27
    .line 28
    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 40
    .line 41
    new-instance p2, Lcom/baidu/passbqt/http/HttpErrorException;

    .line 42
    .line 43
    const-string p3, "Content-Type not allowed!"

    .line 44
    .line 45
    invoke-direct {p2, p1, p3}, Lcom/baidu/passbqt/http/HttpErrorException;-><init>(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2, v0}, Lcom/baidu/passbqt/http/HttpResponseHandler;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/baidu/passbqt/http/BinaryHttpResponseHandler;->a(I[B)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_4
    :goto_2
    new-instance p2, Lcom/baidu/passbqt/http/HttpErrorException;

    .line 57
    .line 58
    const-string p3, "None or more than one Content-Type Header found!"

    .line 59
    .line 60
    invoke-direct {p2, p1, p3}, Lcom/baidu/passbqt/http/HttpErrorException;-><init>(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p2, v0}, Lcom/baidu/passbqt/http/HttpResponseHandler;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

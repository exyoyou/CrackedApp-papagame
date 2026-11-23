.class public Lcom/baidu/passbqt/http/HttpResponseHandler;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/passbqt/NoProguard;


# static fields
.field protected static final i:I = 0x0

.field protected static final j:I = 0x1

.field protected static final k:I = 0x2

.field protected static final l:I = 0x3

.field protected static final m:Ljava/lang/String; = "UTF-8"


# instance fields
.field protected n:Ljava/lang/String;

.field protected o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-direct {p0, v0}, Lcom/baidu/passbqt/http/HttpResponseHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/baidu/passbqt/http/HttpResponseHandler;-><init>(Landroid/os/Looper;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    iput-boolean p2, p0, Lcom/baidu/passbqt/http/HttpResponseHandler;->o:Z

    const-string p1, "UTF-8"

    .line 7
    iput-object p1, p0, Lcom/baidu/passbqt/http/HttpResponseHandler;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/baidu/passbqt/http/HttpResponseHandler;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .line 1
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/baidu/passbqt/http/HttpResponseHandler;->a(ILjava/lang/String;)V

    return-void
.end method

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

    .line 5
    iget-boolean v0, p0, Lcom/baidu/passbqt/http/HttpResponseHandler;->o:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    move-object p3, v0

    .line 7
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/baidu/passbqt/http/HttpResponseHandler;->a(ILjava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
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

    :goto_1
    return-void
.end method

.method protected a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 3
    return-void
.end method

.method protected b()V
    .locals 0

    .line 1
    return-void
.end method

.method b(ILjava/util/HashMap;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    move-object p3, v0

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/baidu/passbqt/http/HttpResponseHandler;->a(ILjava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/baidu/passbqt/http/HttpResponseHandler;->o:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/baidu/passbqt/http/HttpResponseHandler;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/baidu/passbqt/http/HttpResponseHandler;->o:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/baidu/passbqt/http/HttpResponseHandler;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method c(ILjava/util/HashMap;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/passbqt/http/HttpResponseHandler;->a(ILjava/util/HashMap;[B)V

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V

    .line 6
    :goto_0
    new-instance p3, Lcom/baidu/passbqt/http/HttpErrorException;

    invoke-direct {p3, p1, p2}, Lcom/baidu/passbqt/http/HttpErrorException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p3, p2}, Lcom/baidu/passbqt/http/HttpResponseHandler;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method c(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/baidu/passbqt/http/HttpResponseHandler;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/baidu/passbqt/http/HttpResponseHandler;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/baidu/passbqt/http/HttpResponseHandler;->b()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    if-eq v0, v3, :cond_2

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/passbqt/http/HttpResponseHandler;->b()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/passbqt/http/HttpResponseHandler;->a()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, [Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v0, p1, v1

    .line 29
    .line 30
    check-cast v0, Ljava/lang/Throwable;

    .line 31
    .line 32
    aget-object p1, p1, v3

    .line 33
    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/baidu/passbqt/http/HttpResponseHandler;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, [Ljava/lang/Object;

    .line 43
    .line 44
    aget-object v0, p1, v1

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    aget-object v1, p1, v3

    .line 53
    .line 54
    check-cast v1, Ljava/util/HashMap;

    .line 55
    .line 56
    aget-object p1, p1, v2

    .line 57
    .line 58
    check-cast p1, [B

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1, p1}, Lcom/baidu/passbqt/http/HttpResponseHandler;->b(ILjava/util/HashMap;[B)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

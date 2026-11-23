.class Lcom/baidu/oauth/sdkbqt/a/a/e;
.super Lcom/baidu/passbqt/http/HttpResponseHandler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/oauth/sdkbqt/a/a/f;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/oauth/sdkbqt/a/a/g;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:Lcom/baidu/oauth/sdkbqt/a/a/a;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/a/a/a;Landroid/os/Looper;ZLcom/baidu/oauth/sdkbqt/a/a/f;Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->h:Lcom/baidu/oauth/sdkbqt/a/a/a;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->a:Lcom/baidu/oauth/sdkbqt/a/a/f;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->c:Lcom/baidu/oauth/sdkbqt/a/a/g;

    .line 8
    .line 9
    iput-object p7, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->d:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p8, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->e:Ljava/util/List;

    .line 12
    .line 13
    iput-object p9, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->f:Ljava/lang/String;

    .line 14
    .line 15
    iput p10, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->g:I

    .line 16
    .line 17
    invoke-direct {p0, p2, p3}, Lcom/baidu/passbqt/http/HttpResponseHandler;-><init>(Landroid/os/Looper;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .line 1
    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 1
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

    .line 2
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->a:Lcom/baidu/oauth/sdkbqt/a/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/oauth/sdkbqt/a/a/f;->a(ILjava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->h:Lcom/baidu/oauth/sdkbqt/a/a/a;

    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Lcom/baidu/oauth/sdkbqt/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->h:Lcom/baidu/oauth/sdkbqt/a/a/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Lcom/baidu/oauth/sdkbqt/a/a/a;Z)Z

    .line 5
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->h:Lcom/baidu/oauth/sdkbqt/a/a/a;

    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->c:Lcom/baidu/oauth/sdkbqt/a/a/g;

    iget-object v3, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->d:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->f:Ljava/lang/String;

    iget v6, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->g:I

    iget-object v7, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->a:Lcom/baidu/oauth/sdkbqt/a/a/f;

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/oauth/sdkbqt/a/a/a;->b(Ljava/lang/String;Lcom/baidu/oauth/sdkbqt/a/a/g;Ljava/util/HashMap;Ljava/util/List;Ljava/lang/String;ILcom/baidu/oauth/sdkbqt/a/a/f;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->h:Lcom/baidu/oauth/sdkbqt/a/a/a;

    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->a:Lcom/baidu/oauth/sdkbqt/a/a/f;

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/oauth/sdkbqt/a/a/a;->a(Lcom/baidu/oauth/sdkbqt/a/a/a;Lcom/baidu/oauth/sdkbqt/a/a/f;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/a/a/e;->a:Lcom/baidu/oauth/sdkbqt/a/a/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/a/a/f;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

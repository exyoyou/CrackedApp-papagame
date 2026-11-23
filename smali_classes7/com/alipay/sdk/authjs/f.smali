.class final Lcom/alipay/sdk/authjs/f;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/alipay/sdk/authjs/a;

.field final synthetic c:Lcom/alipay/sdk/authjs/d;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/authjs/f;->c:Lcom/alipay/sdk/authjs/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/alipay/sdk/authjs/f;->b:Lcom/alipay/sdk/authjs/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "toastCallBack"

    .line 7
    .line 8
    const-string v2, "true"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    new-instance v1, Lcom/alipay/sdk/authjs/a;

    .line 14
    .line 15
    const-string v2, "callback"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/alipay/sdk/authjs/a;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/alipay/sdk/authjs/f;->b:Lcom/alipay/sdk/authjs/a;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v2, v1, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, v1, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/alipay/sdk/authjs/f;->c:Lcom/alipay/sdk/authjs/d;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/alipay/sdk/authjs/d;->a:Lcom/alipay/sdk/authjs/c;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/alipay/sdk/authjs/c;->a(Lcom/alipay/sdk/authjs/a;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

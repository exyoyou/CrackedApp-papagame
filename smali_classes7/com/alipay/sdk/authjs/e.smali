.class final Lcom/alipay/sdk/authjs/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/alipay/sdk/authjs/a;

.field final synthetic c:Lcom/alipay/sdk/authjs/d;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/authjs/e;->c:Lcom/alipay/sdk/authjs/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/alipay/sdk/authjs/e;->b:Lcom/alipay/sdk/authjs/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/authjs/e;->c:Lcom/alipay/sdk/authjs/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alipay/sdk/authjs/e;->b:Lcom/alipay/sdk/authjs/a;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    const-string v2, "toast"

    .line 8
    .line 9
    iget-object v3, v1, Lcom/alipay/sdk/authjs/a;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v2, v1, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    .line 18
    .line 19
    const-string v3, "content"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "duration"

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/16 v4, 0x9c4

    .line 32
    .line 33
    if-ge v2, v4, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x1

    .line 38
    :goto_0
    iget-object v4, v0, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v4, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 45
    .line 46
    .line 47
    new-instance v3, Ljava/util/Timer;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v4, Lcom/alipay/sdk/authjs/f;

    .line 53
    .line 54
    invoke-direct {v4, v0, v1}, Lcom/alipay/sdk/authjs/f;-><init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V

    .line 55
    .line 56
    .line 57
    int-to-long v0, v2

    .line 58
    invoke-virtual {v3, v4, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 59
    .line 60
    .line 61
    :cond_1
    sget-object v0, Lcom/alipay/sdk/authjs/a$a;->a:Lcom/alipay/sdk/authjs/a$a;

    .line 62
    .line 63
    return-void
.end method

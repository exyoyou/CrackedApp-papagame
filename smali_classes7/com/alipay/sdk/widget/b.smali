.class final Lcom/alipay/sdk/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/alipay/sdk/widget/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/widget/b;->b:Lcom/alipay/sdk/widget/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->b:Lcom/alipay/sdk/widget/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->g(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->b:Lcom/alipay/sdk/widget/a;

    .line 10
    .line 11
    new-instance v1, Lcom/alipay/sdk/widget/a$a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/alipay/sdk/widget/b;->b:Lcom/alipay/sdk/widget/a;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v1, v2, v3}, Lcom/alipay/sdk/widget/a$a;-><init>(Lcom/alipay/sdk/widget/a;Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/alipay/sdk/widget/a;->b(Lcom/alipay/sdk/widget/a;Lcom/alipay/sdk/widget/a$a;)Lcom/alipay/sdk/widget/a$a;

    .line 23
    .line 24
    .line 25
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->b:Lcom/alipay/sdk/widget/a;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->g(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->b:Lcom/alipay/sdk/widget/a;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->g(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    :catch_0
    :cond_1
    return-void
.end method

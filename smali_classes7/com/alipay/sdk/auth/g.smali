.class final Lcom/alipay/sdk/auth/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/webkit/SslErrorHandler;

.field final synthetic c:Lcom/alipay/sdk/auth/AuthActivity$b;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/AuthActivity$b;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/auth/g;->c:Lcom/alipay/sdk/auth/AuthActivity$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/alipay/sdk/auth/g;->b:Landroid/webkit/SslErrorHandler;

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
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/auth/g;->c:Lcom/alipay/sdk/auth/AuthActivity$b;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    .line 4
    .line 5
    const-string v2, "\u5b89\u5168\u8b66\u544a"

    .line 6
    .line 7
    const-string v3, "\u7531\u4e8e\u60a8\u7684\u8bbe\u5907\u7f3a\u5c11\u6839\u8bc1\u4e66\uff0c\u5c06\u65e0\u6cd5\u6821\u9a8c\u8be5\u8bbf\u95ee\u7ad9\u70b9\u7684\u5b89\u5168\u6027\uff0c\u53ef\u80fd\u5b58\u5728\u98ce\u9669\uff0c\u8bf7\u9009\u62e9\u662f\u5426\u7ee7\u7eed\uff1f"

    .line 8
    .line 9
    const-string v4, "\u7ee7\u7eed"

    .line 10
    .line 11
    new-instance v5, Lcom/alipay/sdk/auth/h;

    .line 12
    .line 13
    invoke-direct {v5, p0}, Lcom/alipay/sdk/auth/h;-><init>(Lcom/alipay/sdk/auth/g;)V

    .line 14
    .line 15
    .line 16
    const-string v6, "\u9000\u51fa"

    .line 17
    .line 18
    new-instance v7, Lcom/alipay/sdk/auth/i;

    .line 19
    .line 20
    invoke-direct {v7, p0}, Lcom/alipay/sdk/auth/i;-><init>(Lcom/alipay/sdk/auth/g;)V

    .line 21
    .line 22
    .line 23
    invoke-static/range {v1 .. v7}, Lcom/alipay/sdk/widget/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 24
    .line 25
    .line 26
    return-void
.end method

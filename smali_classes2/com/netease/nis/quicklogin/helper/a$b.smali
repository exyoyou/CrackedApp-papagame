.class Lcom/netease/nis/quicklogin/helper/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/helper/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

.field final synthetic c:Lcom/netease/nis/quicklogin/helper/a;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/helper/a;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/a$b;->c:Lcom/netease/nis/quicklogin/helper/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/a$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/a$b;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/a$b;->c:Lcom/netease/nis/quicklogin/helper/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/a$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/a$b;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/netease/nis/quicklogin/helper/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/a$b;->c:Lcom/netease/nis/quicklogin/helper/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/a$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/a$b;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1, v2}, Lcom/netease/nis/quicklogin/helper/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

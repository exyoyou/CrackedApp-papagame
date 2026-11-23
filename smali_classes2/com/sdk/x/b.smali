.class public Lcom/sdk/x/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sdk/base/api/CallBackTimeOut;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sdk/base/api/CallBackTimeOut<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/sdk/x/a;


# direct methods
.method public constructor <init>(Lcom/sdk/x/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/x/b;->a:Lcom/sdk/x/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeout(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sdk/x/b;->a:Lcom/sdk/x/a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/sdk/x/a;->d:Lcom/sdk/x/a$d;

    .line 4
    .line 5
    iget-object p2, p1, Lcom/sdk/x/a$d;->a:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/sdk/x/b;->a:Lcom/sdk/x/a;

    .line 11
    .line 12
    const p2, 0x18e71

    .line 13
    .line 14
    .line 15
    const-string p3, "\u9009\u62e9\u6d41\u91cf\u901a\u9053\u5931\u8d25"

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0, p2, p3}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/sdk/x/a;->h:Ljava/lang/String;

    .line 22
    .line 23
    const-string p2, "\u9009\u62e9\u6d41\u91cf\u901a\u9053 \u8d85\u65f6 "

    .line 24
    .line 25
    const/4 p3, 0x0

    .line 26
    invoke-static {p1, p2, p3}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/sdk/x/b;->a:Lcom/sdk/x/a;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/sdk/x/a;->b:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/sdk/base/module/manager/SDKManager;->releaseConnect(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

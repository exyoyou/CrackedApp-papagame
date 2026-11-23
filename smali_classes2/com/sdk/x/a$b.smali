.class public Lcom/sdk/x/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sdk/base/api/CallBackTimeOut;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/x/a;->a(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sdk/base/api/CallBackTimeOut<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/sdk/x/a;


# direct methods
.method public constructor <init>(Lcom/sdk/x/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/x/a$b;->a:Lcom/sdk/x/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeout(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sdk/x/a$b;->a:Lcom/sdk/x/a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/sdk/x/a;->e:Lcom/sdk/a/c;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/sdk/x/a;->h:Ljava/lang/String;

    .line 8
    .line 9
    sget-object p2, Lcom/sdk/x/a;->i:Ljava/lang/Boolean;

    .line 10
    .line 11
    const-string p3, "\u8d85\u65f6\uff0c\u5df2\u53d6\u6d88\u8bf7\u6c42"

    .line 12
    .line 13
    invoke-static {p1, p3, p2}, Lcom/sdk/base/framework/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/sdk/x/a$b;->a:Lcom/sdk/x/a;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/sdk/x/a;->e:Lcom/sdk/a/c;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/sdk/a/c;->a()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/sdk/x/a$b;->a:Lcom/sdk/x/a;

    .line 24
    .line 25
    const p2, 0x18a8d

    .line 26
    .line 27
    .line 28
    const-string p3, "\u8d85\u65f6"

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0, p2, p3}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/sdk/x/a$b;->a:Lcom/sdk/x/a;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/sdk/x/a;->c:Lcom/sdk/x/a$d;

    .line 37
    .line 38
    iget-object p2, p1, Lcom/sdk/x/a$d;->a:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

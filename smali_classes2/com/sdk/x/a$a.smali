.class public Lcom/sdk/x/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/x/a;->a(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/sdk/x/a;


# direct methods
.method public constructor <init>(Lcom/sdk/x/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/x/a$a;->a:Lcom/sdk/x/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/sdk/x/a$a;->a:Lcom/sdk/x/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    const/16 v0, 0x64

    .line 12
    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/sdk/x/a$a;->a:Lcom/sdk/x/a;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/sdk/x/a;->e:Lcom/sdk/a/c;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Lcom/sdk/x/a;->h:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "finish \u8d85\u65f6\uff0c\u5df2\u53d6\u6d88\u8bf7\u6c42\u7ed3\u675f\u65f6\u95f4: "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/sdk/x/a;->i:Ljava/lang/Boolean;

    .line 41
    .line 42
    const-string v2, "\u8d85\u65f6\uff0c\u5df2\u53d6\u6d88\u8bf7\u6c42"

    .line 43
    .line 44
    invoke-static {v0, v2, v1}, Lcom/sdk/base/framework/utils/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Lcom/sdk/x/a;->e:Lcom/sdk/a/c;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/sdk/a/c;->a()V

    .line 50
    .line 51
    .line 52
    const v0, 0x18a8d

    .line 53
    .line 54
    .line 55
    const-string v1, "\u8d85\u65f6"

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-virtual {p1, v2, v0, v1}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

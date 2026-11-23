.class public Lcom/wufun/union/ad/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wufun/union/ad/AdChannel$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/wufun/union/ad/AdChannel;

.field private c:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wufun/union/ad/AdChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/wufun/union/ad/a;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/wufun/union/ad/a;->b:Lcom/wufun/union/ad/AdChannel;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/a;->b:Lcom/wufun/union/ad/AdChannel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/wufun/union/ad/AdChannel;->c:Lcom/wufun/union/ad/AdChannel$Type;

    .line 7
    .line 8
    sget-object v3, Lcom/wufun/union/ad/AdChannel$Type;->TT:Lcom/wufun/union/ad/AdChannel$Type;

    .line 9
    .line 10
    const/4 v4, 0x6

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    if-ne p1, v4, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/wufun/union/ad/AdChannel;->c()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/wufun/union/ad/a;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/wufun/union/ad/a;->b:Lcom/wufun/union/ad/AdChannel;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/wufun/union/ad/AdChannel;->k(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v3, Lcom/wufun/union/ad/AdChannel$Type;->GDT:Lcom/wufun/union/ad/AdChannel$Type;

    .line 29
    .line 30
    if-ne v2, v3, :cond_1

    .line 31
    .line 32
    if-ne p1, v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/wufun/union/ad/AdChannel;->c()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/wufun/union/ad/a;->c(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/wufun/union/ad/a;->b:Lcom/wufun/union/ad/AdChannel;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/wufun/union/ad/AdChannel;->k(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wufun/union/ad/a;->c:Landroid/os/Messenger;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    new-instance v0, Landroid/os/Message;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v2, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "action"

    .line 62
    .line 63
    const-string v4, "onAdChannelCallback"

    .line 64
    .line 65
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v3, "event"

    .line 69
    .line 70
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string p1, "message"

    .line 74
    .line 75
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    .line 83
    :try_start_0
    iget-object p1, p0, Lcom/wufun/union/ad/a;->c:Landroid/os/Messenger;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void
.end method

.method public b()Landroid/os/Messenger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/a;->c:Landroid/os/Messenger;

    .line 2
    .line 3
    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/wufun/union/ad/a;->a:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/wufun/union/ad/a;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ".action.commonService"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/wufun/union/ad/a;->a:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    const-string v1, "action"

    .line 50
    .line 51
    const-string v2, "launchVGame"

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const-string v1, "packageName"

    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/wufun/union/ad/a;->a:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    return-void
.end method

.method public d(Landroid/os/Messenger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/a;->c:Landroid/os/Messenger;

    .line 2
    .line 3
    return-void
.end method

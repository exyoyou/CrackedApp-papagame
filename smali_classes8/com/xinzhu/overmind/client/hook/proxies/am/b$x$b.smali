.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$x$b;
.super Landroid/content/IIntentReceiver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field mFilter:Landroid/content/IntentFilter;

.field mOrigin:Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IInterface;Landroid/content/IntentFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x$b;->mOrigin:Landroid/os/IInterface;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x$b;->mFilter:Landroid/content/IntentFilter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 8

    .line 1
    invoke-static {p1}, Lna/c;->i(Landroid/content/Intent;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    new-instance v0, Lt8/k;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/am/b$x$b;->mOrigin:Landroid/os/IInterface;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lt8/k;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    move v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v4, p4

    .line 15
    move v5, p5

    .line 16
    move v6, p6

    .line 17
    move v7, p7

    .line 18
    invoke-virtual/range {v0 .. v7}, Lt8/k;->b(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

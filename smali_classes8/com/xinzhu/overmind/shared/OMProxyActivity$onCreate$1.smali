.class public final Lcom/xinzhu/overmind/shared/OMProxyActivity$onCreate$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/shared/OMProxyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/xinzhu/overmind/shared/OMProxyActivity$onCreate$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "p0",
        "Landroid/content/Context;",
        "p1",
        "Landroid/content/Intent;",
        "omshared_wufunRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/shared/OMProxyActivity;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/shared/OMProxyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/shared/OMProxyActivity$onCreate$1;->a:Lcom/xinzhu/overmind/shared/OMProxyActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    sget-object p2, Lcom/xinzhu/overmind/shared/OMProxyActivity;->k:Lcom/xinzhu/overmind/shared/OMProxyActivity$a;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/xinzhu/overmind/shared/OMProxyActivity$a;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMProxyActivity$onCreate$1;->a:Lcom/xinzhu/overmind/shared/OMProxyActivity;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

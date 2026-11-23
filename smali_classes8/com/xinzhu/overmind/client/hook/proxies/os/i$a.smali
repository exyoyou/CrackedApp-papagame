.class Lcom/xinzhu/overmind/client/hook/proxies/os/i$a;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/os/i;->onBindMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "status"


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/client/hook/proxies/os/i;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/os/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/os/i$a;->a:Lcom/xinzhu/overmind/client/hook/proxies/os/i;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "retrieveSystemUpdateInfo"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p2, "status"

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.class public Lcom/xinzhu/overmind/client/hook/proxies/vm/b;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/vm/b$a;,
        Lcom/xinzhu/overmind/client/hook/proxies/vm/b$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "WindowSessionStub"


# instance fields
.field private b:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/vm/b;->b:Landroid/os/IInterface;

    .line 9
    .line 10
    return-void
.end method

.method public static d(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2
    .line 3
    const/16 v1, 0x7d2

    .line 4
    .line 5
    const/16 v2, 0x7f6

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x7d3

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x7d6

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x7d7

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x7da

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 34
    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public getProxyInvocation()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/vm/b;->b:Landroid/os/IInterface;

    .line 2
    .line 3
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    array-length v0, p3

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    .line 7
    .line 8
    invoke-static {p3, v0}, Lsa/r;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    aget-object v1, p3, v0

    .line 15
    .line 16
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/xinzhu/overmind/client/hook/proxies/vm/b;->d(Landroid/view/WindowManager$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    aput-object v1, p3, v0

    .line 22
    .line 23
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/b;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method protected onBindMethod()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/vm/b$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/vm/b$a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/vm/b$b;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/vm/b$b;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

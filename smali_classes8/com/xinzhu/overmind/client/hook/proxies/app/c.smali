.class public Lcom/xinzhu/overmind/client/hook/proxies/app/c;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "JobServiceStub"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "jobscheduler"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "jobscheduler"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lo8/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    const-string p1, "jobscheduler"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onBindMethod()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/c$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/c$a;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/app/c;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/c$b;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/c$b;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/app/c;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/c$c;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/c$c;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/app/c;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/c$d;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/client/hook/proxies/app/c$d;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/app/c;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

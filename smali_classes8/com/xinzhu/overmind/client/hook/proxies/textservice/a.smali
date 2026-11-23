.class public Lcom/xinzhu/overmind/client/hook/proxies/textservice/a;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String; = "textservices"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "textservices"

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
    const-string v0, "textservices"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ly9/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    const-string p1, "textservices"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onBindMethod()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 11
    .line 12
    const-string v1, "getCurrentSpellChecker"

    .line 13
    .line 14
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 24
    .line 25
    const-string v1, "getCurrentSpellCheckerSubtype"

    .line 26
    .line 27
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 36
    .line 37
    const-string v1, "getSpellCheckerService"

    .line 38
    .line 39
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 40
    .line 41
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 48
    .line 49
    const-string v1, "finishSpellCheckerService"

    .line 50
    .line 51
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 52
    .line 53
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 60
    .line 61
    const-string v1, "isSpellCheckerEnabled"

    .line 62
    .line 63
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 64
    .line 65
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 72
    .line 73
    const-string v1, "getEnabledSpellCheckers"

    .line 74
    .line 75
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 76
    .line 77
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void
.end method

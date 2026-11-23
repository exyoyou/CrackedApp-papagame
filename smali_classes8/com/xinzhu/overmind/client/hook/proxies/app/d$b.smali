.class Lcom/xinzhu/overmind/client/hook/proxies/app/d$b;
.super Lcom/xinzhu/overmind/client/hook/common/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/app/d;->onBindMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/xinzhu/overmind/client/hook/proxies/app/d;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/app/d;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/d$b;->i:Lcom/xinzhu/overmind/client/hook/proxies/app/d;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-static {p3, v0}, Lsa/r;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    aget-object v0, p3, v0

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    aget-object v2, p3, v1

    .line 17
    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Lma/f;->a()Lma/f;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v3, v4, v5, v0, v2}, Lma/f;->c(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    aput-object v0, p3, v1

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    aget-object v0, p3, v0

    .line 42
    .line 43
    check-cast v0, Landroid/app/Notification;

    .line 44
    .line 45
    new-instance v1, Lcom/xinzhu/haunted/android/app/w;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/w;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v3, 0x17

    .line 53
    .line 54
    if-lt v2, v3, :cond_0

    .line 55
    .line 56
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/e;->a(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/e;->a(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/o;->b(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Lcom/xinzhu/haunted/android/app/w;->f(Landroid/graphics/drawable/Icon;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    sget-object v1, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    const-string v2, "replace icon failed "

    .line 78
    .line 79
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/common/d;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/common/d;->c()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p3, " solve tag get null"

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1
.end method

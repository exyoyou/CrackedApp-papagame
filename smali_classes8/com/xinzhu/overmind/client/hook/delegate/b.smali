.class public Lcom/xinzhu/overmind/client/hook/delegate/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "ContentProviderDelegate"

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/client/hook/delegate/b;->c:Ljava/util/Set;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Li9/a$c;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Li9/a$c;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Li9/a$c;->d()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    new-instance v0, Li9/a$a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Li9/a$a;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Li9/a$a;->c(Landroid/os/IInterface;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Li9/a$c;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Li9/a$c;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Li9/a$c;->e(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public static b()V
    .locals 1

    .line 1
    invoke-static {}, Li9/a$e;->b()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/delegate/b;->a(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Li9/a$d;->b()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/delegate/b;->a(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    sget-object v0, Li9/a$b;->a:Ljava/lang/Class;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-static {}, Li9/a$b;->b()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/delegate/b;->a(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public static c(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    const-string v0, "downloads"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "settings"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, p0, v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->a(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;

    .line 35
    .line 36
    invoke-direct {p1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, p0, v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->a(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, p0, v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->a(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_0
    return-object p0
.end method

.method public static d()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/b;->b()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "content://settings"

    .line 13
    .line 14
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "render_shadows_in_compositor"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const-string v4, "GET_global"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/xinzhu/haunted/android/app/g;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g;->Z()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Lcom/xinzhu/haunted/android/app/g$e;

    .line 60
    .line 61
    invoke-direct {v2, v1}, Lcom/xinzhu/haunted/android/app/g$e;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/app/g$e;->c()[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    array-length v3, v1

    .line 71
    if-gtz v3, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v3, 0x0

    .line 75
    aget-object v1, v1, v3

    .line 76
    .line 77
    sget-object v3, Lcom/xinzhu/overmind/client/hook/delegate/b;->c:Ljava/util/Set;

    .line 78
    .line 79
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_0

    .line 84
    .line 85
    sget-object v3, Lcom/xinzhu/overmind/client/hook/delegate/b;->c:Ljava/util/Set;

    .line 86
    .line 87
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/app/g$e;->d()Landroid/os/IInterface;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3, v1}, Lcom/xinzhu/overmind/client/hook/delegate/b;->c(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Lcom/xinzhu/haunted/android/app/g$e;->f(Landroid/os/IInterface;)Z

    .line 99
    .line 100
    .line 101
    filled-new-array {v1}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v2, v1}, Lcom/xinzhu/haunted/android/app/g$e;->e([Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    return-void
.end method

.method public static update(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lt8/f;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lt8/f;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lt8/f;->b()Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/xinzhu/haunted/android/app/n$a;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/app/n$a;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/n$a;->b()Landroid/os/IInterface;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/Proxy;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/b;->c(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance v0, Lt8/f;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lt8/f;-><init>(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lt8/f;->c(Landroid/os/IInterface;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    new-instance v0, Lcom/xinzhu/haunted/android/app/n$a;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/app/n$a;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/n$a;->c(Landroid/os/IInterface;)Z

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

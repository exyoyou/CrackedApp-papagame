.class public Lcom/xinzhu/overmind/client/hook/proxies/context/a$b;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/context/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "registerContentObserver"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    array-length v0, p3

    .line 8
    const/4 v1, 0x5

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x16

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x4

    .line 18
    aput-object v0, p3, v1

    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    aget-object v1, p3, v0

    .line 22
    .line 23
    move-object v3, v1

    .line 24
    check-cast v3, Landroid/net/Uri;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    aget-object v1, p3, v1

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v1, 0x2

    .line 36
    aget-object v1, p3, v1

    .line 37
    .line 38
    move-object v5, v1

    .line 39
    check-cast v5, Landroid/database/IContentObserver;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/xinzhu/overmind/client/hook/proxies/context/a;->d(Landroid/net/Uri;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lma/b;->a()Lma/b;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->E()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVUid()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual/range {v2 .. v7}, Lma/b;->d(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v1, 0x3

    .line 76
    aput-object v0, p3, v1

    .line 77
    .line 78
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method

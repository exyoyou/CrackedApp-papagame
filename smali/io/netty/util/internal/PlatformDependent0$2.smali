.class final Lio/netty/util/internal/PlatformDependent0$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/PlatformDependent0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$finalUnsafe:Lsun/misc/Unsafe;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/util/internal/PlatformDependent0$2;->val$finalUnsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lio/netty/util/internal/PlatformDependent0$2;->val$finalUnsafe:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "copyMemory"

    .line 10
    .line 11
    const/4 v3, 0x5

    .line 12
    new-array v3, v3, [Ljava/lang/Class;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v0, v3, v4

    .line 16
    .line 17
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    aput-object v4, v3, v5

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    aput-object v0, v3, v5

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    aput-object v4, v3, v0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    aput-object v4, v3, v0

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    return-object v0

    .line 38
    :catch_1
    move-exception v0

    .line 39
    return-object v0
.end method

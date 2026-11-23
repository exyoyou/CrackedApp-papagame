.class Lcom/xinzhu/overmind/client/hook/proxies/os/g$a;
.super Lcom/xinzhu/overmind/client/hook/common/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/os/g;->onBindMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/xinzhu/overmind/client/hook/proxies/os/g;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/os/g;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/os/g$a;->i:Lcom/xinzhu/overmind/client/hook/proxies/os/g;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-class v0, Landroid/os/WorkSource;

    .line 2
    .line 3
    invoke-static {p3, v0}, Lcom/xinzhu/overmind/utils/d;->l([Ljava/lang/Object;Ljava/lang/Class;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object v1, p3, v0

    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/common/d;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    throw p1
.end method

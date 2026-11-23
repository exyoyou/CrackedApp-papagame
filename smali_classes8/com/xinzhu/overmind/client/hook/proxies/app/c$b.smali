.class Lcom/xinzhu/overmind/client/hook/proxies/app/c$b;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/app/c;->onBindMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/client/hook/proxies/app/c;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/app/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/c$b;->a:Lcom/xinzhu/overmind/client/hook/proxies/app/c;

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
    const-string v0, "enqueue"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    aget-object v1, p3, v0

    .line 6
    .line 7
    check-cast v1, Landroid/app/job/JobInfo;

    .line 8
    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindJobManager()Lma/e;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Lma/e;->f(Landroid/app/job/JobInfo;)Landroid/app/job/JobInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    aput-object v1, p3, v0

    .line 18
    .line 19
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

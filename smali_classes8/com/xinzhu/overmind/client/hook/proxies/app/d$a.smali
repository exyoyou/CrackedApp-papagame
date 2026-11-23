.class Lcom/xinzhu/overmind/client/hook/proxies/app/d$a;
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
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/d$a;->i:Lcom/xinzhu/overmind/client/hook/proxies/app/d;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lma/f;->a()Lma/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-virtual {p1, p2, p3}, Lma/f;->d(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string p2, "cancelAllNotifications succeed"

    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

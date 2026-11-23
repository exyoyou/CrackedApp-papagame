.class Lcom/aggmoread/sdk/b/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/b/a$a;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/b/a$a;[Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/b/a$a$a;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/aggmoread/sdk/b/a$a$a;->a:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/aggmoread/sdk/client/AMSdk$InitListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/aggmoread/sdk/client/AMError;

    const/16 v1, -0x3e8

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25!"

    invoke-direct {p1, v1, v2}, Lcom/aggmoread/sdk/client/AMError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/client/AMSdk$InitListener;->onFailed(Lcom/aggmoread/sdk/client/AMError;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/aggmoread/sdk/client/AMSdk$InitListener;->onSuccess()V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

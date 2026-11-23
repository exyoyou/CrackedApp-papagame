.class Lcom/aggmoread/sdk/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/aggmoread/sdk/b/e;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/aggmoread/sdk/b/m;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    array-length p1, p3

    if-ne p1, v1, :cond_0

    aget-object p1, p3, v0

    instance-of p1, p1, Lcom/aggmoread/sdk/client/AMSdk$InitListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/b/a$a;->a:Lcom/aggmoread/sdk/b/e;

    aget-object p2, p3, v3

    check-cast p2, Lcom/aggmoread/sdk/client/AMAdConfig;

    new-instance v0, Lcom/aggmoread/sdk/b/a$a$a;

    invoke-direct {v0, p0, p3}, Lcom/aggmoread/sdk/b/a$a$a;-><init>(Lcom/aggmoread/sdk/b/a$a;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lcom/aggmoread/sdk/b/e;->a(Lcom/aggmoread/sdk/client/AMAdConfig;Landroid/os/Handler$Callback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/b/a$a;->a:Lcom/aggmoread/sdk/b/e;

    aget-object p2, p3, v3

    check-cast p2, Lcom/aggmoread/sdk/client/AMAdConfig;

    invoke-virtual {p1, p2}, Lcom/aggmoread/sdk/b/e;->a(Lcom/aggmoread/sdk/client/AMAdConfig;)V

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Lcom/aggmoread/sdk/b/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/aggmoread/sdk/b/a$a;->a:Lcom/aggmoread/sdk/b/e;

    aget-object p2, p3, v4

    check-cast p2, Landroid/content/Context;

    aget-object v3, p3, v3

    check-cast v3, Lcom/aggmoread/sdk/client/AMAdType;

    aget-object v0, p3, v0

    check-cast v0, Lcom/aggmoread/sdk/client/AMAdLoadSlot;

    aget-object p3, p3, v1

    check-cast p3, Lcom/aggmoread/sdk/client/IAMAdLoadListener;

    invoke-virtual {p1, p2, v3, v0, p3}, Lcom/aggmoread/sdk/b/e;->a(Landroid/content/Context;Lcom/aggmoread/sdk/client/AMAdType;Lcom/aggmoread/sdk/client/AMAdLoadSlot;Lcom/aggmoread/sdk/client/IAMAdLoadListener;)V

    return-object v2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lcom/aggmoread/sdk/b/m;->c:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v5, p0, Lcom/aggmoread/sdk/b/a$a;->a:Lcom/aggmoread/sdk/b/e;

    aget-object p1, p3, v4

    move-object v6, p1

    check-cast v6, Landroid/content/Context;

    aget-object p1, p3, v3

    move-object v7, p1

    check-cast v7, Lcom/aggmoread/sdk/client/AMAdType;

    aget-object p1, p3, v0

    move-object v8, p1

    check-cast v8, Lcom/aggmoread/sdk/client/AMAdLoadSlot;

    aget-object p1, p3, v1

    move-object v9, p1

    check-cast v9, Lcom/aggmoread/sdk/client/IAMAdLoadListener;

    const/4 p1, 0x4

    aget-object p1, p3, p1

    move-object v10, p1

    check-cast v10, Lcom/aggmoread/sdk/client/IAMAdInteractionListener;

    invoke-virtual/range {v5 .. v10}, Lcom/aggmoread/sdk/b/e;->a(Landroid/content/Context;Lcom/aggmoread/sdk/client/AMAdType;Lcom/aggmoread/sdk/client/AMAdLoadSlot;Lcom/aggmoread/sdk/client/IAMAdLoadListener;Lcom/aggmoread/sdk/client/IAMAdInteractionListener;)V

    return-object v2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/aggmoread/sdk/b/m;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/aggmoread/sdk/b/a$a;->a:Lcom/aggmoread/sdk/b/e;

    aget-object p2, p3, v4

    check-cast p2, Landroid/content/Context;

    aget-object p3, p3, v3

    check-cast p3, Ljava/util/List;

    invoke-virtual {p1, p2, p3}, Lcom/aggmoread/sdk/b/e;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_4
    return-object v2
.end method

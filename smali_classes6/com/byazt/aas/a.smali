.class public Lcom/byazt/aas/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/aas/a$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/aas/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static tt:Lcom/byazt/omf/yp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/byazt/aas/a;->c:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c()Lcom/byazt/omf/yp;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/aas/a;->tt()Lcom/byazt/omf/yp;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/byazt/bwm/n;->ve()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/byazt/aas/a$1;

    const-string v2, "handleYes"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, p0}, Lcom/byazt/aas/a$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :cond_1
    invoke-static {p0}, Lcom/byazt/aas/a;->tt(Ljava/lang/String;)Lcom/byazt/aas/a$c;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-interface {p0}, Lcom/byazt/aas/a$c;->c()V

    return-void
.end method

.method private static c(Ljava/lang/String;Lcom/byazt/aas/a$c;)V
    .locals 2

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Lcom/byazt/aas/a$3;

    const-string v1, "addListener"

    invoke-direct {v0, v1, p0, p1}, Lcom/byazt/aas/a$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/a$c;)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;I)V

    return-void

    .line 18
    :cond_1
    sget-object v0, Lcom/byazt/aas/a;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/byazt/bwm/n;->ve()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/byazt/aas/a$2;

    const-string v2, "handleNo"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/byazt/aas/a$2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 13
    :cond_1
    invoke-static {p0}, Lcom/byazt/aas/a;->tt(Ljava/lang/String;)Lcom/byazt/aas/a$c;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 14
    :cond_2
    invoke-interface {p0, p1}, Lcom/byazt/aas/a$c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;[Ljava/lang/String;Lcom/byazt/aas/a$c;)V
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p2}, Lcom/byazt/aas/a;->c(Ljava/lang/String;Lcom/byazt/aas/a$c;)V

    .line 4
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static tt(Ljava/lang/String;)Lcom/byazt/aas/a$c;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/byazt/aas/a;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/aas/a$c;

    return-object p0
.end method

.method private static tt()Lcom/byazt/omf/yp;
    .locals 2

    .line 3
    sget-object v0, Lcom/byazt/aas/a;->tt:Lcom/byazt/omf/yp;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/wzi/c;->c(Landroid/content/Context;)Lcom/byazt/wzi/c;

    move-result-object v0

    const/4 v1, 0x4

    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/wzi/c;->c(I)Landroid/os/IBinder;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/byazt/omf/yp$c;->c(Landroid/os/IBinder;)Lcom/byazt/omf/yp;

    move-result-object v0

    sput-object v0, Lcom/byazt/aas/a;->tt:Lcom/byazt/omf/yp;

    .line 7
    :cond_0
    sget-object v0, Lcom/byazt/aas/a;->tt:Lcom/byazt/omf/yp;

    return-object v0
.end method

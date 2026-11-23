.class public final Lcom/byazt/yf/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0x48
    }
.end annotation


# static fields
.field public static c:Landroid/content/Context; = null

.field public static tt:Lcom/byazt/yf/c; = null

.field public static uj:J = -0x1L

.field public static ve:J = -0x1L


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/byazt/ly/uj;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/px/tt;->c(Ljava/lang/String;)Lcom/byazt/ly/uj;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/byazt/yf/ve;)I
    .locals 2

    .line 48
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    move-result-object v0

    const-string v1, "gdt"

    invoke-virtual {v0, v1}, Lcom/byazt/px/tt;->c(Ljava/lang/String;)Lcom/byazt/ly/uj;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 49
    :cond_0
    invoke-interface {v0, p0}, Lcom/byazt/ly/uj;->showOpenOrInstallAppDialog(Lcom/byazt/yf/ve;)I

    move-result p0

    return p0
.end method

.method public static c(I)V
    .locals 2

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    sget-object v1, Lcom/byazt/ly/c;->n:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/px/tt;->tt()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 45
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/px/tt;->ve()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ly/uj;

    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v1, v0}, Lcom/byazt/ly/uj;->setThemeStatus(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static c(Landroid/app/Activity;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/byazt/yf/u;",
            ">;II)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/yf/da$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/yf/da$1;-><init>(Landroid/app/Activity;Ljava/util/List;II)V

    invoke-static {v0}, Lcom/byazt/yf/da;->c(Lcom/byazt/yf/m;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x3

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Lcom/byazt/vx/uj;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/vx/uj$c;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/yf/c;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/byazt/yf/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    sget-wide v0, Lcom/byazt/yf/da;->ve:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/yf/da;->ve:J

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/byazt/yf/c;->ve()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/byazt/eu/tt;->c()V

    .line 9
    invoke-static {}, Lcom/byazt/hm/c;->c()V

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call init time "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/byazt/yf/da;->ve:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sput-object p0, Lcom/byazt/yf/da;->c:Landroid/content/Context;

    .line 12
    sput-object p1, Lcom/byazt/yf/da;->tt:Lcom/byazt/yf/c;

    :cond_1
    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/byazt/yf/c;Lorg/json/JSONObject;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/byazt/yf/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/yf/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->ve(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/yf/c;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->ve(Z)V

    .line 22
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ii/c;->a()V

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/byazt/sx/ve;->c(Lcom/byazt/yf/c;Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 24
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/ii/c;->sp()V

    return-void
.end method

.method public static c(Landroid/content/Context;[I)V
    .locals 3

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x1

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "permissions"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 41
    invoke-static {p0, v0, p1}, Lcom/byazt/vx/uj;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/vx/uj$c;)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/dj/uj;)V
    .locals 2

    .line 28
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->tt()Lcom/byazt/xf/ve;

    move-result-object v0

    .line 29
    invoke-static {p0}, Lcom/byazt/px/n;->c(Lcom/byazt/dj/uj;)Landroid/util/SparseArray;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/byazt/xf/ve;->tt(Landroid/util/SparseArray;)V

    .line 31
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->gu()V

    .line 32
    invoke-static {p0}, Lcom/byazt/px/n;->c(Lcom/byazt/dj/uj;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/sx/ve;->c(Landroid/util/SparseArray;)V

    return-void
.end method

.method public static c(Lcom/byazt/ko/c;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/byazt/sx/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 52
    invoke-interface {p0}, Lcom/byazt/ko/c;->c()V

    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/bp/c;->c(Lcom/byazt/ko/c;)V

    :cond_1
    return-void
.end method

.method public static c(Lcom/byazt/yf/a;)V
    .locals 2

    .line 25
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/byazt/bp/c;->c(Lcom/byazt/yf/a;Z)V

    return-void
.end method

.method public static c(Lcom/byazt/yf/m;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/qe/ve;->c(Lcom/byazt/yf/m;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app\u8fd0\u884c\u4e2dsetPulisherDid: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/bp/c;->uj(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 5

    .line 13
    sget-object v0, Lcom/byazt/yf/da;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/byazt/yf/da;->tt:Lcom/byazt/yf/c;

    if-nez v0, :cond_1

    return-void

    .line 15
    :cond_1
    sget-wide v0, Lcom/byazt/yf/da;->uj:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/yf/da;->uj:J

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call start up time "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/byazt/yf/da;->uj:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_2
    sget-object v0, Lcom/byazt/yf/da;->c:Landroid/content/Context;

    sget-object v1, Lcom/byazt/yf/da;->tt:Lcom/byazt/yf/c;

    invoke-static {v0, v1, p0}, Lcom/byazt/yf/da;->c(Landroid/content/Context;Lcom/byazt/yf/c;Lorg/json/JSONObject;)V

    .line 19
    invoke-static {}, Lcom/byazt/sx/uj;->tt()V

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 3
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->bx()Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/byazt/sx/c;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static da()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/bp/c;->u()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/bp/c;->my()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static n(Ljava/lang/String;)Lcom/byazt/id/c;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/byazt/px/c;->c(Ljava/lang/String;)Lcom/byazt/id/c;

    move-result-object p0

    return-object p0
.end method

.method public static n()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->z()Z

    move-result v0

    return v0
.end method

.method public static sl()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "embed_applog"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/dna/ve;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lcom/byazt/dna/ve;->getOAID(Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public static sp()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/bp/c;->nu()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static t()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/rq/c;->c()Lcom/byazt/it/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "if_test"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/byazt/qe/ve;->uj(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static tt()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/yf/da;->ve:J

    return-wide v0
.end method

.method public static tt(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/qe/ve;->uj(I)V

    return-void
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/bp/c;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/byazt/sx/c;->tt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static u()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/bp/c;->or()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static uj()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/yl/tt;->tt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uj(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/qe/ve;->ve(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static ve()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/yf/da;->uj:J

    return-wide v0
.end method

.method public static ve(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "tt_pangle_preview_ad_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "tt_pangle_preview_creative_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "tt_pangle_preview_ext"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :pswitch_0
    invoke-static {}, Lcom/byazt/jj/n;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_1
    invoke-static {}, Lcom/byazt/jj/n;->tt()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_2
    invoke-static {}, Lcom/byazt/jj/n;->ve()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6dbebe93 -> :sswitch_2
        -0x42712509 -> :sswitch_1
        0x6b4e303 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static x()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->lr()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

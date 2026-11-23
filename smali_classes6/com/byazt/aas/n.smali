.class public Lcom/byazt/aas/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/aas/n$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/aas/n$c;",
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
    sput-object v0, Lcom/byazt/aas/n;->c:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/aas/n;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ete/ic;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/byazt/ddx/c$c;

    invoke-direct {v0}, Lcom/byazt/ddx/c$c;-><init>()V

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    const-string v1, "pangle_logo"

    .line 62
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    const-string v1, "open_policy"

    .line 63
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    new-instance v1, Lcom/byazt/aas/n$9;

    invoke-direct {v1, p1}, Lcom/byazt/aas/n$9;-><init>(Lcom/byazt/ete/ic;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    .line 66
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->mk()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->tt(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, v0, p1, p2}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/aas/n$c;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1, p2}, Lcom/byazt/aas/n;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    .line 27
    invoke-static {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->tt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/aas/n$c;Ljava/lang/String;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lcom/byazt/aas/n;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    .line 19
    invoke-static {p0, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ete/ic;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 34
    :cond_1
    new-instance v1, Lcom/byazt/aas/n$6;

    invoke-direct {v1, p2, p0, p3}, Lcom/byazt/aas/n$6;-><init>(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/byazt/aas/n;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    .line 35
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->rh()Lcom/byazt/ete/a;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 36
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 37
    invoke-virtual {p2}, Lcom/byazt/ete/a;->i()Ljava/lang/String;

    move-result-object p1

    .line 38
    :cond_3
    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->ve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V
    .locals 1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1, p3}, Lcom/byazt/aas/n;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    .line 30
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p4}, Lcom/byazt/aas/n;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;Lcom/byazt/ete/ic;)V
    .locals 8

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 12
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/byazt/aas/n$2;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/byazt/aas/n$2;-><init>(Ljava/lang/String;Lcom/byazt/aas/n$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ete/ic;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;Lcom/byazt/ux/sp;Lcom/byazt/ete/ic;)V
    .locals 9

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    new-instance v0, Lcom/byazt/aas/n$1;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/byazt/aas/n$1;-><init>(Ljava/lang/String;Lcom/byazt/aas/n$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ux/sp;Lcom/byazt/ete/ic;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V
    .locals 1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1, p6}, Lcom/byazt/aas/n;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    .line 43
    invoke-static/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/aas/n$c;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 44
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 45
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p1, p3}, Lcom/byazt/aas/n;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    .line 47
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0, p1, p2}, Lcom/byazt/aas/n;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 20
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->fv()Ljava/lang/String;

    move-result-object p1

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/byazt/aas/n$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/byazt/aas/n$3;-><init>(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2, v0, v1, p1, p0}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/aas/n$c;Ljava/lang/String;Lcom/byazt/ete/ic;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/byazt/aas/n;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;I)V
    .locals 2

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lcom/byazt/aas/n$8;

    const-string v1, "doHandler"

    invoke-direct {v0, v1, p0, p1}, Lcom/byazt/aas/n$8;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;I)V

    return-void

    .line 55
    :cond_1
    invoke-static {p0}, Lcom/byazt/aas/n;->n(Ljava/lang/String;)Lcom/byazt/aas/n$c;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    .line 56
    invoke-interface {p0}, Lcom/byazt/aas/n$c;->ve()V

    return-void

    .line 57
    :cond_3
    invoke-interface {p0}, Lcom/byazt/aas/n$c;->ve()V

    return-void

    .line 58
    :cond_4
    invoke-interface {p0}, Lcom/byazt/aas/n$c;->tt()V

    return-void

    .line 59
    :cond_5
    invoke-interface {p0}, Lcom/byazt/aas/n$c;->c()V

    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V
    .locals 2

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    new-instance v0, Lcom/byazt/aas/n$7;

    const-string v1, "addDialogListener"

    invoke-direct {v0, v1, p0, p1}, Lcom/byazt/aas/n$7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;I)V

    return-void

    .line 51
    :cond_1
    sget-object v0, Lcom/byazt/aas/n;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->x_()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->u_()Lcom/byazt/ete/gt;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 69
    :cond_2
    invoke-static {p0}, Lcom/byazt/ete/gt;->u(Lcom/byazt/ete/ic;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    return v0

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->i()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    .line 71
    invoke-static {p0}, Lcom/byazt/ete/gt;->t(Lcom/byazt/ete/ic;)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->pu()I

    move-result p0

    if-eq p0, v3, :cond_6

    const/4 v1, 0x5

    if-ne p0, v1, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v2

    :cond_7
    :goto_1
    return v0
.end method

.method public static n(Ljava/lang/String;)Lcom/byazt/aas/n$c;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    sget-object v0, Lcom/byazt/aas/n;->c:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/byazt/aas/n$c;

    .line 16
    .line 17
    return-object p0
.end method

.method public static synthetic tt()Lcom/byazt/omf/yp;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/aas/n;->ve()Lcom/byazt/omf/yp;

    move-result-object v0

    return-object v0
.end method

.method public static tt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V
    .locals 1

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p2, p3}, Lcom/byazt/aas/n;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    .line 9
    invoke-static {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->ve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0, p1, p2}, Lcom/byazt/aas/n;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->fv()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/byazt/aas/n$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/byazt/aas/n$4;-><init>(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2, v0, v1, p1}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/aas/n$c;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-static {p0, v0}, Lcom/byazt/aas/n;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public static uj(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->z(Lcom/byazt/ete/ic;)I

    move-result v0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->i()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p0, p2}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    move-result-object p1

    .line 4
    instance-of p2, p1, Lcom/byazt/wz/c;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/byazt/yzg/ve;->c(Z)V

    .line 6
    :cond_1
    invoke-interface {p1, p0, v0}, Lcom/byazt/pop/ve;->c(Lcom/byazt/ete/ic;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static uj(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 7
    invoke-static {p0, v0}, Lcom/byazt/aas/n;->c(Ljava/lang/String;I)V

    return-void
.end method

.method private static ve()Lcom/byazt/omf/yp;
    .locals 2

    .line 7
    sget-object v0, Lcom/byazt/aas/n;->tt:Lcom/byazt/omf/yp;

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/wzi/c;->c(Landroid/content/Context;)Lcom/byazt/wzi/c;

    move-result-object v0

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/wzi/c;->c(I)Landroid/os/IBinder;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/byazt/omf/yp$c;->c(Landroid/os/IBinder;)Lcom/byazt/omf/yp;

    move-result-object v0

    sput-object v0, Lcom/byazt/aas/n;->tt:Lcom/byazt/omf/yp;

    .line 11
    :cond_0
    sget-object v0, Lcom/byazt/aas/n;->tt:Lcom/byazt/omf/yp;

    return-object v0
.end method

.method public static ve(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0, p1, p2}, Lcom/byazt/aas/n;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static ve(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->fv()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/byazt/aas/n$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/byazt/aas/n$5;-><init>(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2, v0, p1, v1}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static ve(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 6
    invoke-static {p0, v0}, Lcom/byazt/aas/n;->c(Ljava/lang/String;I)V

    return-void
.end method

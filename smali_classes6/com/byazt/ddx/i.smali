.class public Lcom/byazt/ddx/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ddx/i$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->c(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ddx/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ddx/i;->c()V

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ddx/i$c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v1, Lcom/byazt/ddx/i$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ddx/i$1;-><init>(Lcom/byazt/ddx/i;Lcom/byazt/ddx/i$c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->c(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

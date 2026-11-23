.class public Lcom/byazt/tl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sif/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d3,
        0x14
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/tl/c;->c:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/byazt/tl/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/tl/c;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static c(Lcom/byazt/dyf/tt;Lcom/byazt/ete/ic;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/tl/c;

    invoke-direct {v0, p1}, Lcom/byazt/tl/c;-><init>(Lcom/byazt/ete/ic;)V

    invoke-virtual {p0, v0}, Lcom/byazt/dyf/tt;->addInterceptor(Lcom/byazt/sif/c;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/nc/a;Ljava/lang/String;Landroid/app/Dialog;)Z
    .locals 0

    const-string p2, "7:1"

    .line 3
    invoke-virtual {p1}, Lcom/byazt/nc/a;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    new-instance p2, Lcom/byazt/tl/c$1;

    invoke-direct {p2, p0}, Lcom/byazt/tl/c$1;-><init>(Lcom/byazt/tl/c;)V

    const-string p3, "stats_feedback_cannot_close"

    invoke-virtual {p1, p2, p3}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;Landroid/app/Dialog;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

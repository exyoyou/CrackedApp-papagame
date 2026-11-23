.class public Lcom/byazt/nm/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nm/i$c;
    }
.end annotation


# instance fields
.field public c:Z


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

.method public static synthetic c(Lcom/byazt/nm/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nm/i;->c:Z

    return p0
.end method


# virtual methods
.method public c(ZLcom/byazt/omf/h;Lcom/byazt/dj/tt;Lcom/byazt/sp/tt;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/nm/i;->c:Z

    .line 3
    new-instance p1, Lcom/byazt/nm/i$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p4}, Lcom/byazt/nm/i$1;-><init>(Lcom/byazt/nm/i;Ljava/util/function/Function;Lcom/byazt/sp/tt;)V

    invoke-virtual {p2, p3, p1}, Lcom/byazt/omf/h;->loadNativeExpressAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;)V

    :cond_1
    :goto_0
    return-void
.end method

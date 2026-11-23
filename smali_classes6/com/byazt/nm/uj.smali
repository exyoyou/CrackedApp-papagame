.class public Lcom/byazt/nm/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nm/uj$c;
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


# virtual methods
.method public c(ZLcom/byazt/omf/h;Lcom/byazt/dj/tt;Lcom/byazt/sp/tt;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/byazt/nm/uj$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1, p4, p1}, Lcom/byazt/nm/uj$1;-><init>(Lcom/byazt/nm/uj;Ljava/util/function/Function;Lcom/byazt/sp/tt;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p3, v0}, Lcom/byazt/omf/h;->loadExpressDrawFeedAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

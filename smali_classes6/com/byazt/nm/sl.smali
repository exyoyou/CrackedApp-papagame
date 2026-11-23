.class public Lcom/byazt/nm/sl;
.super Lcom/byazt/nm/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x9e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nm/sl$c;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PgRewardVideoAdapter"

.field public static final VERSION_4400:Ljava/lang/String; = "4.4.0.0"


# instance fields
.field public tt:Lcom/byazt/ll/tt;

.field public ve:Lcom/byazt/dv/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/db/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/nm/tt;-><init>(Lcom/byazt/db/tt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/nm/sl;)Lcom/byazt/ll/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nm/sl;->tt:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/nm/sl;)Lcom/byazt/dv/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nm/sl;->ve:Lcom/byazt/dv/tt;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public notifyLoadFailBecauseGMAdSlotIsNull()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/pp/c;

    .line 2
    .line 3
    const-string v1, "load ad fail adSlot is null"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/pp/c;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public startLoad(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/dv/tt;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p3, p0, Lcom/byazt/nm/sl;->tt:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nm/sl;->ve:Lcom/byazt/dv/tt;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/nm/sl;->notifyLoadFailBecauseGMAdSlotIsNull()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p2, Lcom/byazt/nm/sl$c;

    .line 12
    .line 13
    invoke-direct {p2, p0, p4}, Lcom/byazt/nm/sl$c;-><init>(Lcom/byazt/nm/sl;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-static {p2, p1}, Lcom/byazt/nm/sl$c;->c(Lcom/byazt/nm/sl$c;Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

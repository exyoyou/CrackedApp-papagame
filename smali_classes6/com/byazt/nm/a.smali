.class public Lcom/byazt/nm/a;
.super Lcom/byazt/nm/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nm/a$c;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PangleFullVideoAdapter"


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


# virtual methods
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
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/byazt/pp/c;

    .line 4
    .line 5
    const-string p2, "load ad fail adSlot is null"

    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/byazt/pp/c;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p4, Lcom/byazt/nm/a$c;

    .line 15
    .line 16
    invoke-direct {p4, p0}, Lcom/byazt/nm/a$c;-><init>(Lcom/byazt/nm/a;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p4, p1, p3, p2, p0}, Lcom/byazt/nm/a$c;->loadAd(Landroid/content/Context;Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Lcom/byazt/sp/tt;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.class public Lcom/byazt/nm/t;
.super Lcom/byazt/nm/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x42
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nm/t$c;
    }
.end annotation


# static fields
.field public static final VERSION_00:Ljava/lang/String; = "0.0"


# instance fields
.field public tt:I


# direct methods
.method public constructor <init>(Lcom/byazt/db/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/nm/tt;-><init>(Lcom/byazt/db/tt;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0xbb8

    .line 5
    .line 6
    iput p1, p0, Lcom/byazt/nm/t;->tt:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c(Lcom/byazt/nm/t;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/nm/t;->tt:I

    return p0
.end method

.method public static synthetic c(Lcom/byazt/nm/t;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nm/t;->tt:I

    return p1
.end method


# virtual methods
.method public startLoad(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V
    .locals 1
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
    new-instance v0, Lcom/byazt/nm/t$c;

    .line 15
    .line 16
    invoke-direct {v0, p0, p4}, Lcom/byazt/nm/t$c;-><init>(Lcom/byazt/nm/t;Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-virtual {v0, p1, p3, p2, p0}, Lcom/byazt/nm/t$c;->c(Landroid/content/Context;Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Lcom/byazt/sp/tt;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.class public Lcom/byazt/nm/sp;
.super Lcom/byazt/nm/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x5b
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PangleInterstitialAdapter"

.field public static final VERSION_00:Ljava/lang/String; = "0.0"


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
    new-instance p1, Lcom/byazt/pp/c;

    .line 2
    .line 3
    const p2, 0x13c6c

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-direct {p1, p2, p3}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

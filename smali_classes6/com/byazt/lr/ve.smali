.class public Lcom/byazt/lr/ve;
.super Lcom/byazt/w/x;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9b,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/lr/ve$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/w/x<",
        "Ljava/lang/Long;",
        "Lcom/byazt/nn/tt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/byazt/w/x;-><init>(II)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/lr/ve$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/lr/ve;-><init>()V

    return-void
.end method

.method public static c()Lcom/byazt/lr/ve;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/lr/ve$c;->c()Lcom/byazt/lr/ve;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c(JJ)Lcom/byazt/nn/tt;
    .locals 1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/nn/tt;

    return-object p1

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0
.end method

.method public c(Lcom/byazt/nn/tt;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/nn/tt;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

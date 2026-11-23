.class public Lcom/byazt/cjm/tt$3;
.super Lcom/byazt/nh/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4db,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cjm/tt;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cjm/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/cjm/tt;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cjm/tt$3;->c:Lcom/byazt/cjm/tt;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/nh/sp;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 2
    new-instance p1, Lcom/byazt/cjm/tt$3$1;

    invoke-direct {p1, p0}, Lcom/byazt/cjm/tt$3$1;-><init>(Lcom/byazt/cjm/tt$3;)V

    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/nc/z;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/cjm/tt$3$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/cjm/tt$3$2;-><init>(Lcom/byazt/cjm/tt$3;Lcom/byazt/nc/z;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt(Lcom/byazt/nc/z;)V
    .locals 0

    return-void
.end method

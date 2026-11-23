.class public Lcom/byazt/yf/yp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0xd7
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

.method public static c(Lcom/byazt/xf/ve;)Lcom/byazt/yf/yp;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/yf/yp$1;

    invoke-direct {v0, p0}, Lcom/byazt/yf/yp$1;-><init>(Lcom/byazt/xf/ve;)V

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public tt()Lcom/byazt/yf/i;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public ve()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

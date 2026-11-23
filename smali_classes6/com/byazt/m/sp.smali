.class public Lcom/byazt/m/sp;
.super Lcom/byazt/m/BaseException;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x82,
        0x5b
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/byazt/m/sp;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/m/BaseException;->setExtraInfo(Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/byazt/m/BaseException;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

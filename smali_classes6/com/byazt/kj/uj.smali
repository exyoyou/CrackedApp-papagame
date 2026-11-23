.class public Lcom/byazt/kj/uj;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9f,
        0xf
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:Z

.field public ve:J


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/byazt/kj/uj;->c:Z

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/byazt/kj/uj;->c:Z

    .line 9
    iput-wide p2, p0, Lcom/byazt/kj/uj;->ve:J

    return-void
.end method

.method public constructor <init>(ZZJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/byazt/kj/uj;->c:Z

    .line 5
    iput-boolean p2, p0, Lcom/byazt/kj/uj;->tt:Z

    .line 6
    iput-wide p3, p0, Lcom/byazt/kj/uj;->ve:J

    return-void
.end method

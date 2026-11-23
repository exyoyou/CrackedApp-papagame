.class public Lcom/byazt/qw/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d6,
        0x22
    }
.end annotation


# instance fields
.field public c:J

.field public tt:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/byazt/qw/a;->c:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/byazt/qw/a;->tt:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qw/a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qw/a;->tt:J

    .line 2
    .line 3
    return-wide v0
.end method

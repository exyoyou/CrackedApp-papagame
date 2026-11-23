.class public Lcom/byazt/tdq/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c4,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/tdq/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public c:Z

.field public tt:J

.field public uj:J

.field public ve:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/tdq/uj$c;->c:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/byazt/tdq/uj$c;->tt:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/byazt/tdq/uj$c;->ve:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/byazt/tdq/uj$c;->uj:J

    .line 14
    .line 15
    return-void
.end method

.class public Lcom/byazt/wi/ve$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d7,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wi/ve;->c(Lcom/byazt/ha/tt;Lcom/byazt/ip/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Lcom/byazt/wi/ve;

.field public final synthetic tt:I

.field public final synthetic uj:J

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/wi/ve;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wi/ve$1;->n:Lcom/byazt/wi/ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/wi/ve$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput p4, p0, Lcom/byazt/wi/ve$1;->tt:I

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/wi/ve$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p6, p0, Lcom/byazt/wi/ve$1;->uj:J

    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/byazt/wi/a;->c()Lcom/byazt/wi/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/wi/ve$1;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lcom/byazt/wi/ve$1;->tt:I

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/wi/ve$1;->ve:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v4, p0, Lcom/byazt/wi/ve$1;->uj:J

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/wi/a;->c(Ljava/lang/String;ILjava/lang/String;J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

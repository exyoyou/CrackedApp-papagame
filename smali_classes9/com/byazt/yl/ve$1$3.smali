.class public Lcom/byazt/yl/ve$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fd,
        0x670
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yl/ve$1;->c(JJIILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic sp:Lcom/byazt/yl/ve$1;

.field public final synthetic tt:J

.field public final synthetic uj:I

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/yl/ve$1;JJIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yl/ve$1$3;->sp:Lcom/byazt/yl/ve$1;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/yl/ve$1$3;->c:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/yl/ve$1$3;->tt:J

    .line 6
    .line 7
    iput p6, p0, Lcom/byazt/yl/ve$1$3;->ve:I

    .line 8
    .line 9
    iput p7, p0, Lcom/byazt/yl/ve$1$3;->uj:I

    .line 10
    .line 11
    iput-object p8, p0, Lcom/byazt/yl/ve$1$3;->n:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p9, p0, Lcom/byazt/yl/ve$1$3;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/yl/ve$1$3;->sp:Lcom/byazt/yl/ve$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/yl/ve$1;->c:Lcom/byazt/zh/tt;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/byazt/yl/ve$1$3;->c:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/byazt/yl/ve$1$3;->tt:J

    .line 8
    .line 9
    iget v6, p0, Lcom/byazt/yl/ve$1$3;->ve:I

    .line 10
    .line 11
    iget v7, p0, Lcom/byazt/yl/ve$1$3;->uj:I

    .line 12
    .line 13
    iget-object v8, p0, Lcom/byazt/yl/ve$1$3;->n:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v9, p0, Lcom/byazt/yl/ve$1$3;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface/range {v1 .. v9}, Lcom/byazt/zh/tt;->c(JJIILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

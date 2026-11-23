.class public Lcom/byazt/yl/ve$1$4;
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
        0x66f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yl/ve$1;->c(JJLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic n:Lcom/byazt/yl/ve$1;

.field public final synthetic tt:J

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/yl/ve$1;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yl/ve$1$4;->n:Lcom/byazt/yl/ve$1;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/yl/ve$1$4;->c:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/yl/ve$1$4;->tt:J

    .line 6
    .line 7
    iput-object p6, p0, Lcom/byazt/yl/ve$1$4;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p7, p0, Lcom/byazt/yl/ve$1$4;->uj:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/yl/ve$1$4;->n:Lcom/byazt/yl/ve$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/yl/ve$1;->c:Lcom/byazt/zh/tt;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/byazt/yl/ve$1$4;->c:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/byazt/yl/ve$1$4;->tt:J

    .line 8
    .line 9
    iget-object v6, p0, Lcom/byazt/yl/ve$1$4;->ve:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v7, p0, Lcom/byazt/yl/ve$1$4;->uj:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface/range {v1 .. v7}, Lcom/byazt/zh/tt;->c(JJLjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

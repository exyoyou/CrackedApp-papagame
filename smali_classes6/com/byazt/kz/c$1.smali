.class public Lcom/byazt/kz/c$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x90,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kz/c;->getNetOperatorType()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/kz/c;


# direct methods
.method public constructor <init>(Lcom/byazt/kz/c;Ljava/lang/String;JI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kz/c$1;->ve:Lcom/byazt/kz/c;

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/byazt/kz/c$1;->c:J

    .line 4
    .line 5
    iput p5, p0, Lcom/byazt/kz/c$1;->tt:I

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/kz/c$1;->ve:Lcom/byazt/kz/c;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v2

    .line 8
    iget-wide v4, p0, Lcom/byazt/kz/c$1;->c:J

    .line 9
    .line 10
    sub-long/2addr v2, v4

    .line 11
    const/4 v4, 0x0

    .line 12
    const-string v5, "\u83b7\u53d6\u8fd0\u884c\u5546\u7c7b\u578b\u4e3a-1\u6216-2,\u76f4\u63a5\u6807\u8bb0\u53d6\u53f7\u5931\u8d25"

    .line 13
    .line 14
    iget v6, p0, Lcom/byazt/kz/c$1;->tt:I

    .line 15
    .line 16
    iget-object v7, p0, Lcom/byazt/kz/c$1;->ve:Lcom/byazt/kz/c;

    .line 17
    .line 18
    invoke-static {v7}, Lcom/byazt/kz/c;->c(Lcom/byazt/kz/c;)I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    invoke-static/range {v0 .. v7}, Lcom/byazt/kz/c;->c(Lcom/byazt/kz/c;IJZLjava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

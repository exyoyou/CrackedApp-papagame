.class public final Lcom/byazt/ng/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0xfe
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic c:Lcom/byazt/ng/uj;

.field public final synthetic n:Z

.field public final synthetic sp:I

.field public final synthetic tt:J

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/ll/tt;

.field public final synthetic x:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/byazt/ng/uj;JLcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/a$2;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/ng/a$2;->tt:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/ng/a$2;->ve:Lcom/byazt/ll/tt;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/ng/a$2;->uj:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p6, p0, Lcom/byazt/ng/a$2;->n:Z

    .line 10
    .line 11
    iput-object p7, p0, Lcom/byazt/ng/a$2;->a:Ljava/lang/String;

    .line 12
    .line 13
    iput p8, p0, Lcom/byazt/ng/a$2;->sp:I

    .line 14
    .line 15
    iput-object p9, p0, Lcom/byazt/ng/a$2;->x:Ljava/util/Map;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/ng/a$2;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, p0, Lcom/byazt/ng/a$2;->tt:J

    .line 8
    .line 9
    sub-long/2addr v1, v3

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/tw/c;->c()Lcom/byazt/tw/c;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/byazt/ng/a$2;->c:Lcom/byazt/ng/uj;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/byazt/ng/a$2;->ve:Lcom/byazt/ll/tt;

    .line 20
    .line 21
    iget-object v6, p0, Lcom/byazt/ng/a$2;->uj:Ljava/lang/String;

    .line 22
    .line 23
    iget-boolean v7, p0, Lcom/byazt/ng/a$2;->n:Z

    .line 24
    .line 25
    iget-object v8, p0, Lcom/byazt/ng/a$2;->a:Ljava/lang/String;

    .line 26
    .line 27
    iget v9, p0, Lcom/byazt/ng/a$2;->sp:I

    .line 28
    .line 29
    iget-object v10, p0, Lcom/byazt/ng/a$2;->x:Ljava/util/Map;

    .line 30
    .line 31
    invoke-virtual/range {v3 .. v10}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

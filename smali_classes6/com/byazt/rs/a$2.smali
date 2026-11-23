.class public Lcom/byazt/rs/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/rs/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x288,
        0xfe
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rs/a;->tt(Lcom/byazt/rs/uj;Lcom/byazt/rs/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/rs/a;


# direct methods
.method public constructor <init>(Lcom/byazt/rs/a;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rs/a$2;->ve:Lcom/byazt/rs/a;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/rs/a$2;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/rs/a$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/rs/uj;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/byazt/rs/a$2;->c:J

    sub-long v8, v1, v3

    .line 2
    iget-object v5, v0, Lcom/byazt/rs/a$2;->ve:Lcom/byazt/rs/a;

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v11}, Lcom/byazt/rs/a;->c(Lcom/byazt/rs/a;Lcom/byazt/rs/uj;ZJILjava/lang/String;)V

    .line 3
    iget-object v12, v0, Lcom/byazt/rs/a$2;->ve:Lcom/byazt/rs/a;

    iget-object v13, v0, Lcom/byazt/rs/a$2;->tt:Ljava/lang/String;

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v15, p1

    invoke-static/range {v12 .. v17}, Lcom/byazt/rs/a;->c(Lcom/byazt/rs/a;Ljava/lang/String;ZLcom/byazt/rs/uj;ILjava/lang/String;)V

    .line 4
    iget-object v1, v0, Lcom/byazt/rs/a$2;->ve:Lcom/byazt/rs/a;

    iget-object v2, v0, Lcom/byazt/rs/a$2;->tt:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/byazt/rs/a;->c(Lcom/byazt/rs/a;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/rs/uj;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/byazt/rs/a$2;->c:J

    sub-long v8, v1, v3

    .line 6
    iget-object v5, v0, Lcom/byazt/rs/a$2;->ve:Lcom/byazt/rs/a;

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static/range {v5 .. v11}, Lcom/byazt/rs/a;->c(Lcom/byazt/rs/a;Lcom/byazt/rs/uj;ZJILjava/lang/String;)V

    .line 7
    iget-object v10, v0, Lcom/byazt/rs/a$2;->ve:Lcom/byazt/rs/a;

    iget-object v11, v0, Lcom/byazt/rs/a$2;->tt:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    invoke-static/range {v10 .. v15}, Lcom/byazt/rs/a;->c(Lcom/byazt/rs/a;Ljava/lang/String;ZLcom/byazt/rs/uj;ILjava/lang/String;)V

    .line 8
    iget-object v1, v0, Lcom/byazt/rs/a$2;->ve:Lcom/byazt/rs/a;

    iget-object v2, v0, Lcom/byazt/rs/a$2;->tt:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/byazt/rs/a;->c(Lcom/byazt/rs/a;Ljava/lang/String;)V

    return-void
.end method

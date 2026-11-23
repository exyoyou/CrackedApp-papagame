.class public final Lcom/byazt/ng/a$21;
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
        0x562
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;ILjava/lang/String;JLcom/byazt/ll/tt;IIILjava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/ll/tt;

.field public final synthetic c:Lcom/byazt/ng/uj;

.field public final synthetic da:Ljava/lang/String;

.field public final synthetic i:I

.field public final synthetic n:J

.field public final synthetic sl:J

.field public final synthetic sp:I

.field public final synthetic t:J

.field public final synthetic tt:Lcom/byazt/yl/ve;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:I

.field public final synthetic x:I


# direct methods
.method public constructor <init>(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;ILjava/lang/String;JLcom/byazt/ll/tt;IIILjava/lang/String;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/a$21;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ng/a$21;->tt:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/ng/a$21;->ve:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ng/a$21;->uj:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/byazt/ng/a$21;->n:J

    .line 10
    .line 11
    iput-object p7, p0, Lcom/byazt/ng/a$21;->a:Lcom/byazt/ll/tt;

    .line 12
    .line 13
    iput p8, p0, Lcom/byazt/ng/a$21;->sp:I

    .line 14
    .line 15
    iput p9, p0, Lcom/byazt/ng/a$21;->x:I

    .line 16
    .line 17
    iput p10, p0, Lcom/byazt/ng/a$21;->i:I

    .line 18
    .line 19
    iput-object p11, p0, Lcom/byazt/ng/a$21;->da:Ljava/lang/String;

    .line 20
    .line 21
    iput-wide p12, p0, Lcom/byazt/ng/a$21;->sl:J

    .line 22
    .line 23
    iput-wide p14, p0, Lcom/byazt/ng/a$21;->t:J

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/tw/c;->c()Lcom/byazt/tw/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/byazt/ng/a$21;->c:Lcom/byazt/ng/uj;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/byazt/ng/a$21;->tt:Lcom/byazt/yl/ve;

    .line 10
    .line 11
    iget v4, v0, Lcom/byazt/ng/a$21;->ve:I

    .line 12
    .line 13
    iget-object v5, v0, Lcom/byazt/ng/a$21;->uj:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v6, v0, Lcom/byazt/ng/a$21;->n:J

    .line 16
    .line 17
    iget-object v8, v0, Lcom/byazt/ng/a$21;->a:Lcom/byazt/ll/tt;

    .line 18
    .line 19
    iget v9, v0, Lcom/byazt/ng/a$21;->sp:I

    .line 20
    .line 21
    iget v10, v0, Lcom/byazt/ng/a$21;->x:I

    .line 22
    .line 23
    iget v11, v0, Lcom/byazt/ng/a$21;->i:I

    .line 24
    .line 25
    iget-object v12, v0, Lcom/byazt/ng/a$21;->da:Ljava/lang/String;

    .line 26
    .line 27
    iget-wide v13, v0, Lcom/byazt/ng/a$21;->sl:J

    .line 28
    .line 29
    move-wide v15, v13

    .line 30
    iget-wide v13, v0, Lcom/byazt/ng/a$21;->t:J

    .line 31
    .line 32
    move-wide/from16 v17, v13

    .line 33
    .line 34
    move-wide v13, v15

    .line 35
    move-wide/from16 v15, v17

    .line 36
    .line 37
    invoke-virtual/range {v1 .. v16}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;ILjava/lang/String;JLcom/byazt/ll/tt;IIILjava/lang/String;JJ)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

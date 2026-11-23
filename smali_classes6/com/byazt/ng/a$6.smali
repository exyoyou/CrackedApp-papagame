.class public final Lcom/byazt/ng/a$6;
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
        0x18d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/tt;JLjava/lang/String;ZIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic c:Lcom/byazt/ng/uj;

.field public final synthetic da:Z

.field public final synthetic i:Z

.field public final synthetic n:J

.field public final synthetic sp:Z

.field public final synthetic tt:Lcom/byazt/yl/ve;

.field public final synthetic uj:Lcom/byazt/nbs/tt;

.field public final synthetic ve:Lcom/byazt/ll/tt;

.field public final synthetic x:I


# direct methods
.method public constructor <init>(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/tt;JLjava/lang/String;ZIZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/a$6;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ng/a$6;->tt:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ng/a$6;->ve:Lcom/byazt/ll/tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ng/a$6;->uj:Lcom/byazt/nbs/tt;

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/byazt/ng/a$6;->n:J

    .line 10
    .line 11
    iput-object p7, p0, Lcom/byazt/ng/a$6;->a:Ljava/lang/String;

    .line 12
    .line 13
    iput-boolean p8, p0, Lcom/byazt/ng/a$6;->sp:Z

    .line 14
    .line 15
    iput p9, p0, Lcom/byazt/ng/a$6;->x:I

    .line 16
    .line 17
    iput-boolean p10, p0, Lcom/byazt/ng/a$6;->i:Z

    .line 18
    .line 19
    iput-boolean p11, p0, Lcom/byazt/ng/a$6;->da:Z

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/byazt/tw/c;->c()Lcom/byazt/tw/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ng/a$6;->c:Lcom/byazt/ng/uj;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/ng/a$6;->tt:Lcom/byazt/yl/ve;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/ng/a$6;->ve:Lcom/byazt/ll/tt;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/byazt/ng/a$6;->uj:Lcom/byazt/nbs/tt;

    .line 12
    .line 13
    iget-wide v5, p0, Lcom/byazt/ng/a$6;->n:J

    .line 14
    .line 15
    iget-object v7, p0, Lcom/byazt/ng/a$6;->a:Ljava/lang/String;

    .line 16
    .line 17
    iget-boolean v8, p0, Lcom/byazt/ng/a$6;->sp:Z

    .line 18
    .line 19
    iget v9, p0, Lcom/byazt/ng/a$6;->x:I

    .line 20
    .line 21
    iget-boolean v10, p0, Lcom/byazt/ng/a$6;->i:Z

    .line 22
    .line 23
    iget-boolean v11, p0, Lcom/byazt/ng/a$6;->da:Z

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v11}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/tt;JLjava/lang/String;ZIZZ)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

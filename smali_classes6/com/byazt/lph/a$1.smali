.class public Lcom/byazt/lph/a$1;
.super Lcom/byazt/ke/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x189,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lph/a;->c(Ljava/util/List;JILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic n:Lcom/byazt/lph/a;

.field public final synthetic tt:J

.field public final synthetic uj:Ljava/lang/Object;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/lph/a;Ljava/lang/String;Ljava/util/List;JILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lph/a$1;->n:Lcom/byazt/lph/a;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/lph/a$1;->c:Ljava/util/List;

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/lph/a$1;->tt:J

    .line 6
    .line 7
    iput p6, p0, Lcom/byazt/lph/a$1;->ve:I

    .line 8
    .line 9
    iput-object p7, p0, Lcom/byazt/lph/a$1;->uj:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/byazt/ke/tt;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/lph/a$1;->n:Lcom/byazt/lph/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/lph/a$1;->c:Ljava/util/List;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/byazt/lph/a$1;->tt:J

    .line 6
    .line 7
    iget v4, p0, Lcom/byazt/lph/a$1;->ve:I

    .line 8
    .line 9
    iget-object v5, p0, Lcom/byazt/lph/a$1;->uj:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lcom/byazt/lph/a;->c(Lcom/byazt/lph/a;Ljava/util/List;JILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

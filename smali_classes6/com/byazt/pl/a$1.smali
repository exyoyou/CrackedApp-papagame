.class public Lcom/byazt/pl/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ug/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x56,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pl/a;->c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/pl/ve;Lcom/byazt/pl/uj$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic n:Lcom/byazt/pl/a;

.field public final synthetic tt:Lcom/byazt/pl/ve;

.field public final synthetic uj:Lcom/byazt/pl/uj$c;

.field public final synthetic ve:[I


# direct methods
.method public constructor <init>(Lcom/byazt/pl/a;JLcom/byazt/pl/ve;[ILcom/byazt/pl/uj$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pl/a$1;->n:Lcom/byazt/pl/a;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/pl/a$1;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/pl/a$1;->tt:Lcom/byazt/pl/ve;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/pl/a$1;->ve:[I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/byazt/pl/a$1;->uj:Lcom/byazt/pl/uj$c;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/nbs/sp;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/pl/a$1;->n:Lcom/byazt/pl/a;

    iget-wide v1, p0, Lcom/byazt/pl/a$1;->c:J

    iget-object v3, p0, Lcom/byazt/pl/a$1;->tt:Lcom/byazt/pl/ve;

    iget-object v4, v3, Lcom/byazt/pl/ve;->c:Lcom/byazt/ll/tt;

    iget-object v5, v3, Lcom/byazt/pl/ve;->uj:Lcom/byazt/nbs/tt;

    iget-object v3, p0, Lcom/byazt/pl/a$1;->ve:[I

    const/4 v6, 0x0

    aget v6, v3, v6

    iget-object v7, p0, Lcom/byazt/pl/a$1;->uj:Lcom/byazt/pl/uj$c;

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/byazt/pl/a;->c(Lcom/byazt/pl/a;JLcom/byazt/ll/tt;Lcom/byazt/nbs/tt;ILcom/byazt/nbs/sp;Lcom/byazt/pl/uj$c;)V

    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/byazt/pl/a$1;->n:Lcom/byazt/pl/a;

    iget-wide v1, p0, Lcom/byazt/pl/a$1;->c:J

    iget-object v3, p0, Lcom/byazt/pl/a$1;->ve:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/byazt/pl/a$1;->tt:Lcom/byazt/pl/ve;

    iget-object v5, v4, Lcom/byazt/pl/ve;->c:Lcom/byazt/ll/tt;

    iget-object v6, p0, Lcom/byazt/pl/a$1;->uj:Lcom/byazt/pl/uj$c;

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/byazt/pl/a;->c(Lcom/byazt/pl/a;JILcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/pl/uj$c;)V

    return-void
.end method

.class public final Lcom/byazt/ng/a$24;
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
        0x563
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ng/uj;

.field public final synthetic n:I

.field public final synthetic tt:Lcom/byazt/nbs/da;

.field public final synthetic uj:I

.field public final synthetic ve:Lcom/byazt/ll/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ng/uj;Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/a$24;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ng/a$24;->tt:Lcom/byazt/nbs/da;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ng/a$24;->ve:Lcom/byazt/ll/tt;

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/ng/a$24;->uj:I

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/ng/a$24;->n:I

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
    .locals 6

    .line 1
    invoke-static {}, Lcom/byazt/tw/c;->c()Lcom/byazt/tw/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ng/a$24;->c:Lcom/byazt/ng/uj;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/ng/a$24;->tt:Lcom/byazt/nbs/da;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/ng/a$24;->ve:Lcom/byazt/ll/tt;

    .line 10
    .line 11
    iget v4, p0, Lcom/byazt/ng/a$24;->uj:I

    .line 12
    .line 13
    iget v5, p0, Lcom/byazt/ng/a$24;->n:I

    .line 14
    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.class public Lcom/byazt/cc/a$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x3e8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/cc/a$11;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a$11;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$11$1;->tt:Lcom/byazt/cc/a$11;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/cc/a$11$1;->c:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/a$11$1;->tt:Lcom/byazt/cc/a$11;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/cc/a$11;->c:Lcom/byazt/cc/a;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/cc/a;->z(Lcom/byazt/cc/a;)Lcom/byazt/ete/y;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-wide v1, p0, Lcom/byazt/cc/a$11$1;->c:J

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/byazt/cc/sp;->uj(Lcom/byazt/ete/y;J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/cc/a$11$1;->tt:Lcom/byazt/cc/a$11;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/byazt/cc/a$11;->c:Lcom/byazt/cc/a;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/cc/a;->m(Lcom/byazt/cc/a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

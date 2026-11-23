.class public Lcom/byazt/aas/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x68
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/aas/c;->c(JLcom/byazt/ete/ic;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/aas/c;

.field public final synthetic ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/aas/c;JLjava/lang/String;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/aas/c$7;->uj:Lcom/byazt/aas/c;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/aas/c$7;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/aas/c$7;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/aas/c$7;->ve:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/byazt/aas/c$7;->c:J

    .line 2
    .line 3
    const-wide/32 v2, 0x5265c00

    .line 4
    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-gez v4, :cond_1

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-gtz v4, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/byazt/aas/c$7;->tt:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/byazt/aas/c$7;->ve:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/ddx/uj;->c(JLjava/lang/String;Lcom/byazt/ete/ic;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

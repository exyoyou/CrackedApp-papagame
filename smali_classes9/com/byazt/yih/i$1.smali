.class public final Lcom/byazt/yih/i$1;
.super Lcom/byazt/aas/c$ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2da,
        0xcb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yih/i;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/aas/c;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:J

.field public final synthetic ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/aas/c;Ljava/lang/String;Lcom/byazt/ete/ic;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yih/i$1;->c:Lcom/byazt/aas/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/yih/i$1;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/yih/i$1;->ve:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/byazt/yih/i$1;->uj:J

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/byazt/aas/c$ve;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/aas/pf;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/yih/i$1;->c:Lcom/byazt/aas/c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/aas/c;->ve()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/yih/i$1;->tt:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/qh/tt;->tt(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/yih/i$1;->ve:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    iget-wide v1, p0, Lcom/byazt/yih/i$1;->uj:J

    .line 26
    .line 27
    iget-object v3, p0, Lcom/byazt/yih/i$1;->c:Lcom/byazt/aas/c;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/byazt/yih/i$1;->tt:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/yih/i;->c(Lcom/byazt/ete/ic;JLcom/byazt/aas/c;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/byazt/yih/i$1;->c:Lcom/byazt/aas/c;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/byazt/aas/c;->ve()V

    .line 39
    .line 40
    .line 41
    :cond_3
    return-void
.end method

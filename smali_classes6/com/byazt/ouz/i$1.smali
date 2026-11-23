.class public final Lcom/byazt/ouz/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0xcb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/i;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:J

.field public final synthetic ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ete/ic;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/i$1;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ouz/i$1;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ouz/i$1;->ve:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/byazt/ouz/i$1;->uj:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ouz/i$1;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/byazt/ouz/i;->c(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(I)Lcom/byazt/qal/tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/ouz/i$1;->tt:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->ve(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/byazt/ouz/i$1;->ve:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/byazt/aas/nb;->m(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->a(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "dynamic_backup_render_new"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-wide v1, p0, Lcom/byazt/ouz/i$1;->uj:J

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/byazt/qal/tt;->c(J)Lcom/byazt/qal/tt;

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

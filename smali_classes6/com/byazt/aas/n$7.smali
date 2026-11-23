.class public final Lcom/byazt/aas/n$7;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x248
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/aas/n;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/aas/n$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/aas/n$7;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/aas/n$7;->tt:Lcom/byazt/aas/n$c;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/aas/n;->tt()Lcom/byazt/omf/yp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/aas/n$7;->c:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Lcom/byazt/ymw/c;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/aas/n$7;->tt:Lcom/byazt/aas/n$c;

    .line 10
    .line 11
    invoke-direct {v2, v3}, Lcom/byazt/ymw/c;-><init>(Lcom/byazt/aas/n$c;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lcom/byazt/omf/yp;->c(Ljava/lang/String;Lcom/byazt/omf/sl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :catchall_0
    return-void
.end method

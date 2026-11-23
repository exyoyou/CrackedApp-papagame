.class public Lcom/byazt/omf/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x18a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/a;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/a;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/a$5;->c:Lcom/byazt/omf/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/a$5;->c:Lcom/byazt/omf/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/omf/a;->c(Lcom/byazt/omf/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/a$5;->c:Lcom/byazt/omf/a;

    .line 15
    .line 16
    new-instance v1, Lcom/byazt/qh/uj;

    .line 17
    .line 18
    const-string v2, "timeout"

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/byazt/qh/uj;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/byazt/omf/a;->c(Lcom/byazt/omf/a;Lcom/byazt/qh/uj;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

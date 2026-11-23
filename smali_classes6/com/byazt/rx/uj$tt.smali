.class public Lcom/byazt/rx/uj$tt;
.super Lcom/byazt/jtc/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x98,
        0x99
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/rx/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tt"
.end annotation


# instance fields
.field public c:Ljava/lang/Process;

.field public tt:J


# direct methods
.method public constructor <init>(Ljava/lang/Process;J)V
    .locals 1

    .line 1
    const-string v0, "LogcatDump$TimerThread"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/jtc/ve;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/rx/uj$tt;->c:Ljava/lang/Process;

    .line 7
    .line 8
    iput-wide p2, p0, Lcom/byazt/rx/uj$tt;->tt:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/byazt/rx/uj$tt;->tt:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lcom/byazt/rx/uj$tt;->c:Ljava/lang/Process;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

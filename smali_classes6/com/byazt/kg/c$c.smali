.class public final Lcom/byazt/kg/c$c;
.super Lcom/byazt/jtc/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ac,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kg/c;

.field public tt:I


# direct methods
.method public constructor <init>(Lcom/byazt/kg/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kg/c$c;->c:Lcom/byazt/kg/c;

    .line 2
    .line 3
    const-string p1, "ANRFileObserver$RestartMonitorThread"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/jtc/ve;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p2, p0, Lcom/byazt/kg/c$c;->tt:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/kg/c$c;->tt:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/kg/c$c;->c:Lcom/byazt/kg/c;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Lcom/byazt/kg/c;->c(Lcom/byazt/kg/c;Z)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

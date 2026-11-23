.class public abstract Lcom/byazt/vr/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x693,
        0x14
    }
.end annotation


# instance fields
.field public c:Landroid/os/Handler;

.field public final tt:J

.field public final ve:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/vr/c;->c:Landroid/os/Handler;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/byazt/vr/c;->tt:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/byazt/vr/c;->ve:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/byazt/vr/c;->tt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/vr/c;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/byazt/vr/c;->tt()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/vr/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/vr/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/vr/c;->c:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/vr/c;->tt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ve()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/vr/c;->ve:J

    .line 2
    .line 3
    return-wide v0
.end method

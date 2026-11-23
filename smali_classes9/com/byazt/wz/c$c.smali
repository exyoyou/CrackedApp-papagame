.class public Lcom/byazt/wz/c$c;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/wz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/wz/c;

.field public c:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public tt:J

.field public uj:Ljava/lang/String;

.field public ve:J


# direct methods
.method public constructor <init>(Lcom/byazt/wz/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/c$c;->a:Lcom/byazt/wz/c;

    const-string p1, "DownloadCallbackRunnable"

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/wz/c;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/wz/c$c;->a:Lcom/byazt/wz/c;

    const-string p1, "DownloadCallbackRunnable"

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lcom/byazt/wz/c$c;->c:Ljava/lang/String;

    .line 6
    iput-wide p3, p0, Lcom/byazt/wz/c$c;->tt:J

    .line 7
    iput-wide p5, p0, Lcom/byazt/wz/c$c;->ve:J

    .line 8
    iput-object p7, p0, Lcom/byazt/wz/c$c;->uj:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/byazt/wz/c$c;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wz/c$c;->tt:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/c$c;->c:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wz/c$c;->a:Lcom/byazt/wz/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/wz/c;->i()Lcom/byazt/omf/yp;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, p0, Lcom/byazt/wz/c$c;->a:Lcom/byazt/wz/c;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/byazt/wz/c;->sl:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/byazt/wz/c$c;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v4, p0, Lcom/byazt/wz/c$c;->tt:J

    .line 14
    .line 15
    iget-wide v6, p0, Lcom/byazt/wz/c$c;->ve:J

    .line 16
    .line 17
    iget-object v8, p0, Lcom/byazt/wz/c$c;->uj:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/byazt/wz/c$c;->n:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface/range {v1 .. v9}, Lcom/byazt/omf/yp;->c(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :catchall_0
    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/wz/c$c;->ve:J

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/wz/c$c;->uj:Ljava/lang/String;

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/c$c;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

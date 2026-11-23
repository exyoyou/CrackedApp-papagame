.class public Lcom/byazt/pop/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3e1,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/pop/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/byazt/pop/c;

.field public c:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public tt:J

.field public uj:Ljava/lang/String;

.field public ve:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(J)Lcom/byazt/pop/tt$c;
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/pop/tt$c;->tt:J

    return-object p0
.end method

.method public c(Lcom/byazt/pop/c;)Lcom/byazt/pop/tt$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/pop/tt$c;->a:Lcom/byazt/pop/c;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/pop/tt$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pop/tt$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .locals 3

    .line 4
    new-instance v0, Lcom/byazt/pop/tt;

    const-string v1, "tt_csj_download_thread"

    invoke-direct {v0, v1}, Lcom/byazt/pop/tt;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/byazt/pop/tt$c;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/pop/tt;->c(Lcom/byazt/pop/tt;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/byazt/pop/tt$c;->uj:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/pop/tt;->tt(Lcom/byazt/pop/tt;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-wide v1, p0, Lcom/byazt/pop/tt$c;->ve:J

    invoke-static {v0, v1, v2}, Lcom/byazt/pop/tt;->c(Lcom/byazt/pop/tt;J)J

    .line 8
    iget-wide v1, p0, Lcom/byazt/pop/tt$c;->tt:J

    invoke-static {v0, v1, v2}, Lcom/byazt/pop/tt;->tt(Lcom/byazt/pop/tt;J)J

    .line 9
    iget-object v1, p0, Lcom/byazt/pop/tt$c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/pop/tt;->ve(Lcom/byazt/pop/tt;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/byazt/pop/tt$c;->a:Lcom/byazt/pop/c;

    invoke-static {v0, v1}, Lcom/byazt/pop/tt;->c(Lcom/byazt/pop/tt;Lcom/byazt/pop/c;)Lcom/byazt/pop/c;

    .line 11
    invoke-static {v0}, Lcom/byazt/pop/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt(J)Lcom/byazt/pop/tt$c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/pop/tt$c;->ve:J

    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/pop/tt$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/pop/tt$c;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/pop/tt$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pop/tt$c;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

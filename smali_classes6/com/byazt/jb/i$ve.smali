.class public Lcom/byazt/jb/i$ve;
.super Lcom/byazt/mk/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0x797
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/jb/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ve"
.end annotation


# instance fields
.field public final synthetic tt:Lcom/byazt/jb/i;


# direct methods
.method public constructor <init>(Lcom/byazt/jb/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jb/i$ve;->tt:Lcom/byazt/jb/i;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/mk/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public m_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jb/i$ve;->tt:Lcom/byazt/jb/i;

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/jb/tt;->a:Lcom/byazt/jb/tt;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/jb/i;->tt(Lcom/byazt/jb/tt;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public tt(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    .line 2
    .line 3
    const-string v1, "timeout"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public x()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/mk/c;->tt()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/byazt/jb/i$ve;->tt(Ljava/io/IOException;)Ljava/io/IOException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0
.end method

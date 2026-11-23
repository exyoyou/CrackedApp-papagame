.class public Lcom/byazt/omf/gr$9;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x6c5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/gr;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/ete/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:[Lcom/byazt/hm/tt;

.field public final synthetic tt:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic uj:Lcom/byazt/omf/gr;

.field public final synthetic ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/gr;[Lcom/byazt/hm/tt;Ljava/util/concurrent/CountDownLatch;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/gr$9;->uj:Lcom/byazt/omf/gr;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/gr$9;->c:[Lcom/byazt/hm/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/omf/gr$9;->tt:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/omf/gr$9;->ve:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/omf/gr$9;->c:[Lcom/byazt/hm/tt;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 2
    iget-object p1, p0, Lcom/byazt/omf/gr$9;->tt:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/omf/gr$9;->tt:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v1, Lcom/byazt/omf/gr$9$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/omf/gr$9$1;-><init>(Lcom/byazt/omf/gr$9;Lcom/byazt/va/uj;Ljava/io/IOException;)V

    const-string p1, "pkg_info_failed"

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

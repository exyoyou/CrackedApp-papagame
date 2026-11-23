.class public final Lcom/byazt/kk/ve$1;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26b,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kk/ve;->c(Ljava/lang/String;Landroid/content/Context;Lcom/byazt/kk/ve$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kk/ve$c;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/kk/ve$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kk/ve$1;->c:Lcom/byazt/kk/ve$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kk/ve$1;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/kk/ve$1;->ve:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kk/ve$1;->c:Lcom/byazt/kk/ve$c;

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/byazt/kk/ve$1;->tt:Ljava/lang/String;

    iget-object v0, p0, Lcom/byazt/kk/ve$1;->ve:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/byazt/kk/ve$1;->c:Lcom/byazt/kk/ve$c;

    invoke-interface {p2, p1}, Lcom/byazt/kk/ve$c;->c(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/kk/ve$1;->c:Lcom/byazt/kk/ve$c;

    const/4 p2, 0x4

    const-string v0, "file not exist"

    invoke-interface {p1, p2, v0}, Lcom/byazt/kk/ve$c;->c(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 2

    .line 6
    iget-object p1, p0, Lcom/byazt/kk/ve$1;->c:Lcom/byazt/kk/ve$c;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/byazt/kk/ve$c;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

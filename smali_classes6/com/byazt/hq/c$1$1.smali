.class public Lcom/byazt/hq/c$1$1;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x27c,
        0x3ad
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hq/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hq/c$1;


# direct methods
.method public constructor <init>(Lcom/byazt/hq/c$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hq/c$1$1;->c:Lcom/byazt/hq/c$1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 1

    const-string p1, "js_pform"

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/byazt/hq/c;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lcom/byazt/hq/c$1$1;->c:Lcom/byazt/hq/c$1;

    iget-object v0, p2, Lcom/byazt/hq/c$1;->c:Ljava/lang/String;

    sput-object v0, Lcom/byazt/hq/c;->tt:Ljava/lang/String;

    .line 4
    iget-object p2, p2, Lcom/byazt/hq/c$1;->tt:Lcom/byazt/hq/c$c;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/byazt/hq/c$c;->run()V

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/byazt/aas/eo;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    move-result-object p2

    invoke-interface {p2}, Lcom/byazt/iy/n;->clear()V

    .line 7
    invoke-static {p1}, Lcom/byazt/aas/eo;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/hq/c$1$1;->c:Lcom/byazt/hq/c$1;

    iget-object p2, p2, Lcom/byazt/hq/c$1;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/byazt/hq/c;->c:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/byazt/iy/n;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "performanceH5"

    const-string v0, "TTWebViewClient : onPageFinished"

    .line 8
    invoke-static {p2, v0, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 0

    .line 1
    return-void
.end method

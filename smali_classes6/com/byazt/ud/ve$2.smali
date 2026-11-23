.class public Lcom/byazt/ud/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ko/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ad,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ud/ve;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ud/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ud/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ud/ve$2;->c:Lcom/byazt/ud/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    const-string v0, "TTMediationSDK"

    const-string v1, "CSJMSplashLoader onSplashAdLoadSuccess"

    .line 6
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/ud/ve$2;->c:Lcom/byazt/ud/ve;

    invoke-static {v0}, Lcom/byazt/ud/ve;->c(Lcom/byazt/ud/ve;)Lcom/byazt/nh/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/byazt/ud/c;

    iget-object v1, p0, Lcom/byazt/ud/ve$2;->c:Lcom/byazt/ud/ve;

    invoke-static {v1}, Lcom/byazt/ud/ve;->tt(Lcom/byazt/ud/ve;)Lcom/byazt/hz/u;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ud/ve$2;->c:Lcom/byazt/ud/ve;

    invoke-static {v2}, Lcom/byazt/ud/ve;->c(Lcom/byazt/ud/ve;)Lcom/byazt/nh/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/byazt/ud/c;-><init>(Lcom/byazt/hz/u;Lcom/byazt/nh/c;)V

    .line 9
    iget-object v1, p0, Lcom/byazt/ud/ve$2;->c:Lcom/byazt/ud/ve;

    invoke-static {v1}, Lcom/byazt/ud/ve;->c(Lcom/byazt/ud/ve;)Lcom/byazt/nh/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/tt;)V

    .line 10
    iget-object v1, p0, Lcom/byazt/ud/ve$2;->c:Lcom/byazt/ud/ve;

    invoke-static {v1}, Lcom/byazt/ud/ve;->c(Lcom/byazt/ud/ve;)Lcom/byazt/nh/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/nh/c;->tt(Lcom/byazt/nc/tt;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "CSJMSplashLoader onSplashAdLoadFail"

    .line 1
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/ud/ve$2;->c:Lcom/byazt/ud/ve;

    invoke-static {v0}, Lcom/byazt/ud/ve;->c(Lcom/byazt/ud/ve;)Lcom/byazt/nh/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/byazt/oh/c;

    iget v1, p1, Lcom/byazt/pp/c;->c:I

    iget-object p1, p1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/byazt/oh/c;-><init>(ILjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/byazt/ud/ve$2;->c:Lcom/byazt/ud/ve;

    invoke-static {p1}, Lcom/byazt/ud/ve;->c(Lcom/byazt/ud/ve;)Lcom/byazt/nh/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/c;)V

    .line 5
    iget-object p1, p0, Lcom/byazt/ud/ve$2;->c:Lcom/byazt/ud/ve;

    invoke-static {p1}, Lcom/byazt/ud/ve;->c(Lcom/byazt/ud/ve;)Lcom/byazt/nh/c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/tt;Lcom/byazt/nc/c;)V

    :cond_0
    return-void
.end method

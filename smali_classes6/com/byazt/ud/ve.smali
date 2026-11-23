.class public Lcom/byazt/ud/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/bc/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ad,
        0x36
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/hz/u;

.field public tt:Lcom/byazt/ch/c;

.field public uj:Z

.field public ve:Lcom/byazt/nh/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/ud/ve;->tt:Lcom/byazt/ch/c;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/byazt/ud/ve;->uj:Z

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p4, "CSJMSplashLoader \u6784\u9020\u51fd\u6570\u521b\u5efa mAdSlotValueSet = "

    .line 11
    .line 12
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p4, p0, Lcom/byazt/ud/ve;->tt:Lcom/byazt/ch/c;

    .line 16
    .line 17
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p4, " mAdSlotValueSet.getCodeId() = "

    .line 21
    .line 22
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p4, p0, Lcom/byazt/ud/ve;->tt:Lcom/byazt/ch/c;

    .line 26
    .line 27
    invoke-virtual {p4}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string p4, "TTMediationSDK"

    .line 39
    .line 40
    invoke-static {p4, p2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/byazt/ud/ve;->tt:Lcom/byazt/ch/c;

    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    new-instance p2, Lcom/byazt/hz/u;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Lcom/byazt/hz/u;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lcom/byazt/ud/ve;->c:Lcom/byazt/hz/u;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/byazt/ud/ve;->ve:Lcom/byazt/nh/c;

    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ud/ve;)Lcom/byazt/nh/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ud/ve;->ve:Lcom/byazt/nh/c;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/ud/ve;)Lcom/byazt/hz/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ud/ve;->c:Lcom/byazt/hz/u;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/ud/ve;->c(I)V

    return-void
.end method

.method public c(I)V
    .locals 4

    const-string v0, "CSJMSplashLoader load timeout = "

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/vq/c;->tt()V

    .line 5
    new-instance v0, Lcom/byazt/ll/tt;

    iget-object v1, p0, Lcom/byazt/ud/ve;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v1}, Lcom/byazt/ch/c;->eo()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ud/ve;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v2}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lcom/byazt/ll/tt;-><init>(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/byazt/ud/ve;->uj:Z

    invoke-virtual {v0, v1}, Lcom/byazt/ll/tt;->c(Z)V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/ll/tt;->a(I)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/ud/ve;->tt:Lcom/byazt/ch/c;

    invoke-virtual {p1}, Lcom/byazt/ch/c;->md()Lcom/byazt/ch/tt;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/byazt/ch/tt;->u()Lcom/byazt/am/ve;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/byazt/am/ve;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/byazt/am/ve;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/byazt/am/ve;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    new-instance v1, Lcom/byazt/ud/ve$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ud/ve$1;-><init>(Lcom/byazt/ud/ve;Lcom/byazt/am/ve;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/byazt/ud/ve;->c:Lcom/byazt/hz/u;

    new-instance v2, Lcom/byazt/ud/ve$2;

    invoke-direct {v2, p0}, Lcom/byazt/ud/ve$2;-><init>(Lcom/byazt/ud/ve;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/hz/u;->c(Lcom/byazt/ll/tt;Lcom/byazt/yf/sl;Lcom/byazt/ko/ve;)V

    return-void
.end method

.class public Lcom/byazt/dna/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/c;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x47f,
        0xd
    }
.end annotation


# instance fields
.field public volatile c:Ljava/util/function/Function;

.field public volatile tt:Lcom/byazt/dna/c;


# direct methods
.method public constructor <init>(Lcom/byazt/dna/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_2

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object v2, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    iput-object p1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    return-object p1
.end method

.method public getAgeGroup()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getAgeGroup()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAppChannel()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCustomController()Lcom/byazt/lz/c;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/byazt/lz/tt;

    invoke-direct {v1, v0}, Lcom/byazt/lz/tt;-><init>(Ljava/util/function/Function;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/byazt/lz/c;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDirectDownloadNetworkType()[I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getDirectDownloadNetworkType()[I

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0, p1}, Lcom/byazt/dna/c;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInitExtra()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getInitExtra()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMediationConfig()Lcom/byazt/lz/a;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getMediationConfig()Lcom/byazt/lz/a;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/byazt/lz/i;

    invoke-direct {v1, v0}, Lcom/byazt/lz/i;-><init>(Ljava/util/function/Function;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/byazt/lz/a;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPluginUpdateConfig()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getPluginUpdateConfig()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSdkApiVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getSdkApiVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getThemeStatus()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getThemeStatus()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTitleBarTheme()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getTitleBarTheme()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAllowShowNotify()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->isAllowShowNotify()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDebug()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->isDebug()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPaid()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->isPaid()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPlugin()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->isPlugin()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSupportMultiProcess()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->isSupportMultiProcess()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUseMediation()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->isUseMediation()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public updateInitParams(Landroid/util/SparseArray;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/tt;->tt:Lcom/byazt/dna/c;

    invoke-interface {v0, p1}, Lcom/byazt/dna/c;->updateInitParams(Landroid/util/SparseArray;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/tt;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

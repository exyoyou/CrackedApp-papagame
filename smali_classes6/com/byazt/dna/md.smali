.class public Lcom/byazt/dna/md;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/p;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x47f,
        0x15d
    }
.end annotation


# instance fields
.field public volatile c:Ljava/util/function/Function;

.field public volatile tt:Lcom/byazt/dna/p;


# direct methods
.method public constructor <init>(Lcom/byazt/dna/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

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

    iput-object v2, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    iput-object p1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    return-object p1
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppLogDid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getAppLogDid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBoot()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getBoot()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBuildSerial()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getBuildSerial()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCompilingTime()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getCompilingTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConnType()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getConnType()I

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

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getDeviceName()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType(Z)I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getDeviceType(Z)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getDisplayDensity()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getDisplayDensity()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayDpi()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getDisplayDpi()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getImei(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getImei(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getImsi(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getImsi(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIpv4()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getIpv4()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getIpv6()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getLanguage()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalLanguage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getLocalLanguage()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/byazt/fn/c;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getLocation()Lcom/byazt/fn/c;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/byazt/fn/tt;

    invoke-direct {v1, v0}, Lcom/byazt/fn/tt;-><init>(Ljava/util/function/Function;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/byazt/fn/c;

    return-object v0
.end method

.method public getMacAddress(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getMacAddress(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMcc()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getMcc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMcc2()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getMcc2()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMnc2()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getMnc2()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNewIpAddrs(Z)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getNewIpAddrs(Z)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getOAID(Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getOAID(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOs()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getOs()I

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

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getOsVersion()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRom()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getRom()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRomInfo()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getRomInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSSID(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getSSID(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getScreenHeight()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getScreenHeight()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getScreenWidth()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getTimeZone()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneInt()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getTimeZoneInt()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTotalMem()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getTotalMem()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSpace()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getTotalSpace()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUUId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getUUId()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewUA()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0}, Lcom/byazt/dna/p;->getWebViewUA()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWifiMac(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/md;->tt:Lcom/byazt/dna/p;

    invoke-interface {v0, p1}, Lcom/byazt/dna/p;->getWifiMac(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/md;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

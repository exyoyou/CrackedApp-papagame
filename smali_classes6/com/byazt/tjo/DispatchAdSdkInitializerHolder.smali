.class public Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/my;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0x874
    }
.end annotation


# static fields
.field public static volatile c:Ljava/lang/Object;

.field public static tt:Lcom/byazt/omf/ve;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCsjLoader(Landroid/content/Context;)Lcom/byazt/omf/h;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;->getCsjManger()Lcom/byazt/omf/md;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;->getCsjManger()Lcom/byazt/omf/md;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/byazt/omf/md;->createLoader(Landroid/content/Context;)Lcom/byazt/omf/h;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public static getCsjManger()Lcom/byazt/omf/md;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;->tt:Lcom/byazt/omf/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/ve;->getManager()Lcom/byazt/omf/md;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public static isInitSuccess()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;->tt:Lcom/byazt/omf/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/ve;->isInitSuccess()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast v0, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;->getDispatchAdSdkInitializer(Landroid/os/Bundle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public getDispatchAdSdkInitializer(Landroid/os/Bundle;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Lcom/byazt/omf/ve;

    .line 2
    .line 3
    sput-object p2, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;->tt:Lcom/byazt/omf/ve;

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;->c:Ljava/lang/Object;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-class v0, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;->c:Ljava/lang/Object;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/byazt/tjo/t;

    .line 17
    .line 18
    invoke-direct {v1, p1, p2}, Lcom/byazt/tjo/t;-><init>(Landroid/os/Bundle;Lcom/byazt/omf/ve;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;->c:Ljava/lang/Object;

    .line 22
    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    sget-object p1, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;->c:Ljava/lang/Object;

    .line 29
    .line 30
    return-object p1
.end method

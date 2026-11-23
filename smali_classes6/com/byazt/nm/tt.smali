.class public abstract Lcom/byazt/nm/tt;
.super Lcom/byazt/sp/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0xd
    }
.end annotation


# static fields
.field public static final VERSION_00:Ljava/lang/String; = "0.0"


# direct methods
.method public constructor <init>(Lcom/byazt/db/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/sp/tt;-><init>(Lcom/byazt/db/tt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getPluginCSJLoader(Landroid/content/Context;)Lcom/byazt/omf/h;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;->getCsjLoader(Landroid/content/Context;)Lcom/byazt/omf/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/byazt/pp/c;

    .line 8
    .line 9
    const-string v1, "ClassCastException\uff1aload ad fail loader is null"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/byazt/pp/c;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p1
.end method

.method public getSdkVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/tjo/tt;->ve()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    const-string p1, "0.0"

    .line 7
    .line 8
    return-object p1
.end method

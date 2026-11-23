.class public final Lcom/haima/hmcp/business/ConfigureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/ConfigureManager$ConfigureManagerInstance;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigureManager"


# instance fields
.field private mSupportPullUpWXPayForVirtualGamePad:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/business/ConfigureManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/ConfigureManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/haima/hmcp/business/ConfigureManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/ConfigureManager$ConfigureManagerInstance;->access$100()Lcom/haima/hmcp/business/ConfigureManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public getSupportPullUpWXPayForVirtualGamePad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/ConfigureManager;->mSupportPullUpWXPayForVirtualGamePad:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public parseConfig(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "ConfigureManager"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "metaMap is null"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v1, "1"

    .line 12
    .line 13
    iput-object v1, p0, Lcom/haima/hmcp/business/ConfigureManager;->mSupportPullUpWXPayForVirtualGamePad:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "supportPullUpWXPayForVirtualGamePad"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/haima/hmcp/business/ConfigureManager;->mSupportPullUpWXPayForVirtualGamePad:Ljava/lang/String;

    .line 30
    .line 31
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "mSupportPullUpWXPayForVirtualGamePad:"

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/haima/hmcp/business/ConfigureManager;->mSupportPullUpWXPayForVirtualGamePad:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.class public Lcom/join/mgps/dto/FirstIntentData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

.field private isAPKSplashImage:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private isAutoDownload:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private isCustomApk:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isCustomApk"
    .end annotation
.end field

.field private isGoDetail:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private isIntent:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/android_asset/splash.png"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/FirstIntentData;->imageUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isGoDetail:Z

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;ZLcom/join/mgps/Util/IntentDateBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isCustomApk",
            "isAutoDownload",
            "isAPKSplashImage",
            "imageUrl",
            "isIntent",
            "intentDateBean"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isGoDetail:Z

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk:Z

    .line 7
    iput-boolean p2, p0, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload:Z

    .line 8
    iput-boolean p3, p0, Lcom/join/mgps/dto/FirstIntentData;->isAPKSplashImage:Z

    .line 9
    iput-object p4, p0, Lcom/join/mgps/dto/FirstIntentData;->imageUrl:Ljava/lang/String;

    .line 10
    iput-boolean p5, p0, Lcom/join/mgps/dto/FirstIntentData;->isIntent:Z

    .line 11
    iput-object p6, p0, Lcom/join/mgps/dto/FirstIntentData;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FirstIntentData;->imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FirstIntentData;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAPKSplashImage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isAPKSplashImage:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAutoDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCustomApk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk:Z

    .line 2
    .line 3
    return v0
.end method

.method public isGoDetail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isGoDetail:Z

    .line 2
    .line 3
    return v0
.end method

.method public isIntent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isIntent:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAPKSplashImage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAPKSplashImage"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isAPKSplashImage:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAutoDownload(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAutoDownload"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCustomApk(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCustomApk"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGoDetail(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goDetail"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isGoDetail:Z

    .line 2
    .line 3
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FirstIntentData;->imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIntent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isIntent"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isIntent:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIntentDateBean(Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentDateBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FirstIntentData;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FirstIntentData{isCustomApk="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", isAutoDownload="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", isAPKSplashImage="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/join/mgps/dto/FirstIntentData;->isAPKSplashImage:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", imageUrl=\'"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/dto/FirstIntentData;->imageUrl:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x27

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", isIntent="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/join/mgps/dto/FirstIntentData;->isIntent:Z

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", intentDateBean="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/dto/FirstIntentData;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 v1, 0x7d

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method
